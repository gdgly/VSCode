#ifndef _DISPLAY_H_
#define	_DISPLAY_H_

#include "board_define.h"


/* ���� */
#define SEGM_A 0x01	   //0b00000001
#define SEGM_B 0x02	   //0b00000010
#define SEGM_C 0x04	   //0b00000100
#define SEGM_D 0x08	   //0b00001000
#define SEGM_E 0x10	   //0b00010000
#define SEGM_F 0x20	   //0b00100000
#define SEGM_G 0x40	   //0b01000000
#define SEGM_DP 0x80   //0b10000000

#define DIG_L  (SEGM_D + SEGM_E + SEGM_F)                       //��ĸL
#define DIG_P  (SEGM_A + SEGM_B + SEGM_E + SEGM_F + SEGM_G)     //��ĸP
#define DIG_H  (SEGM_B + SEGM_C + SEGM_E + SEGM_F + SEGM_G)     //��ĸH
#define DIG_N  (SEGM_A + SEGM_B + SEGM_C + SEGM_E + SEGM_F)     //��ĸN
#define DIG_b  (SEGM_C + SEGM_D + SEGM_E + SEGM_F + SEGM_G)     //��ĸb
#define DIG_U  (SEGM_B + SEGM_C + SEGM_D + SEGM_E + SEGM_F)     //��ĸU
#define DIG_J  (SEGM_B + SEGM_C + SEGM_D + SEGM_E)     					//��ĸJ
#define DIG_I  (SEGM_B + SEGM_C)     														//��ĸI
#define DIG_D  (SEGM_B + SEGM_C + SEGM_D + SEGM_E + SEGM_G)     //��ĸD

//����ܴ������� 4-1
#define DIG_DATA_1      DispData[3]	 
#define DIG_DATA_2      DispData[2]
#define DIG_DATA_3      DispData[1]
#define DIG_DATA_4      DispData[0]

#define LED_DATA_1      DispData[4]
#define LED_DATA_2      DispData[5]
#define LED_DATA_3      DispData[6]
#define LED_DATA_4      DispData[7]

#define SEGM_TWO_POINT	 {DIG_DATA_2 |= SEGM_DP; DIG_DATA_3 |= SEGM_DP;}    //������������

/* LED�������,�Զ���*/
#define ON_LED1     (LED_DATA_1 |= B6) 
#define ON_LED2     (LED_DATA_1 |= B3) 
#define ON_LED3     (LED_DATA_1 |= B2) 
#define ON_LED4     (LED_DATA_1 |= B4) 
#define ON_LED5     (LED_DATA_1 |= B5) 
#define ON_LED6     (LED_DATA_1 |= B1) 
#define ON_LED7     (LED_DATA_1 |= B7) 
#define ON_LED8     (LED_DATA_1 |= B0)
      
#define ON_LED9     (LED_DATA_2 |= B6) 
#define ON_LED10    (LED_DATA_2 |= B3) 
#define ON_LED11    (LED_DATA_2 |= B2)
#define ON_LED12    (LED_DATA_2 |= B4) 
#define ON_LED13    (LED_DATA_2 |= B5) 
#define ON_LED14    (LED_DATA_2 |= B1) 
#define ON_LED15    (LED_DATA_2 |= B7) 
#define ON_LED16    (LED_DATA_2 |= B0)
    
#define ON_LED17    (LED_DATA_3 |= B6) 
#define ON_LED18    (LED_DATA_3 |= B3) 
#define ON_LED19    (LED_DATA_3 |= B2)
#define ON_LED20    (LED_DATA_3 |= B4)
#define ON_LED21    (LED_DATA_3 |= B5)
#define ON_LED22    (LED_DATA_3 |= B1) 
#define ON_LED23    (LED_DATA_3 |= B7) 
#define ON_LED24    (LED_DATA_3 |= B0)
        
#define ON_LED25    (LED_DATA_4 |= B6)
#define ON_LED26    (LED_DATA_4 |= B3)
#define ON_LED27    (LED_DATA_4 |= B2) 
#define ON_LED28    (LED_DATA_4 |= B4) 
#define ON_LED29    (LED_DATA_4 |= B5)
#define ON_LED30    (LED_DATA_4 |= B1)
#define ON_LED31    (LED_DATA_4 |= B7)
#define ON_LED32    (LED_DATA_4 |= B0)


/* �ر�LED */
#define OFF_LED1     (LED_DATA_1 &= (~B6)) 
#define OFF_LED2     (LED_DATA_1 &= (~B3)) 
#define OFF_LED3     (LED_DATA_1 &= (~B2)) 
#define OFF_LED4     (LED_DATA_1 &= (~B4)) 
#define OFF_LED5     (LED_DATA_1 &= (~B5)) 
#define OFF_LED6     (LED_DATA_1 &= (~B1)) 
#define OFF_LED7     (LED_DATA_1 &= (~B7)) 
#define OFF_LED8     (LED_DATA_1 &= (~B0))
       
#define OFF_LED9     (LED_DATA_2 &= (~B6)) 
#define OFF_LED10    (LED_DATA_2 &= (~B3)) 
#define OFF_LED11    (LED_DATA_2 &= (~B2))
#define OFF_LED12    (LED_DATA_2 &= (~B4)) 
#define OFF_LED13    (LED_DATA_2 &= (~B5))
#define OFF_LED14    (LED_DATA_2 &= (~B1)) 
#define OFF_LED15    (LED_DATA_2 &= (~B7))
#define OFF_LED16    (LED_DATA_2 &= (~B0))
         
#define OFF_LED17    (LED_DATA_3 &= (~B6))
#define OFF_LED18    (LED_DATA_3 &= (~B3)) 
#define OFF_LED19    (LED_DATA_3 &= (~B2))
#define OFF_LED20    (LED_DATA_3 &= (~B4)) 
#define OFF_LED21    (LED_DATA_3 &= (~B5))
#define OFF_LED22    (LED_DATA_3 &= (~B1))
#define OFF_LED23    (LED_DATA_3 &= (~B7)) 
#define OFF_LED24    (LED_DATA_3 &= (~B0))
      
#define OFF_LED25    (LED_DATA_4 &= (~B6))
#define OFF_LED26    (LED_DATA_4 &= (~B3)) 
#define OFF_LED27    (LED_DATA_4 &= (~B2))
#define OFF_LED28    (LED_DATA_4 &= (~B4)) 
#define OFF_LED29    (LED_DATA_4 &= (~B5))
#define OFF_LED30    (LED_DATA_4 &= (~B1))
#define OFF_LED31    (LED_DATA_4 &= (~B7)) 
#define OFF_LED32    (LED_DATA_4 &= (~B0))

/* ���ܵ�ON,�Զ��� */            
#define FUN_RICE	    	1    //�׷�
#define FUN_MIXRICE			2     //������
#define FUN_PORRIDGE		3    //ϡ��
#define FUN_CONGEE			4     //����
#define FUN_SOUP			5     //����
#define FUN_COOKMEAT		6    //����
#define FUN_RIB				7     //�Ź�
#define FUN_CHICKEN  		8     //��Ѽ��
#define FUN_EIGHTCONGEE		9    //�˱���
#define FUN_BEEF        	10    //ţ����
#define FUN_BEAN			11    //�����
#define FUN_CAKE			12     //����
#define FUN_FASTHEAT		13    //��ʳ����
#define FUN_OPENEHEAT		14     //������֭

#define ON_LED_KEEP_WARM    ON_LED15
#define ON_LED_PRESETTIME   ON_LED6
        
#define ON_LED_STEP_1		ON_LED22    //ѹ����1
#define ON_LED_STEP_2		ON_LED23    //ѹ����2
#define ON_LED_STEP_3		ON_LED20    //ѹ����3
#define ON_LED_STEP_4	   	ON_LED19	//ѹ����4
#define ON_LED_STEP_KEEP_WARM	   	ON_LED18    //ѹ����4

//������������˳��
#define FACTORY_TEST_LED0		ON_LED8;ON_LED9;ON_LED16;ON_LED1;ON_LED10;ON_LED13;ON_LED11;ON_LED12;ON_LED2;ON_LED5;ON_LED3;ON_LED4;ON_LED6;ON_LED18;ON_LED19;ON_LED15;ON_LED20;ON_LED23;ON_LED7; ON_LED22;ON_LED14;ON_LED14;ON_LED14;
#define FACTORY_TEST_LED1		ON_LED8;
#define FACTORY_TEST_LED2  		ON_LED9;
#define FACTORY_TEST_LED3  		ON_LED16;
#define FACTORY_TEST_LED4  		ON_LED1;
#define FACTORY_TEST_LED5  		ON_LED10;
#define FACTORY_TEST_LED6  		ON_LED13;
#define FACTORY_TEST_LED7  		ON_LED11;
#define FACTORY_TEST_LED8  		ON_LED12;
#define FACTORY_TEST_LED9  		ON_LED2;
#define FACTORY_TEST_LED10 		ON_LED5;
#define FACTORY_TEST_LED11 		ON_LED3;
#define FACTORY_TEST_LED12 		ON_LED4;
#define FACTORY_TEST_LED13 		ON_LED6; ON_LED18; ON_LED19;
#define FACTORY_TEST_LED14 		ON_LED15; ON_LED20; ON_LED23;
#define FACTORY_TEST_LED15 		ON_LED7; ON_LED22; ON_LED14;
#define FACTORY_TEST_LED16 		ON_LED14;  
#define FACTORY_TEST_LED17		0
#define FACTORY_TEST_LED18		0
#define FACTORY_TEST_LEDSTART    ON_LED14    //���һ����ⲽ�����˸


/* ���ܵ�OFF,�Զ��� */

/**************************************************
����LEDģ��
**************************************************/
//#define		LEDMODE			MODE_COM_16	 //MODE_COM_8λ8COMģʽ��MODE_COM_16Ϊ16COMģʽ
//ģʽѡ��:MODE_COM_8λ8COMģʽ��MODE_COM_16Ϊ16COMģʽ
//#define		MODE_COM_8		
#define		MODE_COM_16

#define     C_LED_SEGCUR    SEGCUR_14MA  //SEG�ڵ���
#define		SEG_NUMBER		8            //SEG�ڸ���
#define		COM_NUMBER		7			 //COM�ڸ���
#define		FRENQUENCY		Fosc_256	 //ˢ��Ƶ��

#define	LED_COM_OUT		(TRISD=0B00000000)   	//COM��Ϊ���
#define	LED_SEG_OUT 	(TRISA=0B00000000)   	//SEG��Ϊ���

//�����ζ�Ӧ��оƬ����SEG�ڣ�����SEG�ڸ�������ǰn��ֵ������ʹ�õ���16
#ifdef MODE_COM_8	//ǰ8��COM��
#define		C_LED_SEGA		SEG1  //A�ζ�ӦMCU��SEG��
#define		C_LED_SEGB		SEG0  //B�ζ�ӦMCU��SEG��
#define		C_LED_SEGC		SEG6  //C�ζ�ӦMCU��SEG��
#define		C_LED_SEGD		SEG7  //D�ζ�ӦMCU��SEG��
#define		C_LED_SEGE		SEG5  //E�ζ�ӦMCU��SEG��
#define		C_LED_SEGF		SEG3  //F�ζ�ӦMCU��SEG��
#define		C_LED_SEGG		SEG4  //G�ζ�ӦMCU��SEG��
#define		C_LED_SEGP		SEG2  //DP�ζ�ӦMCU��SEG��
#define		C_LED_SEGH		16    //NC
#define		C_LED_SEGI		16    //NC
#define		C_LED_SEGJ		16    //NC

#else if MODE_COM_16	//��8��COM��

#define		C_LED_SEGA		(SEG1+8)  //A�ζ�ӦMCU��SEG��
#define		C_LED_SEGB		(SEG0+8)  //B�ζ�ӦMCU��SEG��
#define		C_LED_SEGC		(SEG6+8)  //C�ζ�ӦMCU��SEG��
#define		C_LED_SEGD		(SEG7+8)  //D�ζ�ӦMCU��SEG��
#define		C_LED_SEGE		(SEG5+8) //E�ζ�ӦMCU��SEG��
#define		C_LED_SEGF		(SEG3+8)  //F�ζ�ӦMCU��SEG��
#define		C_LED_SEGG		(SEG4+8)  //G�ζ�ӦMCU��SEG��
#define		C_LED_SEGP		(SEG2+8)  //DP�ζ�ӦMCU��SEG��
#define		C_LED_SEGH		16    //NC
#define		C_LED_SEGI		16    //NC
#define		C_LED_SEGJ		16    //NC

#endif
/**************************************************
����COM��
**************************************************/
//����λ��Ӧ��оƬ����COM�ڣ�����COM�ڸ�������ǰn��ֵ������ʹ�õ���16
#define		C_LED_COM0		COM11	//COM0��ӦMCU��COM��
#define		C_LED_COM1		COM8	//COM1��ӦMCU��COM��
#define		C_LED_COM2		COM9	//COM2��ӦMCU��COM��
#define		C_LED_COM3		COM10	//COM3��ӦMCU��COM��
#define		C_LED_COM4		COM15	//COM4��ӦMCU��COM��
#define		C_LED_COM5		COM14	//COM5��ӦMCU��COM��
#define		C_LED_COM6		COM13	//COM6��ӦMCU��COM��
#define		C_LED_COM7		COM12	//COM6��ӦMCU��COM��


/**************************************************
LEDģ�鳣������,�����޸�
**************************************************/
#define     SEG0    0
#define     SEG1    1
#define     SEG2    2
#define     SEG3    3
#define     SEG4    4
#define     SEG5    5  //MCU��SEG�ڵ�ַ
#define     SEG6    6
#define     SEG7    7
#define     SEG8    8
#define     SEG9    9
#define     SEG10   10

#define     COM0    0
#define     COM1    1
#define     COM2    2
#define     COM3    3  //MCU��COM�ڵ�ַ
#define     COM4    4
#define     COM5    5
#define     COM6    6
#define		COM7	7
#define     COM8    0
#define     COM9    1
#define     COM10   2
#define     COM11   3  //MCU��COM�ڵ�ַ
#define     COM12   4
#define     COM13   5
#define     COM14   6
#define		COM15	7

#define		SEGCUR_0MA		0X00
#define     SEGCUR_2MA      0X10
#define     SEGCUR_4MA      0X20
#define     SEGCUR_6MA      0X30
#define     SEGCUR_8MA      0X40
#define     SEGCUR_10MA     0X50
#define     SEGCUR_12MA     0X60
#define     SEGCUR_14MA     0X70  //MCU��SEG�ڵ���
#define     SEGCUR_16MA     0X80
#define     SEGCUR_18MA     0X90
#define     SEGCUR_20MA     0XA0
#define     SEGCUR_22MA     0XB0
#define     SEGCUR_24MA     0XC0
#define     SEGCUR_26MA     0XD0
#define     SEGCUR_28MA     0XE0
#define     SEGCUR_30MA     0XF0

#define		Fosc_64			0x00
#define		Fosc_128		0x01
#define		Fosc_256		0x02
#define		Fosc_512		0x03
#define		Fosc_1024		0x04
#define		Fosc_2048		0x05
#define		Fosc_4096		0x06
#define		Fosc_8192		0x07
#define		Fosc_16384		0x08
#define		Fosc_32768		0x09
#define		Fosc_65536		0x0a
#define		Fosc_131072		0x0b
		
/**************************************************
**************************************************/
#define     C_LED_COM      ((1<<C_LED_COM0)|(1<<C_LED_COM1)|(1<<C_LED_COM2)|(1<<C_LED_COM3)\
                            |(1<<C_LED_COM4)|(1<<C_LED_COM5)|(1<<C_LED_COM6)|(1<<C_LED_COM7))
#define		C_LED_COMA		C_LED_COM&0XFF
#define		C_LED_COMB		(C_LED_COM>>8)&0XFF 
#define     C_LED_SEG       ((1<<C_LED_SEGA)|(1<<C_LED_SEGB)|(1<<C_LED_SEGC)|(1<<C_LED_SEGD)|\
							(1<<C_LED_SEGE)|(1<<C_LED_SEGF)|(1<<C_LED_SEGG)|(1<<C_LED_SEGP)|\
							(1<<C_LED_SEGH)|(1<<C_LED_SEGI)|(1<<C_LED_SEGJ))
#define     C_LED_SEG0      C_LED_SEG&0XFF                             
#define     C_LED_SEG1      (C_LED_SEG>>8)&0XFF 

/**************************************************
**************************************************/


//��������
void LED_Drive(void);
void LED_Task(void);		//������ʾ����
void Init_LED_Module(void);

#endif
