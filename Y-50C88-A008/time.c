#include "time.h"

/*****************************************************************
 @fun:      StandbyTimeStart
 @brief:    自动时间处理
 @param:    None                             
 @retval:   None
*****************************************************************/
void StandbyTimeStart(void)
{
	if((SysStatus == FACTORY_TEST_MODE && (FactoryTestData < FACTORY_TEST_START||b_Auto_test == TRUE)))
	{
		//工厂测试下,30S无操作则退出工厂测试
		if(KeyFlag == 0x00)     
		{
			if(++StandbyTimeCnt >= 60)      
			{
				StandbyTimeCnt = 0;
				Cancel();	
			}
		}
		else
		{
			StandbyTimeCnt = 0;	
		}						
	}	
	else if(SysStatus == WAITING_MODE)	  
	{
		//待机状态两分钟无操作进入省电模式
		if(KeyFlag == 0x00)      
		{
			if((++StandbyTimeCnt) >= 240)  
			{
				StandbyTimeCnt = 0;
				b_Standby = 1;
			}
		}
		else
		{
			StandbyTimeCnt = 0;
			b_Standby = 0;
		}
	}			
}


/*****************************************************************
 @fun:      ErrorTimeStart
 @brief:    报警时间处理
 @param:    None                             
 @retval:   None
*****************************************************************/
void ErrorTimeStart(void)
{
	if((ErrorCode != NO_ERROR || b_BotTempOut))
	{
		if(++ErrorSoundTime >= 6)	  
		{
			ErrorSoundTime = 0;
			ERROR_SOUND;
		}
	}
	else 
	{
		ErrorSoundTime = 0;	
	}	
}


/*****************************************************************
 @fun:      PresetTimeStart
 @brief:    预约时间处理
 @param:    None                             
 @retval:   None
*****************************************************************/
void PresetTimeStart(void)
{
	if(SysStatus == WORK_MODE) 	 
	{
		if(WorkStage == WORK_PRESET_STAGE)   //预约时间剩下50+countDownTime，开始工作
		{
			if((++PresetTimeS) >= 120)
			{
				PresetTimeS = 0;
				if(PresetTimeM <= 0)
				{
					PresetTimeM = 60;
					PresetTimeH--;
				}
				PresetTimeM--;
			}
			if(PresetTimeH <= ((50+CountDownTime)/60) && PresetTimeM <= ((50+CountDownTime)%60) && PresetTimeS >= 2) //预约结束烹饪开始
			{
				WorkStage = WORK_HEAT_STAGE;   //进入加热阶段				
				PresetTimeH = 0;
				PresetTimeM = 0;					 
				START_SOUND;		 
			}
		}
	}	
}

/*****************************************************************
 @fun:      CountDownTimeStart
 @brief:    保压时间处理
 @param:    None                             
 @retval:   None
*****************************************************************/
void CountDownTimeStart(void)
{	
	if(SysStatus == FACTORY_TEST_MODE && FactoryTestData == FACTORY_TEST_COUNT)
	{
		if((++CountTimeS) < 120) return;
		CountTimeS = 0;
		
		if(CountDownTime > 0)
		{
			CountDownTime--;		
		}
		
		if(CountDownTime == 0)
		{
			Cancel();      //工厂模式倒计时结束直接进入待机
			FINISH_SOUND;
			ChooseFunSave = 0;
			SysStatus = KEEP_WARM_MODE;
		}
		return;
	}
	
	if(SysStatus != WORK_MODE)
	{
		CountTimeS = 0;
		return;
	}

	if(SysStatus == WORK_MODE && WorkStage == WORK_COUNTDOWN_STAGE)
	{
		if(WorkStage == WORK_COUNTDOWN_STAGE)
		{
			CountTimeS++;
			if(CountTimeS < 120) return;
				CountTimeS = 0;

			if(CountDownTime > 0)
			{
				CountDownTime--;
			}		
		}

		if(CountDownTime == 0)
		{
			Cancel();				
			SysStatus = KEEP_WARM_MODE;
			b_AutoKeepWarm = 1;
			FINISH_SOUND;			
		}					
	}	
}


/*****************************************************************
 @fun:      KeepWarmTimeStart
 @brief:    保温时间处理, 默认米饭和蛋糕5小时保温，其他24小时，直接保温24小时
 @param:    None                             
 @retval:   None
*****************************************************************/	
void KeepWarmTimeStart(void)		
{
	if(SysStatus != KEEP_WARM_MODE)
	{
		KeepWarmS = 0;
		KeepWarmM = 0;
		KeepWarmH = 0;
		return;
	}
	
	if((++KeepWarmS) < 120)return;
	KeepWarmS = 0;
	if((++KeepWarmM) < 60) return;
	KeepWarmM = 0;
	
	if(ChooseFunSave == FUN_RICE || ChooseFunSave == FUN_MIXRICE || ChooseFunSave == FUN_CAKE) //米饭类或蛋糕时间为5小时保温
	{
		if((++KeepWarmH) < 5) 
			return;
	}
	else  //其他为24小时保温
	{
		if((++KeepWarmH) < 24) 
			return;
	}
	ChooseFunSave = 0;
	b_AutoKeepWarm = 0;
	Cancel();
	FINISH_SOUND; 	
}


/*****************************************************************
 @fun:      WorkTimeStart
 @brief:    工作时间处理
 @param:    None                             
 @retval:   None
*****************************************************************/
void WorkTimeStart(void)
{	
	if(SysStatus != WORK_MODE || (WorkStage != WORK_HEAT_STAGE && WorkStage != WORK_COUNTDOWN_STAGE))
	{
		WorkTimeS = 0;
		WorkTimeM = 0;
		WorkTimeH = 0;
		return;
	}
	
	if(++WorkTimeS < 120)
		return;
	WorkTimeS = 0;
	
	if(++WorkTimeM >= 60)
	{
		WorkTimeM = 0;
		if(++WorkTimeH >= 24)
		{
			WorkTimeH = 24;
		}
	}	
}


/*****************************************************************
 @fun:      ShortTime
 @brief:    短计时器
 @param:    None                             
 @retval:   None
*****************************************************************/
void ShortTime(void)	
{
	if (!b_ShortOn) return;
	if (++ShortCntL >= 120)
	{
		ShortCntL = 0;
		if (++ShortCntM >= 240) ShortCntM = 240;
	}
}

void AutoStartFun()
{
	if(SysStatus == CHOOSE_FUN_MODE)
	{
		if(KeyFlag == 0x00)
		{		
			if(++StandbyTimeCnt >= 14)
			{
				StandbyTimeCnt = 0;
				SysStatus = WORK_MODE;
				if(PresetTimeH == 0 && PresetTimeM == 0)
				{
					WorkStage = WORK_HEAT_STAGE; //加热状态
				}
				else
				{
					WorkStage = WORK_PRESET_STAGE; //预约状态
				}
				
				if(ChooseFun == FUN_OPENEHEAT)	//直接进入倒计时
				{
					WorkStage = WORK_COUNTDOWN_STAGE;
				}
				ChooseFunSave = ChooseFun;
				CountDownTimeSave = CountDownTime; 
				WorkStep = 0;
				b_JudgeLidOk = 0;
				JudgeLidCnt = 0;
				JudgeLidMin = 0;

				START_SOUND;			
			}			
		}
		else
		{
			StandbyTimeCnt=0;
		}
	}
}

/*****************************************************************
 @fun:      Time_Deal
 @brief:    时间处理函数, 主函数500ms调用
 @param:    None                             
 @retval:   None
*****************************************************************/
void Time_Deal(void)
{
	StandbyTimeStart();     //待机时间处理
	ErrorTimeStart();       //报警时间处理
	Relay_Duty_Control();   //继电器间歇控制
	AutoStartFun();			//功能自动开始
	
	if(ErrorCode != NO_ERROR)
	{
		return;		
	}
	//有报警时不计时
	ShortTime();            //短计时1
	PresetTimeStart();      //预约时间
	CountDownTimeStart();   //保压时间
	KeepWarmTimeStart();    //保温时间
	WorkTimeStart();        //工作时间		
}