#include "time.h"

/*****************************************************************
 @fun:      StandbyTimeStart
 @brief:    �Զ�ʱ�䴦��
 @param:    None                             
 @retval:   None
*****************************************************************/
void StandbyTimeStart(void)
{
	if((SysStatus == FACTORY_TEST_MODE && (FactoryTestData < FACTORY_TEST_START||b_Auto_test == TRUE)))
	{
		//����������,30S�޲������˳���������
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
		//����״̬�������޲�������ʡ��ģʽ
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
 @brief:    ����ʱ�䴦��
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
 @brief:    ԤԼʱ�䴦��
 @param:    None                             
 @retval:   None
*****************************************************************/
void PresetTimeStart(void)
{
	if(SysStatus == WORK_MODE) 	 
	{
		if(WorkStage == WORK_PRESET_STAGE)   //ԤԼʱ��ʣ��50+countDownTime����ʼ����
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
			if(PresetTimeH <= ((50+CountDownTime)/60) && PresetTimeM <= ((50+CountDownTime)%60) && PresetTimeS >= 2) //ԤԼ������⿿�ʼ
			{
				WorkStage = WORK_HEAT_STAGE;   //������Ƚ׶�				
				PresetTimeH = 0;
				PresetTimeM = 0;					 
				START_SOUND;		 
			}
		}
	}	
}

/*****************************************************************
 @fun:      CountDownTimeStart
 @brief:    ��ѹʱ�䴦��
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
			Cancel();      //����ģʽ����ʱ����ֱ�ӽ������
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
 @brief:    ����ʱ�䴦��, Ĭ���׷��͵���5Сʱ���£�����24Сʱ��ֱ�ӱ���24Сʱ
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
	
	if(ChooseFunSave == FUN_RICE || ChooseFunSave == FUN_MIXRICE || ChooseFunSave == FUN_CAKE) //�׷���򵰸�ʱ��Ϊ5Сʱ����
	{
		if((++KeepWarmH) < 5) 
			return;
	}
	else  //����Ϊ24Сʱ����
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
 @brief:    ����ʱ�䴦��
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
 @brief:    �̼�ʱ��
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
					WorkStage = WORK_HEAT_STAGE; //����״̬
				}
				else
				{
					WorkStage = WORK_PRESET_STAGE; //ԤԼ״̬
				}
				
				if(ChooseFun == FUN_OPENEHEAT)	//ֱ�ӽ��뵹��ʱ
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
 @brief:    ʱ�䴦����, ������500ms����
 @param:    None                             
 @retval:   None
*****************************************************************/
void Time_Deal(void)
{
	StandbyTimeStart();     //����ʱ�䴦��
	ErrorTimeStart();       //����ʱ�䴦��
	Relay_Duty_Control();   //�̵�����Ъ����
	AutoStartFun();			//�����Զ���ʼ
	
	if(ErrorCode != NO_ERROR)
	{
		return;		
	}
	//�б���ʱ����ʱ
	ShortTime();            //�̼�ʱ1
	PresetTimeStart();      //ԤԼʱ��
	CountDownTimeStart();   //��ѹʱ��
	KeepWarmTimeStart();    //����ʱ��
	WorkTimeStart();        //����ʱ��		
}