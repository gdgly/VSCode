#include "delay.h"

//΢�뼶�Ǿ�׼��ʱ����
void DelayXus(unsigned int x)
{
	while(--x);
}

//���뼶�Ǿ�׼��ʱ����
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









