#ifndef __BOARD_DEFINE_H
#define __BOARD_DEFINE_H

#include <cms.h>



//����汾��
#define  PROGRAMMER_VERSION		10	
#define  PROGRAMMER_NUM1		0     
#define  PROGRAMMER_NUM2		0   
#define  PROGRAMMER_NUM3		9

//λ����
typedef 
  union
  {
	  struct
	  {
	      unsigned b0:1;
	      unsigned b1:1;
	      unsigned b2:1;
	      unsigned b3:1;	
	      unsigned b4:1;
	      unsigned b5:1;	
	      unsigned b6:1;
	      unsigned b7:1;		
	  }one;
	  unsigned char all;
  }bits;
  
  
/* �������Ͷ��� */
typedef signed char			int8;
typedef signed int			int16;
typedef signed long			int32;
typedef unsigned char 	    uint8;
typedef unsigned int        uint16;
typedef unsigned long       uint32;

typedef volatile bit                v_bit;
typedef volatile unsigned char 	    v_uint8;
typedef volatile unsigned int       v_uint16;


//ͨ�ú궨��
#define    BSET(x,y)    x|=(1<<(y))	       //��1
#define    BCLR(x,y)    x&=~(1<<(y))	   //��0


/* ���ÿ��س������� */
#define TRUE			1
#define FALSE			0

/* BITλ�������� */
#define  B0        0x01
#define  B1        0x02
#define  B2        0x04
#define  B3        0x08
#define  B4        0x10
#define  B5        0x20
#define  B6        0x40
#define  B7        0x80





//����ģʽ sysStatus
#define WAITING_MODE				1   //����
#define CHOOSE_FUN_MODE			2		//����ѡ��	
#define WORK_MODE						3   //����
#define KEEP_WARM_MODE			4   //����
#define FACTORY_TEST_MODE		5   //�����Լ�
#define POWERON_MODE				6   //����

//�����׶�workStage
#define NO_WORK_STAGE					0	//��״̬
#define WORK_PRESET_STAGE			1	//ԤԼ״̬
#define WORK_HEAT_STAGE				2	//����״̬
#define WORK_COUNTDOWN_STAGE	3	//����ʱ״̬
#define WORK_PREREDUCE_STAGE    4 	//��ѹ״̬

//�ڸ� tasteCase
#define NO_TASTE_CASE					0	//�޿ڸ�
#define HARD_TASTE_CASE				1	//����
#define STANDARD_TASTE_CASE		2	//��׼
#define SOFT_TASTE_CASE				3	//Ũ��

//ԤԼ presetState
#define  NO_PRESET_STATE		0  //��ԤԼ
#define  TIMER_STATE				1  //��ʱ
#define  PRESET_STATE				2  //ԤԼ����


//ChooseFun
#define NO_FUN				0
#define FUN_RICE	    1				//�׷�
#define FUN_MIXRICE		2				//������
#define FUN_PORRIDGE	3				//ϡ��
#define FUN_CONGEE		4				//����

#define FUN_SOUP			5				//����
#define FUN_COOKMEAT	6				//����
#define FUN_RIB				7				//�Ź�
#define FUN_CHICKEN  	8				//��Ѽ��

#define FUN_EIGHTCONGEE	9			//�˱���
#define FUN_BEEF				10		//ţ����
#define FUN_BEAN				11		//�����
#define FUN_CAKE				12		//����

#define FUN_FASTHEAT		13		//��ʳ����
#define FUN_OPENEHEAT		14		//������֭



#include "var_global.h"
#include "delay.h"
#include "display.h"
#include "key.h"
#include "Sound.h"
#include "adc.h"
#include "error.h"
#include "time.h"
#include "cook.h"






#endif


