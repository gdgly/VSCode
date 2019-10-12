#include "cook.h"


/*****************************************************************
 @fun:      BotHeatTime
 @brief:    发热盘间歇加热, 间隙加热前先调用BotHeatOff()
 @param:    uint8 ontm    加热时间 second
            uint8 offtm   停止时间 second                 
 @retval:   None
*****************************************************************/
void Heat_Time_Select(uint8 ontm, uint8 offtm)
{
	//限幅	
	if(ontm > 63)
	{
		ontm = 63;		
	}
	
	if(offtm > 63)
	{
		offtm = 63;		
	}
	
	//转化成0.5s计数	
	RelOnCnt = ontm*2;
	RelOffCnt = offtm*2;
	
	b_BotHeatEn = TRUE;	
	b_BotHeatOn = FALSE;						
}

/*****************************************************************
 @fun:      BotHeatOn
 @brief:    发热盘全功率加热
 @param:    None                
 @retval:   None
*****************************************************************/
void BotHeatOn(void)  
{	
	b_BotHeatEn = FALSE;
	b_BotHeatOn = TRUE;
	HeatCnt500ms = 0;
}

/*****************************************************************
 @fun:      BotHeatOff
 @brief:    发热盘停止加热
 @param:    None                
 @retval:   None
*****************************************************************/
void BotHeatOff(void)
{	
	b_BotHeatEn = FALSE;
	b_BotHeatOn = FALSE;
	HeatCnt500ms = 0;
}  

/*****************************************************************
 @fun:      ShortTimeOn
 @brief:    开启短计时器1
 @param:    None                             
 @retval:   None
*****************************************************************/
void ShortTimeOn(void)	
{
	b_ShortOn = 1;
	ShortCntL = 0;
	ShortCntM = 0;
}

/*****************************************************************
 @fun:      FactoryHeat
 @brief:    工厂煲水加热
 @param:    None                             
 @retval:   None
*****************************************************************/
void FactoryTest(void)
{
		//工装检测
	if(b_Auto_test == TRUE)
	{
		BotHeatOn();
		//工装无法检测零点,采用不过零开启
		return;
	}
	//超温报警不可恢复
	if(b_BotTempOut == TRUE)
	{
		BotHeatOff();
		return;	
	}	
	//超温135
	if(Ad_Bot >= BOT_TEMP_135)
	{
		BotHeatOff();	
		b_BotTempOut = TRUE;
		return;	
	}
	//工厂煲水流程   
	switch(WorkStep)
	{
		case 0:                                          
			ShortTimeOn(); 
			WorkStep++;
			break;
		case 1:
			if(b_PressureOn)
			{
				FactoryTestData = FACTORY_TEST_COUNT;     //上压后进入倒计时
				CountDownTime = 1;                        //倒计时1分钟				
				BotHeatOff();
				ShortTimeOn();
				WorkStep++;
				break;
			}												
			BotHeatOn();	   //全功率加热		 			
			break;
		case 2:                //倒计时阶段
			if(b_PressureOn)
			{
				BotHeatOff();   //到达压力关闭继电器
			}
			else 
			{
				BotHeatOn();
			}				
			break;
			
		default: BotHeatOff(); break;			
	}					
}

/*****************************************************************
 @fun:      RiceHeat
 @brief:    米饭加热
 @param:    None                             
 @retval:   None
*****************************************************************/
void RiceHeat(void)
{
	//压力开关断开或者底部>=145C 进入保压
	if((b_PressureOn == TRUE || Ad_Bot >= BOT_TEMP_145) && WorkStage != WORK_COUNTDOWN_STAGE) 
	{
		WorkStage = WORK_COUNTDOWN_STAGE;		
		WorkStep = 5;
		ShortTimeOn();	//重新计时
		//计算烹饪总时间
		TotalTimeSave = WorkTimeM + CountDownTime; 
	}
	//米饭烹饪流程	
	switch(WorkStep)
	{
		case 0:
		    //全功率加热至95度               
			if(Ad_Bot >= BOT_TEMP_95)
			{ 
				//电压低于205V跳过停功率2分钟 
				if(AC_Vol_Rms >= 205)
				{ 
					BotHeatOff();	
				  	ShortTimeOn(); 	  //重新计时						
					WorkStep++;
				}
				else
				{  
					WorkStep = 2;     //直接进入第2步
				}
				break;
			}
			BotHeatOn();	
			break;
		case 1 : 
		    //停功率2分钟  
			if(ShortCntM >= 2)
			{
				ShortTimeOn();	
				WorkStep++;	
				break;
			}
			BotHeatOff();									
			break;
		case 2: 
			if(Ad_Bot >= BOT_TEMP_128)       //第一个间歇温度点128C
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep++;
				break;
			}
			BotHeatOn();       							
			break;
		case 3:	
			if(Ad_Bot <= BOT_TEMP_124)        //恢复全功率
			{
				ShortTimeOn();	
				WorkStep = 2;
				break;	
			}		
			if(Ad_Bot >= BOT_TEMP_135)       //第二个间歇温度点135C
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep++;
				break;
			}
			/*第一间歇温度点
			根据电压档位选择不同加热比例 等效700W*/
			switch(Vrms_Level)
			{
				case VRMS_LEVEL_175:  BotHeatOn();               break;
				case VRMS_LEVEL_198:  Heat_Time_Select(17, 3);   break;
				case VRMS_LEVEL_220:  Heat_Time_Select(14, 6);   break;
				case VRMS_LEVEL_242:  Heat_Time_Select(12, 8);   break;
				default:              Heat_Time_Select(14, 6);   break;					
			}				   		
			break;
		case 4:
			if(Ad_Bot <= BOT_TEMP_131)       //回到上一步
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep = 3;
				break;
			}
			/*第二间歇温度点
			根据电压档位选择不同加热比例 等效500W*/
			switch(Vrms_Level)
			{
				case VRMS_LEVEL_175:  Heat_Time_Select(16, 4);   break;
				case VRMS_LEVEL_198:  Heat_Time_Select(12, 8);   break;
				case VRMS_LEVEL_220:  Heat_Time_Select(10,10);   break;
				case VRMS_LEVEL_242:  Heat_Time_Select(8, 12);   break;
				default:              Heat_Time_Select(10,10);   break;					
			}				
			break;		
		case 5:
			//标准饭最后5分钟不加热 
			if(ChooseFun == FUN_RICE)
			{
				if(CountDownTime <= 5)	
				{
					BotHeatOff();
					break;		
				}					
			}					

			//控制底部温度范围115-112			
			if(b_PressureOn == 1 || Ad_Bot >= BOT_TEMP_115)	 
			{
				BotHeatOff();	
			}  	
			else if(Ad_Bot <= BOT_TEMP_112)       
			{
				/*保压阶段根据电压档位选择不同加热比例 等效500W*/
				switch(Vrms_Level)
				{
					case VRMS_LEVEL_175:  Heat_Time_Select(16, 4);   break;
					case VRMS_LEVEL_198:  Heat_Time_Select(12, 8);   break;
					case VRMS_LEVEL_220:  Heat_Time_Select(10,10);   break;
					case VRMS_LEVEL_242:  Heat_Time_Select(8, 12);   break;
					default:              Heat_Time_Select(10,10);   break;					
				}
			}								
			break;
		default: BotHeatOff(); break;	
	}
} 

/*****************************************************************
 @fun:      PressureHeat
 @brief:    压力功能
 @param:    None                             
 @retval:   None
*****************************************************************/
void PressureHeat(void)
{
	//压力开关断开进入保压
	if((b_PressureOn == TRUE) && WorkStage != WORK_COUNTDOWN_STAGE) 
	{
		WorkStage = WORK_COUNTDOWN_STAGE;
		WorkStep = 5;
		ShortTimeOn();	//重新计时
		//计算烹饪总时间
		TotalTimeSave = WorkTimeM + CountDownTime;
	}	
	//145C限温后直接进入待机
	if(Ad_Bot >= BOT_TEMP_145)
	{
		BotHeatOff();
		Cancel();
		FINISH_SOUND;
		return;	
	}
	//压力功能烹饪流程
	switch(WorkStep)
	{
		case 0:
		    //全功率加热至95度               
			if(Ad_Bot >= BOT_TEMP_95)
			{
				BotHeatOff();	
				ShortTimeOn(); 							
				WorkStep++;
				break;
			}
			BotHeatOn();	
			break;
		case 1 : 
		    //停功率2分钟  
			if(ShortCntM >= 2)
			{
				ShortTimeOn();	
				WorkStep++;	
				break;
			}
			BotHeatOff();										
			break;
		case 2: 
			if(Ad_Bot >= BOT_TEMP_120)       //第一个间歇温度点120C
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep++;
				break;
			}
			BotHeatOn();       							
			break;
		case 3:	
			if(Ad_Bot <= BOT_TEMP_118)        //恢复全功率
			{
				ShortTimeOn();	
				WorkStep = 2;
				break;	
			}
		
			if(Ad_Bot >= BOT_TEMP_128)       //第二个间歇温度点128C
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep++;
				break;
			}
			/*第一间歇温度点
			根据电压档位选择不同加热比例 等效700W*/
			switch(Vrms_Level)
			{
				case VRMS_LEVEL_175:  BotHeatOn();               break;
				case VRMS_LEVEL_198:  Heat_Time_Select(17, 3);   break;
				case VRMS_LEVEL_220:  Heat_Time_Select(14, 6);   break;
				case VRMS_LEVEL_242:  Heat_Time_Select(12, 8);   break;
				default:              Heat_Time_Select(14, 6);   break;					
			}		
			break;
		case 4:
			if(Ad_Bot <= BOT_TEMP_125)       //回到上一步
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep = 3;
				break;
			}
			/*第二间歇温度点
			根据电压档位选择不同加热比例 等效500W*/
			switch(Vrms_Level)
			{
				case VRMS_LEVEL_175:  Heat_Time_Select(16, 4);   break;
				case VRMS_LEVEL_198:  Heat_Time_Select(12, 8);   break;
				case VRMS_LEVEL_220:  Heat_Time_Select(10,10);   break;
				case VRMS_LEVEL_242:  Heat_Time_Select(8, 12);   break;
				default:              Heat_Time_Select(10,10);   break;					
			}	 				
			break;
		case 5:       //保压阶段		
			/*粥类藏8分钟*/
			if(ChooseFun == FUN_PORRIDGE || ChooseFun == FUN_CONGEE || ChooseFun == FUN_EIGHTCONGEE)
			{				
				if(CountDownTime <= 8)	
				{
					BotHeatOff();
					break;		
				}	
			}		          
			//控制底部温度范围118-115    //压力开关断开,关闭继电器			
			if(b_PressureOn == 1 || Ad_Bot >= BOT_TEMP_118)	 
			{
				BotHeatOff();	
			}  	
			else if(Ad_Bot <= BOT_TEMP_115)       
			{
				BotHeatOn(); 	
			}				
			break;	
		default: BotHeatOff();	break; 			
	}		
}

/*****************************************************************
 @fun:      OpenCook
 @brief:    开盖煮
 @param:    None                             
 @retval:   None
*****************************************************************/
void OpenCook(void)
{
	if((b_PressureOn || WorkTimeM >= 30) && WorkStage != WORK_COUNTDOWN_STAGE)	
	{
		WorkStage = WORK_COUNTDOWN_STAGE;		
		WorkStep = 2;
		ShortTimeOn();	//重新计时
		//计算烹饪总时间
		//TotalTimeSave = WorkTimeM + CountDownTime;
	}
	switch(WorkStep)
	{
		case 0:  
			if(Ad_Bot >= BOT_TEMP_105)
			{
				BotHeatOff();
				ShortTimeOn(); 
				WorkStep++;
				b_Opencook_OK = 0;
				break;
			}
			BotHeatOn();			
			break;
		case 1:			
			if(ShortCntM >= 5 || Ad_Bot >= BOT_TEMP_135)                     
			{
				WorkStage = WORK_COUNTDOWN_STAGE;
				BotHeatOff();
				ShortTimeOn();				 
				WorkStep++;
				//计算烹饪总时间
		        TotalTimeSave = WorkTimeM + CountDownTime;
				break;				
			}
			Heat_Time_Select(24, 6);     //800W		
			break;
		case 2: 
		    //压力到达      
			if(b_PressureOn)
			{
				BotHeatOff();
				break;
			}
			//限温标志
			if(b_Opencook_OK == 0 && Ad_Bot >= BOT_TEMP_135)
			{
				BotHeatOff();
				b_Opencook_OK = 1;             //到达限温标志
				break;
			}
			//到过限温控制温度110-115
			if(b_Opencook_OK)
			{
				if(Ad_Bot >= BOT_TEMP_115)
				{
		  			BotHeatOff(); 
				}
				else if(Ad_Bot <= BOT_TEMP_110)
				{
					Heat_Time_Select(15, 15);     //500W
				}								
			}
			else
			{
				//没到过限温
				if(Ad_Bot >= BOT_TEMP_115)
				{
					Heat_Time_Select(24, 6);     //800W	    
				}
				else if(Ad_Bot <= BOT_TEMP_110)
				{
					BotHeatOn(); 	
				}				
			}
			break;
		default: BotHeatOff(); break;
	}	
}




/*****************************************************************
 @fun:      CakeHeat
 @brief:    蛋糕
 @param:    None                             
 @retval:   None
*****************************************************************/
void CakeHeat(void)
{
	if(((WorkTimeM >= 30) || Ad_Bot >= BOT_TEMP_135 || b_PressureOn) && WorkStage != WORK_COUNTDOWN_STAGE)
	{
		WorkStage = WORK_COUNTDOWN_STAGE;
		WorkStep = 3;	                //进入保压加热方式
		ShortTimeOn();	                //重新计时
		//计算烹饪总时间
		TotalTimeSave = WorkTimeM + CountDownTime;
	}
	switch(WorkStep)
	{
		case 0:  
			ShortTimeOn(); 
			WorkStep++;							
			break;			
		case 1:  
			if(Ad_Bot >= BOT_TEMP_100 || ShortCntM >= 15)
			{
				BotHeatOff();
				ShortTimeOn(); 
				WorkStep++;	
				break;
			}
			BotHeatOn();			
			break;		
		case 2:
			if(Ad_Bot >= BOT_TEMP_135 || ShortCntM >= 15)
			{ 
				WorkStage = WORK_COUNTDOWN_STAGE;
				WorkStep++;
				BotHeatOff();
				//计算烹饪总时间
				TotalTimeSave = WorkTimeM + CountDownTime;
				break;
			}
			if(Ad_Bot <= BOT_TEMP_120)
			{
				Heat_Time_Select(12, 8);		//600W 
			}
			else if(Ad_Bot <= BOT_TEMP_128)
			{
				Heat_Time_Select(7, 13);		//350W
			}
			else if(Ad_Bot <= BOT_TEMP_135)
			{
				Heat_Time_Select(5, 15);		//250W
			}
			break;			
		case 3:		
			if(b_PressureOn || Ad_Bot >= BOT_TEMP_132)
			{
				BotHeatOff();
			}
			else if(Ad_Bot <= BOT_TEMP_120)
			{
				Heat_Time_Select(7, 13);		//350W
			}
			else if(Ad_Bot <= BOT_TEMP_128)
			{
				Heat_Time_Select(5, 15);		//250W
			}
			break;			
		default: BotHeatOff(); break;
	}	
}
/*****************************************************************
 @fun:      ReheatCook
 @brief:    冷食加热
 @param:    None                             
 @retval:   None
*****************************************************************/
void ReheatCook(void)
{
	if((b_PressureOn || WorkTimeM >= 30) && WorkStage != WORK_COUNTDOWN_STAGE)	
	{
		WorkStage = WORK_COUNTDOWN_STAGE;		
		WorkStep = 2;
		ShortTimeOn();	//重新计时
	}
	
	switch(WorkStep)
	{			
		case 0 :  
			if(Ad_Bot >= BOT_TEMP_105)
			{
				BotHeatOff();
				ShortTimeOn(); 
				WorkStep++;	
				break;
			}
			BotHeatOn();			
			break;
			
		case 1 :
			if(ShortCntM==0 && ShortCntL< 30)	 //缓冲15S
			{
				BotHeatOff();
				break;	
			}
			
			if(ShortCntM >= 5)                     
			{
				WorkStage = WORK_COUNTDOWN_STAGE;
				BotHeatOff();
				ShortTimeOn();				 
				WorkStep++;
				break;				
			}
			
			if(Ad_Bot>BOT_TEMP_116)
			{
				BotHeatOff();
				break;				
			}
			if(Ad_Bot<=BOT_TEMP_114)
			{
				Heat_Time_Select(24, 6);     //800W			
			}					
			break;
			
		case 2 :       
			//控制底部温度范围118-115    //压力开关断开,关闭继电器			
			if(b_PressureOn == 1 || Ad_Bot >= BOT_TEMP_116)	 
			{
				BotHeatOff();	
			}  	
			else if(Ad_Bot <= BOT_TEMP_114)       
			{
				Heat_Time_Select(8, 10);     //330W	
			}
			break;
			
		default: BotHeatOff(); break;
	}	
}

/*****************************************************************
 @fun:      KeepWarmHeat
 @brief:    保温加热
 @param:    None                             
 @retval:   None
*****************************************************************/
void KeepWarmHeat(void)
{
	if(b_PressureOn == 1 || Ad_Bot >= BOT_TEMP_68)
	{
		BotHeatOff();
	}		
	else if(Ad_Bot <= BOT_TEMP_63)
	{
		if(Ad_Bot >= BOT_TEMP_58)	
		{
			Heat_Time_Select(10, 22);       
		}
		else if(Ad_Bot <= BOT_TEMP_55)	
		{
			BotHeatOn();          
		}						
	}	
} 
/*****************************************************************
 @fun:      Cook_Task
 @brief:    烹饪函数，主函数8ms调用
 @param:    None                             
 @retval:   None
*****************************************************************/
void Cook_Task(void)
{
	//故障报警暂停不加热
	if(ErrorCode != NO_ERROR)      
	{					
		BotHeatOff();
		return;
	}

	//工作或保温中E3报警条件满足打开继电器  A005
	if((SysStatus == WORK_MODE || SysStatus == KEEP_WARM_MODE) && Ad_Bot <= BOT_TEMP_80 && b_PressureOn == TRUE)
	{
		BotHeatOn();
		return;	
	}
	
	switch(SysStatus)
	{
		case FACTORY_TEST_MODE:    
			//工厂模式加热			
			if(FactoryTestData == FACTORY_TEST_START || FactoryTestData == FACTORY_TEST_COUNT)
			{
				FactoryTest(); 		
			}
			else
			{
				BotHeatOff();	
			}			
			break;            
		case WORK_MODE:
			//加热、保压、中途加料
			if(WorkStage == WORK_HEAT_STAGE || WorkStage == WORK_COUNTDOWN_STAGE )		
			{
				if(ChooseFun == FUN_RICE || ChooseFun == FUN_MIXRICE)
				{
					RiceHeat();	  //米饭类
				}
				else if(ChooseFun == FUN_OPENEHEAT)	
				{	
					WorkStep = 2;  //倒计时
					OpenCook();	  //开盖收汁
				}
				else if(ChooseFun == FUN_FASTHEAT)	
				{
					ReheatCook();	  //蛋糕
				}
				else if(ChooseFun == FUN_CAKE)	
				{
					CakeHeat();	  //蛋糕
				}
				else
				{
					PressureHeat();	 //压力	
				}			
			}
			else
			{
				BotHeatOff();	
			}
			break;

		case KEEP_WARM_MODE: 
			//保温模式
			KeepWarmHeat(); 
			break;	
				
		default: BotHeatOff(); break;		
	}
}

/*****************************************************************
 @fun:      Relay_Duty_Control
 @brief:    继电器动作类型控制函数  主函数500ms调用
 @param:    None                             
 @retval:   None
*****************************************************************/
void Relay_Duty_Control(void)
{	
	//全功率加热
	if(b_BotHeatOn == TRUE)
	{
		//端口输出低且过零检测没有完成
		if(REL_PORT == 0 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
		{
			b_Zero_EN = 1;      //使能过零检测
			b_RelType = 1;      //继电器开标志
		}	
	}
	else     //间歇或者不加热
	{
		//间歇加热
		if(b_BotHeatEn == TRUE)
		{
			HeatCnt500ms++;
			if(HeatCnt500ms < RelOffCnt)
			{
				if(REL_PORT == 1 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
				{
					b_Zero_EN = 1;    //使能过零检测
					b_RelType = 0;    //继电器关标志
				}		
			}
			else
			{			
				if(HeatCnt500ms >= (RelOffCnt + RelOnCnt))
				{
					HeatCnt500ms = 0;	
					if(REL_PORT == 1 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
					{
						b_Zero_EN = 1;    //使能过零检测
						b_RelType = 0;    //继电器关标志
					}
					
				}
				else
				{	
					if(REL_PORT == 0 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
					{
						b_Zero_EN = 1;    //使能过零检测
						b_RelType = 1;    //继电器开标志
					}
				}				
			}		
		}
		else    //不加热
		{
			HeatCnt500ms = 0;
			//压力开关断开情况下 不检测过零直接动作
			if(REL_PORT == 1 && b_PressureOn == 1 && RelWaitCnt >= 4000)
			{
				b_Rel_NoZero = 1;   //不检测过零直接动作标志位
			}				
			else if(REL_PORT == 1 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
			{
				b_Zero_EN = 1;       //使能过零检测
				b_RelType = 0;       //继电器关标志
			}				
		}		
	}		
}

/*****************************************************************
 @fun:      Operate_Relay_IO
 @brief:    继电器IO输出操作函数  中断250us调用
 @param:    None                             
 @retval:   None
*****************************************************************/
void Operate_Relay_IO(void)
{
	//继电器相邻动作定时
	if(++RelWaitCnt >= 4000)
	{
		RelWaitCnt = 4000;     //限制上限	
	}		
	//压力开关断开时继电器关闭	
	if(b_Rel_NoZero)
	{
		b_Rel_NoZero = 0;
		REL_OFF;          //关闭继电器
		RelWaitCnt = 0;   //继电器间隔动作时间清零			
	}
	else if(b_Zero)       //获取零点后延时
	{
		//开启延时5.25ms	
		if(b_RelType)	
		{
			if(++ZeroDeley >= 21)     //21*250us=5.25ms  
			{
				ZeroDeley = 0;
				b_ZeroDeley_OK = 1;
				b_Zero = 0;	
			}				
		}
		else                          //关闭延时5.25ms
		{
			if(++ZeroDeley >= 21)     
			{
				ZeroDeley = 0;
				b_ZeroDeley_OK = 1;
				b_Zero = 0;	
			}				
		}
	}
	else if(b_ZeroTimeout == 1)     //过零检测超时,继电器强制动作
	{
		b_ZeroTimeout = 0;
		ZeroTimeoutCnt++;         //记录强制动作次数
		if(ZeroTimeoutCnt >= 254)
		{
			ZeroTimeoutCnt = 254;
		}
		
		if(b_RelType)
		{
			REL_ON;           //开启继电器
			RelWaitCnt = 0;   //继电器间隔动作时间清零  
		}
		else
		{
			REL_OFF;   //关闭继电器
			RelWaitCnt = 0;   //继电器间隔动作时间清零 
		}						
	}
		
	//延时完成
	if(b_ZeroDeley_OK)
	{
		b_ZeroDeley_OK = 0;
		
		if(b_RelType)
		{
			REL_ON;           //开启继电器
			RelWaitCnt = 0;   //继电器间隔动作时间清零 
		}
		else
		{
			REL_OFF;          //关闭继电器
			RelWaitCnt = 0;   //继电器间隔动作时间清零 
		}
	}	
}






  
  
  
  
