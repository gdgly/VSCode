#include "delay.h"

//微秒级非精准延时函数
void DelayXus(unsigned int x)
{
	while(--x);
}

//毫秒级非精准延时函数
void DelayXms(unsigned int x)
{
	unsigned char i = 0;;
	
	while(x--)
	{
		asm("clrwdt");
		while(--i)
		{
			asm("nop");
			asm("nop");
			asm("nop");
			asm("nop");
			asm("nop");
		}
	}
}









