#ifndef __BOARD_DEFINE_H
#define __BOARD_DEFINE_H

#include <cms.h>



//程序版本号
#define  PROGRAMMER_VERSION		10	
#define  PROGRAMMER_NUM1		0     
#define  PROGRAMMER_NUM2		0   
#define  PROGRAMMER_NUM3		9

//位域定义
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
  
  
/* 数据类型定义 */
typedef signed char			int8;
typedef signed int			int16;
typedef signed long			int32;
typedef unsigned char 	    uint8;
typedef unsigned int        uint16;
typedef unsigned long       uint32;

typedef volatile bit                v_bit;
typedef volatile unsigned char 	    v_uint8;
typedef volatile unsigned int       v_uint16;


//通用宏定义
#define    BSET(x,y)    x|=(1<<(y))	       //置1
#define    BCLR(x,y)    x&=~(1<<(y))	   //置0


/* 常用开关常量定义 */
#define TRUE			1
#define FALSE			0

/* BIT位常量定义 */
#define  B0        0x01
#define  B1        0x02
#define  B2        0x04
#define  B3        0x08
#define  B4        0x10
#define  B5        0x20
#define  B6        0x40
#define  B7        0x80





//工作模式 sysStatus
#define WAITING_MODE				1   //待机
#define CHOOSE_FUN_MODE			2		//功能选择	
#define WORK_MODE						3   //工作
#define KEEP_WARM_MODE			4   //保温
#define FACTORY_TEST_MODE		5   //工厂自检
#define POWERON_MODE				6   //开机

//工作阶段workStage
#define NO_WORK_STAGE					0	//无状态
#define WORK_PRESET_STAGE			1	//预约状态
#define WORK_HEAT_STAGE				2	//加热状态
#define WORK_COUNTDOWN_STAGE	3	//倒计时状态
#define WORK_PREREDUCE_STAGE    4 	//降压状态

//口感 tasteCase
#define NO_TASTE_CASE					0	//无口感
#define HARD_TASTE_CASE				1	//清香
#define STANDARD_TASTE_CASE		2	//标准
#define SOFT_TASTE_CASE				3	//浓郁

//预约 presetState
#define  NO_PRESET_STATE		0  //无预约
#define  TIMER_STATE				1  //定时
#define  PRESET_STATE				2  //预约设置


//ChooseFun
#define NO_FUN				0
#define FUN_RICE	    1				//米饭
#define FUN_MIXRICE		2				//杂粮饭
#define FUN_PORRIDGE	3				//稀饭
#define FUN_CONGEE		4				//煮粥

#define FUN_SOUP			5				//煲汤
#define FUN_COOKMEAT	6				//炖肉
#define FUN_RIB				7				//排骨
#define FUN_CHICKEN  	8				//鸡鸭肉

#define FUN_EIGHTCONGEE	9			//八宝粥
#define FUN_BEEF				10		//牛羊肉
#define FUN_BEAN				11		//豆蹄筋
#define FUN_CAKE				12		//蛋糕

#define FUN_FASTHEAT		13		//冷食加热
#define FUN_OPENEHEAT		14		//开盖收汁



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


