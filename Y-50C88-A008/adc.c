#include "adc.h"


/* NTC AD-�¶ȱ� ����10K 
   ���ݲ�ԶR25=100K+-1% B25/50=3990k +-1%����
*/
const uint8 REF_TEMP_TAB[]={ 	
  	0,0,0,0,0,0,  0,0,1,3,5,                  //AD 0-10
	7,9,11,13,14,  16,17,19,20,21,            //11-20
	22,24,25,26,27,	28,29,30,31,32,           //21-30
	32,33,34,35,36, 37,37,38,39,40,           //31-40
	40,41,42,42,43, 44,44,45,46,46,           //41-50
	47,48,48,49,49, 50,51,51,52,52,           //51-60
	53,53,54,54,55, 56,56,57,57,58,           //61-70
	58,59,59,60,60, 61,61,62,62,63,           //71-80
	63,64,65,65,66, 66,67,67,68,68,           //81-90
	68,69,69,70,70, 71,71,72,72,73,           //91-100
	73,74,74,75,75, 76,76,77,77,78,           //101-110
	78,79,79,80,80, 81,81,82,82,83,           //111-120
	83,83,84,84,85, 85,86,86,87,87,           //121-130
	88,88,89,89,90, 90,91,91,92,92,           //131-140
	93,93,94,94,95, 95,96,97,97,98,           //141-150
	98,99,99,100,100, 101,102,102,103,103,    //151-160
	104,104,105,105,106, 107,107,108,108,109, //161-170
	110,110,111,112,112, 113,114,114,115,116, //171-180
	116,117,118,118,119, 120,120,121,122,123, //181-190
	123,124,125,126,127, 127,128,129,130,131, //191-200
	132,133,134,135,136, 137,138,139,140,141, //201-210
	142,143,144,146,147, 148,149,150,152,153, //211-220
	154,156,157,159,160, 162,164,166,167,169, //221-230
	171,173,176,178,180, 183,186,189,192,195, //231-240
	198,202,206,211,216,                      //241-245
};


/*****************************************************************
 @fun:      Get_Lid_Data
 @brief:    ���ϸ��źŲ��� ��ѭ�� 8*25=200ms
 @param:    None                            
 @retval:   None
*****************************************************************/
void Get_Lid_Data(void)	   
{ 
	static v_uint8 s_lidcount = 0;    //ȥ������	
  
    //��ǰ����״̬
	if(b_LidClosed == FALSE)     
	{
		if(LID_PORT == TRUE)           
		{
			if(++s_lidcount >= LID_DEBOUNCE_TH)   //ȥ��25*8=200ms 
			{
				s_lidcount = 0;
				b_LidClosed = TRUE; 	    //�ϸǵ�λ  
				
				b_Standby = 0;
				StandbyTimeCnt = 0;
				if(ErrorCode == NO_ERROR && SysStatus != POWERON_MODE)
				{
					CLOSELID_SOUND;	
				}
			}     
		}
		else
		{
			s_lidcount = 0;
		}
	}
	else                         //��ǰ�ϸ�״̬
	{
		if(LID_PORT == FALSE)
		{
			if(++s_lidcount >= LID_DEBOUNCE_TH)    //ȥ��
			{
				s_lidcount = 0;
			  	b_LidClosed = FALSE;      //���� 
			  	
				b_Standby = 0;
				StandbyTimeCnt = 0;
				if(ErrorCode == NO_ERROR && SysStatus != POWERON_MODE)
				{
					OPENLID_SOUND;	
				}
			}     
		}
		else
		{
			s_lidcount = 0;
		}
	}      	
}


/*****************************************************************
 @fun:      Get_Pressure_Switch_Data
 @brief:    ѹ�����ؼ��  �ж�250us����
 @param:    None                            
 @retval:   None
 @history:  V1.0  2019-3-21  ���汾
			V1.1  2019-4-25  ѹ�����رպ�ȥ��ʱ����1s��Ϊ400ms
*****************************************************************/
void Get_Pressure_Switch_Data(void)
{
	static v_uint16 s_pscount = 0;    //ѹ������ȥ������
		
    /*ѹ�����������·���*/
    //ѹ�����رպ�
	if(b_PressureOn == FALSE)     
	{
		if(Ad_Pressure_Raw < 15)   //2019.6.18              
		{
			if(++s_pscount >= 1600)   //1600*250us=400ms
			{
				s_pscount = 0;
				b_PressureOn = TRUE;  //�Ͽ�	 
			}     
		}
		else
		{
			s_pscount = 0;
		}
	}
	else          //ѹ�����ضϿ�
	{
		if(Ad_Pressure_Raw > 20)
		{
			if(++s_pscount >= 24)    //����6ms�в���
			{
				s_pscount = 0;
			  	b_PressureOn = FALSE;      //�պ�
			}     
		}
		else
		{
			s_pscount = 0;	
		}
	}				
}

/**********************************************************
 @fun:      Get_AC_Voltage
 @brief:    ��ȡ��ѹ����ADƽ��ֵ  �ж�250us����
			�����ɼ�100ms
 @param:    None                            
 @retval:   None
 @history:  V1.0  2019-3-21  ���汾
            V1.1  2019-4-25  ֹͣ�ɼ��������Ӽ̵����Ͽ�
**********************************************************/
void Get_AC_Voltage(void)
{
	static v_uint16 s_volcount = 0;            //��ѹADȥ������
	
	//ѹ�����ضϿ����߼̵����Ͽ�ֹͣ�ɼ�,�������
	if(b_PressureOn == 1 || (REL_PORT == 0 && ErrorCode != ERROR_E8 && ErrorCode != ERROR_E9))
	{
		Ad_Vol_Sum = 0;
		s_volcount = 0;
		return;	
	}
		
	Ad_Vol_Sum += Ad_Pressure_Raw;        //����AD���
	
	if(++s_volcount >= 400)               //250us*400=100ms
	{
		s_volcount = 0;
		b_VolData_OK = 1;	              //400�β���������,���Դ�������	
	}

}

/**********************************************************
 @fun:      Get_AC_Rms
 @brief:    ��ȡAC��ѹ��Чֵ  ������500ms����  			
 @param:    None                            
 @retval:   None
 @history:  V1.0  2019-3-21  ���汾
			V1.1  2019-4-25  1-��ѹADƽ��ֵȥ��������18�θ�Ϊ6�� 
							 2-��ѹ�ֵ�VRMS_LEVEL_220�ķ�Χ��210-230V��Ϊ210-235V
**********************************************************/
void Get_AC_Rms(void)
{
	static v_uint8  s_maxvol = 0x00;     //�����ֵ
	static v_uint8  s_minvol = 0xFF;	 //����Сֵ
	static v_uint16 s_sumvol = 0;        //ƽ��AD��
    static v_uint8  s_voltimes = 0;      //ƽ��ADɨ�����
	
	Ad_Vol_Raw = (v_uint8) (Ad_Vol_Sum/400);   //���400�β���ADƽ��ֵ
	Ad_Vol_Sum = 0;
	
	s_sumvol += Ad_Vol_Raw;          //��ADƽ��ֵ�����ۼ�
	
	//��ȡ�����Сֵ
	if(Ad_Vol_Raw > s_maxvol)
	{
		s_maxvol = Ad_Vol_Raw;	
	}
	if(Ad_Vol_Raw < s_minvol)
	{
		s_minvol = Ad_Vol_Raw;
	}	
		
	if(++s_voltimes >= 6)           //500ms*6=3s
	{
		s_sumvol -= s_maxvol;
		s_sumvol -= s_minvol;
		
		Ad_Vol_Avg = (v_uint8) (s_sumvol>>2); 

		if(Ad_Vol_Avg > 66)
		{
			AC_Vol_Rms = 265;	  //����
		}
		else if(Ad_Vol_Avg < 39)
		{
			AC_Vol_Rms = 155;     //����
		}
		else
		{
			AC_Vol_Rms = Ad_Vol_Avg*4;   //��ѹ��Чֵ�����ϵ
		}
		 
		/*��ѹ��Чֵ�ֵ�*/
		if(AC_Vol_Rms <= 190)
		{
			Vrms_Level = VRMS_LEVEL_175;	
		}
		else if(AC_Vol_Rms <= 210)
		{
			Vrms_Level = VRMS_LEVEL_198;
		}
		else if(AC_Vol_Rms <= 235)
		{
			Vrms_Level = VRMS_LEVEL_220;
		}
		else if(AC_Vol_Rms <= 265)
		{
			Vrms_Level = VRMS_LEVEL_242;	
		}
				
		s_voltimes = 0;
		s_maxvol = 0x00;
		s_minvol = 0xFF;
		s_sumvol = 0;  			
		
	}
	
	b_VolData_OK = 0;     //������һ�κ��־����			

}

/**********************************************************
 @fun:      Get_Zero
 @brief:    ������  �ж�250us����
 @param:    None                            
 @retval:   None
 @history:  V1.0  2019-3-21  ���汾
            V1.1  2019.3.27  �޸��˼���߼�����һ��AD�ﵽ��ֵֵ�ſ�ʼ��ʱ
**********************************************************/
void Get_Zero(void)
{
	static v_uint16 s_zerotimes = 0;    //�����ܶ�ʱ
	static v_uint8  s_zerocnt9ms = 0;   //9ms��ʱ
	static v_uint8  s_highcount = 0;    //AD������ֵ����
	static v_uint8  s_lowcount = 0;     //AD������ֵ����
	
		
	//ʹ�ܹ�����
	if(b_Zero_EN == 1)
	{
		s_zerotimes++;               
		/* ����ⳬʱ5s */
		if(s_zerotimes >= 20000)
		{
			s_zerotimes = 0;
			b_ZeroTimeout = 1;    //���㳬ʱ��־, �̵���ǿ�ƶ�����־
			
			/*�����ر�������*/
			b_Zero_EN = 0;	
			b_ZeroWave_OK = 0;
			s_zerocnt9ms = 0;
			s_lowcount = 0;
			s_highcount = 0;
			return;	
		}	
		
		/* 9ms��ѹAD��� */
		if(Ad_Pressure_Raw >= 20)         //AD�ﵽ��ֵ
		{
			s_zerocnt9ms++;               //9ms��ʱ++						
			if(b_ZeroWave_OK == 0)        //AD�ߴ���δ����Ҫ��
			{
				s_lowcount = 0;           //��AD��������
				if(++s_highcount >= 34)   //34������Ҫ�� �ñ�־λ     
				{
					s_highcount = 0;
					b_ZeroWave_OK = 1;    
				}				
			}			
						
		}
		else                                //ADС����ֵ
		{
			if(s_zerocnt9ms > 0)            //��֤��һ��AD������>=20�ſ�ʼ��ʱ9ms
			{
				s_zerocnt9ms++;             //9ms��ʱ++
				if(b_ZeroWave_OK == 0)
				{
					if(++s_lowcount >= 2)   //����2�ε���20���¼��
					{
						s_lowcount = 0;     //��������
						s_highcount = 0;
						s_zerocnt9ms = 0;      
					}				
				}				
			}			
		}
		
        /* 9ms��⵽�� �ж��Ƿ���� */
		if(s_zerocnt9ms >= 36)
		{			
			if(b_ZeroWave_OK)
			{
				b_ZeroWave_OK = 0;
				s_zerocnt9ms = 0;				
				b_Zero = 1;                     //��⵽��� ��ʼ��ʱ				
				b_Zero_EN = 0;
				
				//�����¼��ʱ�� ������ʾ
				ZeroTimesShow = s_zerotimes;       
				s_zerotimes = 0;                //��⵽���� ��ʱ����			
			}
			else
			{
				//���¼��
				s_lowcount = 0;
				s_highcount = 0;
				s_zerocnt9ms = 0;
			}
		}		
	}		
}



/*****************************************************************
 @fun:      Get_Temp_Data
 @brief:    ������8ms ���û�ȡNTC ADֵ
			18��ȥ�������С ȡƽ��
			8*18=144ms
 @param:    None                            
 @retval:   None
*****************************************************************/
void Get_Temp_Data(void)
{
	static v_uint8  s_admax = 0x00;    //�����ֵ
	static v_uint8  s_admin = 0xFF;	//����Сֵ
	static v_uint16 s_adsum = 0;  
    static v_uint8  s_adtimes = 0;       //ADɨ�����
		
	s_adsum += Ad_Bot_Raw;
	
	//��ȡ�����Сֵ
	if(Ad_Bot_Raw > s_admax)
	{
		s_admax = Ad_Bot_Raw;	
	}
	if(Ad_Bot_Raw < s_admin)
	{
		s_admin = Ad_Bot_Raw;
	}

	//ȥ��18��
	if(++s_adtimes >= 18)    
	{		
		s_adsum -= s_admax;
		s_adsum -= s_admin;
		
		Ad_Bot = (v_uint8) (s_adsum>>4);    //ȡ16��ƽ��ֵ
						
		if(Ad_Bot > 245)
		{
			Bot_Temp = 223;	 //����
		}
		else if(Ad_Bot < 8)
		{
			Bot_Temp = 0;     //����
		}
		else
		{
			Bot_Temp = REF_TEMP_TAB[Ad_Bot];	//�ӱ��в���¶�ֵ
		} 
		
		s_adtimes = 0;
		s_admax = 0x00;
		s_admin = 0xFF;
		s_adsum = 0;						       		
	}	
	
	b_AdBot_OK = 0;		

}




/**********************************************************
ADCת������
**********************************************************/
uint8 Get_AD(uint8 ch)
{
	v_uint8 i = 0;
	//v_uint16 advalue;
	uint8 adresult;
	
	ADCON1 = 0x80;	         //�Ҷ���,��10λAD
	
	if(ch & 0x10)		 
	{
		ADCON1 |= 0x40;	  //����CHS4
	}
	
	ch &= 0x0f;       //ȡͨ������λ
	
	ADCON0 = 0x00;	     //16��Ƶ0x40  8��Ƶ0x00
	ADCON0 |= (unsigned char)(ch << 2);   //����ͨ�� 
	ADCON0 |= 0x01;						     //ʹ��ADC	
	
	asm("nop");
	asm("nop");
	
	GODONE = 1;							//��ʼת�� 
	
	while(GODONE)
	{
		if(0 == (--i))					//ad�ȴ���ʱ����ֹ�β��������ѭ��
			return 0;
	}
		
	//advalue = (unsigned int)(ADRESH<<8);
	//advalue |= (unsigned int)ADRESL;	       //��ȡ10λAD
	
	//adresult = (unsigned char) (advalue >> 2);  //ȡ��8λ����
	
	adresult = ADRESH << 6;
	adresult |= (ADRESL>>2);
	 
	return adresult;
			
}







