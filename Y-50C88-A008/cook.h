#ifndef _COOK_H__
#define _COOK_H__


#include "board_define.h"


//发热盘加热驱动口
#define REL_PORT    RC1
#define REL_ON      RC1 = 1
#define REL_OFF     RC1 = 0


void Cook_Task(void);
void Relay_Duty_Control(void);
void Operate_Relay_IO(void);

#endif

