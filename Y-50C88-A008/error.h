#ifndef _ERRORDEAL_H
#define _ERRORDEAL_H

#include "board_define.h"


#define NO_ERROR	0      
#define	ERROR_E1	1     //底部传感器开路
#define	ERROR_E2	2     //底部传感器短路
#define	ERROR_E3	3     //压力开关开路 底部低于70度而且压力开关断开
#define	ERROR_E4	4     //压力开关短路或漏气
#define	ERROR_E7	7     //开合盖检测
#define	ERROR_E8	8     //电压过高
#define	ERROR_E9	9     //电压过低


void Error_Deal(void);



#endif