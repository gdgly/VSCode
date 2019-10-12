#include "cook.h"


/*****************************************************************
 @fun:      BotHeatTime
 @brief:    �����̼�Ъ����, ��϶����ǰ�ȵ���BotHeatOff()
 @param:    uint8 ontm    ����ʱ�� second
            uint8 offtm   ֹͣʱ�� second                 
 @retval:   None
*****************************************************************/
void Heat_Time_Select(uint8 ontm, uint8 offtm)
{
	//�޷�	
	if(ontm > 63)
	{
		ontm = 63;		
	}
	
	if(offtm > 63)
	{
		offtm = 63;		
	}
	
	//ת����0.5s����	
	RelOnCnt = ontm*2;
	RelOffCnt = offtm*2;
	
	b_BotHeatEn = TRUE;	
	b_BotHeatOn = FALSE;						
}

/*****************************************************************
 @fun:      BotHeatOn
 @brief:    ������ȫ���ʼ���
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
 @brief:    ������ֹͣ����
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
 @brief:    �����̼�ʱ��1
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
 @brief:    ������ˮ����
 @param:    None                             
 @retval:   None
*****************************************************************/
void FactoryTest(void)
{
		//��װ���
	if(b_Auto_test == TRUE)
	{
		BotHeatOn();
		//��װ�޷�������,���ò����㿪��
		return;
	}
	//���±������ɻָ�
	if(b_BotTempOut == TRUE)
	{
		BotHeatOff();
		return;	
	}	
	//����135
	if(Ad_Bot >= BOT_TEMP_135)
	{
		BotHeatOff();	
		b_BotTempOut = TRUE;
		return;	
	}
	//������ˮ����   
	switch(WorkStep)
	{
		case 0:                                          
			ShortTimeOn(); 
			WorkStep++;
			break;
		case 1:
			if(b_PressureOn)
			{
				FactoryTestData = FACTORY_TEST_COUNT;     //��ѹ����뵹��ʱ
				CountDownTime = 1;                        //����ʱ1����				
				BotHeatOff();
				ShortTimeOn();
				WorkStep++;
				break;
			}												
			BotHeatOn();	   //ȫ���ʼ���		 			
			break;
		case 2:                //����ʱ�׶�
			if(b_PressureOn)
			{
				BotHeatOff();   //����ѹ���رռ̵���
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
 @brief:    �׷�����
 @param:    None                             
 @retval:   None
*****************************************************************/
void RiceHeat(void)
{
	//ѹ�����ضϿ����ߵײ�>=145C ���뱣ѹ
	if((b_PressureOn == TRUE || Ad_Bot >= BOT_TEMP_145) && WorkStage != WORK_COUNTDOWN_STAGE) 
	{
		WorkStage = WORK_COUNTDOWN_STAGE;		
		WorkStep = 5;
		ShortTimeOn();	//���¼�ʱ
		//���������ʱ��
		TotalTimeSave = WorkTimeM + CountDownTime; 
	}
	//�׷��������	
	switch(WorkStep)
	{
		case 0:
		    //ȫ���ʼ�����95��               
			if(Ad_Bot >= BOT_TEMP_95)
			{ 
				//��ѹ����205V����ͣ����2���� 
				if(AC_Vol_Rms >= 205)
				{ 
					BotHeatOff();	
				  	ShortTimeOn(); 	  //���¼�ʱ						
					WorkStep++;
				}
				else
				{  
					WorkStep = 2;     //ֱ�ӽ����2��
				}
				break;
			}
			BotHeatOn();	
			break;
		case 1 : 
		    //ͣ����2����  
			if(ShortCntM >= 2)
			{
				ShortTimeOn();	
				WorkStep++;	
				break;
			}
			BotHeatOff();									
			break;
		case 2: 
			if(Ad_Bot >= BOT_TEMP_128)       //��һ����Ъ�¶ȵ�128C
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep++;
				break;
			}
			BotHeatOn();       							
			break;
		case 3:	
			if(Ad_Bot <= BOT_TEMP_124)        //�ָ�ȫ����
			{
				ShortTimeOn();	
				WorkStep = 2;
				break;	
			}		
			if(Ad_Bot >= BOT_TEMP_135)       //�ڶ�����Ъ�¶ȵ�135C
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep++;
				break;
			}
			/*��һ��Ъ�¶ȵ�
			���ݵ�ѹ��λѡ��ͬ���ȱ��� ��Ч700W*/
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
			if(Ad_Bot <= BOT_TEMP_131)       //�ص���һ��
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep = 3;
				break;
			}
			/*�ڶ���Ъ�¶ȵ�
			���ݵ�ѹ��λѡ��ͬ���ȱ��� ��Ч500W*/
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
			//��׼�����5���Ӳ����� 
			if(ChooseFun == FUN_RICE)
			{
				if(CountDownTime <= 5)	
				{
					BotHeatOff();
					break;		
				}					
			}					

			//���Ƶײ��¶ȷ�Χ115-112			
			if(b_PressureOn == 1 || Ad_Bot >= BOT_TEMP_115)	 
			{
				BotHeatOff();	
			}  	
			else if(Ad_Bot <= BOT_TEMP_112)       
			{
				/*��ѹ�׶θ��ݵ�ѹ��λѡ��ͬ���ȱ��� ��Ч500W*/
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
 @brief:    ѹ������
 @param:    None                             
 @retval:   None
*****************************************************************/
void PressureHeat(void)
{
	//ѹ�����ضϿ����뱣ѹ
	if((b_PressureOn == TRUE) && WorkStage != WORK_COUNTDOWN_STAGE) 
	{
		WorkStage = WORK_COUNTDOWN_STAGE;
		WorkStep = 5;
		ShortTimeOn();	//���¼�ʱ
		//���������ʱ��
		TotalTimeSave = WorkTimeM + CountDownTime;
	}	
	//145C���º�ֱ�ӽ������
	if(Ad_Bot >= BOT_TEMP_145)
	{
		BotHeatOff();
		Cancel();
		FINISH_SOUND;
		return;	
	}
	//ѹ�������������
	switch(WorkStep)
	{
		case 0:
		    //ȫ���ʼ�����95��               
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
		    //ͣ����2����  
			if(ShortCntM >= 2)
			{
				ShortTimeOn();	
				WorkStep++;	
				break;
			}
			BotHeatOff();										
			break;
		case 2: 
			if(Ad_Bot >= BOT_TEMP_120)       //��һ����Ъ�¶ȵ�120C
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep++;
				break;
			}
			BotHeatOn();       							
			break;
		case 3:	
			if(Ad_Bot <= BOT_TEMP_118)        //�ָ�ȫ����
			{
				ShortTimeOn();	
				WorkStep = 2;
				break;	
			}
		
			if(Ad_Bot >= BOT_TEMP_128)       //�ڶ�����Ъ�¶ȵ�128C
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep++;
				break;
			}
			/*��һ��Ъ�¶ȵ�
			���ݵ�ѹ��λѡ��ͬ���ȱ��� ��Ч700W*/
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
			if(Ad_Bot <= BOT_TEMP_125)       //�ص���һ��
			{
				ShortTimeOn(); 				
				BotHeatOff();
				WorkStep = 3;
				break;
			}
			/*�ڶ���Ъ�¶ȵ�
			���ݵ�ѹ��λѡ��ͬ���ȱ��� ��Ч500W*/
			switch(Vrms_Level)
			{
				case VRMS_LEVEL_175:  Heat_Time_Select(16, 4);   break;
				case VRMS_LEVEL_198:  Heat_Time_Select(12, 8);   break;
				case VRMS_LEVEL_220:  Heat_Time_Select(10,10);   break;
				case VRMS_LEVEL_242:  Heat_Time_Select(8, 12);   break;
				default:              Heat_Time_Select(10,10);   break;					
			}	 				
			break;
		case 5:       //��ѹ�׶�		
			/*�����8����*/
			if(ChooseFun == FUN_PORRIDGE || ChooseFun == FUN_CONGEE || ChooseFun == FUN_EIGHTCONGEE)
			{				
				if(CountDownTime <= 8)	
				{
					BotHeatOff();
					break;		
				}	
			}		          
			//���Ƶײ��¶ȷ�Χ118-115    //ѹ�����ضϿ�,�رռ̵���			
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
 @brief:    ������
 @param:    None                             
 @retval:   None
*****************************************************************/
void OpenCook(void)
{
	if((b_PressureOn || WorkTimeM >= 30) && WorkStage != WORK_COUNTDOWN_STAGE)	
	{
		WorkStage = WORK_COUNTDOWN_STAGE;		
		WorkStep = 2;
		ShortTimeOn();	//���¼�ʱ
		//���������ʱ��
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
				//���������ʱ��
		        TotalTimeSave = WorkTimeM + CountDownTime;
				break;				
			}
			Heat_Time_Select(24, 6);     //800W		
			break;
		case 2: 
		    //ѹ������      
			if(b_PressureOn)
			{
				BotHeatOff();
				break;
			}
			//���±�־
			if(b_Opencook_OK == 0 && Ad_Bot >= BOT_TEMP_135)
			{
				BotHeatOff();
				b_Opencook_OK = 1;             //�������±�־
				break;
			}
			//�������¿����¶�110-115
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
				//û��������
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
 @brief:    ����
 @param:    None                             
 @retval:   None
*****************************************************************/
void CakeHeat(void)
{
	if(((WorkTimeM >= 30) || Ad_Bot >= BOT_TEMP_135 || b_PressureOn) && WorkStage != WORK_COUNTDOWN_STAGE)
	{
		WorkStage = WORK_COUNTDOWN_STAGE;
		WorkStep = 3;	                //���뱣ѹ���ȷ�ʽ
		ShortTimeOn();	                //���¼�ʱ
		//���������ʱ��
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
				//���������ʱ��
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
 @brief:    ��ʳ����
 @param:    None                             
 @retval:   None
*****************************************************************/
void ReheatCook(void)
{
	if((b_PressureOn || WorkTimeM >= 30) && WorkStage != WORK_COUNTDOWN_STAGE)	
	{
		WorkStage = WORK_COUNTDOWN_STAGE;		
		WorkStep = 2;
		ShortTimeOn();	//���¼�ʱ
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
			if(ShortCntM==0 && ShortCntL< 30)	 //����15S
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
			//���Ƶײ��¶ȷ�Χ118-115    //ѹ�����ضϿ�,�رռ̵���			
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
 @brief:    ���¼���
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
 @brief:    ��⿺�����������8ms����
 @param:    None                             
 @retval:   None
*****************************************************************/
void Cook_Task(void)
{
	//���ϱ�����ͣ������
	if(ErrorCode != NO_ERROR)      
	{					
		BotHeatOff();
		return;
	}

	//����������E3������������򿪼̵���  A005
	if((SysStatus == WORK_MODE || SysStatus == KEEP_WARM_MODE) && Ad_Bot <= BOT_TEMP_80 && b_PressureOn == TRUE)
	{
		BotHeatOn();
		return;	
	}
	
	switch(SysStatus)
	{
		case FACTORY_TEST_MODE:    
			//����ģʽ����			
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
			//���ȡ���ѹ����;����
			if(WorkStage == WORK_HEAT_STAGE || WorkStage == WORK_COUNTDOWN_STAGE )		
			{
				if(ChooseFun == FUN_RICE || ChooseFun == FUN_MIXRICE)
				{
					RiceHeat();	  //�׷���
				}
				else if(ChooseFun == FUN_OPENEHEAT)	
				{	
					WorkStep = 2;  //����ʱ
					OpenCook();	  //������֭
				}
				else if(ChooseFun == FUN_FASTHEAT)	
				{
					ReheatCook();	  //����
				}
				else if(ChooseFun == FUN_CAKE)	
				{
					CakeHeat();	  //����
				}
				else
				{
					PressureHeat();	 //ѹ��	
				}			
			}
			else
			{
				BotHeatOff();	
			}
			break;

		case KEEP_WARM_MODE: 
			//����ģʽ
			KeepWarmHeat(); 
			break;	
				
		default: BotHeatOff(); break;		
	}
}

/*****************************************************************
 @fun:      Relay_Duty_Control
 @brief:    �̵����������Ϳ��ƺ���  ������500ms����
 @param:    None                             
 @retval:   None
*****************************************************************/
void Relay_Duty_Control(void)
{	
	//ȫ���ʼ���
	if(b_BotHeatOn == TRUE)
	{
		//�˿�������ҹ�����û�����
		if(REL_PORT == 0 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
		{
			b_Zero_EN = 1;      //ʹ�ܹ�����
			b_RelType = 1;      //�̵�������־
		}	
	}
	else     //��Ъ���߲�����
	{
		//��Ъ����
		if(b_BotHeatEn == TRUE)
		{
			HeatCnt500ms++;
			if(HeatCnt500ms < RelOffCnt)
			{
				if(REL_PORT == 1 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
				{
					b_Zero_EN = 1;    //ʹ�ܹ�����
					b_RelType = 0;    //�̵����ر�־
				}		
			}
			else
			{			
				if(HeatCnt500ms >= (RelOffCnt + RelOnCnt))
				{
					HeatCnt500ms = 0;	
					if(REL_PORT == 1 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
					{
						b_Zero_EN = 1;    //ʹ�ܹ�����
						b_RelType = 0;    //�̵����ر�־
					}
					
				}
				else
				{	
					if(REL_PORT == 0 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
					{
						b_Zero_EN = 1;    //ʹ�ܹ�����
						b_RelType = 1;    //�̵�������־
					}
				}				
			}		
		}
		else    //������
		{
			HeatCnt500ms = 0;
			//ѹ�����ضϿ������ ��������ֱ�Ӷ���
			if(REL_PORT == 1 && b_PressureOn == 1 && RelWaitCnt >= 4000)
			{
				b_Rel_NoZero = 1;   //��������ֱ�Ӷ�����־λ
			}				
			else if(REL_PORT == 1 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
			{
				b_Zero_EN = 1;       //ʹ�ܹ�����
				b_RelType = 0;       //�̵����ر�־
			}				
		}		
	}		
}

/*****************************************************************
 @fun:      Operate_Relay_IO
 @brief:    �̵���IO�����������  �ж�250us����
 @param:    None                             
 @retval:   None
*****************************************************************/
void Operate_Relay_IO(void)
{
	//�̵������ڶ�����ʱ
	if(++RelWaitCnt >= 4000)
	{
		RelWaitCnt = 4000;     //��������	
	}		
	//ѹ�����ضϿ�ʱ�̵����ر�	
	if(b_Rel_NoZero)
	{
		b_Rel_NoZero = 0;
		REL_OFF;          //�رռ̵���
		RelWaitCnt = 0;   //�̵����������ʱ������			
	}
	else if(b_Zero)       //��ȡ������ʱ
	{
		//������ʱ5.25ms	
		if(b_RelType)	
		{
			if(++ZeroDeley >= 21)     //21*250us=5.25ms  
			{
				ZeroDeley = 0;
				b_ZeroDeley_OK = 1;
				b_Zero = 0;	
			}				
		}
		else                          //�ر���ʱ5.25ms
		{
			if(++ZeroDeley >= 21)     
			{
				ZeroDeley = 0;
				b_ZeroDeley_OK = 1;
				b_Zero = 0;	
			}				
		}
	}
	else if(b_ZeroTimeout == 1)     //�����ⳬʱ,�̵���ǿ�ƶ���
	{
		b_ZeroTimeout = 0;
		ZeroTimeoutCnt++;         //��¼ǿ�ƶ�������
		if(ZeroTimeoutCnt >= 254)
		{
			ZeroTimeoutCnt = 254;
		}
		
		if(b_RelType)
		{
			REL_ON;           //�����̵���
			RelWaitCnt = 0;   //�̵����������ʱ������  
		}
		else
		{
			REL_OFF;   //�رռ̵���
			RelWaitCnt = 0;   //�̵����������ʱ������ 
		}						
	}
		
	//��ʱ���
	if(b_ZeroDeley_OK)
	{
		b_ZeroDeley_OK = 0;
		
		if(b_RelType)
		{
			REL_ON;           //�����̵���
			RelWaitCnt = 0;   //�̵����������ʱ������ 
		}
		else
		{
			REL_OFF;          //�رռ̵���
			RelWaitCnt = 0;   //�̵����������ʱ������ 
		}
	}	
}






  
  
  
  
