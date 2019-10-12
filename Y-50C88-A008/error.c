#include "error.h"

/*****************************************************************
 @fun:      Error_Deal
 @brief:    报警错误处理函数,主函数循环调用
 @param:    None                             
 @retval:   None
*****************************************************************/
void Error_Deal(void)
{
	static v_uint16 E3_delaycount = 0;    //压力开关检测延时
	//工作模式或保温模式或工厂模式加热时检测报警
	if(SysStatus == WORK_MODE || SysStatus == KEEP_WARM_MODE || (SysStatus == FACTORY_TEST_MODE && FactoryTestData >= FACTORY_TEST_START))
	{
		//不可恢复E4
		if(ErrorCode == ERROR_E4)	   
		{
			return;			
		}

		//E3压力开关开路
		if(Ad_Bot <= BOT_TEMP_70 && b_PressureOn == TRUE)
		{
			if(++E3_delaycount >= 1250)	//延时1S
			{
				E3_delaycount = 0;
				ErrorCode = ERROR_E3;				
			}
			return;			
		}
		E3_delaycount = 0;

		//开合盖E7
		if((b_LidClosed == FALSE) && ((SysStatus == WORK_MODE) || (SysStatus == FACTORY_TEST_MODE && FactoryTestData >= FACTORY_TEST_START)))	
		{
			//除开盖煮外的功能检测开盖需报警
			if(!(ChooseFun == FUN_OPENEHEAT))
			{
				ErrorCode = ERROR_E7;
				return;					
			}	
		}
		
		//E8电压过高
		if(AC_Vol_Rms >= 265)
		{
			ErrorCode = ERROR_E8;	
			return;			
		}
		
		//E9电压过低
		if(AC_Vol_Rms <= 155 && AC_Vol_Rms >= 85)
		{
			ErrorCode = ERROR_E9;
			return;	
		}
		
        //底部NTC开路E1
		if(Ad_Bot < 2)		   
		{
			ErrorCode = ERROR_E1;	
			return;
		}
		
        //底部NTC短路E2
		if(Ad_Bot >= 252)	  
		{ 
			ErrorCode = ERROR_E2;
			return;
		}
		

		
	    //压力开关短路或漏气 E4
		if(SysStatus == WORK_MODE && WorkStage == WORK_HEAT_STAGE && WorkTimeH >= 1)
		{   
			ErrorCode = ERROR_E4;
			return;
		}			
	}	
	ErrorCode = NO_ERROR;		//报警清零
	E3_delaycount = 0;	
}
