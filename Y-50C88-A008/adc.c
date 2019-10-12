#include "adc.h"


/* NTC AD-温度表 下拉10K 
   根据博远R25=100K+-1% B25/50=3990k +-1%换算
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
 @brief:    开合盖信号采样 主循环 8*25=200ms
 @param:    None                            
 @retval:   None
*****************************************************************/
void Get_Lid_Data(void)	   
{ 
	static v_uint8 s_lidcount = 0;    //去抖变量	
  
    //当前开盖状态
	if(b_LidClosed == FALSE)     
	{
		if(LID_PORT == TRUE)           
		{
			if(++s_lidcount >= LID_DEBOUNCE_TH)   //去抖25*8=200ms 
			{
				s_lidcount = 0;
				b_LidClosed = TRUE; 	    //合盖到位  
				
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
	else                         //当前合盖状态
	{
		if(LID_PORT == FALSE)
		{
			if(++s_lidcount >= LID_DEBOUNCE_TH)    //去抖
			{
				s_lidcount = 0;
			  	b_LidClosed = FALSE;      //开盖 
			  	
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
 @brief:    压力开关检测  中断250us调用
 @param:    None                            
 @retval:   None
 @history:  V1.0  2019-3-21  初版本
			V1.1  2019-4-25  压力开关闭合去抖时间由1s改为400ms
*****************************************************************/
void Get_Pressure_Switch_Data(void)
{
	static v_uint16 s_pscount = 0;    //压力开关去抖变量
		
    /*压力开关连接新方案*/
    //压力开关闭合
	if(b_PressureOn == FALSE)     
	{
		if(Ad_Pressure_Raw < 15)   //2019.6.18              
		{
			if(++s_pscount >= 1600)   //1600*250us=400ms
			{
				s_pscount = 0;
				b_PressureOn = TRUE;  //断开	 
			}     
		}
		else
		{
			s_pscount = 0;
		}
	}
	else          //压力开关断开
	{
		if(Ad_Pressure_Raw > 20)
		{
			if(++s_pscount >= 24)    //连续6ms有波形
			{
				s_pscount = 0;
			  	b_PressureOn = FALSE;      //闭合
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
 @brief:    获取电压采样AD平均值  中断250us调用
			连续采集100ms
 @param:    None                            
 @retval:   None
 @history:  V1.0  2019-3-21  初版本
            V1.1  2019-4-25  停止采集条件增加继电器断开
**********************************************************/
void Get_AC_Voltage(void)
{
	static v_uint16 s_volcount = 0;            //电压AD去抖变量
	
	//压力开关断开或者继电器断开停止采集,清零变量
	if(b_PressureOn == 1 || (REL_PORT == 0 && ErrorCode != ERROR_E8 && ErrorCode != ERROR_E9))
	{
		Ad_Vol_Sum = 0;
		s_volcount = 0;
		return;	
	}
		
	Ad_Vol_Sum += Ad_Pressure_Raw;        //采样AD求和
	
	if(++s_volcount >= 400)               //250us*400=100ms
	{
		s_volcount = 0;
		b_VolData_OK = 1;	              //400次采样求和完成,可以处理数据	
	}

}

/**********************************************************
 @fun:      Get_AC_Rms
 @brief:    获取AC电压有效值  主函数500ms调用  			
 @param:    None                            
 @retval:   None
 @history:  V1.0  2019-3-21  初版本
			V1.1  2019-4-25  1-电压AD平均值去抖次数由18次改为6次 
							 2-电压分档VRMS_LEVEL_220的范围由210-230V改为210-235V
**********************************************************/
void Get_AC_Rms(void)
{
	static v_uint8  s_maxvol = 0x00;     //存最大值
	static v_uint8  s_minvol = 0xFF;	 //存最小值
	static v_uint16 s_sumvol = 0;        //平均AD和
    static v_uint8  s_voltimes = 0;      //平均AD扫描次数
	
	Ad_Vol_Raw = (v_uint8) (Ad_Vol_Sum/400);   //求出400次采样AD平均值
	Ad_Vol_Sum = 0;
	
	s_sumvol += Ad_Vol_Raw;          //将AD平均值进行累加
	
	//获取最大最小值
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
			AC_Vol_Rms = 265;	  //上限
		}
		else if(Ad_Vol_Avg < 39)
		{
			AC_Vol_Rms = 155;     //下限
		}
		else
		{
			AC_Vol_Rms = Ad_Vol_Avg*4;   //电压有效值换算关系
		}
		 
		/*电压有效值分档*/
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
	
	b_VolData_OK = 0;     //处理完一次后标志清零			

}

/**********************************************************
 @fun:      Get_Zero
 @brief:    过零检测  中断250us调用
 @param:    None                            
 @retval:   None
 @history:  V1.0  2019-3-21  初版本
            V1.1  2019.3.27  修改了检测逻辑，第一次AD达到阈值值才开始计时
**********************************************************/
void Get_Zero(void)
{
	static v_uint16 s_zerotimes = 0;    //过零总定时
	static v_uint8  s_zerocnt9ms = 0;   //9ms定时
	static v_uint8  s_highcount = 0;    //AD大于阈值计数
	static v_uint8  s_lowcount = 0;     //AD低于阈值计数
	
		
	//使能过零检测
	if(b_Zero_EN == 1)
	{
		s_zerotimes++;               
		/* 零点检测超时5s */
		if(s_zerotimes >= 20000)
		{
			s_zerotimes = 0;
			b_ZeroTimeout = 1;    //过零超时标志, 继电器强制动作标志
			
			/*检测相关变量清零*/
			b_Zero_EN = 0;	
			b_ZeroWave_OK = 0;
			s_zerocnt9ms = 0;
			s_lowcount = 0;
			s_highcount = 0;
			return;	
		}	
		
		/* 9ms电压AD检测 */
		if(Ad_Pressure_Raw >= 20)         //AD达到阈值
		{
			s_zerocnt9ms++;               //9ms定时++						
			if(b_ZeroWave_OK == 0)        //AD高次数未满足要求
			{
				s_lowcount = 0;           //低AD计数清零
				if(++s_highcount >= 34)   //34次满足要求 置标志位     
				{
					s_highcount = 0;
					b_ZeroWave_OK = 1;    
				}				
			}			
						
		}
		else                                //AD小于阈值
		{
			if(s_zerocnt9ms > 0)            //保证第一个AD必须是>=20才开始计时9ms
			{
				s_zerocnt9ms++;             //9ms定时++
				if(b_ZeroWave_OK == 0)
				{
					if(++s_lowcount >= 2)   //连续2次低于20重新检测
					{
						s_lowcount = 0;     //计数清零
						s_highcount = 0;
						s_zerocnt9ms = 0;      
					}				
				}				
			}			
		}
		
        /* 9ms检测到后 判断是否零点 */
		if(s_zerocnt9ms >= 36)
		{			
			if(b_ZeroWave_OK)
			{
				b_ZeroWave_OK = 0;
				s_zerocnt9ms = 0;				
				b_Zero = 1;                     //检测到零点 开始延时				
				b_Zero_EN = 0;
				
				//保存下检测时间 用于显示
				ZeroTimesShow = s_zerotimes;       
				s_zerotimes = 0;                //检测到零点后 定时清零			
			}
			else
			{
				//重新检测
				s_lowcount = 0;
				s_highcount = 0;
				s_zerocnt9ms = 0;
			}
		}		
	}		
}



/*****************************************************************
 @fun:      Get_Temp_Data
 @brief:    主函数8ms 调用获取NTC AD值
			18次去掉最大最小 取平均
			8*18=144ms
 @param:    None                            
 @retval:   None
*****************************************************************/
void Get_Temp_Data(void)
{
	static v_uint8  s_admax = 0x00;    //存最大值
	static v_uint8  s_admin = 0xFF;	//存最小值
	static v_uint16 s_adsum = 0;  
    static v_uint8  s_adtimes = 0;       //AD扫描次数
		
	s_adsum += Ad_Bot_Raw;
	
	//获取最大最小值
	if(Ad_Bot_Raw > s_admax)
	{
		s_admax = Ad_Bot_Raw;	
	}
	if(Ad_Bot_Raw < s_admin)
	{
		s_admin = Ad_Bot_Raw;
	}

	//去抖18次
	if(++s_adtimes >= 18)    
	{		
		s_adsum -= s_admax;
		s_adsum -= s_admin;
		
		Ad_Bot = (v_uint8) (s_adsum>>4);    //取16次平均值
						
		if(Ad_Bot > 245)
		{
			Bot_Temp = 223;	 //上限
		}
		else if(Ad_Bot < 8)
		{
			Bot_Temp = 0;     //下限
		}
		else
		{
			Bot_Temp = REF_TEMP_TAB[Ad_Bot];	//从表中查得温度值
		} 
		
		s_adtimes = 0;
		s_admax = 0x00;
		s_admin = 0xFF;
		s_adsum = 0;						       		
	}	
	
	b_AdBot_OK = 0;		

}




/**********************************************************
ADC转换数据
**********************************************************/
uint8 Get_AD(uint8 ch)
{
	v_uint8 i = 0;
	//v_uint16 advalue;
	uint8 adresult;
	
	ADCON1 = 0x80;	         //右对齐,出10位AD
	
	if(ch & 0x10)		 
	{
		ADCON1 |= 0x40;	  //设置CHS4
	}
	
	ch &= 0x0f;       //取通道低四位
	
	ADCON0 = 0x00;	     //16分频0x40  8分频0x00
	ADCON0 |= (unsigned char)(ch << 2);   //设置通道 
	ADCON0 |= 0x01;						     //使能ADC	
	
	asm("nop");
	asm("nop");
	
	GODONE = 1;							//开始转换 
	
	while(GODONE)
	{
		if(0 == (--i))					//ad等待限时，防止拔插电后出现死循环
			return 0;
	}
		
	//advalue = (unsigned int)(ADRESH<<8);
	//advalue |= (unsigned int)ADRESL;	       //读取10位AD
	
	//adresult = (unsigned char) (advalue >> 2);  //取高8位数据
	
	adresult = ADRESH << 6;
	adresult |= (ADRESL>>2);
	 
	return adresult;
			
}







