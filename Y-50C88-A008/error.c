#include "error.h"

/*****************************************************************
 @fun:      Error_Deal
 @brief:    ������������,������ѭ������
 @param:    None                             
 @retval:   None
*****************************************************************/
void Error_Deal(void)
{
	static v_uint16 E3_delaycount = 0;    //ѹ�����ؼ����ʱ
	//����ģʽ����ģʽ�򹤳�ģʽ����ʱ��ⱨ��
	if(SysStatus == WORK_MODE || SysStatus == KEEP_WARM_MODE || (SysStatus == FACTORY_TEST_MODE && FactoryTestData >= FACTORY_TEST_START))
	{
		//���ɻָ�E4
		if(ErrorCode == ERROR_E4)	   
		{
			return;			
		}

		//E3ѹ�����ؿ�·
		if(Ad_Bot <= BOT_TEMP_70 && b_PressureOn == TRUE)
		{
			if(++E3_delaycount >= 1250)	//��ʱ1S
			{
				E3_delaycount = 0;
				ErrorCode = ERROR_E3;				
			}
			return;			
		}
		E3_delaycount = 0;

		//���ϸ�E7
		if((b_LidClosed == FALSE) && ((SysStatus == WORK_MODE) || (SysStatus == FACTORY_TEST_MODE && FactoryTestData >= FACTORY_TEST_START)))	
		{
			//����������Ĺ��ܼ�⿪���豨��
			if(!(ChooseFun == FUN_OPENEHEAT))
			{
				ErrorCode = ERROR_E7;
				return;					
			}	
		}
		
		//E8��ѹ����
		if(AC_Vol_Rms >= 265)
		{
			ErrorCode = ERROR_E8;	
			return;			
		}
		
		//E9��ѹ����
		if(AC_Vol_Rms <= 155 && AC_Vol_Rms >= 85)
		{
			ErrorCode = ERROR_E9;
			return;	
		}
		
        //�ײ�NTC��·E1
		if(Ad_Bot < 2)		   
		{
			ErrorCode = ERROR_E1;	
			return;
		}
		
        //�ײ�NTC��·E2
		if(Ad_Bot >= 252)	  
		{ 
			ErrorCode = ERROR_E2;
			return;
		}
		

		
	    //ѹ�����ض�·��©�� E4
		if(SysStatus == WORK_MODE && WorkStage == WORK_HEAT_STAGE && WorkTimeH >= 1)
		{   
			ErrorCode = ERROR_E4;
			return;
		}			
	}	
	ErrorCode = NO_ERROR;		//��������
	E3_delaycount = 0;	
}
