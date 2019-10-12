#include "display.h"

//变量定义
const uint8 SEG_MATH_TAB[] = {
	0x3F	,//0
	0x06	,//1
	0x5B	,//2
	0x4F	,//3
	0x66	,//4
	0x6D	,//5
	0x7D	,//6
	0x07	,//7
	0x7F	,//8
	0x6F	,//9
	0x77	,//A
	0x7C	,//b
	0x39	,//C
	0x5E	,//d
	0x79	,//E
	0x71	,//F
};

//加热跑圈显示数组
const uint8 HOT_RUN_TAB[13][4]={		
								{SEGM_A,SEGM_A,SEGM_A,0},	   
							   	{SEGM_A,SEGM_A,SEGM_A,0},
							  	{0,SEGM_A,SEGM_A,SEGM_A},
							  	{0,0,SEGM_A,SEGM_A+SEGM_B},
							  	{0,0,0,SEGM_A+SEGM_B+SEGM_C},
							  	{0,0,0,SEGM_B+SEGM_C+SEGM_D},
							  	{0,0,SEGM_D,SEGM_C+SEGM_D},
							  	{0,SEGM_D,SEGM_D,SEGM_D},
							  	{SEGM_D,SEGM_D,SEGM_D,0},
							  	{SEGM_D+SEGM_E,SEGM_D,0,0},
							  	{SEGM_D+SEGM_E+SEGM_F,0,0,0},
							  	{SEGM_A+SEGM_E+SEGM_F,0,0,0},
							  	{SEGM_A+SEGM_F,SEGM_A,0,0},};


/*****************************************************************
 @fun:      DIG_Show_Time
 @brief:    显示时间HH:MM        小时高位0不显示,分钟高位0显示
 @param:    uint8 hour      小时 
            uint8 min       分钟
            uint8 bPoint    1 显示冒号 0 不显示                           
 @retval:   None
*****************************************************************/
void DIG_Show_Time(uint8 hour, uint8 min, uint8 point)
{
	if(hour >= 10)
	{
		DIG_DATA_4 |= SEG_MATH_TAB[hour/10];	
	}
	
	//预约倒计时保留小时0
	if(WorkStage == WORK_PRESET_STAGE)  
	{
		DIG_DATA_3 |= SEG_MATH_TAB[hour%10];			
		if(point) 
		{
			SEGM_TWO_POINT;		
		}
	}
	else		//hour为0时  不显示
	{
		if(hour > 0)
		{
			DIG_DATA_3 |= SEG_MATH_TAB[hour%10];			
			if(point) 
			{
				SEGM_TWO_POINT;		
			} 					
		}
	}
					 
	DIG_DATA_2 |= SEG_MATH_TAB[min/10];	 
	DIG_DATA_1 |= SEG_MATH_TAB[min%10]; 
}

/*****************************************************************
 @fun:      DIG_Show_Data
 @brief:    显示4位数码管,从左往右
 @param:    uint8 digdata1  左1
            uint8 digdata2  左2
            uint8 digdata3  左3
            uint8 digdata4  左4              
 @retval:   None
*****************************************************************/
void DIG_Show_Data(uint8 digdata1, uint8 digdata2, uint8 digdata3, uint8 digdata4)
{
	if(digdata1 != 0)
	{
		DIG_DATA_4 |= digdata1;
	}
	
	if(digdata2 != 0)
	{	 
		DIG_DATA_3 |= digdata2;	
	}
	
	if(digdata3 != 0)
	{	 
		DIG_DATA_2 |= digdata3;	
	}
	
	if(digdata4 != 0)
	{	 
		DIG_DATA_1 |= digdata4; 
	}
}								

/*****************************************************************
 @fun:      LED_Off
 @brief:    关闭所有LED
 @param:    None                             
 @retval:   None
*****************************************************************/
void LED_Off(void)
{
	uint8 i;
	
	for(i = 0; i < COM_NUMBER; i++)
	{
		DispData[i] = 0x00;	   //关闭所有LED	
	}		
}


/*****************************************************************
 @fun:      Power_On_Show
 @brief:    上电显示
 @param:    None                             
 @retval:   None
*****************************************************************/
void Power_On_Show(void)       
{
	uint8 i;
		
	for(i = 0; i < COM_NUMBER; i++)
	{
		DispData[i] = 0xFF;	   //打开所有LED	
	}
}

/*****************************************************************
 @fun:      Waiting_Mode_Show
 @brief:    待机显示
 @param:    None                             
 @retval:   None
*****************************************************************/
void Waiting_Mode_Show(void)   	
{	
		//数码管--:--
		DIG_DATA_4 |= SEGM_G;
		DIG_DATA_3 |= SEGM_G;
		DIG_DATA_2 |= SEGM_G;
		DIG_DATA_1 |= SEGM_G;	
		SEGM_TWO_POINT;			
}


/*****************************************************************
 @fun:      Fun_Choose_Show
 @brief:    选择功能显示
 @param:    None                             
 @retval:   None
*****************************************************************/
void Fun_Choose_Show(void)
{ 
	//13个功能灯闪烁       
	if(b_LedCol) 
	{
		switch(ChooseFun)
		{
			case FUN_RICE		: 		ON_LED8;		break;
			case FUN_MIXRICE	:		ON_LED16;		break;
			case FUN_PORRIDGE	:		ON_LED1;		break;
			case FUN_CONGEE		:		ON_LED9;		break;

			case FUN_SOUP		:		ON_LED10;  		break;
			case FUN_COOKMEAT	:		ON_LED11;		break;
			case FUN_RIB		:		ON_LED12;		break;
			case FUN_CHICKEN	:		ON_LED13;		break;

			case FUN_EIGHTCONGEE:		ON_LED2;		break;
			case FUN_BEEF		:		ON_LED3;		break;
			case FUN_BEAN		:		ON_LED4;		break;
			case FUN_CAKE		:		ON_LED5;		break;

			case FUN_FASTHEAT	:		ON_LED7;		break;
			case FUN_OPENEHEAT	:		ON_LED14;		break;

		}
	}
		
	//定时模式显示估算烹饪时间
	if(PresetState == TIMER_STATE)
	{
		if(ChooseFun == FUN_OPENEHEAT || ChooseFun == FUN_FASTHEAT || ChooseFun == FUN_CAKE)	//开盖收汁和蛋糕功能，显示定时时间不增加15分钟
		{
			HourBuf = (CountDownTime)/60;
			MinBuf = (CountDownTime)%60;			
		}
		else
		{
			HourBuf = (CountDownTime+15)/60;
			MinBuf = (CountDownTime+15)%60;
		}
		
		DIG_DATA_4 |= 0;
		DIG_DATA_3 |= SEG_MATH_TAB[HourBuf%10];
		DIG_DATA_2 |= SEG_MATH_TAB[MinBuf/10];
		DIG_DATA_1 |= SEG_MATH_TAB[MinBuf%10];
		SEGM_TWO_POINT;
		
		if(PresetTimeH > 0)
		{
			ON_LED_PRESETTIME;     //预约过, 预约状态灯常亮	
		}	
	}
	//预约模式
	else if(PresetState == PRESET_STATE)              
	{
		//调整预约时间, 预约灯闪烁
		if(b_LedCol)
		{
			ON_LED_PRESETTIME;			
		}
		DIG_Show_Time(PresetTimeH, PresetTimeM, 1);   //显示预约时间
	}
		
}


/*****************************************************************
 @fun:      Work_Mode_Show
 @brief:    工作模式显示
 @param:    None                             
 @retval:   None
*****************************************************************/
void Work_Mode_Show(void)
{				
	//12个功能灯
	switch(ChooseFun)
	{
		case FUN_RICE		: 		ON_LED8;		break;
		case FUN_MIXRICE	:		ON_LED16;		break;
		case FUN_PORRIDGE	:		ON_LED1;		break;
		case FUN_CONGEE		:		ON_LED9;		break;

		case FUN_SOUP		:		ON_LED10;  		break;
		case FUN_COOKMEAT	:		ON_LED11;		break;
		case FUN_RIB		:		ON_LED12;		break;
		case FUN_CHICKEN	:		ON_LED13;		break;

		case FUN_EIGHTCONGEE:		ON_LED2;		break;
		case FUN_BEEF		:		ON_LED3;		break;
		case FUN_BEAN		:		ON_LED4;		break;
		case FUN_CAKE		:		ON_LED5;		break;

		case FUN_FASTHEAT	:		ON_LED7;		break;
		case FUN_OPENEHEAT	:		ON_LED14;		break;
	} 

	//进度灯
	// if(ChooseFun >=FUN_RICE && ChooseFun <= FUN_CAKE)
	// {
		if(ChooseFun >=FUN_RICE && ChooseFun <= FUN_FASTHEAT)
		{
			if(WorkStage != WORK_PRESET_STAGE)
			{
				if(WorkTimeS > 0 || WorkTimeM > 0)   ON_LED_STEP_1;
				if(Ad_Bot >= BOT_TEMP_100)           Led_Step_100C = 1;
				if(Led_Step_100C)                        ON_LED_STEP_2;
				if(WorkStage == WORK_COUNTDOWN_STAGE)
				{
					if(4*WorkTimeM >= 2*TotalTimeSave) ON_LED_STEP_3;
					if(4*WorkTimeM >= 3*TotalTimeSave) ON_LED_STEP_4;
				}		
			}
		}
		else	//开盖收汁
		{
			ON_LED_STEP_1;
			if(4*WorkTimeM >= 1*CountDownTimeSave) ON_LED_STEP_2;
			if(4*WorkTimeM >= 2*CountDownTimeSave) ON_LED_STEP_3;
			if(4*WorkTimeM >= 3*CountDownTimeSave) ON_LED_STEP_4;
		}

		// if(WorkStage==WORK_HEAT_STAGE || WorkStage==WORK_COUNTDOWN_STAGE)
		// {
		// 	if(Ad_Bot < BOT_TEMP_100)	//底部小于100C
		// 	{
		// 		if(Led_Step_100C == TRUE)
		// 		{
		// 			ON_LED_STEP_1;	//闪烁
		// 		}
		// 		else
		// 		{
		// 			if(b_LedCol)	ON_LED_STEP_1;	//闪烁
		// 		}
		// 	}
		// 	else
		// 	{	
		// 		Led_Step_100C = TRUE;
		// 		ON_LED_STEP_1;	
		// 		if(WorkStage==WORK_HEAT_STAGE)	//加热阶段
		// 		{
		// 			if(b_LedCol)	ON_LED_STEP_2;	//闪烁
		// 		}
		// 		if(WorkStage==WORK_COUNTDOWN_STAGE)	//加热阶段
		// 		{
		// 			ON_LED_STEP_2;
		// 			if(CountDownTime >= CountDownTimeSave/2)
		// 			{
		// 				if(b_LedCol)	ON_LED_STEP_3;	//闪烁
		// 			}
		// 			else
		// 			{
		// 				ON_LED_STEP_3;
		// 				if(b_LedCol)	ON_LED_STEP_4;	//闪烁
		// 			}					
		// 		}
		// 	}
		// }
	//}

    //预约阶段
	if(WorkStage == WORK_PRESET_STAGE)
	{
		ON_LED_PRESETTIME;                                          //预约灯亮                                           
		DIG_Show_Time(PresetTimeH, PresetTimeM, b_LedCol);       //预约倒计时   
	}
	//加热阶段
	else if(WorkStage == WORK_HEAT_STAGE)
	{
		DIG_DATA_4 |= HOT_RUN_TAB[HorseCount][0];
	  	DIG_DATA_3 |= HOT_RUN_TAB[HorseCount][1];
		DIG_DATA_2 |= HOT_RUN_TAB[HorseCount][2];
	  	DIG_DATA_1 |= HOT_RUN_TAB[HorseCount][3];

	}
	//倒计时阶段
	else if(WorkStage == WORK_COUNTDOWN_STAGE)
	{
		if( ChooseFun == FUN_OPENEHEAT || ChooseFun == FUN_CAKE)
		{
			HourBuf = (CountDownTime)/60;
			MinBuf = (CountDownTime)%60;
			DIG_DATA_4 |= 0;
			DIG_DATA_3 |= SEG_MATH_TAB[HourBuf%10];
			DIG_DATA_2 |= SEG_MATH_TAB[MinBuf/10];
			DIG_DATA_1 |= SEG_MATH_TAB[MinBuf%10];
			if(b_LedCol)
			{
				SEGM_TWO_POINT;
			}
		}
		else
		{
			DIG_Show_Time(0, CountDownTime, 1);	      //保压时间右2位显示
		}		
	}
	// //降压阶段
	// else if(WorkStage == WORK_PREREDUCE_STAGE)	  
	// {
	// 	DIG_DATA_1 |= SEG_MATH_TAB[15];            //F
	// }			
}

/*****************************************************************
 @fun:      Keepwarm_Show
 @brief:    保温模式显示
 @param:    None                             
 @retval:   None
*****************************************************************/
void Keepwarm_Show(void)
{
	//保温状态灯
    ON_LED_KEEP_WARM;
	//b	
	DIG_DATA_1 |= SEG_MATH_TAB[11];	
	if(b_AutoKeepWarm)
	{
		//自动进入保温显示功能灯
		switch(ChooseFunSave)
		{
			case FUN_RICE		: 		ON_LED8;		break;
			case FUN_MIXRICE	:		ON_LED16;		break;
			case FUN_PORRIDGE	:		ON_LED1;		break;
			case FUN_CONGEE		:		ON_LED9;		break;

			case FUN_SOUP		:		ON_LED10;  		break;
			case FUN_COOKMEAT	:		ON_LED11;		break;
			case FUN_RIB		:		ON_LED12;		break;
			case FUN_CHICKEN	:		ON_LED13;		break;

			case FUN_EIGHTCONGEE:		ON_LED2;		break;
			case FUN_BEEF		:		ON_LED3;		break;
			case FUN_BEAN		:		ON_LED4;		break;
			case FUN_CAKE		:		ON_LED5;		break;

			case FUN_FASTHEAT	:		ON_LED7;		break;
			case FUN_OPENEHEAT	:		ON_LED14;		break;
		}
		ON_LED_STEP_1;
		ON_LED_STEP_2;
		ON_LED_STEP_3;
		ON_LED_STEP_4;
		ON_LED_STEP_KEEP_WARM;
	}
  					
}

/*****************************************************************
 @fun:      Error_Show
 @brief:    报警错误显示E0-E11
 @param:    None                             
 @retval:   None
*****************************************************************/
void Error_Show(void)
{
	DIG_DATA_4 = 0;						
	DIG_DATA_3 = SEG_MATH_TAB[14];				 
	DIG_DATA_2 = SEG_MATH_TAB[ErrorCode%10];
	DIG_DATA_1 = 0;		
}

/*****************************************************************
 @fun:      Test_Mode_Show
 @brief:    查看参数显示
 @param:    None                             
 @retval:   None
*****************************************************************/
void Test_Mode_Show(void)
{
	if(TestShow < TEST_SHOW_NUM)
	{
		//参数显示清除数码管显示内容
		DIG_DATA_4 = 0;
		DIG_DATA_3 = 0;				
		DIG_DATA_2 = 0;
		DIG_DATA_1 = 0;
	}
		
	switch(TestShow)
	{
		case 0:					//1--b  基本传感器数据
			if(SendShow == 0)
			{
				DIG_Show_Data(SEG_MATH_TAB[1], SEGM_G, SEGM_G, SEG_MATH_TAB[11]);
			}
			else if(SendShow == 1)              //Bot_Temp 底部温度
			{
				HourBuf = Bot_Temp/100;		  
				MinBuf = Bot_Temp%100;				
				DIG_DATA_4 = SEGM_D;
				
				if(REL_PORT) 
				{
					DIG_DATA_4 |= SEGM_G;	
				} 						
			}
			else if(SendShow == 2)              //底部AD值
			{
				HourBuf = Ad_Bot/100;
				MinBuf = Ad_Bot%100;				
				DIG_DATA_4 = DIG_b;	      
			}
			else if(SendShow == 3)              //压力开关AD值
			{
				HourBuf = b_PressureOn/100;
				MinBuf = b_PressureOn%100;
				
				DIG_DATA_4 = DIG_P;	       
			}
			else if(SendShow == 4)            //干簧管信号            
			{
				HourBuf = b_LidClosed/100;
				MinBuf = b_LidClosed%100;
				
				DIG_DATA_4 = DIG_L;		      
			}
			else if(SendShow == 5)            //市电电压有效值           
			{
				HourBuf = AC_Vol_Rms/100;
				MinBuf = AC_Vol_Rms%100;
				
				DIG_DATA_4 = DIG_U;		      
			}
			else if(SendShow == 6)            //单次零点检测时间250us*次数          
			{
				HourBuf = ZeroTimesShow/100;
				MinBuf = ZeroTimesShow%100;
				
				DIG_DATA_4 = SEGM_D+SEGM_E+SEGM_F+SEGM_G;		      
			}
			else if(SendShow == 7)            //继电器强制动作次数        
			{
				HourBuf = ZeroTimeoutCnt/100;
				MinBuf = ZeroTimeoutCnt%100;
				
				DIG_DATA_4 = SEGM_B;		      
			}
			else if(SendShow == SEND_SHOW_NUM_1)            //食物量的时间        
			{
				HourBuf = JudgeLidMin/100;
				MinBuf = JudgeLidMin%100;
				
				DIG_DATA_4 = DIG_J;		      
			}
			
			
			//更新内容
			if(SendShow >= 1 && SendShow <= SEND_SHOW_NUM_1)
			{							
				DIG_Show_Data(0, SEG_MATH_TAB[HourBuf%10], SEG_MATH_TAB[MinBuf/10], SEG_MATH_TAB[MinBuf%10]);			
			}
						
			break;

		case 1:					//2--S  发送操作指令
			if(SendShow==0)
			{
				DIG_Show_Data(0,0,SEG_MATH_TAB[Fc_ID[SendShow]>>4],SEG_MATH_TAB[Fc_ID[SendShow]&0x0f]);
				DIG_DATA_4 = DIG_I;
				DIG_DATA_3 = DIG_D;
				SEGM_TWO_POINT;
			}
			else
			{
				DIG_Show_Data(SEG_MATH_TAB[Fc_ID[(SendShow-1)*2+1]>>4],SEG_MATH_TAB[(Fc_ID[(SendShow-1)*2+1]&0x0f)],SEG_MATH_TAB[Fc_ID[(SendShow-1)*2+2]>>4],SEG_MATH_TAB[(Fc_ID[(SendShow-1)*2+2]&0x0f)]);
			}																																																																																		
			break;
			
		default: break;	
	}			
}


/*****************************************************************
 @fun:      Factory_Show
 @brief:    工厂检测模式显示
 @param:    None                             
 @retval:   None
*****************************************************************/
void Factory_Show(void)
{

	switch(FactoryTestData)	
	{
		case FACTORY_TEST_COUNT: 		    				
			if(b_Auto_test) 
			{
				//显示PASS
				DIG_DATA_4 |= DIG_P;    
				DIG_DATA_3 |= SEG_MATH_TAB[10];
				DIG_DATA_2 |= SEG_MATH_TAB[5];
				DIG_DATA_1 |= SEG_MATH_TAB[5];	
				break;	
			}
		   // LED_TEST_COUNT; 				        		   		 					
			DIG_DATA_4 |= SEG_MATH_TAB[0];
			DIG_DATA_3 |= SEG_MATH_TAB[0];		 
			DIG_DATA_2 |= SEG_MATH_TAB[CountDownTime/10];	 
			DIG_DATA_1 |= SEG_MATH_TAB[CountDownTime%10];
			if(b_LedCol)	
			{
				SEGM_TWO_POINT;		
			}

			break;	
		case FACTORY_TEST_START:					    	
			if(b_Auto_test)
			{				
				if(b_LidClosed == FALSE)
				{
					//开关量变高,显示PASS
					FactoryTestData = FACTORY_TEST_COUNT;
				}
				else
				{
					DIG_DATA_4 |= HOT_RUN_TAB[HorseCount][0];    
					DIG_DATA_3 |= HOT_RUN_TAB[HorseCount][1];
					DIG_DATA_2 |= HOT_RUN_TAB[HorseCount][2];
					DIG_DATA_1 |= HOT_RUN_TAB[HorseCount][3];					
				}
				break;
			} 
		   // LED_TEST_START;				
			//超温报警显示HOT
			if(b_BotTempOut == 1)   
			{
				if(b_LedCol)
				{
					DIG_DATA_3 |= DIG_H;		 
					DIG_DATA_2 |= SEGM_C|SEGM_D|SEGM_E|SEGM_G;	 
					DIG_DATA_1 |= SEGM_D|SEGM_E|SEGM_F|SEGM_G;			
				}	    					    		
			}
			else
			{
				DIG_DATA_4 |= HOT_RUN_TAB[HorseCount][0];    
				DIG_DATA_3 |= HOT_RUN_TAB[HorseCount][1];
				DIG_DATA_2 |= HOT_RUN_TAB[HorseCount][2];
				DIG_DATA_1 |= HOT_RUN_TAB[HorseCount][3];				
			}		    				    	
			break;
		case FACTORY_TEST_STEP18: FACTORY_TEST_LED18;
			break;

		case FACTORY_TEST_STEP17: FACTORY_TEST_LED17;
			break;
		
		case FACTORY_TEST_STEP16: FACTORY_TEST_LED16;
			break;
			
		case FACTORY_TEST_STEP15: FACTORY_TEST_LED15;
			break;

		case FACTORY_TEST_STEP14: FACTORY_TEST_LED14;
			break;

		case FACTORY_TEST_STEP13: FACTORY_TEST_LED13;
			break;
		
		case FACTORY_TEST_STEP12: FACTORY_TEST_LED12; 
			break;

		case FACTORY_TEST_STEP11: FACTORY_TEST_LED11;
			break;
	
		case FACTORY_TEST_STEP10: FACTORY_TEST_LED10;
			break;

		case FACTORY_TEST_STEP9: FACTORY_TEST_LED9;
			break;
	
		case FACTORY_TEST_STEP8: FACTORY_TEST_LED8;
			break;
		
		case FACTORY_TEST_STEP7: FACTORY_TEST_LED7;
			break;
	
		case FACTORY_TEST_STEP6: FACTORY_TEST_LED6;	
			break;	
		
		case FACTORY_TEST_STEP5: FACTORY_TEST_LED5;	
			break;	      
		
		case FACTORY_TEST_STEP4: FACTORY_TEST_LED4;
			break;
			
		case FACTORY_TEST_STEP3: FACTORY_TEST_LED3;
			break;
  						
		case FACTORY_TEST_STEP2: FACTORY_TEST_LED2;
			break;					
					
		case FACTORY_TEST_STEP1: FACTORY_TEST_LED1;	
			break;		
							
		case FACTORY_TEST_STEP0:           //版本号
			FACTORY_TEST_LED0;
			if(FactoryTestData == FACTORY_TEST_STEP0)
			{
				DIG_DATA_4 = SEG_MATH_TAB[PROGRAMMER_VERSION];				
				DIG_DATA_3 = SEG_MATH_TAB[PROGRAMMER_NUM1];		 
				DIG_DATA_2 = SEG_MATH_TAB[PROGRAMMER_NUM2];	 
				DIG_DATA_1 = SEG_MATH_TAB[PROGRAMMER_NUM3];					
			}
								
			break;			
		default:  break;	
	}
	//数码管显示12：34
	if(FactoryTestData >= FACTORY_TEST_STEP2 && FactoryTestData <= FACTORY_TEST_STEP15)
	{
		DIG_DATA_4 = SEG_MATH_TAB[1];				
		DIG_DATA_3 = SEG_MATH_TAB[2];		 
		DIG_DATA_2 = SEG_MATH_TAB[3];	 
		DIG_DATA_1 = SEG_MATH_TAB[4];
		SEGM_TWO_POINT;			
	}	
}								


/***********************************************************
设置显示数据函数 主函数8ms调用
***********************************************************/
void LED_Task(void)
{	
	//复位所有LED
	LED_Off();

	//跑马圈计数 160ms=8ms*20
	if(++HorseShowTime160ms >= 20)	
	{
		HorseShowTime160ms = 0;
		if(++HorseCount >= 13)
		{
			HorseCount = 1;			
		}
	}
	
    //上电显示
	if(SysStatus == POWERON_MODE)         
	{
		Power_On_Show();	
	}
	else if(SysStatus == WAITING_MODE)    //待机
	{
		if(b_Standby)     //省电模式显示
		{
			if(b_LedCol)
			{
	    			//--:--闪烁			
				DIG_DATA_4 |= SEGM_G;
				DIG_DATA_3 |= SEGM_G;
				DIG_DATA_2 |= SEGM_G;
				DIG_DATA_1 |= SEGM_G;	
				SEGM_TWO_POINT;	
			}
		}
		else
		{
			Waiting_Mode_Show();
		}	

	}
	else if(SysStatus == CHOOSE_FUN_MODE)                              //选择功能
	{
		Fun_Choose_Show();
	}
	else if(SysStatus == WORK_MODE && ErrorCode == NO_ERROR)           //工作
	{
		Work_Mode_Show();
	}
	else if(SysStatus == KEEP_WARM_MODE && ErrorCode == NO_ERROR)      //保温
	{
		Keepwarm_Show();
	}
	else if(SysStatus == FACTORY_TEST_MODE && ErrorCode == NO_ERROR)   //工厂
	{
		Factory_Show();
	}
	else if(ErrorCode != NO_ERROR)                                     //报警
	{
		Error_Show();
	}
	
	//参数查看, 优先级最高
	if(b_TestShow)
	{
		Test_Mode_Show();    
	}	
}



/**********************************************************
函数名称：Set_Addr_Value
函数功能：更新LED模块内部某个显示LEDDATA的数据
入口参数：Addr - 需要更新的地址
		  Mask - 数据掩码
出口参数：
备    注：
**********************************************************/
void Set_Addr_Value(unsigned char addr, unsigned char mask)
{
	unsigned char data = 0;
	
	#ifdef MODE_COM_8
	LEDADD = addr;
	#endif

	#ifdef MODE_COM_16
	LEDADD = addr | 0x10;
	#endif
		
	if(DispData[0] & mask)
		BSET(data, C_LED_COM0);
	#if COM_NUMBER >=2
	if(DispData[1] & mask)
		BSET(data, C_LED_COM1);
	#endif
	#if COM_NUMBER >=3
	if(DispData[2] & mask)
		BSET(data, C_LED_COM2);
	#endif
	#if COM_NUMBER >=4
	if(DispData[3] & mask)
		BSET(data, C_LED_COM3);
	#endif
	#if COM_NUMBER >=5
	if(DispData[4] & mask)
		BSET(data, C_LED_COM4);
	#endif
	#if COM_NUMBER >=6
	if(DispData[5] & mask)
		BSET(data, C_LED_COM5);
	#endif
	#if COM_NUMBER >=7
	if(DispData[6] & mask)
		BSET(data, C_LED_COM6);	
	#endif
	#if COM_NUMBER >=8
	if(DispData[7] & mask)
		BSET(data, C_LED_COM7);	
	#endif
	LEDDATA = data;
}

/***********************************************************
初始化LED模块
***********************************************************/
void Init_LED_Module(void)
{
	
	LCDCON0 = 0B00000000;                  //COM0-COM7设为普通IO
	LCDCON1 = 0B11111111;                  //COM8-COM15设为COM
	SEGEN0 = 0B11111111;                   //SEG0-SEG7设为SEG
	SEGEN1 = 0B00000000;                   //SEG8-SEG15设为普通IO
	SEGEN2 = C_LED_SEGCUR;           //设置SEG驱动电流	
	
	LEDADD = 0X10;					//使用16COM
	LCDCON = (0x40 | FRENQUENCY);    //使能LED,禁止LCD,设置频率

}

/***********************************************************
LED模块驱动函数,循环点亮所有com口
***********************************************************/
void LED_Drive(void)
{
	LED_COM_OUT;
	LED_SEG_OUT;
	//设置LED内部显示RAM的值
	Set_Addr_Value(C_LED_SEGA|0X80, 0x01);//设置SEGA
	#if SEG_NUMBER >=2
	Set_Addr_Value(C_LED_SEGB|0X80, 0x02);//设置SEGB
	#endif
	#if SEG_NUMBER >=3
	Set_Addr_Value(C_LED_SEGC|0X80, 0x04);//设置SEGC
	#endif
	#if SEG_NUMBER >=4
	Set_Addr_Value(C_LED_SEGD|0X80, 0x08);//设置SEGD
	#endif
	#if SEG_NUMBER >=5
	Set_Addr_Value(C_LED_SEGE|0X80, 0x10);//设置SEGE
	#endif
	#if SEG_NUMBER >=6
	Set_Addr_Value(C_LED_SEGF|0X80, 0x20);//设置SEGF
	#endif
	#if SEG_NUMBER >=7
	Set_Addr_Value(C_LED_SEGG|0X80, 0x40);//设置SEGG
	#endif
	#if SEG_NUMBER >=8
	Set_Addr_Value(C_LED_SEGP|0X80, 0x80);//设置SEGP
	#endif
	#if SEG_NUMBER >=9
	Set_Addr_Value(C_LED_SEGH|0X80, 0x100);//设置SEG9
	#endif
	#if SEG_NUMBER >=10
	Set_Addr_Value(C_LED_SEGI|0X80, 0x200);//设置SEG10
	#endif
	#if SEG_NUMBER >=11
	Set_Addr_Value(C_LED_SEGJ|0X80, 0x400);//设置SEG11
	#endif
	
	LEDADD |= 0x40;					//SEG口输出LCDDATA的数据
}





