opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	89F23X5
opt include "D:\PROGRA~2\CMS_ID~1.12\data\include\89f23x5.cgen.inc"
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
	FNCALL	_main,_Cook_Task
	FNCALL	_main,_Error_Deal
	FNCALL	_main,_Get_AC_Rms
	FNCALL	_main,_Get_Lid_Data
	FNCALL	_main,_Get_Temp_Data
	FNCALL	_main,_Init_System
	FNCALL	_main,_Key_Drive
	FNCALL	_main,_Key_Task
	FNCALL	_main,_LED_Drive
	FNCALL	_main,_LED_Task
	FNCALL	_main,_Sound_Deal
	FNCALL	_main,_Time_Deal
	FNCALL	_Time_Deal,_AutoStartFun
	FNCALL	_Time_Deal,_CountDownTimeStart
	FNCALL	_Time_Deal,_ErrorTimeStart
	FNCALL	_Time_Deal,_KeepWarmTimeStart
	FNCALL	_Time_Deal,_PresetTimeStart
	FNCALL	_Time_Deal,_Relay_Duty_Control
	FNCALL	_Time_Deal,_ShortTime
	FNCALL	_Time_Deal,_StandbyTimeStart
	FNCALL	_Time_Deal,_WorkTimeStart
	FNCALL	_StandbyTimeStart,_Cancel
	FNCALL	_PresetTimeStart,___awdiv
	FNCALL	_PresetTimeStart,___awmod
	FNCALL	_KeepWarmTimeStart,_Cancel
	FNCALL	_CountDownTimeStart,_Cancel
	FNCALL	_LED_Task,_Error_Show
	FNCALL	_LED_Task,_Factory_Show
	FNCALL	_LED_Task,_Fun_Choose_Show
	FNCALL	_LED_Task,_Keepwarm_Show
	FNCALL	_LED_Task,_LED_Off
	FNCALL	_LED_Task,_Power_On_Show
	FNCALL	_LED_Task,_Test_Mode_Show
	FNCALL	_LED_Task,_Waiting_Mode_Show
	FNCALL	_LED_Task,_Work_Mode_Show
	FNCALL	_Work_Mode_Show,_DIG_Show_Time
	FNCALL	_Work_Mode_Show,___lbdiv
	FNCALL	_Work_Mode_Show,___lbmod
	FNCALL	_Work_Mode_Show,___wmul
	FNCALL	_Test_Mode_Show,_DIG_Show_Data
	FNCALL	_Test_Mode_Show,___awdiv
	FNCALL	_Test_Mode_Show,___awmod
	FNCALL	_Test_Mode_Show,___lbdiv
	FNCALL	_Test_Mode_Show,___lbmod
	FNCALL	_Test_Mode_Show,___lwdiv
	FNCALL	_Test_Mode_Show,___lwmod
	FNCALL	_Fun_Choose_Show,_DIG_Show_Time
	FNCALL	_Fun_Choose_Show,___awdiv
	FNCALL	_Fun_Choose_Show,___awmod
	FNCALL	_Fun_Choose_Show,___lbdiv
	FNCALL	_Fun_Choose_Show,___lbmod
	FNCALL	_DIG_Show_Time,___lbdiv
	FNCALL	_DIG_Show_Time,___lbmod
	FNCALL	_Factory_Show,___lbdiv
	FNCALL	_Factory_Show,___lbmod
	FNCALL	_Error_Show,___lbmod
	FNCALL	_LED_Drive,_Set_Addr_Value
	FNCALL	_Key_Task,_MainK_Preset
	FNCALL	_Key_Task,_Maink_Cancel
	FNCALL	_Key_Task,_Maink_Factory
	FNCALL	_Key_Task,_Maink_Fast_Fun
	FNCALL	_Key_Task,_Maink_Test
	FNCALL	_Maink_Factory,_Cancel
	FNCALL	_Maink_Cancel,_Cancel
	FNCALL	_Key_Drive,_KscanIo
	FNCALL	_Init_System,_DelayXms
	FNCALL	_Init_System,_Init_GPIO
	FNCALL	_Init_System,_Init_LED_Module
	FNCALL	_Init_System,_Init_PWM
	FNCALL	_Init_System,_Init_TMR1
	FNCALL	_Init_System,_Init_Var
	FNCALL	_Get_AC_Rms,___lwdiv
	FNCALL	_Cook_Task,_BotHeatOff
	FNCALL	_Cook_Task,_BotHeatOn
	FNCALL	_Cook_Task,_CakeHeat
	FNCALL	_Cook_Task,_FactoryTest
	FNCALL	_Cook_Task,_KeepWarmHeat
	FNCALL	_Cook_Task,_OpenCook
	FNCALL	_Cook_Task,_PressureHeat
	FNCALL	_Cook_Task,_ReheatCook
	FNCALL	_Cook_Task,_RiceHeat
	FNCALL	_RiceHeat,_BotHeatOff
	FNCALL	_RiceHeat,_BotHeatOn
	FNCALL	_RiceHeat,_Heat_Time_Select
	FNCALL	_RiceHeat,_ShortTimeOn
	FNCALL	_ReheatCook,_BotHeatOff
	FNCALL	_ReheatCook,_BotHeatOn
	FNCALL	_ReheatCook,_Heat_Time_Select
	FNCALL	_ReheatCook,_ShortTimeOn
	FNCALL	_PressureHeat,_BotHeatOff
	FNCALL	_PressureHeat,_BotHeatOn
	FNCALL	_PressureHeat,_Cancel
	FNCALL	_PressureHeat,_Heat_Time_Select
	FNCALL	_PressureHeat,_ShortTimeOn
	FNCALL	_OpenCook,_BotHeatOff
	FNCALL	_OpenCook,_BotHeatOn
	FNCALL	_OpenCook,_Heat_Time_Select
	FNCALL	_OpenCook,_ShortTimeOn
	FNCALL	_KeepWarmHeat,_BotHeatOff
	FNCALL	_KeepWarmHeat,_BotHeatOn
	FNCALL	_KeepWarmHeat,_Heat_Time_Select
	FNCALL	_FactoryTest,_BotHeatOff
	FNCALL	_FactoryTest,_BotHeatOn
	FNCALL	_FactoryTest,_ShortTimeOn
	FNCALL	_CakeHeat,_BotHeatOff
	FNCALL	_CakeHeat,_BotHeatOn
	FNCALL	_CakeHeat,_Heat_Time_Select
	FNCALL	_CakeHeat,_ShortTimeOn
	FNROOT	_main
	FNCALL	_Timer1_Isr,_Get_AC_Voltage
	FNCALL	_Timer1_Isr,_Get_AD
	FNCALL	_Timer1_Isr,_Get_Pressure_Switch_Data
	FNCALL	_Timer1_Isr,_Get_Zero
	FNCALL	_Timer1_Isr,_Operate_Relay_IO
	FNCALL	intlevel1,_Timer1_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	Get_Temp_Data@s_admin
	global	Get_AC_Rms@s_minvol
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	356

;initializer for Get_Temp_Data@s_admin
	retlw	0FFh
	line	183

;initializer for Get_AC_Rms@s_minvol
	retlw	0FFh
	global	_REF_TEMP_TAB
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
	global __stringbase
__stringbase:
	global    __end_of__stringtab
__end_of__stringtab:
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	7
_REF_TEMP_TAB:
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	01h
	retlw	03h
	retlw	05h
	retlw	07h
	retlw	09h
	retlw	0Bh
	retlw	0Dh
	retlw	0Eh
	retlw	010h
	retlw	011h
	retlw	013h
	retlw	014h
	retlw	015h
	retlw	016h
	retlw	018h
	retlw	019h
	retlw	01Ah
	retlw	01Bh
	retlw	01Ch
	retlw	01Dh
	retlw	01Eh
	retlw	01Fh
	retlw	020h
	retlw	020h
	retlw	021h
	retlw	022h
	retlw	023h
	retlw	024h
	retlw	025h
	retlw	025h
	retlw	026h
	retlw	027h
	retlw	028h
	retlw	028h
	retlw	029h
	retlw	02Ah
	retlw	02Ah
	retlw	02Bh
	retlw	02Ch
	retlw	02Ch
	retlw	02Dh
	retlw	02Eh
	retlw	02Eh
	retlw	02Fh
	retlw	030h
	retlw	030h
	retlw	031h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	033h
	retlw	034h
	retlw	034h
	retlw	035h
	retlw	035h
	retlw	036h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	038h
	retlw	039h
	retlw	039h
	retlw	03Ah
	retlw	03Ah
	retlw	03Bh
	retlw	03Bh
	retlw	03Ch
	retlw	03Ch
	retlw	03Dh
	retlw	03Dh
	retlw	03Eh
	retlw	03Eh
	retlw	03Fh
	retlw	03Fh
	retlw	040h
	retlw	041h
	retlw	041h
	retlw	042h
	retlw	042h
	retlw	043h
	retlw	043h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	045h
	retlw	045h
	retlw	046h
	retlw	046h
	retlw	047h
	retlw	047h
	retlw	048h
	retlw	048h
	retlw	049h
	retlw	049h
	retlw	04Ah
	retlw	04Ah
	retlw	04Bh
	retlw	04Bh
	retlw	04Ch
	retlw	04Ch
	retlw	04Dh
	retlw	04Dh
	retlw	04Eh
	retlw	04Eh
	retlw	04Fh
	retlw	04Fh
	retlw	050h
	retlw	050h
	retlw	051h
	retlw	051h
	retlw	052h
	retlw	052h
	retlw	053h
	retlw	053h
	retlw	053h
	retlw	054h
	retlw	054h
	retlw	055h
	retlw	055h
	retlw	056h
	retlw	056h
	retlw	057h
	retlw	057h
	retlw	058h
	retlw	058h
	retlw	059h
	retlw	059h
	retlw	05Ah
	retlw	05Ah
	retlw	05Bh
	retlw	05Bh
	retlw	05Ch
	retlw	05Ch
	retlw	05Dh
	retlw	05Dh
	retlw	05Eh
	retlw	05Eh
	retlw	05Fh
	retlw	05Fh
	retlw	060h
	retlw	061h
	retlw	061h
	retlw	062h
	retlw	062h
	retlw	063h
	retlw	063h
	retlw	064h
	retlw	064h
	retlw	065h
	retlw	066h
	retlw	066h
	retlw	067h
	retlw	067h
	retlw	068h
	retlw	068h
	retlw	069h
	retlw	069h
	retlw	06Ah
	retlw	06Bh
	retlw	06Bh
	retlw	06Ch
	retlw	06Ch
	retlw	06Dh
	retlw	06Eh
	retlw	06Eh
	retlw	06Fh
	retlw	070h
	retlw	070h
	retlw	071h
	retlw	072h
	retlw	072h
	retlw	073h
	retlw	074h
	retlw	074h
	retlw	075h
	retlw	076h
	retlw	076h
	retlw	077h
	retlw	078h
	retlw	078h
	retlw	079h
	retlw	07Ah
	retlw	07Bh
	retlw	07Bh
	retlw	07Ch
	retlw	07Dh
	retlw	07Eh
	retlw	07Fh
	retlw	07Fh
	retlw	080h
	retlw	081h
	retlw	082h
	retlw	083h
	retlw	084h
	retlw	085h
	retlw	086h
	retlw	087h
	retlw	088h
	retlw	089h
	retlw	08Ah
	retlw	08Bh
	retlw	08Ch
	retlw	08Dh
	retlw	08Eh
	retlw	08Fh
	retlw	090h
	retlw	092h
	retlw	093h
	retlw	094h
	retlw	095h
	retlw	096h
	retlw	098h
	retlw	099h
	retlw	09Ah
	retlw	09Ch
	retlw	09Dh
	retlw	09Fh
	retlw	0A0h
	retlw	0A2h
	retlw	0A4h
	retlw	0A6h
	retlw	0A7h
	retlw	0A9h
	retlw	0ABh
	retlw	0ADh
	retlw	0B0h
	retlw	0B2h
	retlw	0B4h
	retlw	0B7h
	retlw	0BAh
	retlw	0BDh
	retlw	0C0h
	retlw	0C3h
	retlw	0C6h
	retlw	0CAh
	retlw	0CEh
	retlw	0D3h
	retlw	0D8h
	global __end_of_REF_TEMP_TAB
__end_of_REF_TEMP_TAB:
	global	_TIME_TAB
psect	stringtext
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	4
_TIME_TAB:
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	010h
	retlw	012h
	retlw	014h
	retlw	low(0)
	retlw	0Fh
	retlw	011h
	retlw	015h
	retlw	low(0)
	retlw	05h
	retlw	0Ah
	retlw	0Fh
	retlw	low(0)
	retlw	0Ah
	retlw	0Fh
	retlw	014h
	retlw	low(0)
	retlw	014h
	retlw	01Ch
	retlw	023h
	retlw	low(0)
	retlw	0Fh
	retlw	014h
	retlw	019h
	retlw	low(0)
	retlw	0Ch
	retlw	0Fh
	retlw	014h
	retlw	low(0)
	retlw	0Fh
	retlw	014h
	retlw	01Eh
	retlw	low(0)
	retlw	012h
	retlw	019h
	retlw	01Eh
	retlw	low(0)
	retlw	014h
	retlw	019h
	retlw	023h
	retlw	low(0)
	retlw	01Eh
	retlw	023h
	retlw	02Dh
	retlw	low(0)
	retlw	028h
	retlw	028h
	retlw	028h
	retlw	low(0)
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	low(0)
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	low(0)
	global __end_of_TIME_TAB
__end_of_TIME_TAB:
	global	_HOT_RUN_TAB
psect	stringtext
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	24
_HOT_RUN_TAB:
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	low(0)
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	low(0)
	retlw	low(0)
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	low(0)
	retlw	low(0)
	retlw	01h
	retlw	03h
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	07h
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	0Eh
	retlw	low(0)
	retlw	low(0)
	retlw	08h
	retlw	0Ch
	retlw	low(0)
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	low(0)
	retlw	018h
	retlw	08h
	retlw	low(0)
	retlw	low(0)
	retlw	038h
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	031h
	retlw	low(0)
	retlw	low(0)
	retlw	low(0)
	retlw	021h
	retlw	01h
	retlw	low(0)
	retlw	low(0)
	global __end_of_HOT_RUN_TAB
__end_of_HOT_RUN_TAB:
	global	_SEG_MATH_TAB
psect	stringtext
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	4
_SEG_MATH_TAB:
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	retlw	077h
	retlw	07Ch
	retlw	039h
	retlw	05Eh
	retlw	079h
	retlw	071h
	global __end_of_SEG_MATH_TAB
__end_of_SEG_MATH_TAB:
	global	_Fc_ID_2
	global	_Fc_ID_2_absaddr
_Fc_ID_2_absaddr	set	0x1FF9
	global	_Fc_ID_1
	global	_Fc_ID_1_absaddr
_Fc_ID_1_absaddr	set	0x1FF8
	global	_Fc_ID_8
	global	_Fc_ID_8_absaddr
_Fc_ID_8_absaddr	set	0x1FFF
	global	_Fc_ID_7
	global	_Fc_ID_7_absaddr
_Fc_ID_7_absaddr	set	0x1FFE
	global	_Fc_ID_6
	global	_Fc_ID_6_absaddr
_Fc_ID_6_absaddr	set	0x1FFD
	global	_Fc_ID_5
	global	_Fc_ID_5_absaddr
_Fc_ID_5_absaddr	set	0x1FFC
	global	_Fc_ID_4
	global	_Fc_ID_4_absaddr
_Fc_ID_4_absaddr	set	0x1FFB
	global	_Fc_ID_3
	global	_Fc_ID_3_absaddr
_Fc_ID_3_absaddr	set	0x1FFA
	global	_REF_TEMP_TAB
	global	_TIME_TAB
	global	_HOT_RUN_TAB
	global	_SEG_MATH_TAB
	global	_Fc_ID_2
	global	_Fc_ID_2_absaddr
_Fc_ID_2_absaddr	set	0x1FF9
psect	_Fc_ID_2_text,class=CODE,delta=2,noexec
global __p_Fc_ID_2_text
__p_Fc_ID_2_text:
_Fc_ID_2:
	retlw	low(0)
	global __end_of_Fc_ID_2
__end_of_Fc_ID_2:
	global	_Fc_ID_1
	global	_Fc_ID_1_absaddr
_Fc_ID_1_absaddr	set	0x1FF8
psect	_Fc_ID_1_text,class=CODE,delta=2,noexec
global __p_Fc_ID_1_text
__p_Fc_ID_1_text:
_Fc_ID_1:
	retlw	low(0)
	global __end_of_Fc_ID_1
__end_of_Fc_ID_1:
	global	_Fc_ID_8
	global	_Fc_ID_8_absaddr
_Fc_ID_8_absaddr	set	0x1FFF
psect	_Fc_ID_8_text,class=CODE,delta=2,noexec
global __p_Fc_ID_8_text
__p_Fc_ID_8_text:
_Fc_ID_8:
	retlw	low(0)
	global __end_of_Fc_ID_8
__end_of_Fc_ID_8:
	global	_Fc_ID_7
	global	_Fc_ID_7_absaddr
_Fc_ID_7_absaddr	set	0x1FFE
psect	_Fc_ID_7_text,class=CODE,delta=2,noexec
global __p_Fc_ID_7_text
__p_Fc_ID_7_text:
_Fc_ID_7:
	retlw	low(0)
	global __end_of_Fc_ID_7
__end_of_Fc_ID_7:
	global	_Fc_ID_6
	global	_Fc_ID_6_absaddr
_Fc_ID_6_absaddr	set	0x1FFD
psect	_Fc_ID_6_text,class=CODE,delta=2,noexec
global __p_Fc_ID_6_text
__p_Fc_ID_6_text:
_Fc_ID_6:
	retlw	low(0)
	global __end_of_Fc_ID_6
__end_of_Fc_ID_6:
	global	_Fc_ID_5
	global	_Fc_ID_5_absaddr
_Fc_ID_5_absaddr	set	0x1FFC
psect	_Fc_ID_5_text,class=CODE,delta=2,noexec
global __p_Fc_ID_5_text
__p_Fc_ID_5_text:
_Fc_ID_5:
	retlw	low(0)
	global __end_of_Fc_ID_5
__end_of_Fc_ID_5:
	global	_Fc_ID_4
	global	_Fc_ID_4_absaddr
_Fc_ID_4_absaddr	set	0x1FFB
psect	_Fc_ID_4_text,class=CODE,delta=2,noexec
global __p_Fc_ID_4_text
__p_Fc_ID_4_text:
_Fc_ID_4:
	retlw	low(0)
	global __end_of_Fc_ID_4
__end_of_Fc_ID_4:
	global	_Fc_ID_3
	global	_Fc_ID_3_absaddr
_Fc_ID_3_absaddr	set	0x1FFA
psect	_Fc_ID_3_text,class=CODE,delta=2,noexec
global __p_Fc_ID_3_text
__p_Fc_ID_3_text:
_Fc_ID_3:
	retlw	low(0)
	global __end_of_Fc_ID_3
__end_of_Fc_ID_3:
	global	_RelWaitCnt
	global	_ChooseFunSave
	global	_Ad_Vol_Raw
	global	_b_MainLoop_500ms
	global	_b_MainLoop_8ms
	global	_b_JudgeLidOk
	global	_b_TestShow
	global	_b_AutoKeepWarm
	global	_b_LedCol
	global	_b_ZeroDeley_OK
	global	_b_Rel_NoZero
	global	_b_RelType
	global	_b_Opencook_OK
	global	_b_BotTempOut
	global	_b_Auto_test
	global	_b_ShortOn
	global	_b_BotHeatOn
	global	_b_BotHeatEn
	global	_b_AdBot_OK
	global	_b_Zero
	global	_b_ZeroWave_OK
	global	_b_ZeroTimeout
	global	_b_Zero_EN
	global	_b_VolData_OK
	global	_b_PressureOn
	global	_b_Standby
	global	_b_LidClosed
	global	_DispData
	global	_KeyData
	global	_WaitCycle
	global	_CountTimeS
	global	_KeepWarmH
	global	_PresetTimeS
	global	_KeyFlag
	global	_WorkTimeH
	global	_JudgeLidMin
	global	_SendShow
	global	_TestShow
	global	_HorseCount
	global	_CountDownTimeSave
	global	_WorkTimeS
	global	_PresetTimeM
	global	_PresetTimeH
	global	_MinBuf
	global	_HourBuf
	global	_PresetState
	global	_ZeroTimeoutCnt
	global	_ZeroDeley
	global	_ChooseFun
	global	_WorkTimeM
	global	_TotalTimeSave
	global	_WorkStage
	global	_CountDownTime
	global	_FactoryTestData
	global	_WorkStep
	global	_ShortCntM
	global	_ShortCntL
	global	_HeatCnt500ms
	global	_RelOffCnt
	global	Get_Temp_Data@s_admax
	global	Get_Zero@s_lowcount
	global	Get_Zero@s_highcount
	global	Get_Zero@s_zerocnt9ms
	global	Get_AC_Rms@s_voltimes
	global	Get_AC_Rms@s_maxvol
	global	Get_Lid_Data@s_lidcount
	global	_Bot_Temp
	global	_Ad_Bot
	global	_Ad_Bot_Raw
	global	_Ad_Vol_Avg
	global	_Ad_Pressure_Raw
	global	_BuzDownTemp
	global	_BuzUpTemp
	global	_BuzDownTime
	global	_BuzUpTime
	global	_BuzCnt
	global	_ErrorCode
	global	_StandbyTimeCnt
	global	_Fc_ID
	global	Key_Drive@keylong
	global	Key_Drive@keyold
	global	Error_Deal@E3_delaycount
	global	Get_Temp_Data@s_adsum
	global	Get_Zero@s_zerotimes
	global	Get_AC_Rms@s_sumvol
	global	Get_AC_Voltage@s_volcount
	global	Get_Pressure_Switch_Data@s_pscount
	global	_ZeroTimesShow
	global	_Ad_Vol_Sum
	global	_Ad_Pressure
	global	_Ad_Lid
	global	_TasteCase
	global	_ErrorSoundTime
	global	_MainTime_10ms
	global	_MainTime_8ms
	global	Key_Drive@nkeycount
	global	Key_Drive@keycount
	global	_KeepWarmS
	global	_KeepWarmM
	global	_PressureCountTime
	global	_PressureData
	global	_JudgeLidCnt
	global	_MainTime_500ms
	global	_LongKeyCount
	global	_LedCol_500ms
	global	_HorseShowTime160ms
	global	_Led_Step_100C
	global	_RelOnCnt
	global	Get_Temp_Data@s_adtimes
	global	_AC_Vol_Rms
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_AC_Vol_Rms:
       ds      2

	global	_Vrms_Level
_Vrms_Level:
       ds      1

	global	_SysStatus
_SysStatus:
       ds      1

	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PWMCON
_PWMCON	set	29
	global	_CCPR0L
_CCPR0L	set	27
	global	_T1CON
_T1CON	set	16
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_INTCON
_INTCON	set	11
	global	_PORTD
_PORTD	set	8
	global	_PORTC
_PORTC	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_GODONE
_GODONE	set	249
	global	_PWM0EN
_PWM0EN	set	232
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2ON
_TMR2ON	set	146
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR2IF
_TMR2IF	set	97
	global	_RD4
_RD4	set	68
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_WPUB
_WPUB	set	149
	global	_PR2
_PR2	set	146
	global	_OSCCON
_OSCCON	set	143
	global	_TRISD
_TRISD	set	136
	global	_TRISC
_TRISC	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TMR1IE
_TMR1IE	set	1120
	global	_LCDCON
_LCDCON	set	276
	global	_SEGEN0
_SEGEN0	set	406
	global	_SEGEN1
_SEGEN1	set	405
	global	_SEGEN2
_SEGEN2	set	404
	global	_LEDDATA
_LEDDATA	set	403
	global	_LEDADD
_LEDADD	set	402
	global	_LCDCON1
_LCDCON1	set	401
	global	_LCDCON0
_LCDCON0	set	400
	global	_WPUC
_WPUC	set	399
	global	_WPUA
_WPUA	set	398
	global	_WPUD
_WPUD	set	389
; #config settings
	file	"Y-50C88.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_b_MainLoop_500ms:
       ds      1

_b_MainLoop_8ms:
       ds      1

_b_JudgeLidOk:
       ds      1

_b_TestShow:
       ds      1

_b_AutoKeepWarm:
       ds      1

_b_LedCol:
       ds      1

_b_ZeroDeley_OK:
       ds      1

_b_Rel_NoZero:
       ds      1

_b_RelType:
       ds      1

_b_Opencook_OK:
       ds      1

_b_BotTempOut:
       ds      1

_b_Auto_test:
       ds      1

_b_ShortOn:
       ds      1

_b_BotHeatOn:
       ds      1

_b_BotHeatEn:
       ds      1

_b_AdBot_OK:
       ds      1

_b_Zero:
       ds      1

_b_ZeroWave_OK:
       ds      1

_b_ZeroTimeout:
       ds      1

_b_Zero_EN:
       ds      1

_b_VolData_OK:
       ds      1

_b_PressureOn:
       ds      1

_b_Standby:
       ds      1

_b_LidClosed:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_RelWaitCnt:
       ds      2

_ChooseFunSave:
       ds      1

_Ad_Vol_Raw:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_DispData:
       ds      7

_KeyData:
       ds      2

_WaitCycle:
       ds      1

_CountTimeS:
       ds      1

_KeepWarmH:
       ds      1

_PresetTimeS:
       ds      1

_KeyFlag:
       ds      1

_WorkTimeH:
       ds      1

_JudgeLidMin:
       ds      1

_SendShow:
       ds      1

_TestShow:
       ds      1

_HorseCount:
       ds      1

_CountDownTimeSave:
       ds      1

_WorkTimeS:
       ds      1

_PresetTimeM:
       ds      1

_PresetTimeH:
       ds      1

_MinBuf:
       ds      1

_HourBuf:
       ds      1

_PresetState:
       ds      1

_ZeroTimeoutCnt:
       ds      1

_ZeroDeley:
       ds      1

_ChooseFun:
       ds      1

_WorkTimeM:
       ds      1

_TotalTimeSave:
       ds      1

_WorkStage:
       ds      1

_CountDownTime:
       ds      1

_FactoryTestData:
       ds      1

_WorkStep:
       ds      1

_ShortCntM:
       ds      1

_ShortCntL:
       ds      1

_HeatCnt500ms:
       ds      1

_RelOffCnt:
       ds      1

Get_Temp_Data@s_admax:
       ds      1

Get_Zero@s_lowcount:
       ds      1

Get_Zero@s_highcount:
       ds      1

Get_Zero@s_zerocnt9ms:
       ds      1

Get_AC_Rms@s_voltimes:
       ds      1

Get_AC_Rms@s_maxvol:
       ds      1

Get_Lid_Data@s_lidcount:
       ds      1

_Bot_Temp:
       ds      1

_Ad_Bot:
       ds      1

_Ad_Bot_Raw:
       ds      1

_Ad_Vol_Avg:
       ds      1

_Ad_Pressure_Raw:
       ds      1

_BuzDownTemp:
       ds      1

_BuzUpTemp:
       ds      1

_BuzDownTime:
       ds      1

_BuzUpTime:
       ds      1

_BuzCnt:
       ds      1

_ErrorCode:
       ds      1

_StandbyTimeCnt:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	356
Get_Temp_Data@s_admin:
       ds      1

psect	dataBANK0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	183
Get_AC_Rms@s_minvol:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_Fc_ID:
       ds      8

Key_Drive@keylong:
       ds      2

Key_Drive@keyold:
       ds      2

Error_Deal@E3_delaycount:
       ds      2

Get_Temp_Data@s_adsum:
       ds      2

Get_Zero@s_zerotimes:
       ds      2

Get_AC_Rms@s_sumvol:
       ds      2

Get_AC_Voltage@s_volcount:
       ds      2

Get_Pressure_Switch_Data@s_pscount:
       ds      2

_ZeroTimesShow:
       ds      2

_Ad_Vol_Sum:
       ds      2

_Ad_Pressure:
       ds      1

_Ad_Lid:
       ds      1

_TasteCase:
       ds      1

_ErrorSoundTime:
       ds      1

_MainTime_10ms:
       ds      1

_MainTime_8ms:
       ds      1

Key_Drive@nkeycount:
       ds      1

Key_Drive@keycount:
       ds      1

_KeepWarmS:
       ds      1

_KeepWarmM:
       ds      1

_PressureCountTime:
       ds      1

_PressureData:
       ds      1

_JudgeLidCnt:
       ds      1

_MainTime_500ms:
       ds      1

_LongKeyCount:
       ds      1

_LedCol_500ms:
       ds      1

_HorseShowTime160ms:
       ds      1

_Led_Step_100C:
       ds      1

_RelOnCnt:
       ds      1

Get_Temp_Data@s_adtimes:
       ds      1

	file	"Y-50C88.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+030h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+03Ah)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
	clrf	((__pbitbssCOMMON/8)+1)&07Fh
	clrf	((__pbitbssCOMMON/8)+2)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Cancel:	; 1 bytes @ 0x0
?_Sound_Deal:	; 1 bytes @ 0x0
?_Time_Deal:	; 1 bytes @ 0x0
?_Get_Lid_Data:	; 1 bytes @ 0x0
?_Get_Pressure_Switch_Data:	; 1 bytes @ 0x0
??_Get_Pressure_Switch_Data:	; 1 bytes @ 0x0
?_Get_AC_Voltage:	; 1 bytes @ 0x0
??_Get_AC_Voltage:	; 1 bytes @ 0x0
?_Get_AC_Rms:	; 1 bytes @ 0x0
?_Get_Zero:	; 1 bytes @ 0x0
??_Get_Zero:	; 1 bytes @ 0x0
?_Get_Temp_Data:	; 1 bytes @ 0x0
?_Get_AD:	; 1 bytes @ 0x0
??_Get_AD:	; 1 bytes @ 0x0
?_BotHeatOn:	; 1 bytes @ 0x0
?_BotHeatOff:	; 1 bytes @ 0x0
?_ShortTimeOn:	; 1 bytes @ 0x0
?_FactoryTest:	; 1 bytes @ 0x0
?_RiceHeat:	; 1 bytes @ 0x0
?_PressureHeat:	; 1 bytes @ 0x0
?_OpenCook:	; 1 bytes @ 0x0
?_CakeHeat:	; 1 bytes @ 0x0
?_ReheatCook:	; 1 bytes @ 0x0
?_KeepWarmHeat:	; 1 bytes @ 0x0
?_Cook_Task:	; 1 bytes @ 0x0
?_Relay_Duty_Control:	; 1 bytes @ 0x0
?_Operate_Relay_IO:	; 1 bytes @ 0x0
??_Operate_Relay_IO:	; 1 bytes @ 0x0
?_LED_Off:	; 1 bytes @ 0x0
?_Power_On_Show:	; 1 bytes @ 0x0
?_Waiting_Mode_Show:	; 1 bytes @ 0x0
?_Fun_Choose_Show:	; 1 bytes @ 0x0
?_Work_Mode_Show:	; 1 bytes @ 0x0
?_Keepwarm_Show:	; 1 bytes @ 0x0
?_Error_Show:	; 1 bytes @ 0x0
?_Test_Mode_Show:	; 1 bytes @ 0x0
?_Factory_Show:	; 1 bytes @ 0x0
?_LED_Task:	; 1 bytes @ 0x0
?_Init_LED_Module:	; 1 bytes @ 0x0
?_LED_Drive:	; 1 bytes @ 0x0
?_Error_Deal:	; 1 bytes @ 0x0
?_Maink_Cancel:	; 1 bytes @ 0x0
?_MainK_Preset:	; 1 bytes @ 0x0
?_Maink_Fast_Fun:	; 1 bytes @ 0x0
?_Maink_Test:	; 1 bytes @ 0x0
?_Maink_Factory:	; 1 bytes @ 0x0
?_Key_Task:	; 1 bytes @ 0x0
?_KscanIo:	; 1 bytes @ 0x0
?_Key_Drive:	; 1 bytes @ 0x0
?_Init_PWM:	; 1 bytes @ 0x0
?_Init_TMR1:	; 1 bytes @ 0x0
?_Init_GPIO:	; 1 bytes @ 0x0
?_Init_Var:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Timer1_Isr:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_StandbyTimeStart:	; 1 bytes @ 0x0
?_ErrorTimeStart:	; 1 bytes @ 0x0
?_PresetTimeStart:	; 1 bytes @ 0x0
?_CountDownTimeStart:	; 1 bytes @ 0x0
?_KeepWarmTimeStart:	; 1 bytes @ 0x0
?_WorkTimeStart:	; 1 bytes @ 0x0
?_ShortTime:	; 1 bytes @ 0x0
?_AutoStartFun:	; 1 bytes @ 0x0
	ds	1
	global	Get_AD@adresult
Get_AD@adresult:	; 1 bytes @ 0x1
	ds	1
	global	Get_AD@ch
Get_AD@ch:	; 1 bytes @ 0x2
	ds	1
	global	Get_AD@i
Get_AD@i:	; 1 bytes @ 0x3
	ds	1
??_Timer1_Isr:	; 1 bytes @ 0x4
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Cancel:	; 1 bytes @ 0x0
??_Sound_Deal:	; 1 bytes @ 0x0
??_Get_Lid_Data:	; 1 bytes @ 0x0
??_Get_Temp_Data:	; 1 bytes @ 0x0
?_Heat_Time_Select:	; 1 bytes @ 0x0
??_BotHeatOn:	; 1 bytes @ 0x0
??_BotHeatOff:	; 1 bytes @ 0x0
??_ShortTimeOn:	; 1 bytes @ 0x0
??_FactoryTest:	; 1 bytes @ 0x0
??_Relay_Duty_Control:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
??_LED_Off:	; 1 bytes @ 0x0
??_Power_On_Show:	; 1 bytes @ 0x0
??_Waiting_Mode_Show:	; 1 bytes @ 0x0
??_Keepwarm_Show:	; 1 bytes @ 0x0
?_Set_Addr_Value:	; 1 bytes @ 0x0
??_Init_LED_Module:	; 1 bytes @ 0x0
??_Error_Deal:	; 1 bytes @ 0x0
??_Maink_Cancel:	; 1 bytes @ 0x0
??_MainK_Preset:	; 1 bytes @ 0x0
??_Maink_Fast_Fun:	; 1 bytes @ 0x0
??_Maink_Test:	; 1 bytes @ 0x0
??_Maink_Factory:	; 1 bytes @ 0x0
??_KscanIo:	; 1 bytes @ 0x0
??_Init_PWM:	; 1 bytes @ 0x0
??_Init_TMR1:	; 1 bytes @ 0x0
??_Init_GPIO:	; 1 bytes @ 0x0
??_Init_Var:	; 1 bytes @ 0x0
??_StandbyTimeStart:	; 1 bytes @ 0x0
??_ErrorTimeStart:	; 1 bytes @ 0x0
??_CountDownTimeStart:	; 1 bytes @ 0x0
??_KeepWarmTimeStart:	; 1 bytes @ 0x0
??_WorkTimeStart:	; 1 bytes @ 0x0
??_ShortTime:	; 1 bytes @ 0x0
??_AutoStartFun:	; 1 bytes @ 0x0
?___lbdiv:	; 1 bytes @ 0x0
?___lbmod:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	Heat_Time_Select@offtm
Heat_Time_Select@offtm:	; 1 bytes @ 0x0
	global	LED_Off@i
LED_Off@i:	; 1 bytes @ 0x0
	global	Power_On_Show@i
Power_On_Show@i:	; 1 bytes @ 0x0
	global	Set_Addr_Value@mask
Set_Addr_Value@mask:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	DelayXms@x
DelayXms@x:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
??_Heat_Time_Select:	; 1 bytes @ 0x1
??_Set_Addr_Value:	; 1 bytes @ 0x1
??_Key_Task:	; 1 bytes @ 0x1
??___lbdiv:	; 1 bytes @ 0x1
??___lbmod:	; 1 bytes @ 0x1
	global	Heat_Time_Select@ontm
Heat_Time_Select@ontm:	; 1 bytes @ 0x1
	global	Set_Addr_Value@addr
Set_Addr_Value@addr:	; 1 bytes @ 0x1
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x1
	ds	1
??_RiceHeat:	; 1 bytes @ 0x2
??_PressureHeat:	; 1 bytes @ 0x2
??_OpenCook:	; 1 bytes @ 0x2
??_CakeHeat:	; 1 bytes @ 0x2
??_ReheatCook:	; 1 bytes @ 0x2
??_KeepWarmHeat:	; 1 bytes @ 0x2
??_Cook_Task:	; 1 bytes @ 0x2
??_DelayXms:	; 1 bytes @ 0x2
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x2
	global	Set_Addr_Value@data
Set_Addr_Value@data:	; 1 bytes @ 0x2
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
??_LED_Drive:	; 1 bytes @ 0x3
??_Init_System:	; 1 bytes @ 0x3
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	ds	1
??___wmul:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
	global	KscanIo@i
KscanIo@i:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
?_DIG_Show_Time:	; 1 bytes @ 0x5
?_DIG_Show_Data:	; 1 bytes @ 0x5
??_Error_Show:	; 1 bytes @ 0x5
??_Factory_Show:	; 1 bytes @ 0x5
??_Key_Drive:	; 1 bytes @ 0x5
	global	DIG_Show_Time@min
DIG_Show_Time@min:	; 1 bytes @ 0x5
	global	DIG_Show_Data@digdata2
DIG_Show_Data@digdata2:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	DIG_Show_Time@point
DIG_Show_Time@point:	; 1 bytes @ 0x6
	global	DIG_Show_Data@digdata3
DIG_Show_Data@digdata3:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
??_Get_AC_Rms:	; 1 bytes @ 0x7
??_DIG_Show_Time:	; 1 bytes @ 0x7
	global	DIG_Show_Time@hour
DIG_Show_Time@hour:	; 1 bytes @ 0x7
	global	DIG_Show_Data@digdata4
DIG_Show_Data@digdata4:	; 1 bytes @ 0x7
	ds	1
??_DIG_Show_Data:	; 1 bytes @ 0x8
??_Fun_Choose_Show:	; 1 bytes @ 0x8
??_Work_Mode_Show:	; 1 bytes @ 0x8
??_PresetTimeStart:	; 1 bytes @ 0x8
	global	DIG_Show_Data@digdata1
DIG_Show_Data@digdata1:	; 1 bytes @ 0x8
	ds	1
??_Time_Deal:	; 1 bytes @ 0x9
??_Test_Mode_Show:	; 1 bytes @ 0x9
	ds	4
??_LED_Task:	; 1 bytes @ 0xD
??_main:	; 1 bytes @ 0xD
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    374
;!    Data        2
;!    BSS         110
;!    Persistent  4
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      13
;!    BANK0            80     13      77
;!    BANK1            80      0      48
;!    BANK3            88      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Timer1_Isr in COMMON
;!
;!    _Timer1_Isr->_Get_AD
;!
;!Critical Paths under _main in BANK0
;!
;!    _Time_Deal->_PresetTimeStart
;!    _PresetTimeStart->___awdiv
;!    _LED_Task->_Work_Mode_Show
;!    _Work_Mode_Show->_DIG_Show_Time
;!    _Test_Mode_Show->_DIG_Show_Data
;!    _DIG_Show_Data->___lbmod
;!    _Fun_Choose_Show->_DIG_Show_Time
;!    _Fun_Choose_Show->___awdiv
;!    _DIG_Show_Time->___lbmod
;!    _Factory_Show->___lbmod
;!    _Error_Show->___lbmod
;!    _LED_Drive->_Set_Addr_Value
;!    _Key_Task->_Maink_Fast_Fun
;!    _Key_Drive->_KscanIo
;!    _Init_System->_DelayXms
;!    _Get_AC_Rms->___lwdiv
;!    _RiceHeat->_Heat_Time_Select
;!    _ReheatCook->_Heat_Time_Select
;!    _PressureHeat->_Heat_Time_Select
;!    _OpenCook->_Heat_Time_Select
;!    _KeepWarmHeat->_Heat_Time_Select
;!    _CakeHeat->_Heat_Time_Select
;!
;!Critical Paths under _Timer1_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Timer1_Isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _Timer1_Isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Timer1_Isr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0   22503
;!                          _Cook_Task
;!                         _Error_Deal
;!                         _Get_AC_Rms
;!                       _Get_Lid_Data
;!                      _Get_Temp_Data
;!                        _Init_System
;!                          _Key_Drive
;!                           _Key_Task
;!                          _LED_Drive
;!                           _LED_Task
;!                         _Sound_Deal
;!                          _Time_Deal
;! ---------------------------------------------------------------------------------
;! (1) _Time_Deal                                            0     0      0    1866
;!                       _AutoStartFun
;!                 _CountDownTimeStart
;!                     _ErrorTimeStart
;!                  _KeepWarmTimeStart
;!                    _PresetTimeStart
;!                 _Relay_Duty_Control
;!                          _ShortTime
;!                   _StandbyTimeStart
;!                      _WorkTimeStart
;! ---------------------------------------------------------------------------------
;! (2) _WorkTimeStart                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _StandbyTimeStart                                     0     0      0       0
;!                             _Cancel
;! ---------------------------------------------------------------------------------
;! (2) _ShortTime                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Relay_Duty_Control                                   2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _PresetTimeStart                                      1     1      0    1866
;!                                              8 BANK0      1     1      0
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) _KeepWarmTimeStart                                    0     0      0       0
;!                             _Cancel
;! ---------------------------------------------------------------------------------
;! (2) _ErrorTimeStart                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _CountDownTimeStart                                   0     0      0       0
;!                             _Cancel
;! ---------------------------------------------------------------------------------
;! (2) _AutoStartFun                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Sound_Deal                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _LED_Task                                             0     0      0   10415
;!                         _Error_Show
;!                       _Factory_Show
;!                    _Fun_Choose_Show
;!                      _Keepwarm_Show
;!                            _LED_Off
;!                      _Power_On_Show
;!                     _Test_Mode_Show
;!                  _Waiting_Mode_Show
;!                     _Work_Mode_Show
;! ---------------------------------------------------------------------------------
;! (2) _Work_Mode_Show                                       5     5      0    2037
;!                                              8 BANK0      5     5      0
;!                      _DIG_Show_Time
;!                            ___lbdiv
;!                            ___lbmod
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4      52
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) _Waiting_Mode_Show                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Test_Mode_Show                                       0     0      0    3398
;!                      _DIG_Show_Data
;!                            ___awdiv
;!                            ___awmod
;!                            ___lbdiv
;!                            ___lbmod
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              5     1      4      65
;!                                              0 BANK0      5     1      4
;! ---------------------------------------------------------------------------------
;! (3) _DIG_Show_Data                                        4     1      3     692
;!                                              5 BANK0      4     1      3
;!                            ___lbdiv (ARG)
;!                            ___lbmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _Power_On_Show                                        1     1      0      68
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _LED_Off                                              1     1      0      68
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Keepwarm_Show                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Fun_Choose_Show                                      0     0      0    3851
;!                      _DIG_Show_Time
;!                            ___awdiv
;!                            ___awmod
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              6     2      4     927
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     939
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (3) _DIG_Show_Time                                        3     1      2    1294
;!                                              5 BANK0      3     1      2
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (2) _Factory_Show                                         1     1      0     691
;!                                              5 BANK0      1     1      0
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (3) ___lbdiv                                              4     3      1     389
;!                                              0 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (2) _Error_Show                                           0     0      0     302
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (3) ___lbmod                                              5     4      1     302
;!                                              0 BANK0      5     4      1
;! ---------------------------------------------------------------------------------
;! (1) _LED_Drive                                            0     0      0     550
;!                     _Set_Addr_Value
;! ---------------------------------------------------------------------------------
;! (2) _Set_Addr_Value                                       3     2      1     550
;!                                              0 BANK0      3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _Key_Task                                             0     0      0       0
;!                       _MainK_Preset
;!                       _Maink_Cancel
;!                      _Maink_Factory
;!                     _Maink_Fast_Fun
;!                         _Maink_Test
;! ---------------------------------------------------------------------------------
;! (2) _Maink_Test                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Maink_Fast_Fun                                       1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Maink_Factory                                        0     0      0       0
;!                             _Cancel
;! ---------------------------------------------------------------------------------
;! (2) _Maink_Cancel                                         0     0      0       0
;!                             _Cancel
;! ---------------------------------------------------------------------------------
;! (2) _MainK_Preset                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Key_Drive                                            0     0      0     157
;!                            _KscanIo
;! ---------------------------------------------------------------------------------
;! (2) _KscanIo                                              5     5      0     157
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0     119
;!                           _DelayXms
;!                          _Init_GPIO
;!                    _Init_LED_Module
;!                           _Init_PWM
;!                          _Init_TMR1
;!                           _Init_Var
;! ---------------------------------------------------------------------------------
;! (2) _Init_Var                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_TMR1                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_PWM                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_LED_Module                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_GPIO                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _DelayXms                                             3     1      2     119
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _Get_Temp_Data                                        2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _Get_Lid_Data                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Get_AC_Rms                                           2     2      0      84
;!                                              7 BANK0      2     2      0
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              7     3      4      84
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _Error_Deal                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Cook_Task                                            0     0      0    9312
;!                         _BotHeatOff
;!                          _BotHeatOn
;!                           _CakeHeat
;!                        _FactoryTest
;!                       _KeepWarmHeat
;!                           _OpenCook
;!                       _PressureHeat
;!                         _ReheatCook
;!                           _RiceHeat
;! ---------------------------------------------------------------------------------
;! (2) _RiceHeat                                             0     0      0    1552
;!                         _BotHeatOff
;!                          _BotHeatOn
;!                   _Heat_Time_Select
;!                        _ShortTimeOn
;! ---------------------------------------------------------------------------------
;! (2) _ReheatCook                                           0     0      0    1552
;!                         _BotHeatOff
;!                          _BotHeatOn
;!                   _Heat_Time_Select
;!                        _ShortTimeOn
;! ---------------------------------------------------------------------------------
;! (2) _PressureHeat                                         0     0      0    1552
;!                         _BotHeatOff
;!                          _BotHeatOn
;!                             _Cancel
;!                   _Heat_Time_Select
;!                        _ShortTimeOn
;! ---------------------------------------------------------------------------------
;! (3) _Cancel                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _OpenCook                                             0     0      0    1552
;!                         _BotHeatOff
;!                          _BotHeatOn
;!                   _Heat_Time_Select
;!                        _ShortTimeOn
;! ---------------------------------------------------------------------------------
;! (2) _KeepWarmHeat                                         0     0      0    1552
;!                         _BotHeatOff
;!                          _BotHeatOn
;!                   _Heat_Time_Select
;! ---------------------------------------------------------------------------------
;! (2) _FactoryTest                                          0     0      0       0
;!                         _BotHeatOff
;!                          _BotHeatOn
;!                        _ShortTimeOn
;! ---------------------------------------------------------------------------------
;! (2) _CakeHeat                                             0     0      0    1552
;!                         _BotHeatOff
;!                          _BotHeatOn
;!                   _Heat_Time_Select
;!                        _ShortTimeOn
;! ---------------------------------------------------------------------------------
;! (3) _ShortTimeOn                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Heat_Time_Select                                     2     1      1    1552
;!                                              0 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (3) _BotHeatOn                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _BotHeatOff                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Timer1_Isr                                           2     2      0      92
;!                                              4 COMMON     2     2      0
;!                     _Get_AC_Voltage
;!                             _Get_AD
;!           _Get_Pressure_Switch_Data
;!                           _Get_Zero
;!                   _Operate_Relay_IO
;! ---------------------------------------------------------------------------------
;! (6) _Operate_Relay_IO                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _Get_Zero                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _Get_Pressure_Switch_Data                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _Get_AD                                               4     4      0      92
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! (6) _Get_AC_Voltage                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Cook_Task
;!     _BotHeatOff
;!     _BotHeatOn
;!     _CakeHeat
;!       _BotHeatOff
;!       _BotHeatOn
;!       _Heat_Time_Select
;!       _ShortTimeOn
;!     _FactoryTest
;!       _BotHeatOff
;!       _BotHeatOn
;!       _ShortTimeOn
;!     _KeepWarmHeat
;!       _BotHeatOff
;!       _BotHeatOn
;!       _Heat_Time_Select
;!     _OpenCook
;!       _BotHeatOff
;!       _BotHeatOn
;!       _Heat_Time_Select
;!       _ShortTimeOn
;!     _PressureHeat
;!       _BotHeatOff
;!       _BotHeatOn
;!       _Cancel
;!       _Heat_Time_Select
;!       _ShortTimeOn
;!     _ReheatCook
;!       _BotHeatOff
;!       _BotHeatOn
;!       _Heat_Time_Select
;!       _ShortTimeOn
;!     _RiceHeat
;!       _BotHeatOff
;!       _BotHeatOn
;!       _Heat_Time_Select
;!       _ShortTimeOn
;!   _Error_Deal
;!   _Get_AC_Rms
;!     ___lwdiv
;!   _Get_Lid_Data
;!   _Get_Temp_Data
;!   _Init_System
;!     _DelayXms
;!     _Init_GPIO
;!     _Init_LED_Module
;!     _Init_PWM
;!     _Init_TMR1
;!     _Init_Var
;!   _Key_Drive
;!     _KscanIo
;!   _Key_Task
;!     _MainK_Preset
;!     _Maink_Cancel
;!       _Cancel
;!     _Maink_Factory
;!       _Cancel
;!     _Maink_Fast_Fun
;!     _Maink_Test
;!   _LED_Drive
;!     _Set_Addr_Value
;!   _LED_Task
;!     _Error_Show
;!       ___lbmod
;!     _Factory_Show
;!       ___lbdiv
;!       ___lbmod
;!     _Fun_Choose_Show
;!       _DIG_Show_Time
;!         ___lbdiv
;!         ___lbmod
;!       ___awdiv
;!       ___awmod
;!       ___lbdiv
;!       ___lbmod
;!     _Keepwarm_Show
;!     _LED_Off
;!     _Power_On_Show
;!     _Test_Mode_Show
;!       _DIG_Show_Data
;!         ___lbdiv (ARG)
;!         ___lbmod (ARG)
;!       ___awdiv
;!       ___awmod
;!       ___lbdiv
;!       ___lbmod
;!       ___lwdiv
;!       ___lwmod
;!     _Waiting_Mode_Show
;!     _Work_Mode_Show
;!       _DIG_Show_Time
;!         ___lbdiv
;!         ___lbmod
;!       ___lbdiv
;!       ___lbmod
;!       ___wmul
;!   _Sound_Deal
;!   _Time_Deal
;!     _AutoStartFun
;!     _CountDownTimeStart
;!       _Cancel
;!     _ErrorTimeStart
;!     _KeepWarmTimeStart
;!       _Cancel
;!     _PresetTimeStart
;!       ___awdiv
;!       ___awmod
;!     _Relay_Duty_Control
;!     _ShortTime
;!     _StandbyTimeStart
;!       _Cancel
;!     _WorkTimeStart
;!
;! _Timer1_Isr (ROOT)
;!   _Get_AC_Voltage
;!   _Get_AD
;!   _Get_Pressure_Switch_Data
;!   _Get_Zero
;!   _Operate_Relay_IO
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               58      0       0       9        0.0%
;!BITBANK3            58      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               50      0       0      11        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0      30       7       60.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      D      4D       5       96.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       D       1       92.9%
;!BITCOMMON            E      0       3       0       21.4%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      8A      12        0.0%
;!ABS                  0      0      8A       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 201 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Cook_Task
;;		_Error_Deal
;;		_Get_AC_Rms
;;		_Get_Lid_Data
;;		_Get_Temp_Data
;;		_Init_System
;;		_Key_Drive
;;		_Key_Task
;;		_LED_Drive
;;		_LED_Task
;;		_Sound_Deal
;;		_Time_Deal
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	201
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	201
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	203
	
l17008:	
;main.c: 203: Init_System();
	fcall	_Init_System
	line	205
;main.c: 205: while(1)
	
l6855:	
	line	207
# 207 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
clrwdt ;# 
psect	maintext
	line	209
	
l17010:	
;main.c: 209: if(b_MainLoop_8ms)
	btfss	(_b_MainLoop_8ms/8),(_b_MainLoop_8ms)&7	;volatile
	goto	u9061
	goto	u9060
u9061:
	goto	l17072
u9060:
	line	211
	
l17012:	
;main.c: 210: {
;main.c: 211: b_MainLoop_8ms = 0;
	bcf	(_b_MainLoop_8ms/8),(_b_MainLoop_8ms)&7	;volatile
	line	214
	
l17014:	
;main.c: 214: if(SysStatus == 6)
		movlw	6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u9071
	goto	u9070
u9071:
	goto	l17050
u9070:
	line	216
	
l17016:	
;main.c: 215: {
;main.c: 216: if(++WaitCycle >= 125)
	movlw	low(07Dh)
	incf	(_WaitCycle),f	;volatile
	subwf	((_WaitCycle)),w	;volatile
	skipc
	goto	u9081
	goto	u9080
u9081:
	goto	l17022
u9080:
	line	218
	
l17018:	
;main.c: 217: {
;main.c: 218: WaitCycle = 0;
	clrf	(_WaitCycle)	;volatile
	line	219
	
l17020:	
;main.c: 219: SysStatus = 1;
	movlw	low(01h)
	movwf	(_SysStatus)	;volatile
	line	222
	
l17022:	
;main.c: 220: }
;main.c: 222: if(WaitCycle >= 60)
	movlw	low(03Ch)
	subwf	(_WaitCycle),w	;volatile
	skipc
	goto	u9091
	goto	u9090
u9091:
	goto	l17050
u9090:
	line	225
	
l17024:	
;main.c: 223: {
;main.c: 225: if((Ad_Bot_Raw >= 158 && Ad_Bot_Raw <= 168) && (Ad_Pressure_Raw >= 238 && Ad_Pressure_Raw <= 248) && b_LidClosed == 1)
	movlw	low(09Eh)
	subwf	(_Ad_Bot_Raw),w	;volatile
	skipc
	goto	u9101
	goto	u9100
u9101:
	goto	l17050
u9100:
	
l17026:	
	movlw	low(0A9h)
	subwf	(_Ad_Bot_Raw),w	;volatile
	skipnc
	goto	u9111
	goto	u9110
u9111:
	goto	l17050
u9110:
	
l17028:	
	movlw	low(0EEh)
	subwf	(_Ad_Pressure_Raw),w	;volatile
	skipc
	goto	u9121
	goto	u9120
u9121:
	goto	l17050
u9120:
	
l17030:	
	movlw	low(0F9h)
	subwf	(_Ad_Pressure_Raw),w	;volatile
	skipnc
	goto	u9131
	goto	u9130
u9131:
	goto	l17050
u9130:
	
l17032:	
	btfss	(_b_LidClosed/8),(_b_LidClosed)&7	;volatile
	goto	u9141
	goto	u9140
u9141:
	goto	l17050
u9140:
	line	227
	
l17034:	
;main.c: 226: {
;main.c: 227: SysStatus = 5;
	movlw	low(05h)
	movwf	(_SysStatus)	;volatile
	line	228
	
l17036:	
;main.c: 228: FactoryTestData = 0;
	clrf	(_FactoryTestData)	;volatile
	line	229
	
l17038:	
;main.c: 229: b_Auto_test = 1;
	bsf	(_b_Auto_test/8),(_b_Auto_test)&7	;volatile
	line	230
	
l17040:	
;main.c: 230: {{BuzCnt = 1; BuzUpTime = 75/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	
l17042:	
	movlw	low(025h)
	movwf	(_BuzUpTime)	;volatile
	
l17044:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l17046:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l17048:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	235
	
l17050:	
;main.c: 231: }
;main.c: 232: }
;main.c: 233: }
;main.c: 235: Key_Drive();
	fcall	_Key_Drive
	line	236
	
l17052:	
;main.c: 236: Key_Task();
	fcall	_Key_Task
	line	238
	
l17054:	
;main.c: 238: if(b_AdBot_OK)
	btfss	(_b_AdBot_OK/8),(_b_AdBot_OK)&7	;volatile
	goto	u9151
	goto	u9150
u9151:
	goto	l17058
u9150:
	line	240
	
l17056:	
;main.c: 239: {
;main.c: 240: Get_Temp_Data();
	fcall	_Get_Temp_Data
	line	243
	
l17058:	
;main.c: 241: }
;main.c: 243: Get_Lid_Data();
	fcall	_Get_Lid_Data
	line	245
	
l17060:	
;main.c: 245: if(b_Auto_test == 0)
	btfsc	(_b_Auto_test/8),(_b_Auto_test)&7	;volatile
	goto	u9161
	goto	u9160
u9161:
	goto	l17064
u9160:
	line	247
	
l17062:	
;main.c: 246: {
;main.c: 247: Error_Deal();
	fcall	_Error_Deal
	line	249
	
l17064:	
;main.c: 248: }
;main.c: 249: Cook_Task();
	fcall	_Cook_Task
	line	250
	
l17066:	
;main.c: 250: Sound_Deal();
	fcall	_Sound_Deal
	line	251
	
l17068:	
;main.c: 251: LED_Task();
	fcall	_LED_Task
	line	252
	
l17070:	
;main.c: 252: LED_Drive();
	fcall	_LED_Drive
	line	255
	
l17072:	
;main.c: 253: }
;main.c: 255: if(b_MainLoop_500ms)
	btfss	(_b_MainLoop_500ms/8),(_b_MainLoop_500ms)&7	;volatile
	goto	u9171
	goto	u9170
u9171:
	goto	l6855
u9170:
	line	257
	
l17074:	
;main.c: 256: {
;main.c: 257: b_MainLoop_500ms = 0;
	bcf	(_b_MainLoop_500ms/8),(_b_MainLoop_500ms)&7	;volatile
	line	258
	
l17076:	
;main.c: 258: Time_Deal();
	fcall	_Time_Deal
	line	261
	
l17078:	
;main.c: 261: if(b_VolData_OK == 1)
	btfss	(_b_VolData_OK/8),(_b_VolData_OK)&7	;volatile
	goto	u9181
	goto	u9180
u9181:
	goto	l6855
u9180:
	line	263
	
l17080:	
;main.c: 262: {
;main.c: 263: Get_AC_Rms();
	fcall	_Get_AC_Rms
	goto	l6855
	global	start
	ljmp	start
	opt stack 0
	line	267
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Time_Deal

;; *************** function _Time_Deal *****************
;; Defined at:
;;		line 293 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_AutoStartFun
;;		_CountDownTimeStart
;;		_ErrorTimeStart
;;		_KeepWarmTimeStart
;;		_PresetTimeStart
;;		_Relay_Duty_Control
;;		_ShortTime
;;		_StandbyTimeStart
;;		_WorkTimeStart
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	293
global __ptext1
__ptext1:	;psect for function _Time_Deal
psect	text1
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	293
	global	__size_of_Time_Deal
	__size_of_Time_Deal	equ	__end_of_Time_Deal-_Time_Deal
	
_Time_Deal:	
;incstack = 0
	opt	stack 3
; Regs used in _Time_Deal: [wreg+status,2+status,0+pclath+cstack]
	line	295
	
l16176:	
;time.c: 295: StandbyTimeStart();
	fcall	_StandbyTimeStart
	line	296
;time.c: 296: ErrorTimeStart();
	fcall	_ErrorTimeStart
	line	297
;time.c: 297: Relay_Duty_Control();
	fcall	_Relay_Duty_Control
	line	298
;time.c: 298: AutoStartFun();
	fcall	_AutoStartFun
	line	300
	
l16178:	
;time.c: 300: if(ErrorCode != 0)
	movf	((_ErrorCode)),w	;volatile
	btfsc	status,2
	goto	u8211
	goto	u8210
u8211:
	goto	l16182
u8210:
	goto	l8640
	line	305
	
l16182:	
;time.c: 303: }
;time.c: 305: ShortTime();
	fcall	_ShortTime
	line	306
;time.c: 306: PresetTimeStart();
	fcall	_PresetTimeStart
	line	307
;time.c: 307: CountDownTimeStart();
	fcall	_CountDownTimeStart
	line	308
;time.c: 308: KeepWarmTimeStart();
	fcall	_KeepWarmTimeStart
	line	309
;time.c: 309: WorkTimeStart();
	fcall	_WorkTimeStart
	line	310
	
l8640:	
	return
	opt stack 0
GLOBAL	__end_of_Time_Deal
	__end_of_Time_Deal:
	signat	_Time_Deal,89
	global	_WorkTimeStart

;; *************** function _WorkTimeStart *****************
;; Defined at:
;;		line 206 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Time_Deal
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	206
global __ptext2
__ptext2:	;psect for function _WorkTimeStart
psect	text2
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	206
	global	__size_of_WorkTimeStart
	__size_of_WorkTimeStart	equ	__end_of_WorkTimeStart-_WorkTimeStart
	
_WorkTimeStart:	
;incstack = 0
	opt	stack 4
; Regs used in _WorkTimeStart: [wreg+status,2+status,0]
	line	208
	
l13742:	
;time.c: 208: if(SysStatus != 3 || (WorkStage != 2 && WorkStage != 3))
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u4761
	goto	u4760
u4761:
	goto	l13748
u4760:
	
l13744:	
		movlw	2
	xorwf	((_WorkStage)),w	;volatile
	btfsc	status,2
	goto	u4771
	goto	u4770
u4771:
	goto	l13752
u4770:
	
l13746:	
		movlw	3
	xorwf	((_WorkStage)),w	;volatile
	btfsc	status,2
	goto	u4781
	goto	u4780
u4781:
	goto	l13752
u4780:
	line	210
	
l13748:	
;time.c: 209: {
;time.c: 210: WorkTimeS = 0;
	clrf	(_WorkTimeS)	;volatile
	line	211
;time.c: 211: WorkTimeM = 0;
	clrf	(_WorkTimeM)	;volatile
	line	212
;time.c: 212: WorkTimeH = 0;
	clrf	(_WorkTimeH)	;volatile
	goto	l8617
	line	216
	
l13752:	
;time.c: 214: }
;time.c: 216: if(++WorkTimeS < 120)
	movlw	low(078h)
	incf	(_WorkTimeS),f	;volatile
	subwf	((_WorkTimeS)),w	;volatile
	skipnc
	goto	u4791
	goto	u4790
u4791:
	goto	l13756
u4790:
	goto	l8617
	line	218
	
l13756:	
;time.c: 218: WorkTimeS = 0;
	clrf	(_WorkTimeS)	;volatile
	line	220
	
l13758:	
;time.c: 220: if(++WorkTimeM >= 60)
	movlw	low(03Ch)
	incf	(_WorkTimeM),f	;volatile
	subwf	((_WorkTimeM)),w	;volatile
	skipc
	goto	u4801
	goto	u4800
u4801:
	goto	l8617
u4800:
	line	222
	
l13760:	
;time.c: 221: {
;time.c: 222: WorkTimeM = 0;
	clrf	(_WorkTimeM)	;volatile
	line	223
	
l13762:	
;time.c: 223: if(++WorkTimeH >= 24)
	movlw	low(018h)
	incf	(_WorkTimeH),f	;volatile
	subwf	((_WorkTimeH)),w	;volatile
	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l8617
u4810:
	line	225
	
l13764:	
;time.c: 224: {
;time.c: 225: WorkTimeH = 24;
	movlw	low(018h)
	movwf	(_WorkTimeH)	;volatile
	line	228
	
l8617:	
	return
	opt stack 0
GLOBAL	__end_of_WorkTimeStart
	__end_of_WorkTimeStart:
	signat	_WorkTimeStart,89
	global	_StandbyTimeStart

;; *************** function _StandbyTimeStart *****************
;; Defined at:
;;		line 9 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Cancel
;; This function is called by:
;;		_Time_Deal
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	9
global __ptext3
__ptext3:	;psect for function _StandbyTimeStart
psect	text3
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	9
	global	__size_of_StandbyTimeStart
	__size_of_StandbyTimeStart	equ	__end_of_StandbyTimeStart-_StandbyTimeStart
	
_StandbyTimeStart:	
;incstack = 0
	opt	stack 3
; Regs used in _StandbyTimeStart: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l13540:	
;time.c: 11: if((SysStatus == 5 && (FactoryTestData < 19||b_Auto_test == 1)))
		movlw	5
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u4381
	goto	u4380
u4381:
	goto	l13556
u4380:
	
l13542:	
	movlw	low(013h)
	subwf	(_FactoryTestData),w	;volatile
	skipc
	goto	u4391
	goto	u4390
u4391:
	goto	l13546
u4390:
	
l13544:	
	btfss	(_b_Auto_test/8),(_b_Auto_test)&7	;volatile
	goto	u4401
	goto	u4400
u4401:
	goto	l13556
u4400:
	line	14
	
l13546:	
;time.c: 12: {
;time.c: 14: if(KeyFlag == 0x00)
	movf	((_KeyFlag)),w	;volatile
	btfss	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l13554
u4410:
	line	16
	
l13548:	
;time.c: 15: {
;time.c: 16: if(++StandbyTimeCnt >= 60)
	movlw	low(03Ch)
	incf	(_StandbyTimeCnt),f	;volatile
	subwf	((_StandbyTimeCnt)),w	;volatile
	skipc
	goto	u4421
	goto	u4420
u4421:
	goto	l8570
u4420:
	line	18
	
l13550:	
;time.c: 17: {
;time.c: 18: StandbyTimeCnt = 0;
	clrf	(_StandbyTimeCnt)	;volatile
	line	19
	
l13552:	
;time.c: 19: Cancel();
	fcall	_Cancel
	goto	l8570
	line	24
	
l13554:	
;time.c: 22: else
;time.c: 23: {
;time.c: 24: StandbyTimeCnt = 0;
	clrf	(_StandbyTimeCnt)	;volatile
	goto	l8570
	line	27
	
l13556:	
;time.c: 27: else if(SysStatus == 1)
		decf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u4431
	goto	u4430
u4431:
	goto	l8570
u4430:
	line	30
	
l13558:	
;time.c: 28: {
;time.c: 30: if(KeyFlag == 0x00)
	movf	((_KeyFlag)),w	;volatile
	btfss	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l13566
u4440:
	line	32
	
l13560:	
;time.c: 31: {
;time.c: 32: if((++StandbyTimeCnt) >= 240)
	movlw	low(0F0h)
	incf	(_StandbyTimeCnt),f	;volatile
	subwf	((_StandbyTimeCnt)),w	;volatile
	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l8570
u4450:
	line	34
	
l13562:	
;time.c: 33: {
;time.c: 34: StandbyTimeCnt = 0;
	clrf	(_StandbyTimeCnt)	;volatile
	line	35
	
l13564:	
;time.c: 35: b_Standby = 1;
	bsf	(_b_Standby/8),(_b_Standby)&7	;volatile
	goto	l8570
	line	40
	
l13566:	
;time.c: 38: else
;time.c: 39: {
;time.c: 40: StandbyTimeCnt = 0;
	clrf	(_StandbyTimeCnt)	;volatile
	line	41
	
l13568:	
;time.c: 41: b_Standby = 0;
	bcf	(_b_Standby/8),(_b_Standby)&7	;volatile
	line	44
	
l8570:	
	return
	opt stack 0
GLOBAL	__end_of_StandbyTimeStart
	__end_of_StandbyTimeStart:
	signat	_StandbyTimeStart,89
	global	_ShortTime

;; *************** function _ShortTime *****************
;; Defined at:
;;		line 237 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Time_Deal
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	237
global __ptext4
__ptext4:	;psect for function _ShortTime
psect	text4
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	237
	global	__size_of_ShortTime
	__size_of_ShortTime	equ	__end_of_ShortTime-_ShortTime
	
_ShortTime:	
;incstack = 0
	opt	stack 4
; Regs used in _ShortTime: [wreg+status,2+status,0]
	line	239
	
l13766:	
;time.c: 239: if (!b_ShortOn) return;
	btfsc	(_b_ShortOn/8),(_b_ShortOn)&7	;volatile
	goto	u4821
	goto	u4820
u4821:
	goto	l13770
u4820:
	goto	l8624
	line	240
	
l13770:	
;time.c: 240: if (++ShortCntL >= 120)
	movlw	low(078h)
	incf	(_ShortCntL),f	;volatile
	subwf	((_ShortCntL)),w	;volatile
	skipc
	goto	u4831
	goto	u4830
u4831:
	goto	l8624
u4830:
	line	242
	
l13772:	
;time.c: 241: {
;time.c: 242: ShortCntL = 0;
	clrf	(_ShortCntL)	;volatile
	line	243
	
l13774:	
;time.c: 243: if (++ShortCntM >= 240) ShortCntM = 240;
	movlw	low(0F0h)
	incf	(_ShortCntM),f	;volatile
	subwf	((_ShortCntM)),w	;volatile
	skipc
	goto	u4841
	goto	u4840
u4841:
	goto	l8624
u4840:
	
l13776:	
	movlw	low(0F0h)
	movwf	(_ShortCntM)	;volatile
	line	245
	
l8624:	
	return
	opt stack 0
GLOBAL	__end_of_ShortTime
	__end_of_ShortTime:
	signat	_ShortTime,89
	global	_Relay_Duty_Control

;; *************** function _Relay_Duty_Control *****************
;; Defined at:
;;		line 734 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Time_Deal
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	734
global __ptext5
__ptext5:	;psect for function _Relay_Duty_Control
psect	text5
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	734
	global	__size_of_Relay_Duty_Control
	__size_of_Relay_Duty_Control	equ	__end_of_Relay_Duty_Control-_Relay_Duty_Control
	
_Relay_Duty_Control:	
;incstack = 0
	opt	stack 4
; Regs used in _Relay_Duty_Control: [wreg+status,2+status,0]
	line	737
	
l12728:	
;cook.c: 737: if(b_BotHeatOn == 1)
	btfss	(_b_BotHeatOn/8),(_b_BotHeatOn)&7	;volatile
	goto	u2751
	goto	u2750
u2751:
	goto	l2084
u2750:
	line	740
	
l12730:	
;cook.c: 738: {
;cook.c: 740: if(RC1 == 0 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(57/8),(57)&7	;volatile
	goto	u2761
	goto	u2760
u2761:
	goto	l2099
u2760:
	
l12732:	
	btfsc	(_b_ZeroTimeout/8),(_b_ZeroTimeout)&7	;volatile
	goto	u2771
	goto	u2770
u2771:
	goto	l2099
u2770:
	
l12734:	
	btfsc	(_b_Zero/8),(_b_Zero)&7	;volatile
	goto	u2781
	goto	u2780
u2781:
	goto	l2099
u2780:
	
l12736:	
	movlw	0Fh
	subwf	(_RelWaitCnt+1),w	;volatile
	movlw	0A0h
	skipnz
	subwf	(_RelWaitCnt),w	;volatile
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l2099
u2790:
	line	742
	
l12738:	
;cook.c: 741: {
;cook.c: 742: b_Zero_EN = 1;
	bsf	(_b_Zero_EN/8),(_b_Zero_EN)&7	;volatile
	line	743
;cook.c: 743: b_RelType = 1;
	bsf	(_b_RelType/8),(_b_RelType)&7	;volatile
	goto	l2099
	line	744
	
l2085:	
	line	745
;cook.c: 744: }
;cook.c: 745: }
	goto	l2099
	line	746
	
l2084:	
	line	749
;cook.c: 746: else
;cook.c: 747: {
;cook.c: 749: if(b_BotHeatEn == 1)
	btfss	(_b_BotHeatEn/8),(_b_BotHeatEn)&7	;volatile
	goto	u2801
	goto	u2800
u2801:
	goto	l12776
u2800:
	line	751
	
l12740:	
;cook.c: 750: {
;cook.c: 751: HeatCnt500ms++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_HeatCnt500ms),f	;volatile
	line	752
	
l12742:	
;cook.c: 752: if(HeatCnt500ms < RelOffCnt)
	movf	(_RelOffCnt),w	;volatile
	subwf	(_HeatCnt500ms),w	;volatile
	skipnc
	goto	u2811
	goto	u2810
u2811:
	goto	l12754
u2810:
	line	754
	
l12744:	
;cook.c: 753: {
;cook.c: 754: if(RC1 == 1 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
	btfss	(57/8),(57)&7	;volatile
	goto	u2821
	goto	u2820
u2821:
	goto	l2099
u2820:
	
l12746:	
	btfsc	(_b_ZeroTimeout/8),(_b_ZeroTimeout)&7	;volatile
	goto	u2831
	goto	u2830
u2831:
	goto	l2099
u2830:
	
l12748:	
	btfsc	(_b_Zero/8),(_b_Zero)&7	;volatile
	goto	u2841
	goto	u2840
u2841:
	goto	l2099
u2840:
	
l12750:	
	movlw	0Fh
	subwf	(_RelWaitCnt+1),w	;volatile
	movlw	0A0h
	skipnz
	subwf	(_RelWaitCnt),w	;volatile
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l2099
u2850:
	line	756
	
l12752:	
;cook.c: 755: {
;cook.c: 756: b_Zero_EN = 1;
	bsf	(_b_Zero_EN/8),(_b_Zero_EN)&7	;volatile
	line	757
;cook.c: 757: b_RelType = 0;
	bcf	(_b_RelType/8),(_b_RelType)&7	;volatile
	goto	l2099
	line	762
	
l12754:	
;cook.c: 760: else
;cook.c: 761: {
;cook.c: 762: if(HeatCnt500ms >= (RelOffCnt + RelOnCnt))
	movf	(_RelOffCnt),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_RelOnCnt)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Relay_Duty_Control+0)+0
	clrf	(??_Relay_Duty_Control+0)+0+1
	rlf	1+(??_Relay_Duty_Control+0)+0,f
	
	movf	1+(??_Relay_Duty_Control+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u2865
	movf	0+(??_Relay_Duty_Control+0)+0,w
	subwf	(_HeatCnt500ms),w	;volatile
u2865:

	skipc
	goto	u2861
	goto	u2860
u2861:
	goto	l2091
u2860:
	line	764
	
l12756:	
;cook.c: 763: {
;cook.c: 764: HeatCnt500ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_HeatCnt500ms)	;volatile
	line	765
	
l12758:	
;cook.c: 765: if(RC1 == 1 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
	btfss	(57/8),(57)&7	;volatile
	goto	u2871
	goto	u2870
u2871:
	goto	l2085
u2870:
	
l12760:	
	btfsc	(_b_ZeroTimeout/8),(_b_ZeroTimeout)&7	;volatile
	goto	u2881
	goto	u2880
u2881:
	goto	l2085
u2880:
	
l12762:	
	btfsc	(_b_Zero/8),(_b_Zero)&7	;volatile
	goto	u2891
	goto	u2890
u2891:
	goto	l2085
u2890:
	
l12764:	
	movlw	0Fh
	subwf	(_RelWaitCnt+1),w	;volatile
	movlw	0A0h
	skipnz
	subwf	(_RelWaitCnt),w	;volatile
	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l2085
u2900:
	goto	l12752
	line	772
	
l2091:	
	line	774
;cook.c: 772: else
;cook.c: 773: {
;cook.c: 774: if(RC1 == 0 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7	;volatile
	goto	u2911
	goto	u2910
u2911:
	goto	l2085
u2910:
	
l12768:	
	btfsc	(_b_ZeroTimeout/8),(_b_ZeroTimeout)&7	;volatile
	goto	u2921
	goto	u2920
u2921:
	goto	l2085
u2920:
	
l12770:	
	btfsc	(_b_Zero/8),(_b_Zero)&7	;volatile
	goto	u2931
	goto	u2930
u2931:
	goto	l2085
u2930:
	
l12772:	
	movlw	0Fh
	subwf	(_RelWaitCnt+1),w	;volatile
	movlw	0A0h
	skipnz
	subwf	(_RelWaitCnt),w	;volatile
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l2085
u2940:
	goto	l12738
	line	784
	
l12776:	
;cook.c: 782: else
;cook.c: 783: {
;cook.c: 784: HeatCnt500ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_HeatCnt500ms)	;volatile
	line	786
	
l12778:	
;cook.c: 786: if(RC1 == 1 && b_PressureOn == 1 && RelWaitCnt >= 4000)
	btfss	(57/8),(57)&7	;volatile
	goto	u2951
	goto	u2950
u2951:
	goto	l2096
u2950:
	
l12780:	
	btfss	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u2961
	goto	u2960
u2961:
	goto	l2096
u2960:
	
l12782:	
	movlw	0Fh
	subwf	(_RelWaitCnt+1),w	;volatile
	movlw	0A0h
	skipnz
	subwf	(_RelWaitCnt),w	;volatile
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l2096
u2970:
	line	788
	
l12784:	
;cook.c: 787: {
;cook.c: 788: b_Rel_NoZero = 1;
	bsf	(_b_Rel_NoZero/8),(_b_Rel_NoZero)&7	;volatile
	line	789
;cook.c: 789: }
	goto	l2099
	line	790
	
l2096:	
;cook.c: 790: else if(RC1 == 1 && b_ZeroTimeout == 0 && b_Zero == 0 && RelWaitCnt >= 4000)
	btfss	(57/8),(57)&7	;volatile
	goto	u2981
	goto	u2980
u2981:
	goto	l2099
u2980:
	
l12786:	
	btfsc	(_b_ZeroTimeout/8),(_b_ZeroTimeout)&7	;volatile
	goto	u2991
	goto	u2990
u2991:
	goto	l2099
u2990:
	
l12788:	
	btfsc	(_b_Zero/8),(_b_Zero)&7	;volatile
	goto	u3001
	goto	u3000
u3001:
	goto	l2099
u3000:
	
l12790:	
	movlw	0Fh
	subwf	(_RelWaitCnt+1),w	;volatile
	movlw	0A0h
	skipnz
	subwf	(_RelWaitCnt),w	;volatile
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l2099
u3010:
	goto	l12752
	line	797
	
l2099:	
	return
	opt stack 0
GLOBAL	__end_of_Relay_Duty_Control
	__end_of_Relay_Duty_Control:
	signat	_Relay_Duty_Control,89
	global	_PresetTimeStart

;; *************** function _PresetTimeStart *****************
;; Defined at:
;;		line 76 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_Time_Deal
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	76
global __ptext6
__ptext6:	;psect for function _PresetTimeStart
psect	text6
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	76
	global	__size_of_PresetTimeStart
	__size_of_PresetTimeStart	equ	__end_of_PresetTimeStart-_PresetTimeStart
	
_PresetTimeStart:	
;incstack = 0
	opt	stack 3
; Regs used in _PresetTimeStart: [wreg+status,2+status,0+pclath+cstack]
	line	78
	
l15694:	
;time.c: 78: if(SysStatus == 3)
		movlw	3
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u7541
	goto	u7540
u7541:
	goto	l8586
u7540:
	line	80
	
l15696:	
;time.c: 79: {
;time.c: 80: if(WorkStage == 1)
		decf	((_WorkStage)),w	;volatile
	btfss	status,2
	goto	u7551
	goto	u7550
u7551:
	goto	l8586
u7550:
	line	82
	
l15698:	
;time.c: 81: {
;time.c: 82: if((++PresetTimeS) >= 120)
	movlw	low(078h)
	incf	(_PresetTimeS),f	;volatile
	subwf	((_PresetTimeS)),w	;volatile
	skipc
	goto	u7561
	goto	u7560
u7561:
	goto	l15710
u7560:
	line	84
	
l15700:	
;time.c: 83: {
;time.c: 84: PresetTimeS = 0;
	clrf	(_PresetTimeS)	;volatile
	line	85
	
l15702:	
;time.c: 85: if(PresetTimeM <= 0)
	movf	((_PresetTimeM)),w	;volatile
	btfss	status,2
	goto	u7571
	goto	u7570
u7571:
	goto	l15708
u7570:
	line	87
	
l15704:	
;time.c: 86: {
;time.c: 87: PresetTimeM = 60;
	movlw	low(03Ch)
	movwf	(_PresetTimeM)	;volatile
	line	88
	
l15706:	
;time.c: 88: PresetTimeH--;
	decf	(_PresetTimeH),f	;volatile
	line	90
	
l15708:	
;time.c: 89: }
;time.c: 90: PresetTimeM--;
	decf	(_PresetTimeM),f	;volatile
	line	92
	
l15710:	
;time.c: 91: }
;time.c: 92: if(PresetTimeH <= ((50+CountDownTime)/60) && PresetTimeM <= ((50+CountDownTime)%60) && PresetTimeS >= 2)
	movf	(_CountDownTime),w	;volatile
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	movlw	032h
	addwf	(___awdiv@dividend),f
	skipnc
	incf	(___awdiv@dividend+1),f
	movlw	03Ch
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	xorlw	80h
	movwf	(??_PresetTimeStart+0)+0
	movlw	80h
	subwf	(??_PresetTimeStart+0)+0,w
	skipz
	goto	u7585
	movf	(_PresetTimeH),w	;volatile
	subwf	(0+(?___awdiv)),w
u7585:

	skipc
	goto	u7581
	goto	u7580
u7581:
	goto	l8586
u7580:
	
l15712:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CountDownTime),w	;volatile
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	movlw	032h
	addwf	(___awmod@dividend),f
	skipnc
	incf	(___awmod@dividend+1),f
	movlw	03Ch
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	xorlw	80h
	movwf	(??_PresetTimeStart+0)+0
	movlw	80h
	subwf	(??_PresetTimeStart+0)+0,w
	skipz
	goto	u7595
	movf	(_PresetTimeM),w	;volatile
	subwf	(0+(?___awmod)),w
u7595:

	skipc
	goto	u7591
	goto	u7590
u7591:
	goto	l8586
u7590:
	
l15714:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_PresetTimeS),w	;volatile
	skipc
	goto	u7601
	goto	u7600
u7601:
	goto	l8586
u7600:
	line	94
	
l15716:	
;time.c: 93: {
;time.c: 94: WorkStage = 2;
	movlw	low(02h)
	movwf	(_WorkStage)	;volatile
	line	95
	
l15718:	
;time.c: 95: PresetTimeH = 0;
	clrf	(_PresetTimeH)	;volatile
	line	96
	
l15720:	
;time.c: 96: PresetTimeM = 0;
	clrf	(_PresetTimeM)	;volatile
	line	97
;time.c: 97: {{BuzCnt = 3; BuzUpTime = 50/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(03h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(019h)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	101
	
l8586:	
	return
	opt stack 0
GLOBAL	__end_of_PresetTimeStart
	__end_of_PresetTimeStart:
	signat	_PresetTimeStart,89
	global	_KeepWarmTimeStart

;; *************** function _KeepWarmTimeStart *****************
;; Defined at:
;;		line 168 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Cancel
;; This function is called by:
;;		_Time_Deal
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	168
global __ptext7
__ptext7:	;psect for function _KeepWarmTimeStart
psect	text7
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	168
	global	__size_of_KeepWarmTimeStart
	__size_of_KeepWarmTimeStart	equ	__end_of_KeepWarmTimeStart-_KeepWarmTimeStart
	
_KeepWarmTimeStart:	
;incstack = 0
	opt	stack 3
; Regs used in _KeepWarmTimeStart: [wreg+status,2+status,0+pclath+cstack]
	line	170
	
l13694:	
;time.c: 170: if(SysStatus != 4)
		movlw	4
	xorwf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u4681
	goto	u4680
u4681:
	goto	l13700
u4680:
	line	172
	
l13696:	
;time.c: 171: {
;time.c: 172: KeepWarmS = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_KeepWarmS)^080h	;volatile
	line	173
;time.c: 173: KeepWarmM = 0;
	clrf	(_KeepWarmM)^080h	;volatile
	line	174
;time.c: 174: KeepWarmH = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_KeepWarmH)	;volatile
	goto	l8603
	line	178
	
l13700:	
;time.c: 176: }
;time.c: 178: if((++KeepWarmS) < 120)return;
	movlw	low(078h)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_KeepWarmS)^080h,f	;volatile
	subwf	((_KeepWarmS)^080h),w	;volatile
	skipnc
	goto	u4691
	goto	u4690
u4691:
	goto	l13704
u4690:
	goto	l8603
	line	179
	
l13704:	
;time.c: 179: KeepWarmS = 0;
	clrf	(_KeepWarmS)^080h	;volatile
	line	180
	
l13706:	
;time.c: 180: if((++KeepWarmM) < 60) return;
	movlw	low(03Ch)
	incf	(_KeepWarmM)^080h,f	;volatile
	subwf	((_KeepWarmM)^080h),w	;volatile
	skipnc
	goto	u4701
	goto	u4700
u4701:
	goto	l13710
u4700:
	goto	l8603
	line	181
	
l13710:	
;time.c: 181: KeepWarmM = 0;
	clrf	(_KeepWarmM)^080h	;volatile
	line	183
	
l13712:	
;time.c: 183: if(ChooseFunSave == 1 || ChooseFunSave == 2 || ChooseFunSave == 12)
		decf	((_ChooseFunSave)),w	;volatile
	btfsc	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l13718
u4710:
	
l13714:	
		movlw	2
	xorwf	((_ChooseFunSave)),w	;volatile
	btfsc	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l13718
u4720:
	
l13716:	
		movlw	12
	xorwf	((_ChooseFunSave)),w	;volatile
	btfss	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l13722
u4730:
	line	185
	
l13718:	
;time.c: 184: {
;time.c: 185: if((++KeepWarmH) < 5)
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_KeepWarmH),f	;volatile
	subwf	((_KeepWarmH)),w	;volatile
	skipnc
	goto	u4741
	goto	u4740
u4741:
	goto	l13726
u4740:
	goto	l8603
	line	190
	
l13722:	
;time.c: 188: else
;time.c: 189: {
;time.c: 190: if((++KeepWarmH) < 24)
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_KeepWarmH),f	;volatile
	subwf	((_KeepWarmH)),w	;volatile
	skipnc
	goto	u4751
	goto	u4750
u4751:
	goto	l13726
u4750:
	goto	l8603
	line	193
	
l13726:	
;time.c: 192: }
;time.c: 193: ChooseFunSave = 0;
	clrf	(_ChooseFunSave)	;volatile
	line	194
	
l13728:	
;time.c: 194: b_AutoKeepWarm = 0;
	bcf	(_b_AutoKeepWarm/8),(_b_AutoKeepWarm)&7	;volatile
	line	195
	
l13730:	
;time.c: 195: Cancel();
	fcall	_Cancel
	line	196
	
l13732:	
;time.c: 196: {{BuzCnt = 5; BuzUpTime = 50/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_BuzCnt)	;volatile
	
l13734:	
	movlw	low(019h)
	movwf	(_BuzUpTime)	;volatile
	
l13736:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l13738:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l13740:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	197
	
l8603:	
	return
	opt stack 0
GLOBAL	__end_of_KeepWarmTimeStart
	__end_of_KeepWarmTimeStart:
	signat	_KeepWarmTimeStart,89
	global	_ErrorTimeStart

;; *************** function _ErrorTimeStart *****************
;; Defined at:
;;		line 53 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Time_Deal
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	53
global __ptext8
__ptext8:	;psect for function _ErrorTimeStart
psect	text8
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	53
	global	__size_of_ErrorTimeStart
	__size_of_ErrorTimeStart	equ	__end_of_ErrorTimeStart-_ErrorTimeStart
	
_ErrorTimeStart:	
;incstack = 0
	opt	stack 4
; Regs used in _ErrorTimeStart: [wreg+status,2+status,0]
	line	55
	
l13570:	
;time.c: 55: if((ErrorCode != 0 || b_BotTempOut))
	bcf	status, 5	;RP0=0, select bank0
	movf	((_ErrorCode)),w	;volatile
	btfss	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l13574
u4460:
	
l13572:	
	btfss	(_b_BotTempOut/8),(_b_BotTempOut)&7	;volatile
	goto	u4471
	goto	u4470
u4471:
	goto	l13588
u4470:
	line	57
	
l13574:	
;time.c: 56: {
;time.c: 57: if(++ErrorSoundTime >= 6)
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_ErrorSoundTime)^080h,f	;volatile
	subwf	((_ErrorSoundTime)^080h),w	;volatile
	skipc
	goto	u4481
	goto	u4480
u4481:
	goto	l8578
u4480:
	line	59
	
l13576:	
;time.c: 58: {
;time.c: 59: ErrorSoundTime = 0;
	clrf	(_ErrorSoundTime)^080h	;volatile
	line	60
	
l13578:	
;time.c: 60: {{BuzCnt = 3; BuzUpTime = 25/2; BuzDownTime = 50/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_BuzCnt)	;volatile
	
l13580:	
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	
l13582:	
	movlw	low(019h)
	movwf	(_BuzDownTime)	;volatile
	
l13584:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l13586:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l8578
	line	65
	
l13588:	
;time.c: 63: else
;time.c: 64: {
;time.c: 65: ErrorSoundTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_ErrorSoundTime)^080h	;volatile
	line	67
	
l8578:	
	return
	opt stack 0
GLOBAL	__end_of_ErrorTimeStart
	__end_of_ErrorTimeStart:
	signat	_ErrorTimeStart,89
	global	_CountDownTimeStart

;; *************** function _CountDownTimeStart *****************
;; Defined at:
;;		line 109 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Cancel
;; This function is called by:
;;		_Time_Deal
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	109
global __ptext9
__ptext9:	;psect for function _CountDownTimeStart
psect	text9
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	109
	global	__size_of_CountDownTimeStart
	__size_of_CountDownTimeStart	equ	__end_of_CountDownTimeStart-_CountDownTimeStart
	
_CountDownTimeStart:	
;incstack = 0
	opt	stack 3
; Regs used in _CountDownTimeStart: [wreg+status,2+status,0+pclath+cstack]
	line	111
	
l13618:	
;time.c: 111: if(SysStatus == 5 && FactoryTestData == 20)
		movlw	5
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l13652
u4560:
	
l13620:	
		movlw	20
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4571
	goto	u4570
u4571:
	goto	l13652
u4570:
	line	113
	
l13622:	
;time.c: 112: {
;time.c: 113: if((++CountTimeS) < 120) return;
	movlw	low(078h)
	incf	(_CountTimeS),f	;volatile
	subwf	((_CountTimeS)),w	;volatile
	skipnc
	goto	u4581
	goto	u4580
u4581:
	goto	l13626
u4580:
	goto	l8591
	line	114
	
l13626:	
;time.c: 114: CountTimeS = 0;
	clrf	(_CountTimeS)	;volatile
	line	116
	
l13628:	
;time.c: 116: if(CountDownTime > 0)
	movf	((_CountDownTime)),w	;volatile
	btfsc	status,2
	goto	u4591
	goto	u4590
u4591:
	goto	l13632
u4590:
	line	118
	
l13630:	
;time.c: 117: {
;time.c: 118: CountDownTime--;
	decf	(_CountDownTime),f	;volatile
	line	121
	
l13632:	
;time.c: 119: }
;time.c: 121: if(CountDownTime == 0)
	movf	((_CountDownTime)),w	;volatile
	btfss	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l8591
u4600:
	line	123
	
l13634:	
;time.c: 122: {
;time.c: 123: Cancel();
	fcall	_Cancel
	line	124
	
l13636:	
;time.c: 124: {{BuzCnt = 5; BuzUpTime = 50/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_BuzCnt)	;volatile
	
l13638:	
	movlw	low(019h)
	movwf	(_BuzUpTime)	;volatile
	
l13640:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l13642:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l13644:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	125
	
l13646:	
;time.c: 125: ChooseFunSave = 0;
	clrf	(_ChooseFunSave)	;volatile
	line	126
	
l13648:	
;time.c: 126: SysStatus = 4;
	movlw	low(04h)
	movwf	(_SysStatus)	;volatile
	goto	l8591
	line	131
	
l13652:	
;time.c: 129: }
;time.c: 131: if(SysStatus != 3)
		movlw	3
	xorwf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l13658
u4610:
	line	133
	
l13654:	
;time.c: 132: {
;time.c: 133: CountTimeS = 0;
	clrf	(_CountTimeS)	;volatile
	goto	l8591
	line	137
	
l13658:	
;time.c: 135: }
;time.c: 137: if(SysStatus == 3 && WorkStage == 3)
		movlw	3
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l8591
u4620:
	
l13660:	
		movlw	3
	xorwf	((_WorkStage)),w	;volatile
	btfss	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l8591
u4630:
	line	139
	
l13662:	
;time.c: 138: {
;time.c: 139: if(WorkStage == 3)
		movlw	3
	xorwf	((_WorkStage)),w	;volatile
	btfss	status,2
	goto	u4641
	goto	u4640
u4641:
	goto	l13676
u4640:
	line	141
	
l13664:	
;time.c: 140: {
;time.c: 141: CountTimeS++;
	incf	(_CountTimeS),f	;volatile
	line	142
	
l13666:	
;time.c: 142: if(CountTimeS < 120) return;
	movlw	low(078h)
	subwf	(_CountTimeS),w	;volatile
	skipnc
	goto	u4651
	goto	u4650
u4651:
	goto	l13670
u4650:
	goto	l8591
	line	143
	
l13670:	
;time.c: 143: CountTimeS = 0;
	clrf	(_CountTimeS)	;volatile
	line	145
	
l13672:	
;time.c: 145: if(CountDownTime > 0)
	movf	((_CountDownTime)),w	;volatile
	btfsc	status,2
	goto	u4661
	goto	u4660
u4661:
	goto	l13676
u4660:
	line	147
	
l13674:	
;time.c: 146: {
;time.c: 147: CountDownTime--;
	decf	(_CountDownTime),f	;volatile
	line	151
	
l13676:	
;time.c: 148: }
;time.c: 149: }
;time.c: 151: if(CountDownTime == 0)
	movf	((_CountDownTime)),w	;volatile
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l8591
u4670:
	line	153
	
l13678:	
;time.c: 152: {
;time.c: 153: Cancel();
	fcall	_Cancel
	line	154
	
l13680:	
;time.c: 154: SysStatus = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_SysStatus)	;volatile
	line	155
	
l13682:	
;time.c: 155: b_AutoKeepWarm = 1;
	bsf	(_b_AutoKeepWarm/8),(_b_AutoKeepWarm)&7	;volatile
	line	156
	
l13684:	
;time.c: 156: {{BuzCnt = 5; BuzUpTime = 50/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(05h)
	movwf	(_BuzCnt)	;volatile
	
l13686:	
	movlw	low(019h)
	movwf	(_BuzUpTime)	;volatile
	
l13688:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l13690:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l13692:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	159
	
l8591:	
	return
	opt stack 0
GLOBAL	__end_of_CountDownTimeStart
	__end_of_CountDownTimeStart:
	signat	_CountDownTimeStart,89
	global	_AutoStartFun

;; *************** function _AutoStartFun *****************
;; Defined at:
;;		line 247 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Time_Deal
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	247
global __ptext10
__ptext10:	;psect for function _AutoStartFun
psect	text10
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\time.c"
	line	247
	global	__size_of_AutoStartFun
	__size_of_AutoStartFun	equ	__end_of_AutoStartFun-_AutoStartFun
	
_AutoStartFun:	
;incstack = 0
	opt	stack 4
; Regs used in _AutoStartFun: [wreg+status,2+status,0]
	line	249
	
l13778:	
;time.c: 249: if(SysStatus == 2)
		movlw	2
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l8636
u4850:
	line	251
	
l13780:	
;time.c: 250: {
;time.c: 251: if(KeyFlag == 0x00)
	movf	((_KeyFlag)),w	;volatile
	btfss	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l13818
u4860:
	line	253
	
l13782:	
;time.c: 252: {
;time.c: 253: if(++StandbyTimeCnt >= 14)
	movlw	low(0Eh)
	incf	(_StandbyTimeCnt),f	;volatile
	subwf	((_StandbyTimeCnt)),w	;volatile
	skipc
	goto	u4871
	goto	u4870
u4871:
	goto	l8636
u4870:
	line	255
	
l13784:	
;time.c: 254: {
;time.c: 255: StandbyTimeCnt = 0;
	clrf	(_StandbyTimeCnt)	;volatile
	line	256
	
l13786:	
;time.c: 256: SysStatus = 3;
	movlw	low(03h)
	movwf	(_SysStatus)	;volatile
	line	257
	
l13788:	
;time.c: 257: if(PresetTimeH == 0 && PresetTimeM == 0)
	movf	((_PresetTimeH)),w	;volatile
	btfss	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l13794
u4880:
	
l13790:	
	movf	((_PresetTimeM)),w	;volatile
	btfss	status,2
	goto	u4891
	goto	u4890
u4891:
	goto	l13794
u4890:
	line	259
	
l13792:	
;time.c: 258: {
;time.c: 259: WorkStage = 2;
	movlw	low(02h)
	movwf	(_WorkStage)	;volatile
	line	260
;time.c: 260: }
	goto	l13796
	line	263
	
l13794:	
;time.c: 261: else
;time.c: 262: {
;time.c: 263: WorkStage = 1;
	movlw	low(01h)
	movwf	(_WorkStage)	;volatile
	line	266
	
l13796:	
;time.c: 264: }
;time.c: 266: if(ChooseFun == 14)
		movlw	14
	xorwf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l8634
u4900:
	line	268
	
l13798:	
;time.c: 267: {
;time.c: 268: WorkStage = 3;
	movlw	low(03h)
	movwf	(_WorkStage)	;volatile
	line	269
	
l8634:	
	line	270
;time.c: 269: }
;time.c: 270: ChooseFunSave = ChooseFun;
	movf	(_ChooseFun),w	;volatile
	movwf	(_ChooseFunSave)	;volatile
	line	271
;time.c: 271: CountDownTimeSave = CountDownTime;
	movf	(_CountDownTime),w	;volatile
	movwf	(_CountDownTimeSave)	;volatile
	line	272
	
l13800:	
;time.c: 272: WorkStep = 0;
	clrf	(_WorkStep)	;volatile
	line	273
	
l13802:	
;time.c: 273: b_JudgeLidOk = 0;
	bcf	(_b_JudgeLidOk/8),(_b_JudgeLidOk)&7	;volatile
	line	274
	
l13804:	
;time.c: 274: JudgeLidCnt = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_JudgeLidCnt)^080h	;volatile
	line	275
	
l13806:	
;time.c: 275: JudgeLidMin = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_JudgeLidMin)	;volatile
	line	277
	
l13808:	
;time.c: 277: {{BuzCnt = 3; BuzUpTime = 50/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(03h)
	movwf	(_BuzCnt)	;volatile
	
l13810:	
	movlw	low(019h)
	movwf	(_BuzUpTime)	;volatile
	
l13812:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l13814:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l13816:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l8636
	line	282
	
l13818:	
;time.c: 280: else
;time.c: 281: {
;time.c: 282: StandbyTimeCnt=0;
	clrf	(_StandbyTimeCnt)	;volatile
	line	285
	
l8636:	
	return
	opt stack 0
GLOBAL	__end_of_AutoStartFun
	__end_of_AutoStartFun:
	signat	_AutoStartFun,89
	global	_Sound_Deal

;; *************** function _Sound_Deal *****************
;; Defined at:
;;		line 6 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\sound.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\sound.c"
	line	6
global __ptext11
__ptext11:	;psect for function _Sound_Deal
psect	text11
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\sound.c"
	line	6
	global	__size_of_Sound_Deal
	__size_of_Sound_Deal	equ	__end_of_Sound_Deal-_Sound_Deal
	
_Sound_Deal:	
;incstack = 0
	opt	stack 5
; Regs used in _Sound_Deal: [wreg+status,2+status,0]
	line	8
	
l14588:	
;sound.c: 8: if(BuzCnt > 0)
	movf	((_BuzCnt)),w	;volatile
	btfsc	status,2
	goto	u6221
	goto	u6220
u6221:
	goto	l14606
u6220:
	line	10
	
l14590:	
;sound.c: 9: {
;sound.c: 10: if(BuzUpTime > 0)
	movf	((_BuzUpTime)),w	;volatile
	btfsc	status,2
	goto	u6231
	goto	u6230
u6231:
	goto	l7677
u6230:
	line	12
	
l14592:	
;sound.c: 11: {
;sound.c: 12: {TRISC&=~(1<<(2));PWM0EN=1;};
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bsf	(232/8),(232)&7	;volatile
	line	13
	
l14594:	
;sound.c: 13: BuzUpTime--;
	decf	(_BuzUpTime),f	;volatile
	line	14
;sound.c: 14: }
	goto	l7682
	line	15
	
l7677:	
	line	17
;sound.c: 15: else
;sound.c: 16: {
;sound.c: 17: {TRISC|=(1<<(2));PWM0EN=0;};
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	(232/8),(232)&7	;volatile
	line	18
	
l14596:	
;sound.c: 18: if(BuzDownTime > 0)
	movf	((_BuzDownTime)),w	;volatile
	btfsc	status,2
	goto	u6241
	goto	u6240
u6241:
	goto	l14600
u6240:
	line	20
	
l14598:	
;sound.c: 19: {
;sound.c: 20: BuzDownTime--;
	decf	(_BuzDownTime),f	;volatile
	line	21
;sound.c: 21: }
	goto	l7682
	line	24
	
l14600:	
;sound.c: 22: else
;sound.c: 23: {
;sound.c: 24: BuzCnt--;
	decf	(_BuzCnt),f	;volatile
	line	25
	
l14602:	
;sound.c: 25: BuzDownTime = BuzDownTemp;
	movf	(_BuzDownTemp),w	;volatile
	movwf	(_BuzDownTime)	;volatile
	line	26
	
l14604:	
;sound.c: 26: BuzUpTime = BuzUpTemp;
	movf	(_BuzUpTemp),w	;volatile
	movwf	(_BuzUpTime)	;volatile
	goto	l7682
	line	32
	
l14606:	
;sound.c: 30: else
;sound.c: 31: {
;sound.c: 32: BuzUpTime = 0;
	clrf	(_BuzUpTime)	;volatile
	line	33
;sound.c: 33: BuzDownTime = 0;
	clrf	(_BuzDownTime)	;volatile
	line	34
;sound.c: 34: BuzUpTemp = 0;
	clrf	(_BuzUpTemp)	;volatile
	line	35
;sound.c: 35: BuzDownTemp = 0;
	clrf	(_BuzDownTemp)	;volatile
	line	36
;sound.c: 36: BuzCnt = 0;
	clrf	(_BuzCnt)	;volatile
	line	37
	
l14608:	
;sound.c: 37: {TRISC|=(1<<(2));PWM0EN=0;};
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	
l14610:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(232/8),(232)&7	;volatile
	line	39
	
l7682:	
	return
	opt stack 0
GLOBAL	__end_of_Sound_Deal
	__end_of_Sound_Deal:
	signat	_Sound_Deal,89
	global	_LED_Task

;; *************** function _LED_Task *****************
;; Defined at:
;;		line 691 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Error_Show
;;		_Factory_Show
;;		_Fun_Choose_Show
;;		_Keepwarm_Show
;;		_LED_Off
;;		_Power_On_Show
;;		_Test_Mode_Show
;;		_Waiting_Mode_Show
;;		_Work_Mode_Show
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	691
global __ptext12
__ptext12:	;psect for function _LED_Task
psect	text12
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	691
	global	__size_of_LED_Task
	__size_of_LED_Task	equ	__end_of_LED_Task-_LED_Task
	
_LED_Task:	
;incstack = 0
	opt	stack 2
; Regs used in _LED_Task: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	694
	
l16954:	
;display.c: 694: LED_Off();
	fcall	_LED_Off
	line	697
	
l16956:	
;display.c: 697: if(++HorseShowTime160ms >= 20)
	movlw	low(014h)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_HorseShowTime160ms)^080h,f	;volatile
	subwf	((_HorseShowTime160ms)^080h),w	;volatile
	skipc
	goto	u8911
	goto	u8910
u8911:
	goto	l16964
u8910:
	line	699
	
l16958:	
;display.c: 698: {
;display.c: 699: HorseShowTime160ms = 0;
	clrf	(_HorseShowTime160ms)^080h	;volatile
	line	700
	
l16960:	
;display.c: 700: if(++HorseCount >= 13)
	movlw	low(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_HorseCount),f	;volatile
	subwf	((_HorseCount)),w	;volatile
	skipc
	goto	u8921
	goto	u8920
u8921:
	goto	l16964
u8920:
	line	702
	
l16962:	
;display.c: 701: {
;display.c: 702: HorseCount = 1;
	movlw	low(01h)
	movwf	(_HorseCount)	;volatile
	line	707
	
l16964:	
;display.c: 703: }
;display.c: 704: }
;display.c: 707: if(SysStatus == 6)
		movlw	6
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u8931
	goto	u8930
u8931:
	goto	l16968
u8930:
	line	709
	
l16966:	
;display.c: 708: {
;display.c: 709: Power_On_Show();
	fcall	_Power_On_Show
	line	710
;display.c: 710: }
	goto	l17004
	line	711
	
l16968:	
;display.c: 711: else if(SysStatus == 1)
		decf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u8941
	goto	u8940
u8941:
	goto	l16978
u8940:
	line	713
	
l16970:	
;display.c: 712: {
;display.c: 713: if(b_Standby)
	btfss	(_b_Standby/8),(_b_Standby)&7	;volatile
	goto	u8951
	goto	u8950
u8951:
	goto	l16976
u8950:
	line	715
	
l16972:	
;display.c: 714: {
;display.c: 715: if(b_LedCol)
	btfss	(_b_LedCol/8),(_b_LedCol)&7	;volatile
	goto	u8961
	goto	u8960
u8961:
	goto	l4004
u8960:
	line	718
	
l16974:	
;display.c: 716: {
;display.c: 718: DispData[0] |= 0x40;
	bsf	(_DispData)+(6/8),(6)&7	;volatile
	line	719
;display.c: 719: DispData[1] |= 0x40;
	bsf	0+(_DispData)+01h+(6/8),(6)&7	;volatile
	line	720
;display.c: 720: DispData[2] |= 0x40;
	bsf	0+(_DispData)+02h+(6/8),(6)&7	;volatile
	line	721
;display.c: 721: DispData[3] |= 0x40;
	bsf	0+(_DispData)+03h+(6/8),(6)&7	;volatile
	line	722
;display.c: 722: {DispData[2] |= 0x80; DispData[1] |= 0x80;};
	bsf	0+(_DispData)+02h+(7/8),(7)&7	;volatile
	bsf	0+(_DispData)+01h+(7/8),(7)&7	;volatile
	goto	l17004
	line	727
	
l16976:	
;display.c: 725: else
;display.c: 726: {
;display.c: 727: Waiting_Mode_Show();
	fcall	_Waiting_Mode_Show
	goto	l17004
	line	728
	
l4004:	
	line	730
;display.c: 728: }
;display.c: 730: }
	goto	l17004
	line	731
	
l16978:	
;display.c: 731: else if(SysStatus == 2)
		movlw	2
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u8971
	goto	u8970
u8971:
	goto	l16982
u8970:
	line	733
	
l16980:	
;display.c: 732: {
;display.c: 733: Fun_Choose_Show();
	fcall	_Fun_Choose_Show
	line	734
;display.c: 734: }
	goto	l17004
	line	735
	
l16982:	
;display.c: 735: else if(SysStatus == 3 && ErrorCode == 0)
		movlw	3
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u8981
	goto	u8980
u8981:
	goto	l16988
u8980:
	
l16984:	
	movf	((_ErrorCode)),w	;volatile
	btfss	status,2
	goto	u8991
	goto	u8990
u8991:
	goto	l16988
u8990:
	line	737
	
l16986:	
;display.c: 736: {
;display.c: 737: Work_Mode_Show();
	fcall	_Work_Mode_Show
	line	738
;display.c: 738: }
	goto	l17004
	line	739
	
l16988:	
;display.c: 739: else if(SysStatus == 4 && ErrorCode == 0)
		movlw	4
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u9001
	goto	u9000
u9001:
	goto	l16994
u9000:
	
l16990:	
	movf	((_ErrorCode)),w	;volatile
	btfss	status,2
	goto	u9011
	goto	u9010
u9011:
	goto	l16994
u9010:
	line	741
	
l16992:	
;display.c: 740: {
;display.c: 741: Keepwarm_Show();
	fcall	_Keepwarm_Show
	line	742
;display.c: 742: }
	goto	l17004
	line	743
	
l16994:	
;display.c: 743: else if(SysStatus == 5 && ErrorCode == 0)
		movlw	5
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u9021
	goto	u9020
u9021:
	goto	l17000
u9020:
	
l16996:	
	movf	((_ErrorCode)),w	;volatile
	btfss	status,2
	goto	u9031
	goto	u9030
u9031:
	goto	l17000
u9030:
	line	745
	
l16998:	
;display.c: 744: {
;display.c: 745: Factory_Show();
	fcall	_Factory_Show
	line	746
;display.c: 746: }
	goto	l17004
	line	747
	
l17000:	
;display.c: 747: else if(ErrorCode != 0)
	movf	((_ErrorCode)),w	;volatile
	btfsc	status,2
	goto	u9041
	goto	u9040
u9041:
	goto	l4004
u9040:
	line	749
	
l17002:	
;display.c: 748: {
;display.c: 749: Error_Show();
	fcall	_Error_Show
	line	753
	
l17004:	
;display.c: 750: }
;display.c: 753: if(b_TestShow)
	btfss	(_b_TestShow/8),(_b_TestShow)&7	;volatile
	goto	u9051
	goto	u9050
u9051:
	goto	l4016
u9050:
	line	755
	
l17006:	
;display.c: 754: {
;display.c: 755: Test_Mode_Show();
	fcall	_Test_Mode_Show
	line	757
	
l4016:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Task
	__end_of_LED_Task:
	signat	_LED_Task,89
	global	_Work_Mode_Show

;; *************** function _Work_Mode_Show *****************
;; Defined at:
;;		line 241 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DIG_Show_Time
;;		___lbdiv
;;		___lbmod
;;		___wmul
;; This function is called by:
;;		_LED_Task
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	241
global __ptext13
__ptext13:	;psect for function _Work_Mode_Show
psect	text13
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	241
	global	__size_of_Work_Mode_Show
	__size_of_Work_Mode_Show	equ	__end_of_Work_Mode_Show-_Work_Mode_Show
	
_Work_Mode_Show:	
;incstack = 0
	opt	stack 2
; Regs used in _Work_Mode_Show: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	244
	
l16740:	
;display.c: 244: switch(ChooseFun)
	goto	l16744
	line	246
;display.c: 245: {
;display.c: 246: case 1 : (DispData[4] |= 0x01); break;
	
l3865:	
	bsf	0+(_DispData)+04h+(0/8),(0)&7	;volatile
	goto	l16746
	line	247
;display.c: 247: case 2 : (DispData[5] |= 0x01); break;
	
l3867:	
	bsf	0+(_DispData)+05h+(0/8),(0)&7	;volatile
	goto	l16746
	line	248
;display.c: 248: case 3 : (DispData[4] |= 0x40); break;
	
l3868:	
	bsf	0+(_DispData)+04h+(6/8),(6)&7	;volatile
	goto	l16746
	line	249
;display.c: 249: case 4 : (DispData[5] |= 0x40); break;
	
l3869:	
	bsf	0+(_DispData)+05h+(6/8),(6)&7	;volatile
	goto	l16746
	line	251
;display.c: 251: case 5 : (DispData[5] |= 0x08); break;
	
l3870:	
	bsf	0+(_DispData)+05h+(3/8),(3)&7	;volatile
	goto	l16746
	line	252
;display.c: 252: case 6 : (DispData[5] |= 0x04); break;
	
l3871:	
	bsf	0+(_DispData)+05h+(2/8),(2)&7	;volatile
	goto	l16746
	line	253
;display.c: 253: case 7 : (DispData[5] |= 0x10); break;
	
l3872:	
	bsf	0+(_DispData)+05h+(4/8),(4)&7	;volatile
	goto	l16746
	line	254
;display.c: 254: case 8 : (DispData[5] |= 0x20); break;
	
l3873:	
	bsf	0+(_DispData)+05h+(5/8),(5)&7	;volatile
	goto	l16746
	line	256
;display.c: 256: case 9: (DispData[4] |= 0x08); break;
	
l3874:	
	bsf	0+(_DispData)+04h+(3/8),(3)&7	;volatile
	goto	l16746
	line	257
;display.c: 257: case 10 : (DispData[4] |= 0x04); break;
	
l3875:	
	bsf	0+(_DispData)+04h+(2/8),(2)&7	;volatile
	goto	l16746
	line	258
;display.c: 258: case 11 : (DispData[4] |= 0x10); break;
	
l3876:	
	bsf	0+(_DispData)+04h+(4/8),(4)&7	;volatile
	goto	l16746
	line	259
;display.c: 259: case 12 : (DispData[4] |= 0x20); break;
	
l3877:	
	bsf	0+(_DispData)+04h+(5/8),(5)&7	;volatile
	goto	l16746
	line	261
;display.c: 261: case 13 : (DispData[4] |= 0x80); break;
	
l3878:	
	bsf	0+(_DispData)+04h+(7/8),(7)&7	;volatile
	goto	l16746
	line	262
;display.c: 262: case 14 : (DispData[5] |= 0x02); break;
	
l3879:	
	bsf	0+(_DispData)+05h+(1/8),(1)&7	;volatile
	goto	l16746
	line	244
	
l16744:	
	movf	(_ChooseFun),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 14, Range of values is 1 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           43    22 (average)
; direct_byte           53    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l3865
	xorlw	2^1	; case 2
	skipnz
	goto	l3867
	xorlw	3^2	; case 3
	skipnz
	goto	l3868
	xorlw	4^3	; case 4
	skipnz
	goto	l3869
	xorlw	5^4	; case 5
	skipnz
	goto	l3870
	xorlw	6^5	; case 6
	skipnz
	goto	l3871
	xorlw	7^6	; case 7
	skipnz
	goto	l3872
	xorlw	8^7	; case 8
	skipnz
	goto	l3873
	xorlw	9^8	; case 9
	skipnz
	goto	l3874
	xorlw	10^9	; case 10
	skipnz
	goto	l3875
	xorlw	11^10	; case 11
	skipnz
	goto	l3876
	xorlw	12^11	; case 12
	skipnz
	goto	l3877
	xorlw	13^12	; case 13
	skipnz
	goto	l3878
	xorlw	14^13	; case 14
	skipnz
	goto	l3879
	goto	l16746
	opt asmopt_pop

	line	268
	
l16746:	
;display.c: 268: if(ChooseFun >=1 && ChooseFun <= 13)
	movf	((_ChooseFun)),w	;volatile
	btfsc	status,2
	goto	u8451
	goto	u8450
u8451:
	goto	l3880
u8450:
	
l16748:	
	movlw	low(0Eh)
	subwf	(_ChooseFun),w	;volatile
	skipnc
	goto	u8461
	goto	u8460
u8461:
	goto	l3880
u8460:
	line	270
	
l16750:	
;display.c: 269: {
;display.c: 270: if(WorkStage != 1)
		decf	((_WorkStage)),w	;volatile
	btfsc	status,2
	goto	u8471
	goto	u8470
u8471:
	goto	l16786
u8470:
	line	272
	
l16752:	
;display.c: 271: {
;display.c: 272: if(WorkTimeS > 0 || WorkTimeM > 0) (DispData[6] |= 0x02);
	movf	((_WorkTimeS)),w	;volatile
	btfss	status,2
	goto	u8481
	goto	u8480
u8481:
	goto	l3884
u8480:
	
l16754:	
	movf	((_WorkTimeM)),w	;volatile
	btfsc	status,2
	goto	u8491
	goto	u8490
u8491:
	goto	l16756
u8490:
	
l3884:	
	bsf	0+(_DispData)+06h+(1/8),(1)&7	;volatile
	line	273
	
l16756:	
;display.c: 273: if(Ad_Bot >= 154) Led_Step_100C = 1;
	movlw	low(09Ah)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u8501
	goto	u8500
u8501:
	goto	l16760
u8500:
	
l16758:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_Led_Step_100C)^080h	;volatile
	line	274
	
l16760:	
;display.c: 274: if(Led_Step_100C) (DispData[6] |= 0x80);
	bsf	status, 5	;RP0=1, select bank1
	movf	((_Led_Step_100C)^080h),w	;volatile
	btfsc	status,2
	goto	u8511
	goto	u8510
u8511:
	goto	l16764
u8510:
	
l16762:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	0+(_DispData)+06h+(7/8),(7)&7	;volatile
	line	275
	
l16764:	
;display.c: 275: if(WorkStage == 3)
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_WorkStage)),w	;volatile
	btfss	status,2
	goto	u8521
	goto	u8520
u8521:
	goto	l16786
u8520:
	line	277
	
l16766:	
;display.c: 276: {
;display.c: 277: if(4*WorkTimeM >= 2*TotalTimeSave) (DispData[6] |= 0x10);
	movf	(_TotalTimeSave),w	;volatile
	movwf	(??_Work_Mode_Show+0)+0
	clrf	(??_Work_Mode_Show+0)+0+1
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	rlf	(??_Work_Mode_Show+0)+1,f
	movf	(_WorkTimeM),w	;volatile
	movwf	(??_Work_Mode_Show+2)+0
	clrf	(??_Work_Mode_Show+2)+0+1
	clrc
	rlf	(??_Work_Mode_Show+2)+0,f
	rlf	(??_Work_Mode_Show+2)+1,f
	clrc
	rlf	(??_Work_Mode_Show+2)+0,f
	rlf	(??_Work_Mode_Show+2)+1,f
	movf	1+(??_Work_Mode_Show+2)+0,w
	xorlw	80h
	movwf	(??_Work_Mode_Show+4)+0
	movf	1+(??_Work_Mode_Show+0)+0,w
	xorlw	80h
	subwf	(??_Work_Mode_Show+4)+0,w
	skipz
	goto	u8535
	movf	0+(??_Work_Mode_Show+0)+0,w
	subwf	0+(??_Work_Mode_Show+2)+0,w
u8535:

	skipc
	goto	u8531
	goto	u8530
u8531:
	goto	l16770
u8530:
	
l16768:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	0+(_DispData)+06h+(4/8),(4)&7	;volatile
	line	278
	
l16770:	
;display.c: 278: if(4*WorkTimeM >= 3*TotalTimeSave) (DispData[6] |= 0x04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TotalTimeSave),w	;volatile
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(_WorkTimeM),w	;volatile
	movwf	(??_Work_Mode_Show+0)+0
	clrf	(??_Work_Mode_Show+0)+0+1
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	rlf	(??_Work_Mode_Show+0)+1,f
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	rlf	(??_Work_Mode_Show+0)+1,f
	movf	1+(??_Work_Mode_Show+0)+0,w
	xorlw	80h
	movwf	(??_Work_Mode_Show+2)+0
	movf	(1+(?___wmul)),w
	xorlw	80h
	subwf	(??_Work_Mode_Show+2)+0,w
	skipz
	goto	u8545
	movf	(0+(?___wmul)),w
	subwf	0+(??_Work_Mode_Show+0)+0,w
u8545:

	skipc
	goto	u8541
	goto	u8540
u8541:
	goto	l3881
u8540:
	
l16772:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	0+(_DispData)+06h+(2/8),(2)&7	;volatile
	goto	l16786
	line	280
	
l3881:	
	line	281
;display.c: 279: }
;display.c: 280: }
;display.c: 281: }
	goto	l16786
	line	282
	
l3880:	
	line	284
;display.c: 282: else
;display.c: 283: {
;display.c: 284: (DispData[6] |= 0x02);
	bsf	0+(_DispData)+06h+(1/8),(1)&7	;volatile
	line	285
	
l16774:	
;display.c: 285: if(4*WorkTimeM >= 1*CountDownTimeSave) (DispData[6] |= 0x80);
	movf	(_WorkTimeM),w	;volatile
	movwf	(??_Work_Mode_Show+0)+0
	clrf	(??_Work_Mode_Show+0)+0+1
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	rlf	(??_Work_Mode_Show+0)+1,f
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	rlf	(??_Work_Mode_Show+0)+1,f
	movf	1+(??_Work_Mode_Show+0)+0,w
	xorlw	80h
	movwf	(??_Work_Mode_Show+2)+0
	movlw	80h
	subwf	(??_Work_Mode_Show+2)+0,w
	skipz
	goto	u8555
	movf	(_CountDownTimeSave),w	;volatile
	subwf	0+(??_Work_Mode_Show+0)+0,w
u8555:

	skipc
	goto	u8551
	goto	u8550
u8551:
	goto	l16778
u8550:
	
l16776:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	0+(_DispData)+06h+(7/8),(7)&7	;volatile
	line	286
	
l16778:	
;display.c: 286: if(4*WorkTimeM >= 2*CountDownTimeSave) (DispData[6] |= 0x10);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CountDownTimeSave),w	;volatile
	movwf	(??_Work_Mode_Show+0)+0
	clrf	(??_Work_Mode_Show+0)+0+1
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	rlf	(??_Work_Mode_Show+0)+1,f
	movf	(_WorkTimeM),w	;volatile
	movwf	(??_Work_Mode_Show+2)+0
	clrf	(??_Work_Mode_Show+2)+0+1
	clrc
	rlf	(??_Work_Mode_Show+2)+0,f
	rlf	(??_Work_Mode_Show+2)+1,f
	clrc
	rlf	(??_Work_Mode_Show+2)+0,f
	rlf	(??_Work_Mode_Show+2)+1,f
	movf	1+(??_Work_Mode_Show+2)+0,w
	xorlw	80h
	movwf	(??_Work_Mode_Show+4)+0
	movf	1+(??_Work_Mode_Show+0)+0,w
	xorlw	80h
	subwf	(??_Work_Mode_Show+4)+0,w
	skipz
	goto	u8565
	movf	0+(??_Work_Mode_Show+0)+0,w
	subwf	0+(??_Work_Mode_Show+2)+0,w
u8565:

	skipc
	goto	u8561
	goto	u8560
u8561:
	goto	l16782
u8560:
	
l16780:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	0+(_DispData)+06h+(4/8),(4)&7	;volatile
	line	287
	
l16782:	
;display.c: 287: if(4*WorkTimeM >= 3*CountDownTimeSave) (DispData[6] |= 0x04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CountDownTimeSave),w	;volatile
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	movlw	03h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(_WorkTimeM),w	;volatile
	movwf	(??_Work_Mode_Show+0)+0
	clrf	(??_Work_Mode_Show+0)+0+1
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	rlf	(??_Work_Mode_Show+0)+1,f
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	rlf	(??_Work_Mode_Show+0)+1,f
	movf	1+(??_Work_Mode_Show+0)+0,w
	xorlw	80h
	movwf	(??_Work_Mode_Show+2)+0
	movf	(1+(?___wmul)),w
	xorlw	80h
	subwf	(??_Work_Mode_Show+2)+0,w
	skipz
	goto	u8575
	movf	(0+(?___wmul)),w
	subwf	0+(??_Work_Mode_Show+0)+0,w
u8575:

	skipc
	goto	u8571
	goto	u8570
u8571:
	goto	l16786
u8570:
	goto	l16772
	line	329
	
l16786:	
;display.c: 288: }
;display.c: 329: if(WorkStage == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_WorkStage)),w	;volatile
	btfss	status,2
	goto	u8581
	goto	u8580
u8581:
	goto	l16792
u8580:
	line	331
	
l16788:	
;display.c: 330: {
;display.c: 331: (DispData[4] |= 0x02);
	bsf	0+(_DispData)+04h+(1/8),(1)&7	;volatile
	line	332
	
l16790:	
;display.c: 332: DIG_Show_Time(PresetTimeH, PresetTimeM, b_LedCol);
	movf	(_PresetTimeM),w	;volatile
	movwf	(DIG_Show_Time@min)
	movlw	0
	btfsc	(_b_LedCol/8),(_b_LedCol)&7	;volatile
	movlw	1
	movwf	(DIG_Show_Time@point)
	movf	(_PresetTimeH),w	;volatile
	fcall	_DIG_Show_Time
	line	333
;display.c: 333: }
	goto	l3904
	line	335
	
l16792:	
;display.c: 335: else if(WorkStage == 2)
		movlw	2
	xorwf	((_WorkStage)),w	;volatile
	btfss	status,2
	goto	u8591
	goto	u8590
u8591:
	goto	l16796
u8590:
	line	337
	
l16794:	
;display.c: 336: {
;display.c: 337: DispData[0] |= HOT_RUN_TAB[HorseCount][0];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Work_Mode_Show+0)+0
	movlw	(02h)-1
u8605:
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	addlw	-1
	skipz
	goto	u8605
	clrc
	rlf	(??_Work_Mode_Show+0)+0,w
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	(_DispData),f	;volatile
	line	338
;display.c: 338: DispData[1] |= HOT_RUN_TAB[HorseCount][1];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Work_Mode_Show+0)+0
	movlw	(02h)-1
u8615:
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	addlw	-1
	skipz
	goto	u8615
	clrc
	rlf	(??_Work_Mode_Show+0)+0,w
	addlw	01h
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+01h,f	;volatile
	line	339
;display.c: 339: DispData[2] |= HOT_RUN_TAB[HorseCount][2];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Work_Mode_Show+0)+0
	movlw	(02h)-1
u8625:
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	addlw	-1
	skipz
	goto	u8625
	clrc
	rlf	(??_Work_Mode_Show+0)+0,w
	addlw	02h
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+02h,f	;volatile
	line	340
;display.c: 340: DispData[3] |= HOT_RUN_TAB[HorseCount][3];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Work_Mode_Show+0)+0
	movlw	(02h)-1
u8635:
	clrc
	rlf	(??_Work_Mode_Show+0)+0,f
	addlw	-1
	skipz
	goto	u8635
	clrc
	rlf	(??_Work_Mode_Show+0)+0,w
	addlw	03h
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+03h,f	;volatile
	line	342
;display.c: 342: }
	goto	l3904
	line	344
	
l16796:	
;display.c: 344: else if(WorkStage == 3)
		movlw	3
	xorwf	((_WorkStage)),w	;volatile
	btfss	status,2
	goto	u8641
	goto	u8640
u8641:
	goto	l3904
u8640:
	line	346
	
l16798:	
;display.c: 345: {
;display.c: 346: if( ChooseFun == 14 || ChooseFun == 12)
		movlw	14
	xorwf	((_ChooseFun)),w	;volatile
	btfsc	status,2
	goto	u8651
	goto	u8650
u8651:
	goto	l16802
u8650:
	
l16800:	
		movlw	12
	xorwf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u8661
	goto	u8660
u8661:
	goto	l16814
u8660:
	line	348
	
l16802:	
;display.c: 347: {
;display.c: 348: HourBuf = (CountDownTime)/60;
	movlw	low(03Ch)
	movwf	(___lbdiv@divisor)
	movf	(_CountDownTime),w	;volatile
	fcall	___lbdiv
	movwf	(_HourBuf)	;volatile
	line	349
;display.c: 350: DispData[0] |= 0;
	movlw	low(03Ch)
	movwf	(___lbmod@divisor)
	movf	(_CountDownTime),w	;volatile
	fcall	___lbmod
	movwf	(_MinBuf)	;volatile
	line	351
	
l16804:	
;display.c: 351: DispData[1] |= SEG_MATH_TAB[HourBuf%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_HourBuf),w	;volatile
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+01h,f	;volatile
	line	352
	
l16806:	
;display.c: 352: DispData[2] |= SEG_MATH_TAB[MinBuf/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_MinBuf),w	;volatile
	fcall	___lbdiv
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+02h,f	;volatile
	line	353
	
l16808:	
;display.c: 353: DispData[3] |= SEG_MATH_TAB[MinBuf%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_MinBuf),w	;volatile
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+03h,f	;volatile
	line	354
	
l16810:	
;display.c: 354: if(b_LedCol)
	btfss	(_b_LedCol/8),(_b_LedCol)&7	;volatile
	goto	u8671
	goto	u8670
u8671:
	goto	l3897
u8670:
	line	356
	
l16812:	
;display.c: 355: {
;display.c: 356: {DispData[2] |= 0x80; DispData[1] |= 0x80;};
	bsf	0+(_DispData)+02h+(7/8),(7)&7	;volatile
	bsf	0+(_DispData)+01h+(7/8),(7)&7	;volatile
	goto	l3904
	line	361
	
l16814:	
;display.c: 359: else
;display.c: 360: {
;display.c: 361: DIG_Show_Time(0, CountDownTime, 1);
	movf	(_CountDownTime),w	;volatile
	movwf	(DIG_Show_Time@min)
	clrf	(DIG_Show_Time@point)
	incf	(DIG_Show_Time@point),f
	movlw	low(0)
	fcall	_DIG_Show_Time
	goto	l3904
	line	369
	
l3897:	
	
l3904:	
	return
	opt stack 0
GLOBAL	__end_of_Work_Mode_Show
	__end_of_Work_Mode_Show:
	signat	_Work_Mode_Show,89
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "D:\PROGRA~2\CMS_ID~1.12\data\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Work_Mode_Show
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\Umul16.c"
	line	15
global __ptext14
__ptext14:	;psect for function ___wmul
psect	text14
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l16678:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l16680:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u8351
	goto	u8350
u8351:
	goto	l16684
u8350:
	line	46
	
l16682:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	47
	
l16684:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	48
	
l16686:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	49
	
l16688:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u8361
	goto	u8360
u8361:
	goto	l16680
u8360:
	line	52
	
l16690:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l9646:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_Waiting_Mode_Show

;; *************** function _Waiting_Mode_Show *****************
;; Defined at:
;;		line 151 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_Task
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	151
global __ptext15
__ptext15:	;psect for function _Waiting_Mode_Show
psect	text15
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	151
	global	__size_of_Waiting_Mode_Show
	__size_of_Waiting_Mode_Show	equ	__end_of_Waiting_Mode_Show-_Waiting_Mode_Show
	
_Waiting_Mode_Show:	
;incstack = 0
	opt	stack 4
; Regs used in _Waiting_Mode_Show: []
	line	154
	
l12822:	
;display.c: 154: DispData[0] |= 0x40;
	bsf	(_DispData)+(6/8),(6)&7	;volatile
	line	155
;display.c: 155: DispData[1] |= 0x40;
	bsf	0+(_DispData)+01h+(6/8),(6)&7	;volatile
	line	156
;display.c: 156: DispData[2] |= 0x40;
	bsf	0+(_DispData)+02h+(6/8),(6)&7	;volatile
	line	157
;display.c: 157: DispData[3] |= 0x40;
	bsf	0+(_DispData)+03h+(6/8),(6)&7	;volatile
	line	158
;display.c: 158: {DispData[2] |= 0x80; DispData[1] |= 0x80;};
	bsf	0+(_DispData)+02h+(7/8),(7)&7	;volatile
	bsf	0+(_DispData)+01h+(7/8),(7)&7	;volatile
	line	159
	
l3832:	
	return
	opt stack 0
GLOBAL	__end_of_Waiting_Mode_Show
	__end_of_Waiting_Mode_Show:
	signat	_Waiting_Mode_Show,89
	global	_Test_Mode_Show

;; *************** function _Test_Mode_Show *****************
;; Defined at:
;;		line 435 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DIG_Show_Data
;;		___awdiv
;;		___awmod
;;		___lbdiv
;;		___lbmod
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_LED_Task
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	435
global __ptext16
__ptext16:	;psect for function _Test_Mode_Show
psect	text16
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	435
	global	__size_of_Test_Mode_Show
	__size_of_Test_Mode_Show	equ	__end_of_Test_Mode_Show-_Test_Mode_Show
	
_Test_Mode_Show:	
;incstack = 0
	opt	stack 3
; Regs used in _Test_Mode_Show: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	437
	
l16816:	
;display.c: 437: if(TestShow < 2)
	movlw	low(02h)
	subwf	(_TestShow),w	;volatile
	skipnc
	goto	u8681
	goto	u8680
u8681:
	goto	l16898
u8680:
	line	440
	
l16818:	
;display.c: 438: {
;display.c: 440: DispData[0] = 0;
	clrf	(_DispData)	;volatile
	line	441
;display.c: 441: DispData[1] = 0;
	clrf	0+(_DispData)+01h	;volatile
	line	442
;display.c: 442: DispData[2] = 0;
	clrf	0+(_DispData)+02h	;volatile
	line	443
;display.c: 443: DispData[3] = 0;
	clrf	0+(_DispData)+03h	;volatile
	goto	l16898
	line	449
	
l16820:	
;display.c: 449: if(SendShow == 0)
	movf	((_SendShow)),w	;volatile
	btfss	status,2
	goto	u8691
	goto	u8690
u8691:
	goto	l16824
u8690:
	line	451
	
l16822:	
;display.c: 450: {
;display.c: 451: DIG_Show_Data(SEG_MATH_TAB[1], 0x40, 0x40, SEG_MATH_TAB[11]);
	movlw	low(040h)
	movwf	(DIG_Show_Data@digdata2)
	movlw	low(040h)
	movwf	(DIG_Show_Data@digdata3)
	movlw	low(((_SEG_MATH_TAB+0Bh)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+0Bh)|8000h))
	movwf	btemp+1
	fcall	stringtab
	movwf	(DIG_Show_Data@digdata4)
	movlw	low(((_SEG_MATH_TAB+01h)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+01h)|8000h))
	movwf	btemp+1
	fcall	stringtab
	fcall	_DIG_Show_Data
	line	452
;display.c: 452: }
	goto	l16876
	line	453
	
l16824:	
;display.c: 453: else if(SendShow == 1)
		decf	((_SendShow)),w	;volatile
	btfss	status,2
	goto	u8701
	goto	u8700
u8701:
	goto	l16834
u8700:
	line	455
	
l16826:	
;display.c: 454: {
;display.c: 455: HourBuf = Bot_Temp/100;
	movlw	low(064h)
	movwf	(___lbdiv@divisor)
	movf	(_Bot_Temp),w	;volatile
	fcall	___lbdiv
	movwf	(_HourBuf)	;volatile
	line	456
;display.c: 456: MinBuf = Bot_Temp%100;
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(_Bot_Temp),w	;volatile
	fcall	___lbmod
	movwf	(_MinBuf)	;volatile
	line	457
	
l16828:	
;display.c: 457: DispData[0] = 0x08;
	movlw	low(08h)
	movwf	(_DispData)	;volatile
	line	459
	
l16830:	
;display.c: 459: if(RC1)
	btfss	(57/8),(57)&7	;volatile
	goto	u8711
	goto	u8710
u8711:
	goto	l16876
u8710:
	line	461
	
l16832:	
;display.c: 460: {
;display.c: 461: DispData[0] |= 0x40;
	bsf	(_DispData)+(6/8),(6)&7	;volatile
	goto	l16876
	line	464
	
l16834:	
;display.c: 464: else if(SendShow == 2)
		movlw	2
	xorwf	((_SendShow)),w	;volatile
	btfss	status,2
	goto	u8721
	goto	u8720
u8721:
	goto	l16840
u8720:
	line	466
	
l16836:	
;display.c: 465: {
;display.c: 466: HourBuf = Ad_Bot/100;
	movlw	low(064h)
	movwf	(___lbdiv@divisor)
	movf	(_Ad_Bot),w	;volatile
	fcall	___lbdiv
	movwf	(_HourBuf)	;volatile
	line	467
;display.c: 467: MinBuf = Ad_Bot%100;
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(_Ad_Bot),w	;volatile
	fcall	___lbmod
	movwf	(_MinBuf)	;volatile
	line	468
	
l16838:	
;display.c: 468: DispData[0] = (0x04 + 0x08 + 0x10 + 0x20 + 0x40);
	movlw	low(07Ch)
	movwf	(_DispData)	;volatile
	line	469
;display.c: 469: }
	goto	l16876
	line	470
	
l16840:	
;display.c: 470: else if(SendShow == 3)
		movlw	3
	xorwf	((_SendShow)),w	;volatile
	btfss	status,2
	goto	u8731
	goto	u8730
u8731:
	goto	l16846
u8730:
	line	472
	
l16842:	
;display.c: 471: {
;display.c: 472: HourBuf = b_PressureOn/100;
	movlw	064h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	clrc
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(_HourBuf)	;volatile
	line	473
;display.c: 473: MinBuf = b_PressureOn%100;
	movlw	064h
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	clrc
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(_MinBuf)	;volatile
	line	475
	
l16844:	
;display.c: 475: DispData[0] = (0x01 + 0x02 + 0x10 + 0x20 + 0x40);
	movlw	low(073h)
	movwf	(_DispData)	;volatile
	line	476
;display.c: 476: }
	goto	l16876
	line	477
	
l16846:	
;display.c: 477: else if(SendShow == 4)
		movlw	4
	xorwf	((_SendShow)),w	;volatile
	btfss	status,2
	goto	u8741
	goto	u8740
u8741:
	goto	l16852
u8740:
	line	479
	
l16848:	
;display.c: 478: {
;display.c: 479: HourBuf = b_LidClosed/100;
	movlw	064h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	clrc
	btfsc	(_b_LidClosed/8),(_b_LidClosed)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(_HourBuf)	;volatile
	line	480
;display.c: 480: MinBuf = b_LidClosed%100;
	movlw	064h
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	clrc
	btfsc	(_b_LidClosed/8),(_b_LidClosed)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(_MinBuf)	;volatile
	line	482
	
l16850:	
;display.c: 482: DispData[0] = (0x08 + 0x10 + 0x20);
	movlw	low(038h)
	movwf	(_DispData)	;volatile
	line	483
;display.c: 483: }
	goto	l16876
	line	484
	
l16852:	
;display.c: 484: else if(SendShow == 5)
		movlw	5
	xorwf	((_SendShow)),w	;volatile
	btfss	status,2
	goto	u8751
	goto	u8750
u8751:
	goto	l16858
u8750:
	line	486
	
l16854:	
;display.c: 485: {
;display.c: 486: HourBuf = AC_Vol_Rms/100;
	movlw	064h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_AC_Vol_Rms+1),w	;volatile
	movwf	(___lwdiv@dividend+1)
	movf	(_AC_Vol_Rms),w	;volatile
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(_HourBuf)	;volatile
	line	487
;display.c: 487: MinBuf = AC_Vol_Rms%100;
	movlw	064h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_AC_Vol_Rms+1),w	;volatile
	movwf	(___lwmod@dividend+1)
	movf	(_AC_Vol_Rms),w	;volatile
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(_MinBuf)	;volatile
	line	489
	
l16856:	
;display.c: 489: DispData[0] = (0x02 + 0x04 + 0x08 + 0x10 + 0x20);
	movlw	low(03Eh)
	movwf	(_DispData)	;volatile
	line	490
;display.c: 490: }
	goto	l16876
	line	491
	
l16858:	
;display.c: 491: else if(SendShow == 6)
		movlw	6
	xorwf	((_SendShow)),w	;volatile
	btfss	status,2
	goto	u8761
	goto	u8760
u8761:
	goto	l16864
u8760:
	line	493
	
l16860:	
;display.c: 492: {
;display.c: 493: HourBuf = ZeroTimesShow/100;
	movlw	064h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_ZeroTimesShow+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwdiv@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_ZeroTimesShow)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(_HourBuf)	;volatile
	line	494
;display.c: 494: MinBuf = ZeroTimesShow%100;
	movlw	064h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_ZeroTimesShow+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwmod@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_ZeroTimesShow)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(_MinBuf)	;volatile
	line	496
	
l16862:	
;display.c: 496: DispData[0] = 0x08+0x10+0x20+0x40;
	movlw	low(078h)
	movwf	(_DispData)	;volatile
	line	497
;display.c: 497: }
	goto	l16876
	line	498
	
l16864:	
;display.c: 498: else if(SendShow == 7)
		movlw	7
	xorwf	((_SendShow)),w	;volatile
	btfss	status,2
	goto	u8771
	goto	u8770
u8771:
	goto	l16870
u8770:
	line	500
	
l16866:	
;display.c: 499: {
;display.c: 500: HourBuf = ZeroTimeoutCnt/100;
	movlw	low(064h)
	movwf	(___lbdiv@divisor)
	movf	(_ZeroTimeoutCnt),w	;volatile
	fcall	___lbdiv
	movwf	(_HourBuf)	;volatile
	line	501
;display.c: 501: MinBuf = ZeroTimeoutCnt%100;
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(_ZeroTimeoutCnt),w	;volatile
	fcall	___lbmod
	movwf	(_MinBuf)	;volatile
	line	503
	
l16868:	
;display.c: 503: DispData[0] = 0x02;
	movlw	low(02h)
	movwf	(_DispData)	;volatile
	line	504
;display.c: 504: }
	goto	l16876
	line	505
	
l16870:	
;display.c: 505: else if(SendShow == 8)
		movlw	8
	xorwf	((_SendShow)),w	;volatile
	btfss	status,2
	goto	u8781
	goto	u8780
u8781:
	goto	l3945
u8780:
	line	507
	
l16872:	
;display.c: 506: {
;display.c: 507: HourBuf = JudgeLidMin/100;
	movlw	low(064h)
	movwf	(___lbdiv@divisor)
	movf	(_JudgeLidMin),w	;volatile
	fcall	___lbdiv
	movwf	(_HourBuf)	;volatile
	line	508
;display.c: 508: MinBuf = JudgeLidMin%100;
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(_JudgeLidMin),w	;volatile
	fcall	___lbmod
	movwf	(_MinBuf)	;volatile
	line	510
	
l16874:	
;display.c: 510: DispData[0] = (0x02 + 0x04 + 0x08 + 0x10);
	movlw	low(01Eh)
	movwf	(_DispData)	;volatile
	goto	l16876
	line	515
	
l3945:	
	
l16876:	
;display.c: 511: }
;display.c: 515: if(SendShow >= 1 && SendShow <= 8)
	movf	((_SendShow)),w	;volatile
	btfsc	status,2
	goto	u8791
	goto	u8790
u8791:
	goto	l3957
u8790:
	
l16878:	
	movlw	low(09h)
	subwf	(_SendShow),w	;volatile
	skipnc
	goto	u8801
	goto	u8800
u8801:
	goto	l3957
u8800:
	line	517
	
l16880:	
;display.c: 516: {
;display.c: 517: DIG_Show_Data(0, SEG_MATH_TAB[HourBuf%10], SEG_MATH_TAB[MinBuf/10], SEG_MATH_TAB[MinBuf%10]);
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_HourBuf),w	;volatile
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(DIG_Show_Data@digdata2)
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_MinBuf),w	;volatile
	fcall	___lbdiv
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(DIG_Show_Data@digdata3)
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_MinBuf),w	;volatile
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(DIG_Show_Data@digdata4)
	movlw	low(0)
	fcall	_DIG_Show_Data
	goto	l3957
	line	523
	
l16882:	
;display.c: 523: if(SendShow==0)
	movf	((_SendShow)),w	;volatile
	btfss	status,2
	goto	u8811
	goto	u8810
u8811:
	goto	l16894
u8810:
	line	525
	
l16884:	
;display.c: 524: {
;display.c: 525: DIG_Show_Data(0,0,SEG_MATH_TAB[Fc_ID[SendShow]>>4],SEG_MATH_TAB[Fc_ID[SendShow]&0x0f]);
	clrf	(DIG_Show_Data@digdata2)
	movf	(_SendShow),w
	addlw	low(_Fc_ID|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	swapf	indf,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(DIG_Show_Data@digdata3)
	movf	(_SendShow),w
	addlw	low(_Fc_ID|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	andlw	0Fh
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(DIG_Show_Data@digdata4)
	movlw	low(0)
	fcall	_DIG_Show_Data
	line	526
	
l16886:	
;display.c: 526: DispData[0] = (0x02 + 0x04);
	movlw	low(06h)
	movwf	(_DispData)	;volatile
	line	527
	
l16888:	
;display.c: 527: DispData[1] = (0x02 + 0x04 + 0x08 + 0x10 + 0x40);
	movlw	low(05Eh)
	movwf	0+(_DispData)+01h	;volatile
	line	528
	
l16890:	
;display.c: 528: {DispData[2] |= 0x80; DispData[1] |= 0x80;};
	bsf	0+(_DispData)+02h+(7/8),(7)&7	;volatile
	
l16892:	
	bsf	0+(_DispData)+01h+(7/8),(7)&7	;volatile
	line	529
;display.c: 529: }
	goto	l3957
	line	532
	
l16894:	
;display.c: 530: else
;display.c: 531: {
;display.c: 532: DIG_Show_Data(SEG_MATH_TAB[Fc_ID[(SendShow-1)*2+1]>>4],SEG_MATH_TAB[(Fc_ID[(SendShow-1)*2+1]&0x0f)],SEG_MATH_TAB[Fc_ID[(SendShow-1)*2+2]>>4],SEG_MATH_TAB[(Fc_ID[(SendShow-1)*2+2]&0x0f)]);
	clrc
	rlf	(_SendShow),w	;volatile
	addlw	low(_Fc_ID|((0x0)<<8)+0FFh)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	andlw	0Fh
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(DIG_Show_Data@digdata2)
	clrc
	rlf	(_SendShow),w	;volatile
	addlw	low(_Fc_ID|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	swapf	indf,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(DIG_Show_Data@digdata3)
	clrc
	rlf	(_SendShow),w	;volatile
	addlw	low(_Fc_ID|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	andlw	0Fh
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(DIG_Show_Data@digdata4)
	clrc
	rlf	(_SendShow),w	;volatile
	addlw	low(_Fc_ID|((0x0)<<8)+0FFh)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	swapf	indf,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_DIG_Show_Data
	goto	l3957
	line	446
	
l16898:	
	movf	(_TestShow),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l16820
	xorlw	1^0	; case 1
	skipnz
	goto	l16882
	goto	l3957
	opt asmopt_pop

	line	538
	
l3957:	
	return
	opt stack 0
GLOBAL	__end_of_Test_Mode_Show
	__end_of_Test_Mode_Show:
	signat	_Test_Mode_Show,89
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Mode_Show
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lwmod.c"
	line	6
global __ptext17
__ptext17:	;psect for function ___lwmod
psect	text17
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l16720:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u8411
	goto	u8410
u8411:
	goto	l16736
u8410:
	line	14
	
l16722:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l16726
	line	16
	
l16724:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l16726:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u8421
	goto	u8420
u8421:
	goto	l16724
u8420:
	line	20
	
l16728:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u8435
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u8435:
	skipc
	goto	u8431
	goto	u8430
u8431:
	goto	l16732
u8430:
	line	21
	
l16730:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l16732:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l16734:	
	decfsz	(___lwmod@counter),f
	goto	u8441
	goto	u8440
u8441:
	goto	l16728
u8440:
	line	25
	
l16736:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l9993:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_DIG_Show_Data

;; *************** function _DIG_Show_Data *****************
;; Defined at:
;;		line 89 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;  digdata1        1    wreg     unsigned char 
;;  digdata2        1    5[BANK0 ] unsigned char 
;;  digdata3        1    6[BANK0 ] unsigned char 
;;  digdata4        1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  digdata1        1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Mode_Show
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	89
global __ptext18
__ptext18:	;psect for function _DIG_Show_Data
psect	text18
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	89
	global	__size_of_DIG_Show_Data
	__size_of_DIG_Show_Data	equ	__end_of_DIG_Show_Data-_DIG_Show_Data
	
_DIG_Show_Data:	
;incstack = 0
	opt	stack 3
; Regs used in _DIG_Show_Data: [wreg+status,2+status,0]
;DIG_Show_Data@digdata1 stored from wreg
	movwf	(DIG_Show_Data@digdata1)
	line	91
	
l12158:	
;display.c: 91: if(digdata1 != 0)
	movf	((DIG_Show_Data@digdata1)),w
	btfsc	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l3815
u1750:
	line	93
	
l12160:	
;display.c: 92: {
;display.c: 93: DispData[0] |= digdata1;
	movf	(DIG_Show_Data@digdata1),w
	iorwf	(_DispData),f	;volatile
	line	94
	
l3815:	
	line	96
;display.c: 94: }
;display.c: 96: if(digdata2 != 0)
	movf	((DIG_Show_Data@digdata2)),w
	btfsc	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l3816
u1760:
	line	98
	
l12162:	
;display.c: 97: {
;display.c: 98: DispData[1] |= digdata2;
	movf	(DIG_Show_Data@digdata2),w
	iorwf	0+(_DispData)+01h,f	;volatile
	line	99
	
l3816:	
	line	101
;display.c: 99: }
;display.c: 101: if(digdata3 != 0)
	movf	((DIG_Show_Data@digdata3)),w
	btfsc	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l3817
u1770:
	line	103
	
l12164:	
;display.c: 102: {
;display.c: 103: DispData[2] |= digdata3;
	movf	(DIG_Show_Data@digdata3),w
	iorwf	0+(_DispData)+02h,f	;volatile
	line	104
	
l3817:	
	line	106
;display.c: 104: }
;display.c: 106: if(digdata4 != 0)
	movf	((DIG_Show_Data@digdata4)),w
	btfsc	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l3819
u1780:
	line	108
	
l12166:	
;display.c: 107: {
;display.c: 108: DispData[3] |= digdata4;
	movf	(DIG_Show_Data@digdata4),w
	iorwf	0+(_DispData)+03h,f	;volatile
	line	110
	
l3819:	
	return
	opt stack 0
GLOBAL	__end_of_DIG_Show_Data
	__end_of_DIG_Show_Data:
	signat	_DIG_Show_Data,16505
	global	_Power_On_Show

;; *************** function _Power_On_Show *****************
;; Defined at:
;;		line 135 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_Task
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	135
global __ptext19
__ptext19:	;psect for function _Power_On_Show
psect	text19
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	135
	global	__size_of_Power_On_Show
	__size_of_Power_On_Show	equ	__end_of_Power_On_Show-_Power_On_Show
	
_Power_On_Show:	
;incstack = 0
	opt	stack 4
; Regs used in _Power_On_Show: [wreg-fsr0h+status,2+status,0]
	line	139
	
l12810:	
;display.c: 137: uint8 i;
;display.c: 139: for(i = 0; i < 7; i++)
	clrf	(Power_On_Show@i)
	line	141
	
l12816:	
;display.c: 140: {
;display.c: 141: DispData[i] = 0xFF;
	movf	(Power_On_Show@i),w
	addlw	low(_DispData|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	low(0FFh)
	movwf	indf
	line	139
	
l12818:	
	incf	(Power_On_Show@i),f
	
l12820:	
	movlw	low(07h)
	subwf	(Power_On_Show@i),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l12816
u3050:
	line	143
	
l3829:	
	return
	opt stack 0
GLOBAL	__end_of_Power_On_Show
	__end_of_Power_On_Show:
	signat	_Power_On_Show,89
	global	_LED_Off

;; *************** function _LED_Off *****************
;; Defined at:
;;		line 118 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_Task
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	118
global __ptext20
__ptext20:	;psect for function _LED_Off
psect	text20
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	118
	global	__size_of_LED_Off
	__size_of_LED_Off	equ	__end_of_LED_Off-_LED_Off
	
_LED_Off:	
;incstack = 0
	opt	stack 4
; Regs used in _LED_Off: [wreg-fsr0h+status,2+status,0]
	line	122
	
l12798:	
;display.c: 120: uint8 i;
;display.c: 122: for(i = 0; i < 7; i++)
	clrf	(LED_Off@i)
	line	124
	
l12804:	
;display.c: 123: {
;display.c: 124: DispData[i] = 0x00;
	movf	(LED_Off@i),w
	addlw	low(_DispData|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	122
	
l12806:	
	incf	(LED_Off@i),f
	
l12808:	
	movlw	low(07h)
	subwf	(LED_Off@i),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l12804
u3040:
	line	126
	
l3824:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Off
	__end_of_LED_Off:
	signat	_LED_Off,89
	global	_Keepwarm_Show

;; *************** function _Keepwarm_Show *****************
;; Defined at:
;;		line 377 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_Task
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	377
global __ptext21
__ptext21:	;psect for function _Keepwarm_Show
psect	text21
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	377
	global	__size_of_Keepwarm_Show
	__size_of_Keepwarm_Show	equ	__end_of_Keepwarm_Show-_Keepwarm_Show
	
_Keepwarm_Show:	
;incstack = 0
	opt	stack 4
; Regs used in _Keepwarm_Show: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	380
	
l12942:	
;display.c: 380: (DispData[5] |= 0x80);
	bsf	0+(_DispData)+05h+(7/8),(7)&7	;volatile
	line	382
	
l12944:	
;display.c: 382: DispData[3] |= SEG_MATH_TAB[11];
	movlw	low(((_SEG_MATH_TAB+0Bh)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+0Bh)|8000h))
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+03h,f	;volatile
	line	383
	
l12946:	
;display.c: 383: if(b_AutoKeepWarm)
	btfss	(_b_AutoKeepWarm/8),(_b_AutoKeepWarm)&7	;volatile
	goto	u3371
	goto	u3370
u3371:
	goto	l3924
u3370:
	goto	l12952
	line	388
;display.c: 387: {
;display.c: 388: case 1 : (DispData[4] |= 0x01); break;
	
l3909:	
	bsf	0+(_DispData)+04h+(0/8),(0)&7	;volatile
	goto	l3910
	line	389
;display.c: 389: case 2 : (DispData[5] |= 0x01); break;
	
l3911:	
	bsf	0+(_DispData)+05h+(0/8),(0)&7	;volatile
	goto	l3910
	line	390
;display.c: 390: case 3 : (DispData[4] |= 0x40); break;
	
l3912:	
	bsf	0+(_DispData)+04h+(6/8),(6)&7	;volatile
	goto	l3910
	line	391
;display.c: 391: case 4 : (DispData[5] |= 0x40); break;
	
l3913:	
	bsf	0+(_DispData)+05h+(6/8),(6)&7	;volatile
	goto	l3910
	line	393
;display.c: 393: case 5 : (DispData[5] |= 0x08); break;
	
l3914:	
	bsf	0+(_DispData)+05h+(3/8),(3)&7	;volatile
	goto	l3910
	line	394
;display.c: 394: case 6 : (DispData[5] |= 0x04); break;
	
l3915:	
	bsf	0+(_DispData)+05h+(2/8),(2)&7	;volatile
	goto	l3910
	line	395
;display.c: 395: case 7 : (DispData[5] |= 0x10); break;
	
l3916:	
	bsf	0+(_DispData)+05h+(4/8),(4)&7	;volatile
	goto	l3910
	line	396
;display.c: 396: case 8 : (DispData[5] |= 0x20); break;
	
l3917:	
	bsf	0+(_DispData)+05h+(5/8),(5)&7	;volatile
	goto	l3910
	line	398
;display.c: 398: case 9: (DispData[4] |= 0x08); break;
	
l3918:	
	bsf	0+(_DispData)+04h+(3/8),(3)&7	;volatile
	goto	l3910
	line	399
;display.c: 399: case 10 : (DispData[4] |= 0x04); break;
	
l3919:	
	bsf	0+(_DispData)+04h+(2/8),(2)&7	;volatile
	goto	l3910
	line	400
;display.c: 400: case 11 : (DispData[4] |= 0x10); break;
	
l3920:	
	bsf	0+(_DispData)+04h+(4/8),(4)&7	;volatile
	goto	l3910
	line	401
;display.c: 401: case 12 : (DispData[4] |= 0x20); break;
	
l3921:	
	bsf	0+(_DispData)+04h+(5/8),(5)&7	;volatile
	goto	l3910
	line	403
;display.c: 403: case 13 : (DispData[4] |= 0x80); break;
	
l3922:	
	bsf	0+(_DispData)+04h+(7/8),(7)&7	;volatile
	goto	l3910
	line	404
;display.c: 404: case 14 : (DispData[5] |= 0x02); break;
	
l3923:	
	bsf	0+(_DispData)+05h+(1/8),(1)&7	;volatile
	goto	l3910
	line	386
	
l12952:	
	movf	(_ChooseFunSave),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 14, Range of values is 1 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           43    22 (average)
; direct_byte           53    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l3909
	xorlw	2^1	; case 2
	skipnz
	goto	l3911
	xorlw	3^2	; case 3
	skipnz
	goto	l3912
	xorlw	4^3	; case 4
	skipnz
	goto	l3913
	xorlw	5^4	; case 5
	skipnz
	goto	l3914
	xorlw	6^5	; case 6
	skipnz
	goto	l3915
	xorlw	7^6	; case 7
	skipnz
	goto	l3916
	xorlw	8^7	; case 8
	skipnz
	goto	l3917
	xorlw	9^8	; case 9
	skipnz
	goto	l3918
	xorlw	10^9	; case 10
	skipnz
	goto	l3919
	xorlw	11^10	; case 11
	skipnz
	goto	l3920
	xorlw	12^11	; case 12
	skipnz
	goto	l3921
	xorlw	13^12	; case 13
	skipnz
	goto	l3922
	xorlw	14^13	; case 14
	skipnz
	goto	l3923
	goto	l3910
	opt asmopt_pop

	line	405
	
l3910:	
	line	406
;display.c: 406: (DispData[6] |= 0x02);
	bsf	0+(_DispData)+06h+(1/8),(1)&7	;volatile
	line	407
;display.c: 407: (DispData[6] |= 0x80);
	bsf	0+(_DispData)+06h+(7/8),(7)&7	;volatile
	line	408
;display.c: 408: (DispData[6] |= 0x10);
	bsf	0+(_DispData)+06h+(4/8),(4)&7	;volatile
	line	409
;display.c: 409: (DispData[6] |= 0x04);
	bsf	0+(_DispData)+06h+(2/8),(2)&7	;volatile
	line	410
;display.c: 410: (DispData[6] |= 0x08);
	bsf	0+(_DispData)+06h+(3/8),(3)&7	;volatile
	line	413
	
l3924:	
	return
	opt stack 0
GLOBAL	__end_of_Keepwarm_Show
	__end_of_Keepwarm_Show:
	signat	_Keepwarm_Show,89
	global	_Fun_Choose_Show

;; *************** function _Fun_Choose_Show *****************
;; Defined at:
;;		line 168 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DIG_Show_Time
;;		___awdiv
;;		___awmod
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_LED_Task
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	168
global __ptext22
__ptext22:	;psect for function _Fun_Choose_Show
psect	text22
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	168
	global	__size_of_Fun_Choose_Show
	__size_of_Fun_Choose_Show	equ	__end_of_Fun_Choose_Show-_Fun_Choose_Show
	
_Fun_Choose_Show:	
;incstack = 0
	opt	stack 2
; Regs used in _Fun_Choose_Show: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	171
	
l15368:	
;display.c: 171: if(b_LedCol)
	btfss	(_b_LedCol/8),(_b_LedCol)&7	;volatile
	goto	u6861
	goto	u6860
u6861:
	goto	l15376
u6860:
	goto	l15374
	line	175
;display.c: 174: {
;display.c: 175: case 1 : (DispData[4] |= 0x01); break;
	
l3837:	
	bsf	0+(_DispData)+04h+(0/8),(0)&7	;volatile
	goto	l15376
	line	176
;display.c: 176: case 2 : (DispData[5] |= 0x01); break;
	
l3839:	
	bsf	0+(_DispData)+05h+(0/8),(0)&7	;volatile
	goto	l15376
	line	177
;display.c: 177: case 3 : (DispData[4] |= 0x40); break;
	
l3840:	
	bsf	0+(_DispData)+04h+(6/8),(6)&7	;volatile
	goto	l15376
	line	178
;display.c: 178: case 4 : (DispData[5] |= 0x40); break;
	
l3841:	
	bsf	0+(_DispData)+05h+(6/8),(6)&7	;volatile
	goto	l15376
	line	180
;display.c: 180: case 5 : (DispData[5] |= 0x08); break;
	
l3842:	
	bsf	0+(_DispData)+05h+(3/8),(3)&7	;volatile
	goto	l15376
	line	181
;display.c: 181: case 6 : (DispData[5] |= 0x04); break;
	
l3843:	
	bsf	0+(_DispData)+05h+(2/8),(2)&7	;volatile
	goto	l15376
	line	182
;display.c: 182: case 7 : (DispData[5] |= 0x10); break;
	
l3844:	
	bsf	0+(_DispData)+05h+(4/8),(4)&7	;volatile
	goto	l15376
	line	183
;display.c: 183: case 8 : (DispData[5] |= 0x20); break;
	
l3845:	
	bsf	0+(_DispData)+05h+(5/8),(5)&7	;volatile
	goto	l15376
	line	185
;display.c: 185: case 9: (DispData[4] |= 0x08); break;
	
l3846:	
	bsf	0+(_DispData)+04h+(3/8),(3)&7	;volatile
	goto	l15376
	line	186
;display.c: 186: case 10 : (DispData[4] |= 0x04); break;
	
l3847:	
	bsf	0+(_DispData)+04h+(2/8),(2)&7	;volatile
	goto	l15376
	line	187
;display.c: 187: case 11 : (DispData[4] |= 0x10); break;
	
l3848:	
	bsf	0+(_DispData)+04h+(4/8),(4)&7	;volatile
	goto	l15376
	line	188
;display.c: 188: case 12 : (DispData[4] |= 0x20); break;
	
l3849:	
	bsf	0+(_DispData)+04h+(5/8),(5)&7	;volatile
	goto	l15376
	line	190
;display.c: 190: case 13 : (DispData[4] |= 0x80); break;
	
l3850:	
	bsf	0+(_DispData)+04h+(7/8),(7)&7	;volatile
	goto	l15376
	line	191
;display.c: 191: case 14 : (DispData[5] |= 0x02); break;
	
l3851:	
	bsf	0+(_DispData)+05h+(1/8),(1)&7	;volatile
	goto	l15376
	line	173
	
l15374:	
	movf	(_ChooseFun),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 14, Range of values is 1 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           43    22 (average)
; direct_byte           53    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l3837
	xorlw	2^1	; case 2
	skipnz
	goto	l3839
	xorlw	3^2	; case 3
	skipnz
	goto	l3840
	xorlw	4^3	; case 4
	skipnz
	goto	l3841
	xorlw	5^4	; case 5
	skipnz
	goto	l3842
	xorlw	6^5	; case 6
	skipnz
	goto	l3843
	xorlw	7^6	; case 7
	skipnz
	goto	l3844
	xorlw	8^7	; case 8
	skipnz
	goto	l3845
	xorlw	9^8	; case 9
	skipnz
	goto	l3846
	xorlw	10^9	; case 10
	skipnz
	goto	l3847
	xorlw	11^10	; case 11
	skipnz
	goto	l3848
	xorlw	12^11	; case 12
	skipnz
	goto	l3849
	xorlw	13^12	; case 13
	skipnz
	goto	l3850
	xorlw	14^13	; case 14
	skipnz
	goto	l3851
	goto	l15376
	opt asmopt_pop

	line	197
	
l15376:	
;display.c: 194: }
;display.c: 197: if(PresetState == 1)
		decf	((_PresetState)),w	;volatile
	btfss	status,2
	goto	u6871
	goto	u6870
u6871:
	goto	l15402
u6870:
	line	199
	
l15378:	
;display.c: 198: {
;display.c: 199: if(ChooseFun == 14 || ChooseFun == 13 || ChooseFun == 12)
		movlw	14
	xorwf	((_ChooseFun)),w	;volatile
	btfsc	status,2
	goto	u6881
	goto	u6880
u6881:
	goto	l15384
u6880:
	
l15380:	
		movlw	13
	xorwf	((_ChooseFun)),w	;volatile
	btfsc	status,2
	goto	u6891
	goto	u6890
u6891:
	goto	l15384
u6890:
	
l15382:	
		movlw	12
	xorwf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u6901
	goto	u6900
u6901:
	goto	l15386
u6900:
	line	201
	
l15384:	
;display.c: 200: {
;display.c: 201: HourBuf = (CountDownTime)/60;
	movlw	low(03Ch)
	movwf	(___lbdiv@divisor)
	movf	(_CountDownTime),w	;volatile
	fcall	___lbdiv
	movwf	(_HourBuf)	;volatile
	line	202
;display.c: 202: MinBuf = (CountDownTime)%60;
	movlw	low(03Ch)
	movwf	(___lbmod@divisor)
	movf	(_CountDownTime),w	;volatile
	fcall	___lbmod
	movwf	(_MinBuf)	;volatile
	line	203
;display.c: 203: }
	goto	l15388
	line	206
	
l15386:	
;display.c: 204: else
;display.c: 205: {
;display.c: 206: HourBuf = (CountDownTime+15)/60;
	movf	(_CountDownTime),w	;volatile
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	movlw	0Fh
	addwf	(___awdiv@dividend),f
	skipnc
	incf	(___awdiv@dividend+1),f
	movlw	03Ch
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(_HourBuf)	;volatile
	line	207
;display.c: 207: MinBuf = (CountDownTime+15)%60;
	movf	(_CountDownTime),w	;volatile
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	movlw	0Fh
	addwf	(___awmod@dividend),f
	skipnc
	incf	(___awmod@dividend+1),f
	movlw	03Ch
	movwf	(___awmod@divisor)
	clrf	(___awmod@divisor+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(_MinBuf)	;volatile
	line	211
	
l15388:	
;display.c: 211: DispData[1] |= SEG_MATH_TAB[HourBuf%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_HourBuf),w	;volatile
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+01h,f	;volatile
	line	212
	
l15390:	
;display.c: 212: DispData[2] |= SEG_MATH_TAB[MinBuf/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_MinBuf),w	;volatile
	fcall	___lbdiv
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+02h,f	;volatile
	line	213
	
l15392:	
;display.c: 213: DispData[3] |= SEG_MATH_TAB[MinBuf%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_MinBuf),w	;volatile
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+03h,f	;volatile
	line	214
	
l15394:	
;display.c: 214: {DispData[2] |= 0x80; DispData[1] |= 0x80;};
	bsf	0+(_DispData)+02h+(7/8),(7)&7	;volatile
	
l15396:	
	bsf	0+(_DispData)+01h+(7/8),(7)&7	;volatile
	line	216
	
l15398:	
;display.c: 216: if(PresetTimeH > 0)
	movf	((_PresetTimeH)),w	;volatile
	btfsc	status,2
	goto	u6911
	goto	u6910
u6911:
	goto	l3861
u6910:
	line	218
	
l15400:	
;display.c: 217: {
;display.c: 218: (DispData[4] |= 0x02);
	bsf	0+(_DispData)+04h+(1/8),(1)&7	;volatile
	goto	l3861
	line	222
	
l15402:	
;display.c: 222: else if(PresetState == 2)
		movlw	2
	xorwf	((_PresetState)),w	;volatile
	btfss	status,2
	goto	u6921
	goto	u6920
u6921:
	goto	l3861
u6920:
	line	225
	
l15404:	
;display.c: 223: {
;display.c: 225: if(b_LedCol)
	btfss	(_b_LedCol/8),(_b_LedCol)&7	;volatile
	goto	u6931
	goto	u6930
u6931:
	goto	l15408
u6930:
	line	227
	
l15406:	
;display.c: 226: {
;display.c: 227: (DispData[4] |= 0x02);
	bsf	0+(_DispData)+04h+(1/8),(1)&7	;volatile
	line	229
	
l15408:	
;display.c: 228: }
;display.c: 229: DIG_Show_Time(PresetTimeH, PresetTimeM, 1);
	movf	(_PresetTimeM),w	;volatile
	movwf	(DIG_Show_Time@min)
	clrf	(DIG_Show_Time@point)
	incf	(DIG_Show_Time@point),f
	movf	(_PresetTimeH),w	;volatile
	fcall	_DIG_Show_Time
	line	232
	
l3861:	
	return
	opt stack 0
GLOBAL	__end_of_Fun_Choose_Show
	__end_of_Fun_Choose_Show:
	signat	_Fun_Choose_Show,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "D:\PROGRA~2\CMS_ID~1.12\data\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Fun_Choose_Show
;;		_Test_Mode_Show
;;		_PresetTimeStart
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\awmod.c"
	line	6
global __ptext23
__ptext23:	;psect for function ___awmod
psect	text23
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l15266:	
	clrf	(___awmod@sign)
	line	14
	
l15268:	
	btfss	(___awmod@dividend+1),7
	goto	u6641
	goto	u6640
u6641:
	goto	l15274
u6640:
	line	15
	
l15270:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l15272:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	18
	
l15274:	
	btfss	(___awmod@divisor+1),7
	goto	u6651
	goto	u6650
u6651:
	goto	l15278
u6650:
	line	19
	
l15276:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	20
	
l15278:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u6661
	goto	u6660
u6661:
	goto	l15294
u6660:
	line	21
	
l15280:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l15284
	line	23
	
l15282:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	24
	incf	(___awmod@counter),f
	line	22
	
l15284:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u6671
	goto	u6670
u6671:
	goto	l15282
u6670:
	line	27
	
l15286:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u6685
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u6685:
	skipc
	goto	u6681
	goto	u6680
u6681:
	goto	l15290
u6680:
	line	28
	
l15288:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	29
	
l15290:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	30
	
l15292:	
	decfsz	(___awmod@counter),f
	goto	u6691
	goto	u6690
u6691:
	goto	l15286
u6690:
	line	32
	
l15294:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u6701
	goto	u6700
u6701:
	goto	l15298
u6700:
	line	33
	
l15296:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	34
	
l15298:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	35
	
l9789:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "D:\PROGRA~2\CMS_ID~1.12\data\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Fun_Choose_Show
;;		_Test_Mode_Show
;;		_PresetTimeStart
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\awdiv.c"
	line	6
global __ptext24
__ptext24:	;psect for function ___awdiv
psect	text24
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l15222:	
	clrf	(___awdiv@sign)
	line	15
	
l15224:	
	btfss	(___awdiv@divisor+1),7
	goto	u6571
	goto	u6570
u6571:
	goto	l15230
u6570:
	line	16
	
l15226:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l15228:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l15230:	
	btfss	(___awdiv@dividend+1),7
	goto	u6581
	goto	u6580
u6581:
	goto	l15236
u6580:
	line	20
	
l15232:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l15234:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l15236:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l15238:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u6591
	goto	u6590
u6591:
	goto	l15258
u6590:
	line	25
	
l15240:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l15244
	line	27
	
l15242:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l15244:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u6601
	goto	u6600
u6601:
	goto	l15242
u6600:
	line	31
	
l15246:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l15248:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u6615
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u6615:
	skipc
	goto	u6611
	goto	u6610
u6611:
	goto	l15254
u6610:
	line	33
	
l15250:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l15252:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l15254:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l15256:	
	decfsz	(___awdiv@counter),f
	goto	u6621
	goto	u6620
u6621:
	goto	l15246
u6620:
	line	39
	
l15258:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u6631
	goto	u6630
u6631:
	goto	l15262
u6630:
	line	40
	
l15260:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l15262:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l9776:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_DIG_Show_Time

;; *************** function _DIG_Show_Time *****************
;; Defined at:
;;		line 48 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;  hour            1    wreg     unsigned char 
;;  min             1    5[BANK0 ] unsigned char 
;;  point           1    6[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hour            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_Fun_Choose_Show
;;		_Work_Mode_Show
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	48
global __ptext25
__ptext25:	;psect for function _DIG_Show_Time
psect	text25
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	48
	global	__size_of_DIG_Show_Time
	__size_of_DIG_Show_Time	equ	__end_of_DIG_Show_Time-_DIG_Show_Time
	
_DIG_Show_Time:	
;incstack = 0
	opt	stack 2
; Regs used in _DIG_Show_Time: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DIG_Show_Time@hour stored from wreg
	movwf	(DIG_Show_Time@hour)
	line	50
	
l15184:	
;display.c: 50: if(hour >= 10)
	movlw	low(0Ah)
	subwf	(DIG_Show_Time@hour),w
	skipc
	goto	u6501
	goto	u6500
u6501:
	goto	l15188
u6500:
	line	52
	
l15186:	
;display.c: 51: {
;display.c: 52: DispData[0] |= SEG_MATH_TAB[hour/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(DIG_Show_Time@hour),w
	fcall	___lbdiv
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	(_DispData),f	;volatile
	line	56
	
l15188:	
;display.c: 53: }
;display.c: 56: if(WorkStage == 1)
		decf	((_WorkStage)),w	;volatile
	btfss	status,2
	goto	u6511
	goto	u6510
u6511:
	goto	l15196
u6510:
	line	58
	
l15190:	
;display.c: 57: {
;display.c: 58: DispData[1] |= SEG_MATH_TAB[hour%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(DIG_Show_Time@hour),w
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+01h,f	;volatile
	line	59
	
l15192:	
;display.c: 59: if(point)
	movf	((DIG_Show_Time@point)),w
	btfsc	status,2
	goto	u6521
	goto	u6520
u6521:
	goto	l15204
u6520:
	line	61
	
l15194:	
;display.c: 60: {
;display.c: 61: {DispData[2] |= 0x80; DispData[1] |= 0x80;};
	bsf	0+(_DispData)+02h+(7/8),(7)&7	;volatile
	bsf	0+(_DispData)+01h+(7/8),(7)&7	;volatile
	goto	l15204
	line	66
	
l15196:	
;display.c: 64: else
;display.c: 65: {
;display.c: 66: if(hour > 0)
	movf	((DIG_Show_Time@hour)),w
	btfsc	status,2
	goto	u6531
	goto	u6530
u6531:
	goto	l15204
u6530:
	line	68
	
l15198:	
;display.c: 67: {
;display.c: 68: DispData[1] |= SEG_MATH_TAB[hour%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(DIG_Show_Time@hour),w
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+01h,f	;volatile
	line	69
	
l15200:	
;display.c: 69: if(point)
	movf	((DIG_Show_Time@point)),w
	btfsc	status,2
	goto	u6541
	goto	u6540
u6541:
	goto	l15204
u6540:
	goto	l15194
	line	76
	
l15204:	
;display.c: 72: }
;display.c: 73: }
;display.c: 74: }
;display.c: 76: DispData[2] |= SEG_MATH_TAB[min/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(DIG_Show_Time@min),w
	fcall	___lbdiv
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+02h,f	;volatile
	line	77
;display.c: 77: DispData[3] |= SEG_MATH_TAB[min%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(DIG_Show_Time@min),w
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+03h,f	;volatile
	line	78
	
l3812:	
	return
	opt stack 0
GLOBAL	__end_of_DIG_Show_Time
	__end_of_DIG_Show_Time:
	signat	_DIG_Show_Time,12409
	global	_Factory_Show

;; *************** function _Factory_Show *****************
;; Defined at:
;;		line 547 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_LED_Task
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	547
global __ptext26
__ptext26:	;psect for function _Factory_Show
psect	text26
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	547
	global	__size_of_Factory_Show
	__size_of_Factory_Show	equ	__end_of_Factory_Show-_Factory_Show
	
_Factory_Show:	
;incstack = 0
	opt	stack 3
; Regs used in _Factory_Show: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	550
	
l15570:	
;display.c: 550: switch(FactoryTestData)
	goto	l15608
	line	552
;display.c: 551: {
;display.c: 552: case 20:
	
l3961:	
	line	553
;display.c: 553: if(b_Auto_test)
	btfss	(_b_Auto_test/8),(_b_Auto_test)&7	;volatile
	goto	u7311
	goto	u7310
u7311:
	goto	l15580
u7310:
	line	556
	
l15572:	
;display.c: 554: {
;display.c: 556: DispData[0] |= (0x01 + 0x02 + 0x10 + 0x20 + 0x40);
	movlw	low(073h)
	iorwf	(_DispData),f	;volatile
	line	557
	
l15574:	
;display.c: 557: DispData[1] |= SEG_MATH_TAB[10];
	movlw	low(((_SEG_MATH_TAB+0Ah)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+0Ah)|8000h))
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+01h,f	;volatile
	line	558
	
l15576:	
;display.c: 558: DispData[2] |= SEG_MATH_TAB[5];
	movlw	low(((_SEG_MATH_TAB+05h)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+05h)|8000h))
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+02h,f	;volatile
	line	559
	
l15578:	
;display.c: 559: DispData[3] |= SEG_MATH_TAB[5];
	movlw	low(((_SEG_MATH_TAB+05h)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+05h)|8000h))
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+03h,f	;volatile
	line	560
;display.c: 560: break;
	goto	l15610
	line	563
	
l15580:	
;display.c: 561: }
;display.c: 563: DispData[0] |= SEG_MATH_TAB[0];
	movlw	low(_SEG_MATH_TAB|8000h)
	movwf	fsr0
	movlw	high(_SEG_MATH_TAB|8000h)
	movwf	btemp+1
	fcall	stringtab
	iorwf	(_DispData),f	;volatile
	line	564
;display.c: 564: DispData[1] |= SEG_MATH_TAB[0];
	movlw	low(_SEG_MATH_TAB|8000h)
	movwf	fsr0
	movlw	high(_SEG_MATH_TAB|8000h)
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+01h,f	;volatile
	line	565
	
l15582:	
;display.c: 565: DispData[2] |= SEG_MATH_TAB[CountDownTime/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_CountDownTime),w	;volatile
	fcall	___lbdiv
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+02h,f	;volatile
	line	566
	
l15584:	
;display.c: 566: DispData[3] |= SEG_MATH_TAB[CountDownTime%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_CountDownTime),w	;volatile
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+03h,f	;volatile
	line	567
	
l15586:	
;display.c: 567: if(b_LedCol)
	btfss	(_b_LedCol/8),(_b_LedCol)&7	;volatile
	goto	u7321
	goto	u7320
u7321:
	goto	l15610
u7320:
	line	569
	
l15588:	
;display.c: 568: {
;display.c: 569: {DispData[2] |= 0x80; DispData[1] |= 0x80;};
	bsf	0+(_DispData)+02h+(7/8),(7)&7	;volatile
	bsf	0+(_DispData)+01h+(7/8),(7)&7	;volatile
	goto	l15610
	line	573
;display.c: 573: case 19:
	
l3965:	
	line	574
;display.c: 574: if(b_Auto_test)
	btfss	(_b_Auto_test/8),(_b_Auto_test)&7	;volatile
	goto	u7331
	goto	u7330
u7331:
	goto	l3966
u7330:
	line	576
	
l15590:	
;display.c: 575: {
;display.c: 576: if(b_LidClosed == 0)
	btfsc	(_b_LidClosed/8),(_b_LidClosed)&7	;volatile
	goto	u7341
	goto	u7340
u7341:
	goto	l15594
u7340:
	line	579
	
l15592:	
;display.c: 577: {
;display.c: 579: FactoryTestData = 20;
	movlw	low(014h)
	movwf	(_FactoryTestData)	;volatile
	line	580
;display.c: 580: }
	goto	l15610
	line	583
	
l15594:	
;display.c: 581: else
;display.c: 582: {
;display.c: 583: DispData[0] |= HOT_RUN_TAB[HorseCount][0];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Factory_Show+0)+0
	movlw	(02h)-1
u7355:
	clrc
	rlf	(??_Factory_Show+0)+0,f
	addlw	-1
	skipz
	goto	u7355
	clrc
	rlf	(??_Factory_Show+0)+0,w
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	(_DispData),f	;volatile
	line	584
;display.c: 584: DispData[1] |= HOT_RUN_TAB[HorseCount][1];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Factory_Show+0)+0
	movlw	(02h)-1
u7365:
	clrc
	rlf	(??_Factory_Show+0)+0,f
	addlw	-1
	skipz
	goto	u7365
	clrc
	rlf	(??_Factory_Show+0)+0,w
	addlw	01h
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+01h,f	;volatile
	line	585
;display.c: 585: DispData[2] |= HOT_RUN_TAB[HorseCount][2];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Factory_Show+0)+0
	movlw	(02h)-1
u7375:
	clrc
	rlf	(??_Factory_Show+0)+0,f
	addlw	-1
	skipz
	goto	u7375
	clrc
	rlf	(??_Factory_Show+0)+0,w
	addlw	02h
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+02h,f	;volatile
	line	586
;display.c: 586: DispData[3] |= HOT_RUN_TAB[HorseCount][3];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Factory_Show+0)+0
	movlw	(02h)-1
u7385:
	clrc
	rlf	(??_Factory_Show+0)+0,f
	addlw	-1
	skipz
	goto	u7385
	clrc
	rlf	(??_Factory_Show+0)+0,w
	addlw	03h
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+03h,f	;volatile
	goto	l15610
	line	589
	
l3966:	
	line	592
;display.c: 589: }
;display.c: 592: if(b_BotTempOut == 1)
	btfss	(_b_BotTempOut/8),(_b_BotTempOut)&7	;volatile
	goto	u7391
	goto	u7390
u7391:
	goto	l15600
u7390:
	line	594
	
l15596:	
;display.c: 593: {
;display.c: 594: if(b_LedCol)
	btfss	(_b_LedCol/8),(_b_LedCol)&7	;volatile
	goto	u7401
	goto	u7400
u7401:
	goto	l15610
u7400:
	line	596
	
l15598:	
;display.c: 595: {
;display.c: 596: DispData[1] |= (0x02 + 0x04 + 0x10 + 0x20 + 0x40);
	movlw	low(076h)
	iorwf	0+(_DispData)+01h,f	;volatile
	line	597
;display.c: 597: DispData[2] |= 0x04|0x08|0x10|0x40;
	movlw	low(05Ch)
	iorwf	0+(_DispData)+02h,f	;volatile
	line	598
;display.c: 598: DispData[3] |= 0x08|0x10|0x20|0x40;
	movlw	low(078h)
	iorwf	0+(_DispData)+03h,f	;volatile
	goto	l15610
	line	603
	
l15600:	
;display.c: 601: else
;display.c: 602: {
;display.c: 603: DispData[0] |= HOT_RUN_TAB[HorseCount][0];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Factory_Show+0)+0
	movlw	(02h)-1
u7415:
	clrc
	rlf	(??_Factory_Show+0)+0,f
	addlw	-1
	skipz
	goto	u7415
	clrc
	rlf	(??_Factory_Show+0)+0,w
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	(_DispData),f	;volatile
	line	604
;display.c: 604: DispData[1] |= HOT_RUN_TAB[HorseCount][1];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Factory_Show+0)+0
	movlw	(02h)-1
u7425:
	clrc
	rlf	(??_Factory_Show+0)+0,f
	addlw	-1
	skipz
	goto	u7425
	clrc
	rlf	(??_Factory_Show+0)+0,w
	addlw	01h
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+01h,f	;volatile
	line	605
;display.c: 605: DispData[2] |= HOT_RUN_TAB[HorseCount][2];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Factory_Show+0)+0
	movlw	(02h)-1
u7435:
	clrc
	rlf	(??_Factory_Show+0)+0,f
	addlw	-1
	skipz
	goto	u7435
	clrc
	rlf	(??_Factory_Show+0)+0,w
	addlw	02h
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+02h,f	;volatile
	line	606
;display.c: 606: DispData[3] |= HOT_RUN_TAB[HorseCount][3];
	movf	(_HorseCount),w	;volatile
	movwf	(??_Factory_Show+0)+0
	movlw	(02h)-1
u7445:
	clrc
	rlf	(??_Factory_Show+0)+0,f
	addlw	-1
	skipz
	goto	u7445
	clrc
	rlf	(??_Factory_Show+0)+0,w
	addlw	03h
	addlw	low(((_HOT_RUN_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_HOT_RUN_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	iorwf	0+(_DispData)+03h,f	;volatile
	goto	l15610
	line	615
;display.c: 615: case 16: (DispData[5] |= 0x02);;
	
l3974:	
	bsf	0+(_DispData)+05h+(1/8),(1)&7	;volatile
	line	616
;display.c: 616: break;
	goto	l15610
	line	618
;display.c: 618: case 15: (DispData[4] |= 0x80); (DispData[6] |= 0x02); (DispData[5] |= 0x02);;
	
l3975:	
	bsf	0+(_DispData)+04h+(7/8),(7)&7	;volatile
	bsf	0+(_DispData)+06h+(1/8),(1)&7	;volatile
	bsf	0+(_DispData)+05h+(1/8),(1)&7	;volatile
	line	619
;display.c: 619: break;
	goto	l15610
	line	621
;display.c: 621: case 14: (DispData[5] |= 0x80); (DispData[6] |= 0x10); (DispData[6] |= 0x80);;
	
l3976:	
	bsf	0+(_DispData)+05h+(7/8),(7)&7	;volatile
	bsf	0+(_DispData)+06h+(4/8),(4)&7	;volatile
	bsf	0+(_DispData)+06h+(7/8),(7)&7	;volatile
	line	622
;display.c: 622: break;
	goto	l15610
	line	624
;display.c: 624: case 13: (DispData[4] |= 0x02); (DispData[6] |= 0x08); (DispData[6] |= 0x04);;
	
l3977:	
	bsf	0+(_DispData)+04h+(1/8),(1)&7	;volatile
	bsf	0+(_DispData)+06h+(3/8),(3)&7	;volatile
	bsf	0+(_DispData)+06h+(2/8),(2)&7	;volatile
	line	625
;display.c: 625: break;
	goto	l15610
	line	627
;display.c: 627: case 12: (DispData[4] |= 0x10);;
	
l3978:	
	bsf	0+(_DispData)+04h+(4/8),(4)&7	;volatile
	line	628
;display.c: 628: break;
	goto	l15610
	line	630
;display.c: 630: case 11: (DispData[4] |= 0x04);;
	
l3979:	
	bsf	0+(_DispData)+04h+(2/8),(2)&7	;volatile
	line	631
;display.c: 631: break;
	goto	l15610
	line	633
;display.c: 633: case 10: (DispData[4] |= 0x20);;
	
l3980:	
	bsf	0+(_DispData)+04h+(5/8),(5)&7	;volatile
	line	634
;display.c: 634: break;
	goto	l15610
	line	636
;display.c: 636: case 9: (DispData[4] |= 0x08);;
	
l3981:	
	bsf	0+(_DispData)+04h+(3/8),(3)&7	;volatile
	line	637
;display.c: 637: break;
	goto	l15610
	line	639
;display.c: 639: case 8: (DispData[5] |= 0x10);;
	
l3982:	
	bsf	0+(_DispData)+05h+(4/8),(4)&7	;volatile
	line	640
;display.c: 640: break;
	goto	l15610
	line	642
;display.c: 642: case 7: (DispData[5] |= 0x04);;
	
l3983:	
	bsf	0+(_DispData)+05h+(2/8),(2)&7	;volatile
	line	643
;display.c: 643: break;
	goto	l15610
	line	645
;display.c: 645: case 6: (DispData[5] |= 0x20);;
	
l3984:	
	bsf	0+(_DispData)+05h+(5/8),(5)&7	;volatile
	line	646
;display.c: 646: break;
	goto	l15610
	line	648
;display.c: 648: case 5: (DispData[5] |= 0x08);;
	
l3985:	
	bsf	0+(_DispData)+05h+(3/8),(3)&7	;volatile
	line	649
;display.c: 649: break;
	goto	l15610
	line	651
;display.c: 651: case 4: (DispData[4] |= 0x40);;
	
l3986:	
	bsf	0+(_DispData)+04h+(6/8),(6)&7	;volatile
	line	652
;display.c: 652: break;
	goto	l15610
	line	654
;display.c: 654: case 3: (DispData[5] |= 0x01);;
	
l3987:	
	bsf	0+(_DispData)+05h+(0/8),(0)&7	;volatile
	line	655
;display.c: 655: break;
	goto	l15610
	line	657
;display.c: 657: case 2: (DispData[5] |= 0x40);;
	
l3988:	
	bsf	0+(_DispData)+05h+(6/8),(6)&7	;volatile
	line	658
;display.c: 658: break;
	goto	l15610
	line	660
;display.c: 660: case 1: (DispData[4] |= 0x01);;
	
l3989:	
	bsf	0+(_DispData)+04h+(0/8),(0)&7	;volatile
	line	661
;display.c: 661: break;
	goto	l15610
	line	663
;display.c: 663: case 0:
	
l3990:	
	line	664
;display.c: 664: (DispData[4] |= 0x01);(DispData[5] |= 0x40);(DispData[5] |= 0x01);(DispData[4] |= 0x40);(DispData[5] |= 0x08);(DispData[5] |= 0x20);(DispData[5] |= 0x04);(DispData[5] |= 0x10);(DispData[4] |= 0x08);(DispData[4] |= 0x20);(DispData[4] |= 0x04);(DispDat
	bsf	0+(_DispData)+04h+(0/8),(0)&7	;volatile
	bsf	0+(_DispData)+05h+(6/8),(6)&7	;volatile
	bsf	0+(_DispData)+05h+(0/8),(0)&7	;volatile
	bsf	0+(_DispData)+04h+(6/8),(6)&7	;volatile
	bsf	0+(_DispData)+05h+(3/8),(3)&7	;volatile
	bsf	0+(_DispData)+05h+(5/8),(5)&7	;volatile
	bsf	0+(_DispData)+05h+(2/8),(2)&7	;volatile
	bsf	0+(_DispData)+05h+(4/8),(4)&7	;volatile
	bsf	0+(_DispData)+04h+(3/8),(3)&7	;volatile
	bsf	0+(_DispData)+04h+(5/8),(5)&7	;volatile
	bsf	0+(_DispData)+04h+(2/8),(2)&7	;volatile
	bsf	0+(_DispData)+04h+(4/8),(4)&7	;volatile
	bsf	0+(_DispData)+04h+(1/8),(1)&7	;volatile
	bsf	0+(_DispData)+06h+(3/8),(3)&7	;volatile
	bsf	0+(_DispData)+06h+(2/8),(2)&7	;volatile
	bsf	0+(_DispData)+05h+(7/8),(7)&7	;volatile
	bsf	0+(_DispData)+06h+(4/8),(4)&7	;volatile
	bsf	0+(_DispData)+06h+(7/8),(7)&7	;volatile
	bsf	0+(_DispData)+04h+(7/8),(7)&7	;volatile
	bsf	0+(_DispData)+06h+(1/8),(1)&7	;volatile
	bsf	0+(_DispData)+05h+(1/8),(1)&7	;volatile
	bsf	0+(_DispData)+05h+(1/8),(1)&7	;volatile
	bsf	0+(_DispData)+05h+(1/8),(1)&7	;volatile
	line	665
	
l15602:	
;display.c: 665: if(FactoryTestData == 0)
	movf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u7451
	goto	u7450
u7451:
	goto	l15610
u7450:
	line	667
	
l15604:	
;display.c: 666: {
;display.c: 667: DispData[0] = SEG_MATH_TAB[10];
	movlw	low(((_SEG_MATH_TAB+0Ah)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+0Ah)|8000h))
	movwf	btemp+1
	fcall	stringtab
	movwf	(_DispData)	;volatile
	line	668
;display.c: 668: DispData[1] = SEG_MATH_TAB[0];
	movlw	low(_SEG_MATH_TAB|8000h)
	movwf	fsr0
	movlw	high(_SEG_MATH_TAB|8000h)
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_DispData)+01h	;volatile
	line	669
;display.c: 669: DispData[2] = SEG_MATH_TAB[0];
	movlw	low(_SEG_MATH_TAB|8000h)
	movwf	fsr0
	movlw	high(_SEG_MATH_TAB|8000h)
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_DispData)+02h	;volatile
	line	670
;display.c: 670: DispData[3] = SEG_MATH_TAB[8];
	movlw	low(((_SEG_MATH_TAB+08h)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+08h)|8000h))
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_DispData)+03h	;volatile
	goto	l15610
	line	550
	
l15608:	
	movf	(_FactoryTestData),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 21, Range of values is 0 to 20
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           64    33 (average)
; direct_byte           71     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3990
	xorlw	1^0	; case 1
	skipnz
	goto	l3989
	xorlw	2^1	; case 2
	skipnz
	goto	l3988
	xorlw	3^2	; case 3
	skipnz
	goto	l3987
	xorlw	4^3	; case 4
	skipnz
	goto	l3986
	xorlw	5^4	; case 5
	skipnz
	goto	l3985
	xorlw	6^5	; case 6
	skipnz
	goto	l3984
	xorlw	7^6	; case 7
	skipnz
	goto	l3983
	xorlw	8^7	; case 8
	skipnz
	goto	l3982
	xorlw	9^8	; case 9
	skipnz
	goto	l3981
	xorlw	10^9	; case 10
	skipnz
	goto	l3980
	xorlw	11^10	; case 11
	skipnz
	goto	l3979
	xorlw	12^11	; case 12
	skipnz
	goto	l3978
	xorlw	13^12	; case 13
	skipnz
	goto	l3977
	xorlw	14^13	; case 14
	skipnz
	goto	l3976
	xorlw	15^14	; case 15
	skipnz
	goto	l3975
	xorlw	16^15	; case 16
	skipnz
	goto	l3974
	xorlw	17^16	; case 17
	skipnz
	goto	l15610
	xorlw	18^17	; case 18
	skipnz
	goto	l15610
	xorlw	19^18	; case 19
	skipnz
	goto	l3965
	xorlw	20^19	; case 20
	skipnz
	goto	l3961
	goto	l15610
	opt asmopt_pop

	line	677
	
l15610:	
;display.c: 677: if(FactoryTestData >= 2 && FactoryTestData <= 15)
	movlw	low(02h)
	subwf	(_FactoryTestData),w	;volatile
	skipc
	goto	u7461
	goto	u7460
u7461:
	goto	l3994
u7460:
	
l15612:	
	movlw	low(010h)
	subwf	(_FactoryTestData),w	;volatile
	skipnc
	goto	u7471
	goto	u7470
u7471:
	goto	l3994
u7470:
	line	679
	
l15614:	
;display.c: 678: {
;display.c: 679: DispData[0] = SEG_MATH_TAB[1];
	movlw	low(((_SEG_MATH_TAB+01h)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+01h)|8000h))
	movwf	btemp+1
	fcall	stringtab
	movwf	(_DispData)	;volatile
	line	680
;display.c: 680: DispData[1] = SEG_MATH_TAB[2];
	movlw	low(((_SEG_MATH_TAB+02h)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+02h)|8000h))
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_DispData)+01h	;volatile
	line	681
;display.c: 681: DispData[2] = SEG_MATH_TAB[3];
	movlw	low(((_SEG_MATH_TAB+03h)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+03h)|8000h))
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_DispData)+02h	;volatile
	line	682
;display.c: 682: DispData[3] = SEG_MATH_TAB[4];
	movlw	low(((_SEG_MATH_TAB+04h)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+04h)|8000h))
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_DispData)+03h	;volatile
	line	683
	
l15616:	
;display.c: 683: {DispData[2] |= 0x80; DispData[1] |= 0x80;};
	bsf	0+(_DispData)+02h+(7/8),(7)&7	;volatile
	
l15618:	
	bsf	0+(_DispData)+01h+(7/8),(7)&7	;volatile
	line	685
	
l3994:	
	return
	opt stack 0
GLOBAL	__end_of_Factory_Show
	__end_of_Factory_Show:
	signat	_Factory_Show,89
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[BANK0 ] unsigned char 
;;  quotient        1    3[BANK0 ] unsigned char 
;;  counter         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DIG_Show_Time
;;		_Fun_Choose_Show
;;		_Work_Mode_Show
;;		_Test_Mode_Show
;;		_Factory_Show
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lbdiv.c"
	line	4
global __ptext27
__ptext27:	;psect for function ___lbdiv
psect	text27
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l15160:	
	clrf	(___lbdiv@quotient)
	line	10
	
l15162:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u6461
	goto	u6460
u6461:
	goto	l15180
u6460:
	line	11
	
l15164:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l15168
	
l9904:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l15166:	
	incf	(___lbdiv@counter),f
	line	12
	
l15168:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u6471
	goto	u6470
u6471:
	goto	l9904
u6470:
	line	16
	
l9906:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l15170:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u6481
	goto	u6480
u6481:
	goto	l15176
u6480:
	line	19
	
l15172:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l15174:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l15176:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l15178:	
	decfsz	(___lbdiv@counter),f
	goto	u6491
	goto	u6490
u6491:
	goto	l9906
u6490:
	line	25
	
l15180:	
	movf	(___lbdiv@quotient),w
	line	26
	
l9909:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_Error_Show

;; *************** function _Error_Show *****************
;; Defined at:
;;		line 421 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbmod
;; This function is called by:
;;		_LED_Task
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	421
global __ptext28
__ptext28:	;psect for function _Error_Show
psect	text28
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	421
	global	__size_of_Error_Show
	__size_of_Error_Show	equ	__end_of_Error_Show-_Error_Show
	
_Error_Show:	
;incstack = 0
	opt	stack 3
; Regs used in _Error_Show: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	423
	
l12954:	
;display.c: 423: DispData[0] = 0;
	clrf	(_DispData)	;volatile
	line	424
	
l12956:	
;display.c: 424: DispData[1] = SEG_MATH_TAB[14];
	movlw	low(((_SEG_MATH_TAB+0Eh)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB+0Eh)|8000h))
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_DispData)+01h	;volatile
	line	425
	
l12958:	
;display.c: 425: DispData[2] = SEG_MATH_TAB[ErrorCode%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_ErrorCode),w	;volatile
	fcall	___lbmod
	addlw	low(((_SEG_MATH_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_SEG_MATH_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_DispData)+02h	;volatile
	line	426
	
l12960:	
;display.c: 426: DispData[3] = 0;
	clrf	0+(_DispData)+03h	;volatile
	line	427
	
l3927:	
	return
	opt stack 0
GLOBAL	__end_of_Error_Show
	__end_of_Error_Show:
	signat	_Error_Show,89
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[BANK0 ] unsigned char 
;;  rem             1    4[BANK0 ] unsigned char 
;;  counter         1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DIG_Show_Time
;;		_Fun_Choose_Show
;;		_Work_Mode_Show
;;		_Error_Show
;;		_Test_Mode_Show
;;		_Factory_Show
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lbmod.c"
	line	4
global __ptext29
__ptext29:	;psect for function ___lbmod
psect	text29
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l12034:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l12036:	
	clrf	(___lbmod@rem)
	line	12
	
l12038:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1655:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1655
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l12040:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l12042:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l12046
u1660:
	line	15
	
l12044:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l12046:	
	decfsz	(___lbmod@counter),f
	goto	u1671
	goto	u1670
u1671:
	goto	l12038
u1670:
	line	17
	
l12048:	
	movf	(___lbmod@rem),w
	line	18
	
l9915:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_LED_Drive

;; *************** function _LED_Drive *****************
;; Defined at:
;;		line 834 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/300
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Set_Addr_Value
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	834
global __ptext30
__ptext30:	;psect for function _LED_Drive
psect	text30
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	834
	global	__size_of_LED_Drive
	__size_of_LED_Drive	equ	__end_of_LED_Drive-_LED_Drive
	
_LED_Drive:	
;incstack = 0
	opt	stack 4
; Regs used in _LED_Drive: [wreg+status,2+status,0+pclath+cstack]
	line	836
	
l15924:	
;display.c: 836: (TRISD=0B00000000);
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	837
;display.c: 837: (TRISA=0B00000000);
	clrf	(133)^080h	;volatile
	line	839
	
l15926:	
;display.c: 839: Set_Addr_Value((1+8)|0X80, 0x01);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(Set_Addr_Value@mask)
	incf	(Set_Addr_Value@mask),f
	movlw	low(089h)
	fcall	_Set_Addr_Value
	line	841
	
l15928:	
;display.c: 841: Set_Addr_Value((0+8)|0X80, 0x02);
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Addr_Value@mask)
	movlw	low(088h)
	fcall	_Set_Addr_Value
	line	844
	
l15930:	
;display.c: 844: Set_Addr_Value((6+8)|0X80, 0x04);
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Addr_Value@mask)
	movlw	low(08Eh)
	fcall	_Set_Addr_Value
	line	847
	
l15932:	
;display.c: 847: Set_Addr_Value((7+8)|0X80, 0x08);
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Addr_Value@mask)
	movlw	low(08Fh)
	fcall	_Set_Addr_Value
	line	850
	
l15934:	
;display.c: 850: Set_Addr_Value((5+8)|0X80, 0x10);
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Addr_Value@mask)
	movlw	low(08Dh)
	fcall	_Set_Addr_Value
	line	853
	
l15936:	
;display.c: 853: Set_Addr_Value((3+8)|0X80, 0x20);
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Addr_Value@mask)
	movlw	low(08Bh)
	fcall	_Set_Addr_Value
	line	856
	
l15938:	
;display.c: 856: Set_Addr_Value((4+8)|0X80, 0x40);
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Addr_Value@mask)
	movlw	low(08Ch)
	fcall	_Set_Addr_Value
	line	859
	
l15940:	
;display.c: 859: Set_Addr_Value((2+8)|0X80, 0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Addr_Value@mask)
	movlw	low(08Ah)
	fcall	_Set_Addr_Value
	line	871
	
l15942:	
;display.c: 871: LEDADD |= 0x40;
	bsf	(402)^0180h+(6/8),(6)&7	;volatile
	line	872
	
l4032:	
	return
	opt stack 0
GLOBAL	__end_of_LED_Drive
	__end_of_LED_Drive:
	signat	_LED_Drive,89
	global	_Set_Addr_Value

;; *************** function _Set_Addr_Value *****************
;; Defined at:
;;		line 769 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  mask            1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    1[BANK0 ] unsigned char 
;;  data            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/300
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LED_Drive
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	line	769
global __ptext31
__ptext31:	;psect for function _Set_Addr_Value
psect	text31
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	769
	global	__size_of_Set_Addr_Value
	__size_of_Set_Addr_Value	equ	__end_of_Set_Addr_Value-_Set_Addr_Value
	
_Set_Addr_Value:	
;incstack = 0
	opt	stack 4
; Regs used in _Set_Addr_Value: [wreg+status,2+status,0]
;Set_Addr_Value@addr stored from wreg
	movwf	(Set_Addr_Value@addr)
	line	771
	
l13096:	
;display.c: 771: unsigned char data = 0;
	clrf	(Set_Addr_Value@data)
	line	778
	
l13098:	
;display.c: 778: LEDADD = addr | 0x10;
	movf	(Set_Addr_Value@addr),w
	iorlw	010h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(402)^0180h	;volatile
	line	781
	
l13100:	
;display.c: 781: if(DispData[0] & mask)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DispData),w	;volatile
	andwf	(Set_Addr_Value@mask),w
	btfsc	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l13104
u3690:
	line	782
	
l13102:	
;display.c: 782: data|=(1<<(3));
	bsf	(Set_Addr_Value@data)+(3/8),(3)&7
	line	784
	
l13104:	
;display.c: 784: if(DispData[1] & mask)
	movf	0+(_DispData)+01h,w	;volatile
	andwf	(Set_Addr_Value@mask),w
	btfsc	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l13108
u3700:
	line	785
	
l13106:	
;display.c: 785: data|=(1<<(0));
	bsf	(Set_Addr_Value@data)+(0/8),(0)&7
	line	788
	
l13108:	
;display.c: 788: if(DispData[2] & mask)
	movf	0+(_DispData)+02h,w	;volatile
	andwf	(Set_Addr_Value@mask),w
	btfsc	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l13112
u3710:
	line	789
	
l13110:	
;display.c: 789: data|=(1<<(1));
	bsf	(Set_Addr_Value@data)+(1/8),(1)&7
	line	792
	
l13112:	
;display.c: 792: if(DispData[3] & mask)
	movf	0+(_DispData)+03h,w	;volatile
	andwf	(Set_Addr_Value@mask),w
	btfsc	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l13116
u3720:
	line	793
	
l13114:	
;display.c: 793: data|=(1<<(2));
	bsf	(Set_Addr_Value@data)+(2/8),(2)&7
	line	796
	
l13116:	
;display.c: 796: if(DispData[4] & mask)
	movf	0+(_DispData)+04h,w	;volatile
	andwf	(Set_Addr_Value@mask),w
	btfsc	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l13120
u3730:
	line	797
	
l13118:	
;display.c: 797: data|=(1<<(7));
	bsf	(Set_Addr_Value@data)+(7/8),(7)&7
	line	800
	
l13120:	
;display.c: 800: if(DispData[5] & mask)
	movf	0+(_DispData)+05h,w	;volatile
	andwf	(Set_Addr_Value@mask),w
	btfsc	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l13124
u3740:
	line	801
	
l13122:	
;display.c: 801: data|=(1<<(6));
	bsf	(Set_Addr_Value@data)+(6/8),(6)&7
	line	804
	
l13124:	
;display.c: 804: if(DispData[6] & mask)
	movf	0+(_DispData)+06h,w	;volatile
	andwf	(Set_Addr_Value@mask),w
	btfsc	status,2
	goto	u3751
	goto	u3750
u3751:
	goto	l13128
u3750:
	line	805
	
l13126:	
;display.c: 805: data|=(1<<(5));
	bsf	(Set_Addr_Value@data)+(5/8),(5)&7
	line	811
	
l13128:	
;display.c: 811: LEDDATA = data;
	movf	(Set_Addr_Value@data),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(403)^0180h	;volatile
	line	812
	
l4026:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Addr_Value
	__end_of_Set_Addr_Value:
	signat	_Set_Addr_Value,8313
	global	_Key_Task

;; *************** function _Key_Task *****************
;; Defined at:
;;		line 432 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MainK_Preset
;;		_Maink_Cancel
;;		_Maink_Factory
;;		_Maink_Fast_Fun
;;		_Maink_Test
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	432
global __ptext32
__ptext32:	;psect for function _Key_Task
psect	text32
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	432
	global	__size_of_Key_Task
	__size_of_Key_Task	equ	__end_of_Key_Task-_Key_Task
	
_Key_Task:	
;incstack = 0
	opt	stack 3
; Regs used in _Key_Task: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	435
	
l15944:	
;key.c: 435: if(KeyFlag == 0x00)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_KeyFlag)),w	;volatile
	btfss	status,2
	goto	u8051
	goto	u8050
u8051:
	goto	l5873
u8050:
	line	437
	
l15946:	
;key.c: 436: {
;key.c: 437: LongKeyCount = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_LongKeyCount)^080h	;volatile
	goto	l5874
	line	438
	
l15948:	
;key.c: 438: return;
	goto	l5874
	line	439
	
l5873:	
	line	442
;key.c: 439: }
;key.c: 442: if(KeyFlag & 0x04)
	btfss	(_KeyFlag),(2)&7	;volatile
	goto	u8061
	goto	u8060
u8061:
	goto	l5875
u8060:
	line	445
	
l15950:	
;key.c: 443: {
;key.c: 445: if( b_TestShow == 0 && KeyData == (0x4000 | 0x8000))
	btfsc	(_b_TestShow/8),(_b_TestShow)&7	;volatile
	goto	u8071
	goto	u8070
u8071:
	goto	l15970
u8070:
	
l15952:	
		movlw	192
	xorwf	((_KeyData+1)),w	;volatile
iorwf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u8081
	goto	u8080
u8081:
	goto	l15970
u8080:
	line	447
	
l15954:	
;key.c: 446: {
;key.c: 447: b_TestShow = 1;
	bsf	(_b_TestShow/8),(_b_TestShow)&7	;volatile
	line	448
	
l15956:	
;key.c: 448: TestShow = 0;
	clrf	(_TestShow)	;volatile
	line	449
;key.c: 449: SendShow = 0;
	clrf	(_SendShow)	;volatile
	line	450
	
l15958:	
;key.c: 450: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	
l15960:	
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	
l15962:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l15964:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l15966:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l5874
	line	454
	
l15970:	
;key.c: 452: }
;key.c: 454: if((SysStatus == 1 || SysStatus == 2) && KeyData == (0x4000 | 0x1000))
		decf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u8091
	goto	u8090
u8091:
	goto	l15974
u8090:
	
l15972:	
		movlw	2
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u8101
	goto	u8100
u8101:
	goto	l15992
u8100:
	
l15974:	
		movlw	80
	xorwf	((_KeyData+1)),w	;volatile
iorwf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u8111
	goto	u8110
u8111:
	goto	l15992
u8110:
	line	456
	
l15976:	
;key.c: 455: {
;key.c: 456: SysStatus = 5;
	movlw	low(05h)
	movwf	(_SysStatus)	;volatile
	line	457
	
l15978:	
;key.c: 457: FactoryTestData = 0;
	clrf	(_FactoryTestData)	;volatile
	goto	l15958
	line	463
	
l15992:	
;key.c: 461: }
;key.c: 463: if(SysStatus == 2 && KeyData == 0x4000)
		movlw	2
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u8121
	goto	u8120
u8121:
	goto	l5874
u8120:
	
l15994:	
		movlw	64
	xorwf	((_KeyData+1)),w	;volatile
iorwf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u8131
	goto	u8130
u8131:
	goto	l5874
u8130:
	line	465
	
l15996:	
;key.c: 464: {
;key.c: 465: MainK_Preset();
	fcall	_MainK_Preset
	goto	l5874
	line	470
	
l5875:	
	line	473
;key.c: 470: }
;key.c: 473: if(KeyFlag & 0x01)
	btfss	(_KeyFlag),(0)&7	;volatile
	goto	u8141
	goto	u8140
u8141:
	goto	l5874
u8140:
	line	475
	
l16000:	
;key.c: 474: {
;key.c: 475: KeyFlag&=~(1<<(0));
	bcf	(_KeyFlag)+(0/8),(0)&7	;volatile
	line	477
	
l16002:	
;key.c: 477: StandbyTimeCnt = 0;
	clrf	(_StandbyTimeCnt)	;volatile
	line	480
	
l16004:	
;key.c: 480: if(b_Standby)
	btfss	(_b_Standby/8),(_b_Standby)&7	;volatile
	goto	u8151
	goto	u8150
u8151:
	goto	l5882
u8150:
	line	482
	
l16006:	
;key.c: 481: {
;key.c: 482: b_Standby = 0;
	bcf	(_b_Standby/8),(_b_Standby)&7	;volatile
	line	483
	
l16008:	
;key.c: 483: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l5874
	line	485
	
l5882:	
	line	488
;key.c: 485: }
;key.c: 488: if(b_TestShow)
	btfss	(_b_TestShow/8),(_b_TestShow)&7	;volatile
	goto	u8161
	goto	u8160
u8161:
	goto	l16018
u8160:
	line	493
	
l16012:	
;key.c: 489: {
;key.c: 493: Fc_ID[0] = Fc_ID_3;
	movlw	low(8186|8000h)
	movwf	fsr0
	movlw	high(8186|8000h)
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_Fc_ID)^080h
	line	494
;key.c: 494: Fc_ID[1] = Fc_ID_4;
	movlw	low(8187|8000h)
	movwf	fsr0
	movlw	high(8187|8000h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_Fc_ID)^080h+01h
	line	495
;key.c: 495: Fc_ID[2] = Fc_ID_5;
	movlw	low(8188|8000h)
	movwf	fsr0
	movlw	high(8188|8000h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_Fc_ID)^080h+02h
	line	496
;key.c: 496: Fc_ID[3] = Fc_ID_6;
	movlw	low(8189|8000h)
	movwf	fsr0
	movlw	high(8189|8000h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_Fc_ID)^080h+03h
	line	497
;key.c: 497: Fc_ID[4] = Fc_ID_7;
	movlw	low(8190|8000h)
	movwf	fsr0
	movlw	high(8190|8000h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_Fc_ID)^080h+04h
	line	498
;key.c: 498: Fc_ID[5] = Fc_ID_8;
	movlw	low(8191|8000h)
	movwf	fsr0
	movlw	high(8191|8000h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_Fc_ID)^080h+05h
	line	502
	
l16014:	
;key.c: 502: Maink_Test();
	fcall	_Maink_Test
	goto	l5874
	line	506
	
l16018:	
;key.c: 504: }
;key.c: 506: if(SysStatus == 5)
		movlw	5
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u8171
	goto	u8170
u8171:
	goto	l16024
u8170:
	line	508
	
l16020:	
;key.c: 507: {
;key.c: 508: Maink_Factory();
	fcall	_Maink_Factory
	goto	l5874
	line	511
	
l16024:	
;key.c: 510: }
;key.c: 511: if(KeyData == 0x1000)
		movlw	16
	xorwf	((_KeyData+1)),w	;volatile
iorwf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u8181
	goto	u8180
u8181:
	goto	l16030
u8180:
	line	513
	
l16026:	
;key.c: 512: {
;key.c: 513: Maink_Cancel();
	fcall	_Maink_Cancel
	goto	l5874
	line	516
	
l16030:	
;key.c: 515: }
;key.c: 516: if(SysStatus==1 || SysStatus==2)
		decf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u8191
	goto	u8190
u8191:
	goto	l16094
u8190:
	
l16032:	
		movlw	2
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u8201
	goto	u8200
u8201:
	goto	l5874
u8200:
	goto	l16094
	line	520
	
l16034:	
	movlw	low(01h)
	movwf	(_ChooseFun)	;volatile
	
l16036:	
	fcall	_Maink_Fast_Fun
	goto	l5874
	line	521
	
l16038:	
	movlw	low(02h)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	522
	
l16042:	
	movlw	low(03h)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	523
	
l16046:	
	movlw	low(04h)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	525
	
l16050:	
	movlw	low(05h)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	526
	
l16054:	
	movlw	low(06h)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	527
	
l16058:	
	movlw	low(07h)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	528
	
l16062:	
	movlw	low(08h)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	530
	
l16066:	
	movlw	low(09h)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	531
	
l16070:	
	movlw	low(0Ah)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	532
	
l16074:	
	movlw	low(0Bh)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	533
	
l16078:	
	movlw	low(0Ch)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	536
	
l16084:	
	movlw	low(0Dh)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	537
	
l16088:	
	movlw	low(0Eh)
	movwf	(_ChooseFun)	;volatile
	goto	l16036
	line	518
	
l16094:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 8 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 0 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData+1),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l17502
	xorlw	1^0	; case 1
	skipnz
	goto	l17504
	xorlw	2^1	; case 2
	skipnz
	goto	l17506
	xorlw	4^2	; case 4
	skipnz
	goto	l17508
	xorlw	8^4	; case 8
	skipnz
	goto	l17510
	xorlw	32^8	; case 32
	skipnz
	goto	l17512
	xorlw	64^32	; case 64
	skipnz
	goto	l17514
	xorlw	128^64	; case 128
	skipnz
	goto	l17516
	goto	l15948
	opt asmopt_pop
	
l17502:	
; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l16046
	xorlw	2^1	; case 2
	skipnz
	goto	l16042
	xorlw	4^2	; case 4
	skipnz
	goto	l16038
	xorlw	8^4	; case 8
	skipnz
	goto	l16034
	xorlw	16^8	; case 16
	skipnz
	goto	l16062
	xorlw	32^16	; case 32
	skipnz
	goto	l16058
	xorlw	64^32	; case 64
	skipnz
	goto	l16054
	xorlw	128^64	; case 128
	skipnz
	goto	l16050
	goto	l15948
	opt asmopt_pop
	
l17504:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l16078
	goto	l15948
	opt asmopt_pop
	
l17506:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l16074
	goto	l15948
	opt asmopt_pop
	
l17508:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l16070
	goto	l15948
	opt asmopt_pop
	
l17510:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l16066
	goto	l15948
	opt asmopt_pop
	
l17512:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l16088
	goto	l15948
	opt asmopt_pop
	
l17514:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l15996
	goto	l15948
	opt asmopt_pop
	
l17516:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l16084
	goto	l15948
	opt asmopt_pop

	line	543
	
l5874:	
	return
	opt stack 0
GLOBAL	__end_of_Key_Task
	__end_of_Key_Task:
	signat	_Key_Task,89
	global	_Maink_Test

;; *************** function _Maink_Test *****************
;; Defined at:
;;		line 187 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Task
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	line	187
global __ptext33
__ptext33:	;psect for function _Maink_Test
psect	text33
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	187
	global	__size_of_Maink_Test
	__size_of_Maink_Test	equ	__end_of_Maink_Test-_Maink_Test
	
_Maink_Test:	
;incstack = 0
	opt	stack 4
; Regs used in _Maink_Test: [wreg+status,2+status,0]
	line	190
	
l13272:	
;key.c: 190: if(KeyData == 0x1000)
		movlw	16
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_KeyData+1)),w	;volatile
iorwf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l13280
u3980:
	line	192
	
l13274:	
;key.c: 191: {
;key.c: 192: b_TestShow = 0;
	bcf	(_b_TestShow/8),(_b_TestShow)&7	;volatile
	line	193
	
l13276:	
;key.c: 193: {{BuzCnt = 1; BuzUpTime = 75/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(025h)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l5822
	line	194
	
l13278:	
;key.c: 194: return;
	goto	l5822
	line	198
	
l13280:	
;key.c: 195: }
;key.c: 198: if(KeyData == 0x4000)
		movlw	64
	xorwf	((_KeyData+1)),w	;volatile
iorwf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l13290
u3990:
	line	200
	
l13282:	
;key.c: 199: {
;key.c: 200: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	201
	
l13284:	
;key.c: 201: if(++TestShow >= (2 + 1))
	movlw	low(03h)
	incf	(_TestShow),f	;volatile
	subwf	((_TestShow)),w	;volatile
	skipc
	goto	u4001
	goto	u4000
u4001:
	goto	l5824
u4000:
	line	203
	
l13286:	
;key.c: 202: {
;key.c: 203: TestShow = 0;
	clrf	(_TestShow)	;volatile
	line	204
	
l5824:	
	line	205
;key.c: 204: }
;key.c: 205: SendShow = 0;
	clrf	(_SendShow)	;volatile
	goto	l5822
	line	210
	
l13290:	
;key.c: 207: }
;key.c: 210: if(KeyData == 0x8000)
		movlw	128
	xorwf	((_KeyData+1)),w	;volatile
iorwf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l5822
u4010:
	line	212
	
l13292:	
;key.c: 211: {
;key.c: 212: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	213
	
l13294:	
;key.c: 213: if(TestShow == 0)
	movf	((_TestShow)),w	;volatile
	btfss	status,2
	goto	u4021
	goto	u4020
u4021:
	goto	l13300
u4020:
	line	215
	
l13296:	
;key.c: 214: {
;key.c: 215: if(++SendShow > 8)
	movlw	low(09h)
	incf	(_SendShow),f	;volatile
	subwf	((_SendShow)),w	;volatile
	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l5822
u4030:
	line	217
	
l13298:	
;key.c: 216: {
;key.c: 217: SendShow = 1;
	movlw	low(01h)
	movwf	(_SendShow)	;volatile
	goto	l5822
	line	220
	
l13300:	
;key.c: 220: else if(TestShow == 1)
		decf	((_TestShow)),w	;volatile
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l5822
u4040:
	line	222
	
l13302:	
;key.c: 221: {
;key.c: 222: if(++SendShow >= 3)
	movlw	low(03h)
	incf	(_SendShow),f	;volatile
	subwf	((_SendShow)),w	;volatile
	skipc
	goto	u4051
	goto	u4050
u4051:
	goto	l13278
u4050:
	goto	l5824
	line	229
	
l5822:	
	return
	opt stack 0
GLOBAL	__end_of_Maink_Test
	__end_of_Maink_Test:
	signat	_Maink_Test,89
	global	_Maink_Fast_Fun

;; *************** function _Maink_Fast_Fun *****************
;; Defined at:
;;		line 160 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Task
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	line	160
global __ptext34
__ptext34:	;psect for function _Maink_Fast_Fun
psect	text34
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	160
	global	__size_of_Maink_Fast_Fun
	__size_of_Maink_Fast_Fun	equ	__end_of_Maink_Fast_Fun-_Maink_Fast_Fun
	
_Maink_Fast_Fun:	
;incstack = 0
	opt	stack 4
; Regs used in _Maink_Fast_Fun: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	162
	
l15632:	
;key.c: 162: if(SysStatus == 1 || SysStatus == 2)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u7481
	goto	u7480
u7481:
	goto	l15636
u7480:
	
l15634:	
		movlw	2
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u7491
	goto	u7490
u7491:
	goto	l5818
u7490:
	line	165
	
l15636:	
;key.c: 163: {
;key.c: 165: if(PresetState == 0 || ChooseFun == 12 || ChooseFun == 14)
	movf	((_PresetState)),w	;volatile
	btfsc	status,2
	goto	u7501
	goto	u7500
u7501:
	goto	l15642
u7500:
	
l15638:	
		movlw	12
	xorwf	((_ChooseFun)),w	;volatile
	btfsc	status,2
	goto	u7511
	goto	u7510
u7511:
	goto	l15642
u7510:
	
l15640:	
		movlw	14
	xorwf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u7521
	goto	u7520
u7521:
	goto	l15644
u7520:
	line	168
	
l15642:	
;key.c: 166: {
;key.c: 168: PresetTimeM = 0;
	clrf	(_PresetTimeM)	;volatile
	line	169
;key.c: 169: PresetTimeH = 0;
	clrf	(_PresetTimeH)	;volatile
	line	171
	
l15644:	
;key.c: 170: }
;key.c: 171: SysStatus = 2;
	movlw	low(02h)
	movwf	(_SysStatus)	;volatile
	line	173
	
l15646:	
;key.c: 173: PresetState = 1;
	movlw	low(01h)
	movwf	(_PresetState)	;volatile
	line	174
	
l15648:	
;key.c: 174: CountDownTime = TIME_TAB[ChooseFun][1];
	movf	(_ChooseFun),w	;volatile
	movwf	(??_Maink_Fast_Fun+0)+0
	movlw	(02h)-1
u7535:
	clrc
	rlf	(??_Maink_Fast_Fun+0)+0,f
	addlw	-1
	skipz
	goto	u7535
	clrc
	rlf	(??_Maink_Fast_Fun+0)+0,w
	addlw	01h
	addlw	low(((_TIME_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_TIME_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(_CountDownTime)	;volatile
	line	176
	
l15650:	
;key.c: 176: b_LedCol = 1;
	bsf	(_b_LedCol/8),(_b_LedCol)&7	;volatile
	line	177
	
l15652:	
;key.c: 177: LedCol_500ms = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_LedCol_500ms)^080h	;volatile
	line	178
	
l15654:	
;key.c: 178: MainTime_500ms = 0;
	clrf	(_MainTime_500ms)^080h	;volatile
	line	179
	
l15656:	
;key.c: 179: Led_Step_100C = 0;
	clrf	(_Led_Step_100C)^080h	;volatile
	line	180
	
l15658:	
;key.c: 180: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_BuzCnt)	;volatile
	
l15660:	
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	
l15662:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l15664:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l15666:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	182
	
l5818:	
	return
	opt stack 0
GLOBAL	__end_of_Maink_Fast_Fun
	__end_of_Maink_Fast_Fun:
	signat	_Maink_Fast_Fun,89
	global	_Maink_Factory

;; *************** function _Maink_Factory *****************
;; Defined at:
;;		line 233 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Cancel
;; This function is called by:
;;		_Key_Task
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	line	233
global __ptext35
__ptext35:	;psect for function _Maink_Factory
psect	text35
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	233
	global	__size_of_Maink_Factory
	__size_of_Maink_Factory	equ	__end_of_Maink_Factory-_Maink_Factory
	
_Maink_Factory:	
;incstack = 0
	opt	stack 3
; Regs used in _Maink_Factory: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	236
	
l13308:	
;key.c: 236: if(KeyData == 0x1000 && FactoryTestData != (14-1))
		movlw	16
	xorwf	((_KeyData+1)),w	;volatile
iorwf	((_KeyData)),w	;volatile
	btfss	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l13398
u4060:
	
l13310:	
		movlw	13
	xorwf	((_FactoryTestData)),w	;volatile
	btfsc	status,2
	goto	u4071
	goto	u4070
u4071:
	goto	l13398
u4070:
	line	238
	
l13312:	
;key.c: 237: {
;key.c: 238: Cancel();
	fcall	_Cancel
	line	239
	
l13314:	
;key.c: 239: b_JudgeLidOk = 0;
	bcf	(_b_JudgeLidOk/8),(_b_JudgeLidOk)&7	;volatile
	line	240
	
l13316:	
;key.c: 240: JudgeLidCnt = 0;
	clrf	(_JudgeLidCnt)^080h	;volatile
	line	241
	
l13318:	
;key.c: 241: JudgeLidMin = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_JudgeLidMin)	;volatile
	line	242
	
l13320:	
;key.c: 242: {{BuzCnt = 1; BuzUpTime = 75/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	
l13322:	
	movlw	low(025h)
	movwf	(_BuzUpTime)	;volatile
	
l13324:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l13326:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l13328:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l5834
	line	250
	
l13332:	
;key.c: 250: if(FactoryTestData == 0)
	movf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l13400
u4080:
	line	252
	
l13334:	
;key.c: 251: {
;key.c: 252: FactoryTestData = 1;
	movlw	low(01h)
	movwf	(_FactoryTestData)	;volatile
	line	253
;key.c: 253: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	258
	
l13336:	
;key.c: 258: if(FactoryTestData == 1)
		decf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4091
	goto	u4090
u4091:
	goto	l13400
u4090:
	line	260
	
l13338:	
;key.c: 259: {
;key.c: 260: FactoryTestData = 2;
	movlw	low(02h)
	movwf	(_FactoryTestData)	;volatile
	line	261
;key.c: 261: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	267
	
l13340:	
;key.c: 267: if(FactoryTestData == 2)
		movlw	2
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4101
	goto	u4100
u4101:
	goto	l13400
u4100:
	line	269
	
l13342:	
;key.c: 268: {
;key.c: 269: FactoryTestData = 3;
	movlw	low(03h)
	movwf	(_FactoryTestData)	;volatile
	line	270
;key.c: 270: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	276
	
l13344:	
;key.c: 276: if(FactoryTestData == 3)
		movlw	3
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l13400
u4110:
	line	278
	
l13346:	
;key.c: 277: {
;key.c: 278: FactoryTestData = 4;
	movlw	low(04h)
	movwf	(_FactoryTestData)	;volatile
	line	279
;key.c: 279: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	285
	
l13348:	
;key.c: 285: if(FactoryTestData == 4)
		movlw	4
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l13400
u4120:
	line	287
	
l13350:	
;key.c: 286: {
;key.c: 287: FactoryTestData = 5;
	movlw	low(05h)
	movwf	(_FactoryTestData)	;volatile
	line	288
;key.c: 288: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	294
	
l13352:	
;key.c: 294: if(FactoryTestData == 5)
		movlw	5
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l13400
u4130:
	line	296
	
l13354:	
;key.c: 295: {
;key.c: 296: FactoryTestData = 6;
	movlw	low(06h)
	movwf	(_FactoryTestData)	;volatile
	line	297
;key.c: 297: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	303
	
l13356:	
;key.c: 303: if(FactoryTestData == 6)
		movlw	6
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l13400
u4140:
	line	305
	
l13358:	
;key.c: 304: {
;key.c: 305: FactoryTestData = 7;
	movlw	low(07h)
	movwf	(_FactoryTestData)	;volatile
	line	306
;key.c: 306: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	312
	
l13360:	
;key.c: 312: if(FactoryTestData == 7)
		movlw	7
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l13400
u4150:
	line	314
	
l13362:	
;key.c: 313: {
;key.c: 314: FactoryTestData = 8;
	movlw	low(08h)
	movwf	(_FactoryTestData)	;volatile
	line	315
;key.c: 315: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	321
	
l13364:	
;key.c: 321: if(FactoryTestData == 8)
		movlw	8
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l13400
u4160:
	line	323
	
l13366:	
;key.c: 322: {
;key.c: 323: FactoryTestData = 9;
	movlw	low(09h)
	movwf	(_FactoryTestData)	;volatile
	line	324
;key.c: 324: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	330
	
l13368:	
;key.c: 330: if(FactoryTestData == 9)
		movlw	9
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l13400
u4170:
	line	332
	
l13370:	
;key.c: 331: {
;key.c: 332: FactoryTestData = 10;
	movlw	low(0Ah)
	movwf	(_FactoryTestData)	;volatile
	line	333
;key.c: 333: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	339
	
l13372:	
;key.c: 339: if(FactoryTestData == 10)
		movlw	10
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l13400
u4180:
	line	341
	
l13374:	
;key.c: 340: {
;key.c: 341: FactoryTestData = 11;
	movlw	low(0Bh)
	movwf	(_FactoryTestData)	;volatile
	line	342
;key.c: 342: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	348
	
l13376:	
;key.c: 348: if(FactoryTestData == 11)
		movlw	11
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l13400
u4190:
	line	350
	
l13378:	
;key.c: 349: {
;key.c: 350: FactoryTestData = 12;
	movlw	low(0Ch)
	movwf	(_FactoryTestData)	;volatile
	line	351
;key.c: 351: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	357
	
l13380:	
;key.c: 357: if(FactoryTestData == 12)
		movlw	12
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l13400
u4200:
	line	359
	
l13382:	
;key.c: 358: {
;key.c: 359: FactoryTestData = 13;
	movlw	low(0Dh)
	movwf	(_FactoryTestData)	;volatile
	line	360
;key.c: 360: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	366
	
l13384:	
;key.c: 366: if(FactoryTestData == 13)
		movlw	13
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l13400
u4210:
	line	368
	
l13386:	
;key.c: 367: {
;key.c: 368: FactoryTestData = 14;
	movlw	low(0Eh)
	movwf	(_FactoryTestData)	;volatile
	line	369
;key.c: 369: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	375
	
l13388:	
;key.c: 375: if(FactoryTestData == 14)
		movlw	14
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4221
	goto	u4220
u4221:
	goto	l13400
u4220:
	line	377
	
l13390:	
;key.c: 376: {
;key.c: 377: FactoryTestData = 15;
	movlw	low(0Fh)
	movwf	(_FactoryTestData)	;volatile
	line	378
;key.c: 378: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	384
	
l13392:	
;key.c: 384: if(FactoryTestData == 15)
		movlw	15
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4231
	goto	u4230
u4231:
	goto	l13400
u4230:
	line	386
	
l13394:	
;key.c: 385: {
;key.c: 386: FactoryTestData = 16;
	movlw	low(010h)
	movwf	(_FactoryTestData)	;volatile
	line	387
;key.c: 387: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l13400
	line	247
	
l13398:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 9 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 0 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData+1),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l17518
	xorlw	1^0	; case 1
	skipnz
	goto	l17520
	xorlw	2^1	; case 2
	skipnz
	goto	l17522
	xorlw	4^2	; case 4
	skipnz
	goto	l17524
	xorlw	8^4	; case 8
	skipnz
	goto	l17526
	xorlw	16^8	; case 16
	skipnz
	goto	l17528
	xorlw	32^16	; case 32
	skipnz
	goto	l17530
	xorlw	64^32	; case 64
	skipnz
	goto	l17532
	xorlw	128^64	; case 128
	skipnz
	goto	l17534
	goto	l13400
	opt asmopt_pop
	
l17518:	
; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l13336
	xorlw	2^1	; case 2
	skipnz
	goto	l13344
	xorlw	4^2	; case 4
	skipnz
	goto	l13340
	xorlw	8^4	; case 8
	skipnz
	goto	l13332
	xorlw	16^8	; case 16
	skipnz
	goto	l13352
	xorlw	32^16	; case 32
	skipnz
	goto	l13360
	xorlw	64^32	; case 64
	skipnz
	goto	l13356
	xorlw	128^64	; case 128
	skipnz
	goto	l13348
	goto	l13400
	opt asmopt_pop
	
l17520:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l13368
	goto	l13400
	opt asmopt_pop
	
l17522:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l13376
	goto	l13400
	opt asmopt_pop
	
l17524:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l13372
	goto	l13400
	opt asmopt_pop
	
l17526:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l13364
	goto	l13400
	opt asmopt_pop
	
l17528:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l13384
	goto	l13400
	opt asmopt_pop
	
l17530:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l13392
	goto	l13400
	opt asmopt_pop
	
l17532:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l13380
	goto	l13400
	opt asmopt_pop
	
l17534:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (_KeyData),w	;volatile
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l13388
	goto	l13400
	opt asmopt_pop

	line	421
	
l13400:	
;key.c: 421: if(FactoryTestData == 16)
		movlw	16
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l5834
u4240:
	line	423
	
l13402:	
;key.c: 422: {
;key.c: 423: FactoryTestData = 19;
	movlw	low(013h)
	movwf	(_FactoryTestData)	;volatile
	line	424
	
l13404:	
;key.c: 424: WorkStep = 0;
	clrf	(_WorkStep)	;volatile
	line	425
	
l13406:	
;key.c: 425: {{BuzCnt = 3; BuzUpTime = 50/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(03h)
	movwf	(_BuzCnt)	;volatile
	
l13408:	
	movlw	low(019h)
	movwf	(_BuzUpTime)	;volatile
	goto	l13324
	line	427
	
l5834:	
	return
	opt stack 0
GLOBAL	__end_of_Maink_Factory
	__end_of_Maink_Factory:
	signat	_Maink_Factory,89
	global	_Maink_Cancel

;; *************** function _Maink_Cancel *****************
;; Defined at:
;;		line 29 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Cancel
;; This function is called by:
;;		_Key_Task
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	line	29
global __ptext36
__ptext36:	;psect for function _Maink_Cancel
psect	text36
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	29
	global	__size_of_Maink_Cancel
	__size_of_Maink_Cancel	equ	__end_of_Maink_Cancel-_Maink_Cancel
	
_Maink_Cancel:	
;incstack = 0
	opt	stack 3
; Regs used in _Maink_Cancel: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l13142:	
;key.c: 32: if(SysStatus == 1)
		decf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l13158
u3760:
	line	34
	
l13144:	
;key.c: 33: {
;key.c: 34: SysStatus = 4;
	movlw	low(04h)
	movwf	(_SysStatus)	;volatile
	line	35
	
l13146:	
;key.c: 35: ChooseFunSave = 0;
	clrf	(_ChooseFunSave)	;volatile
	line	36
	
l13148:	
;key.c: 36: {{BuzCnt = 1; BuzUpTime = 75/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_BuzCnt)	;volatile
	
l13150:	
	movlw	low(025h)
	movwf	(_BuzUpTime)	;volatile
	
l13152:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l13154:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l13156:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	37
;key.c: 37: }
	goto	l5792
	line	39
	
l13158:	
;key.c: 39: else if(SysStatus == 2 || SysStatus == 3 || SysStatus == 4)
		movlw	2
	xorwf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u3771
	goto	u3770
u3771:
	goto	l13164
u3770:
	
l13160:	
		movlw	3
	xorwf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l13164
u3780:
	
l13162:	
		movlw	4
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l5792
u3790:
	line	41
	
l13164:	
;key.c: 40: {
;key.c: 41: Cancel();
	fcall	_Cancel
	line	42
	
l13166:	
;key.c: 42: b_AutoKeepWarm = 0;
	bcf	(_b_AutoKeepWarm/8),(_b_AutoKeepWarm)&7	;volatile
	goto	l13148
	line	46
	
l5792:	
	return
	opt stack 0
GLOBAL	__end_of_Maink_Cancel
	__end_of_Maink_Cancel:
	signat	_Maink_Cancel,89
	global	_MainK_Preset

;; *************** function _MainK_Preset *****************
;; Defined at:
;;		line 96 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Task
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	line	96
global __ptext37
__ptext37:	;psect for function _MainK_Preset
psect	text37
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	96
	global	__size_of_MainK_Preset
	__size_of_MainK_Preset	equ	__end_of_MainK_Preset-_MainK_Preset
	
_MainK_Preset:	
;incstack = 0
	opt	stack 4
; Regs used in _MainK_Preset: [wreg+status,2+status,0]
	line	98
	
l13178:	
;key.c: 98: if(SysStatus == 2)
		movlw	2
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l5799
u3800:
	line	100
	
l13180:	
;key.c: 99: {
;key.c: 100: if(ChooseFun == 12 || ChooseFun == 14)
		movlw	12
	xorwf	((_ChooseFun)),w	;volatile
	btfsc	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l5799
u3810:
	
l13182:	
		movlw	14
	xorwf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l13184
u3820:
	goto	l5799
	
l5798:	
	line	102
;key.c: 101: {
;key.c: 102: return;
	goto	l5799
	line	105
	
l13184:	
;key.c: 103: }
;key.c: 105: if(PresetState == 1)
		decf	((_PresetState)),w	;volatile
	btfss	status,2
	goto	u3831
	goto	u3830
u3831:
	goto	l13208
u3830:
	line	107
	
l13186:	
;key.c: 106: {
;key.c: 107: PresetState = 2;
	movlw	low(02h)
	movwf	(_PresetState)	;volatile
	line	109
	
l13188:	
;key.c: 109: if(PresetTimeH == 0 && PresetTimeM == 0)
	movf	((_PresetTimeH)),w	;volatile
	btfss	status,2
	goto	u3841
	goto	u3840
u3841:
	goto	l13194
u3840:
	
l13190:	
	movf	((_PresetTimeM)),w	;volatile
	btfss	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l13194
u3850:
	line	111
	
l13192:	
;key.c: 110: {
;key.c: 111: PresetTimeH = 2;
	movlw	low(02h)
	movwf	(_PresetTimeH)	;volatile
	line	115
	
l13194:	
;key.c: 112: }
;key.c: 115: LedCol_500ms = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_LedCol_500ms)^080h	;volatile
	line	116
	
l13196:	
;key.c: 116: b_LedCol = 1;
	bsf	(_b_LedCol/8),(_b_LedCol)&7	;volatile
	line	118
	
l13198:	
;key.c: 118: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_BuzCnt)	;volatile
	
l13200:	
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	
l13202:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l13204:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l13206:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	119
;key.c: 119: }
	goto	l5799
	line	121
	
l13208:	
;key.c: 121: else if(PresetState == 2)
		movlw	2
	xorwf	((_PresetState)),w	;volatile
	btfss	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l5799
u3860:
	line	124
	
l13210:	
;key.c: 122: {
;key.c: 124: if((KeyFlag & 0x04) == 0)
	btfsc	(_KeyFlag),(2)&7	;volatile
	goto	u3871
	goto	u3870
u3871:
	goto	l13216
u3870:
	line	126
	
l13212:	
;key.c: 125: {
;key.c: 126: {{BuzCnt = 1; BuzUpTime = 25/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(0Ch)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	127
	
l13214:	
;key.c: 127: PresetTimeM += 30;
	movlw	low(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	addwf	(_PresetTimeM),f	;volatile
	line	129
;key.c: 129: }
	goto	l13222
	line	132
	
l13216:	
;key.c: 130: else
;key.c: 131: {
;key.c: 132: if(++LongKeyCount >= 40)
	movlw	low(028h)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_LongKeyCount)^080h,f	;volatile
	subwf	((_LongKeyCount)^080h),w	;volatile
	skipc
	goto	u3881
	goto	u3880
u3881:
	goto	l5799
u3880:
	line	134
	
l13218:	
;key.c: 133: {
;key.c: 134: LongKeyCount = 0;
	clrf	(_LongKeyCount)^080h	;volatile
	goto	l13214
	line	142
	
l13222:	
;key.c: 140: }
;key.c: 141: }
;key.c: 142: if(PresetTimeM >= 60)
	movlw	low(03Ch)
	subwf	(_PresetTimeM),w	;volatile
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l13228
u3890:
	line	144
	
l13224:	
;key.c: 143: {
;key.c: 144: PresetTimeM = 0;
	clrf	(_PresetTimeM)	;volatile
	line	145
	
l13226:	
;key.c: 145: PresetTimeH++;
	incf	(_PresetTimeH),f	;volatile
	line	148
	
l13228:	
;key.c: 146: }
;key.c: 148: if(PresetTimeH >= 24 && PresetTimeM > 0)
	movlw	low(018h)
	subwf	(_PresetTimeH),w	;volatile
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l5798
u3900:
	
l13230:	
	movf	((_PresetTimeM)),w	;volatile
	btfsc	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l5798
u3910:
	line	150
	
l13232:	
;key.c: 149: {
;key.c: 150: PresetTimeH = 2;
	movlw	low(02h)
	movwf	(_PresetTimeH)	;volatile
	line	151
	
l13234:	
;key.c: 151: PresetTimeM = 0;
	clrf	(_PresetTimeM)	;volatile
	line	155
	
l5799:	
	return
	opt stack 0
GLOBAL	__end_of_MainK_Preset
	__end_of_MainK_Preset:
	signat	_MainK_Preset,89
	global	_Key_Drive

;; *************** function _Key_Drive *****************
;; Defined at:
;;		line 661 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KscanIo
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	line	661
global __ptext38
__ptext38:	;psect for function _Key_Drive
psect	text38
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	661
	global	__size_of_Key_Drive
	__size_of_Key_Drive	equ	__end_of_Key_Drive-_Key_Drive
	
_Key_Drive:	
;incstack = 0
	opt	stack 4
; Regs used in _Key_Drive: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	667
	
l14522:	
;key.c: 663: static unsigned char keycount,nkeycount;
;key.c: 664: static unsigned int keyold;
;key.c: 665: static unsigned int keylong;
;key.c: 667: KeyData = 0;
	clrf	(_KeyData)	;volatile
	clrf	(_KeyData+1)	;volatile
	line	668
	
l14524:	
;key.c: 668: KscanIo();
	fcall	_KscanIo
	line	670
	
l14526:	
;key.c: 670: if(KeyData != 0)
	movf	((_KeyData)),w	;volatile
iorwf	((_KeyData+1)),w	;volatile
	btfsc	status,2
	goto	u6161
	goto	u6160
u6161:
	goto	l14550
u6160:
	line	672
	
l14528:	
;key.c: 671: {
;key.c: 672: nkeycount = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Key_Drive@nkeycount)^080h
	line	673
	
l14530:	
;key.c: 673: if(KeyData == keyold)
	movf	(Key_Drive@keyold+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_KeyData+1),w	;volatile
	skipz
	goto	u6175
	bsf	status, 5	;RP0=1, select bank1
	movf	(Key_Drive@keyold)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_KeyData),w	;volatile
u6175:

	skipz
	goto	u6171
	goto	u6170
u6171:
	goto	l14546
u6170:
	line	675
	
l14532:	
;key.c: 674: {
;key.c: 675: if(KeyFlag & 0x02)
	btfss	(_KeyFlag),(1)&7	;volatile
	goto	u6181
	goto	u6180
u6181:
	goto	l14542
u6180:
	line	677
	
l14534:	
;key.c: 676: {
;key.c: 677: if(++keylong >= 125)
	bsf	status, 5	;RP0=1, select bank1
	incf	(Key_Drive@keylong)^080h,f
	skipnz
	incf	(Key_Drive@keylong+1)^080h,f
	movlw	0
	subwf	((Key_Drive@keylong+1)^080h),w
	movlw	07Dh
	skipnz
	subwf	((Key_Drive@keylong)^080h),w
	skipc
	goto	u6191
	goto	u6190
u6191:
	goto	l5942
u6190:
	line	679
	
l14536:	
;key.c: 678: {
;key.c: 679: keylong = 0;
	clrf	(Key_Drive@keylong)^080h
	clrf	(Key_Drive@keylong+1)^080h
	line	680
	
l14538:	
;key.c: 680: KeyFlag|=(1<<(0));
	bcf	status, 5	;RP0=0, select bank0
	bsf	(_KeyFlag)+(0/8),(0)&7	;volatile
	line	681
	
l14540:	
;key.c: 681: KeyFlag|=(1<<(2));
	bsf	(_KeyFlag)+(2/8),(2)&7	;volatile
	goto	l5945
	line	684
	
l14542:	
;key.c: 684: else if(++keycount >= 5)
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	incf	(Key_Drive@keycount)^080h,f
	subwf	((Key_Drive@keycount)^080h),w
	skipc
	goto	u6201
	goto	u6200
u6201:
	goto	l5942
u6200:
	line	686
	
l14544:	
;key.c: 685: {
;key.c: 686: KeyFlag|=(1<<(0));
	bcf	status, 5	;RP0=0, select bank0
	bsf	(_KeyFlag)+(0/8),(0)&7	;volatile
	line	687
;key.c: 687: KeyFlag|=(1<<(1));
	bsf	(_KeyFlag)+(1/8),(1)&7	;volatile
	goto	l5945
	line	692
	
l14546:	
;key.c: 690: else
;key.c: 691: {
;key.c: 692: keyold = KeyData;
	movf	(_KeyData+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(Key_Drive@keyold+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_KeyData),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(Key_Drive@keyold)^080h
	line	693
	
l14548:	
;key.c: 693: keycount = 0;
	clrf	(Key_Drive@keycount)^080h
	goto	l5945
	line	694
	
l5942:	
	line	695
;key.c: 694: }
;key.c: 695: }
	goto	l5945
	line	698
	
l14550:	
;key.c: 696: else
;key.c: 697: {
;key.c: 698: keycount = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Key_Drive@keycount)^080h
	line	699
;key.c: 699: keylong = 0;
	clrf	(Key_Drive@keylong)^080h
	clrf	(Key_Drive@keylong+1)^080h
	line	700
	
l14552:	
;key.c: 700: if(++nkeycount >= 5)
	movlw	low(05h)
	incf	(Key_Drive@nkeycount)^080h,f
	subwf	((Key_Drive@nkeycount)^080h),w
	skipc
	goto	u6211
	goto	u6210
u6211:
	goto	l5945
u6210:
	line	703
	
l14554:	
;key.c: 701: {
;key.c: 703: KeyFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_KeyFlag)	;volatile
	line	704
;key.c: 704: KeyData = 0;
	clrf	(_KeyData)	;volatile
	clrf	(_KeyData+1)	;volatile
	line	705
;key.c: 705: keyold = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Key_Drive@keyold)^080h
	clrf	(Key_Drive@keyold+1)^080h
	line	708
	
l5945:	
	return
	opt stack 0
GLOBAL	__end_of_Key_Drive
	__end_of_Key_Drive:
	signat	_Key_Drive,89
	global	_KscanIo

;; *************** function _KscanIo *****************
;; Defined at:
;;		line 599 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Drive
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	line	599
global __ptext39
__ptext39:	;psect for function _KscanIo
psect	text39
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	599
	global	__size_of_KscanIo
	__size_of_KscanIo	equ	__end_of_KscanIo-_KscanIo
	
_KscanIo:	
;incstack = 0
	opt	stack 4
; Regs used in _KscanIo: [wreg-fsr0h+status,2+status,0]
	line	601
	
l13452:	
	line	604
	
l13454:	
;key.c: 604: {TRISB|=(1<<(1)); WPUB|=(1<<(1));};
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(1/8),(1)&7	;volatile
	
l13456:	
	bsf	(149)^080h+(1/8),(1)&7	;volatile
	line	605
	
l13458:	
;key.c: 605: {TRISD|=(1<<(4)); WPUD|=(1<<(4));};
	bsf	(136)^080h+(4/8),(4)&7	;volatile
	
l13460:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(389)^0180h+(4/8),(4)&7	;volatile
	line	606
	
l13462:	
;key.c: 606: {TRISB|=(1<<(2)); WPUB|=(1<<(2));};
	bcf	status, 6	;RP1=0, select bank1
	bsf	(134)^080h+(2/8),(2)&7	;volatile
	
l13464:	
	bsf	(149)^080h+(2/8),(2)&7	;volatile
	line	607
	
l13466:	
;key.c: 607: {TRISB|=(1<<(5)); WPUB|=(1<<(5));};
	bsf	(134)^080h+(5/8),(5)&7	;volatile
	
l13468:	
	bsf	(149)^080h+(5/8),(5)&7	;volatile
	line	609
	
l13470:	
;key.c: 609: TRISB|=(1<<(3));
	bsf	(134)^080h+(3/8),(3)&7	;volatile
	line	610
	
l13472:	
;key.c: 610: TRISB|=(1<<(4));
	bsf	(134)^080h+(4/8),(4)&7	;volatile
	line	611
	
l13474:	
;key.c: 611: TRISB|=(1<<(6));
	bsf	(134)^080h+(6/8),(6)&7	;volatile
	line	612
	
l13476:	
;key.c: 612: TRISB|=(1<<(7));
	bsf	(134)^080h+(7/8),(7)&7	;volatile
	line	614
	
l13478:	
;key.c: 614: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	615
	
l13480:	
;key.c: 615: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	616
	
l13482:	
;key.c: 616: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	617
	
l13484:	
;key.c: 617: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	618
	
l13486:	
;key.c: 618: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	621
;key.c: 621: for(i = 0; i < 4; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(KscanIo@i)
	goto	l13494
	line	625
;key.c: 624: {
;key.c: 625: case 0:
	
l5915:	
	line	626
;key.c: 626: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	627
;key.c: 627: TRISB&=~(1<<(3));
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(3/8),(3)&7	;volatile
	line	628
;key.c: 628: break;
	goto	l5916
	line	629
;key.c: 629: case 1:
	
l5917:	
	line	630
;key.c: 630: TRISB|=(1<<(3));
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(3/8),(3)&7	;volatile
	line	631
;key.c: 631: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	632
;key.c: 632: TRISB&=~(1<<(4));
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(4/8),(4)&7	;volatile
	line	633
;key.c: 633: break;
	goto	l5916
	line	634
;key.c: 634: case 2:
	
l5918:	
	line	635
;key.c: 635: TRISB|=(1<<(4));
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(4/8),(4)&7	;volatile
	line	636
;key.c: 636: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	line	637
;key.c: 637: TRISB&=~(1<<(6));
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(6/8),(6)&7	;volatile
	line	638
;key.c: 638: break;
	goto	l5916
	line	639
;key.c: 639: case 3:
	
l5919:	
	line	640
;key.c: 640: TRISB|=(1<<(6));
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(6/8),(6)&7	;volatile
	line	641
;key.c: 641: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	642
;key.c: 642: TRISB&=~(1<<(7));
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(7/8),(7)&7	;volatile
	line	643
;key.c: 643: break;
	goto	l5916
	line	623
	
l13494:	
	movf	(KscanIo@i),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           20     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l5915
	xorlw	1^0	; case 1
	skipnz
	goto	l5917
	xorlw	2^1	; case 2
	skipnz
	goto	l5918
	xorlw	3^2	; case 3
	skipnz
	goto	l5919
	goto	l5916
	opt asmopt_pop

	line	645
	
l5916:	
	line	647
;key.c: 647: if(!RB1)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(49/8),(49)&7	;volatile
	goto	u4251
	goto	u4250
u4251:
	goto	l13498
u4250:
	line	648
	
l13496:	
;key.c: 648: KeyData|=(1<<(0+i*4));
	movf	(KscanIo@i),w
	movwf	(??_KscanIo+0)+0
	movlw	(02h)-1
u4265:
	clrc
	rlf	(??_KscanIo+0)+0,f
	addlw	-1
	skipz
	goto	u4265
	clrc
	rlf	(??_KscanIo+0)+0,w
	movwf	(??_KscanIo+1)+0
	incf	(??_KscanIo+1)+0,f
	movlw	01h
	movwf	(??_KscanIo+2)+0
	movlw	0
	movwf	(??_KscanIo+2)+0+1
	goto	u4274
u4275:
	clrc
	rlf	(??_KscanIo+2)+0,f
	rlf	(??_KscanIo+2)+1,f
u4274:
	decfsz	(??_KscanIo+1)+0,f
	goto	u4275
	
	movf	0+(??_KscanIo+2)+0,w
	iorwf	(_KeyData),f	;volatile
	movf	1+(??_KscanIo+2)+0,w
	iorwf	(_KeyData+1),f	;volatile
	line	649
	
l13498:	
;key.c: 649: if(!RD4)
	btfsc	(68/8),(68)&7	;volatile
	goto	u4281
	goto	u4280
u4281:
	goto	l13502
u4280:
	line	650
	
l13500:	
;key.c: 650: KeyData|=(1<<(1+i*4));
	movf	(KscanIo@i),w
	movwf	(??_KscanIo+0)+0
	movlw	(02h)-1
u4295:
	clrc
	rlf	(??_KscanIo+0)+0,f
	addlw	-1
	skipz
	goto	u4295
	clrc
	rlf	(??_KscanIo+0)+0,w
	addlw	01h
	movwf	(??_KscanIo+1)+0
	incf	(??_KscanIo+1)+0,f
	movlw	01h
	movwf	(??_KscanIo+2)+0
	movlw	0
	movwf	(??_KscanIo+2)+0+1
	goto	u4304
u4305:
	clrc
	rlf	(??_KscanIo+2)+0,f
	rlf	(??_KscanIo+2)+1,f
u4304:
	decfsz	(??_KscanIo+1)+0,f
	goto	u4305
	
	movf	0+(??_KscanIo+2)+0,w
	iorwf	(_KeyData),f	;volatile
	movf	1+(??_KscanIo+2)+0,w
	iorwf	(_KeyData+1),f	;volatile
	line	651
	
l13502:	
;key.c: 651: if(!RB2)
	btfsc	(50/8),(50)&7	;volatile
	goto	u4311
	goto	u4310
u4311:
	goto	l13506
u4310:
	line	652
	
l13504:	
;key.c: 652: KeyData|=(1<<(2+i*4));
	movf	(KscanIo@i),w
	movwf	(??_KscanIo+0)+0
	movlw	(02h)-1
u4325:
	clrc
	rlf	(??_KscanIo+0)+0,f
	addlw	-1
	skipz
	goto	u4325
	clrc
	rlf	(??_KscanIo+0)+0,w
	addlw	02h
	movwf	(??_KscanIo+1)+0
	incf	(??_KscanIo+1)+0,f
	movlw	01h
	movwf	(??_KscanIo+2)+0
	movlw	0
	movwf	(??_KscanIo+2)+0+1
	goto	u4334
u4335:
	clrc
	rlf	(??_KscanIo+2)+0,f
	rlf	(??_KscanIo+2)+1,f
u4334:
	decfsz	(??_KscanIo+1)+0,f
	goto	u4335
	
	movf	0+(??_KscanIo+2)+0,w
	iorwf	(_KeyData),f	;volatile
	movf	1+(??_KscanIo+2)+0,w
	iorwf	(_KeyData+1),f	;volatile
	line	653
	
l13506:	
;key.c: 653: if(!RB5)
	btfsc	(53/8),(53)&7	;volatile
	goto	u4341
	goto	u4340
u4341:
	goto	l13510
u4340:
	line	654
	
l13508:	
;key.c: 654: KeyData|=(1<<(3+i*4));
	movf	(KscanIo@i),w
	movwf	(??_KscanIo+0)+0
	movlw	(02h)-1
u4355:
	clrc
	rlf	(??_KscanIo+0)+0,f
	addlw	-1
	skipz
	goto	u4355
	clrc
	rlf	(??_KscanIo+0)+0,w
	addlw	03h
	movwf	(??_KscanIo+1)+0
	incf	(??_KscanIo+1)+0,f
	movlw	01h
	movwf	(??_KscanIo+2)+0
	movlw	0
	movwf	(??_KscanIo+2)+0+1
	goto	u4364
u4365:
	clrc
	rlf	(??_KscanIo+2)+0,f
	rlf	(??_KscanIo+2)+1,f
u4364:
	decfsz	(??_KscanIo+1)+0,f
	goto	u4365
	
	movf	0+(??_KscanIo+2)+0,w
	iorwf	(_KeyData),f	;volatile
	movf	1+(??_KscanIo+2)+0,w
	iorwf	(_KeyData+1),f	;volatile
	line	621
	
l13510:	
	incf	(KscanIo@i),f
	movlw	low(04h)
	subwf	(KscanIo@i),w
	skipc
	goto	u4371
	goto	u4370
u4371:
	goto	l13494
u4370:
	line	656
	
l5925:	
	return
	opt stack 0
GLOBAL	__end_of_KscanIo
	__end_of_KscanIo:
	signat	_KscanIo,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 110 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayXms
;;		_Init_GPIO
;;		_Init_LED_Module
;;		_Init_PWM
;;		_Init_TMR1
;;		_Init_Var
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	110
global __ptext40
__ptext40:	;psect for function _Init_System
psect	text40
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	110
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2+status,0+pclath+cstack]
	line	113
	
l16144:	
# 113 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
nop ;# 
	line	114
# 114 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
clrwdt ;# 
psect	text40
	line	115
	
l16146:	
;main.c: 115: INTCON = 0;
	clrf	(11)	;volatile
	line	116
	
l16148:	
;main.c: 116: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	117
	
l16150:	
;main.c: 117: OPTION_REG = 0x03;
	movlw	low(03h)
	movwf	(129)^080h	;volatile
	line	120
	
l16152:	
;main.c: 120: Init_GPIO();
	fcall	_Init_GPIO
	line	121
	
l16154:	
;main.c: 121: Init_TMR1();
	fcall	_Init_TMR1
	line	122
	
l16156:	
;main.c: 122: Init_PWM();
	fcall	_Init_PWM
	line	123
	
l16158:	
;main.c: 123: Init_LED_Module();
	fcall	_Init_LED_Module
	line	124
	
l16160:	
;main.c: 124: Init_Var();
	fcall	_Init_Var
	line	127
	
l16162:	
;main.c: 127: DelayXms(300);
	movlw	02Ch
	movwf	(DelayXms@x)
	movlw	01h
	movwf	((DelayXms@x))+1
	fcall	_DelayXms
	line	134
	
l16164:	
;main.c: 134: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	136
	
l16166:	
;main.c: 136: {{BuzCnt = 1; BuzUpTime = 250/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	
l16168:	
	movlw	low(07Dh)
	movwf	(_BuzUpTime)	;volatile
	
l16170:	
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	
l16172:	
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	
l16174:	
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	137
	
l6838:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Init_Var

;; *************** function _Init_Var *****************
;; Defined at:
;;		line 100 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/200
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_System
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=0
	line	100
global __ptext41
__ptext41:	;psect for function _Init_Var
psect	text41
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	100
	global	__size_of_Init_Var
	__size_of_Init_Var	equ	__end_of_Init_Var-_Init_Var
	
_Init_Var:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_Var: [wreg]
	line	103
	
l13538:	
;main.c: 103: SysStatus = 6;
	movlw	low(06h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_SysStatus)	;volatile
	line	104
;main.c: 104: AC_Vol_Rms = 220;
	movlw	0DCh
	movwf	(_AC_Vol_Rms)	;volatile
	clrf	(_AC_Vol_Rms+1)	;volatile
	line	105
;main.c: 105: Vrms_Level = 3;
	movlw	low(03h)
	movwf	(_Vrms_Level)	;volatile
	line	106
	
l6835:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Var
	__end_of_Init_Var:
	signat	_Init_Var,89
	global	_Init_TMR1

;; *************** function _Init_TMR1 *****************
;; Defined at:
;;		line 63 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_System
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=0
	line	63
global __ptext42
__ptext42:	;psect for function _Init_TMR1
psect	text42
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	63
	global	__size_of_Init_TMR1
	__size_of_Init_TMR1	equ	__end_of_Init_TMR1-_Init_TMR1
	
_Init_TMR1:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_TMR1: [wreg]
	line	65
	
l15678:	
;main.c: 65: TMR1L = 0x30;
	movlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(14)	;volatile
	line	66
;main.c: 66: TMR1H = 0xF8;
	movlw	low(0F8h)
	movwf	(15)	;volatile
	line	67
	
l15680:	
;main.c: 67: TMR1IF = 0;
	bcf	(96/8),(96)&7	;volatile
	line	68
	
l15682:	
;main.c: 68: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1120/8)^080h,(1120)&7	;volatile
	line	69
;main.c: 69: T1CON = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(16)	;volatile
	line	70
	
l6829:	
	return
	opt stack 0
GLOBAL	__end_of_Init_TMR1
	__end_of_Init_TMR1:
	signat	_Init_TMR1,89
	global	_Init_PWM

;; *************** function _Init_PWM *****************
;; Defined at:
;;		line 44 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_System
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=0
	line	44
global __ptext43
__ptext43:	;psect for function _Init_PWM
psect	text43
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	44
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_PWM: [wreg]
	line	46
	
l15668:	
;main.c: 46: PR2 = 124;
	movlw	low(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	47
;main.c: 47: CCPR0L = 0x3E;
	movlw	low(03Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(27)	;volatile
	line	48
;main.c: 48: PWMCON = 0b00100000;
	movlw	low(020h)
	movwf	(29)	;volatile
	line	49
	
l15670:	
;main.c: 49: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	50
	
l15672:	
;main.c: 50: T2CKPS0 = 1;
	bsf	(144/8),(144)&7	;volatile
	line	51
	
l15674:	
;main.c: 51: T2CKPS1 = 0;
	bcf	(145/8),(145)&7	;volatile
	line	52
	
l15676:	
;main.c: 52: TMR2ON = 1;
	bsf	(146/8),(146)&7	;volatile
	line	53
	
l6826:	
	return
	opt stack 0
GLOBAL	__end_of_Init_PWM
	__end_of_Init_PWM:
	signat	_Init_PWM,89
	global	_Init_LED_Module

;; *************** function _Init_LED_Module *****************
;; Defined at:
;;		line 817 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_System
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	817
global __ptext44
__ptext44:	;psect for function _Init_LED_Module
psect	text44
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\display.c"
	line	817
	global	__size_of_Init_LED_Module
	__size_of_Init_LED_Module	equ	__end_of_Init_LED_Module-_Init_LED_Module
	
_Init_LED_Module:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_LED_Module: [wreg+status,2]
	line	820
	
l15620:	
;display.c: 820: LCDCON0 = 0B00000000;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(400)^0180h	;volatile
	line	821
	
l15622:	
;display.c: 821: LCDCON1 = 0B11111111;
	movlw	low(0FFh)
	movwf	(401)^0180h	;volatile
	line	822
	
l15624:	
;display.c: 822: SEGEN0 = 0B11111111;
	movlw	low(0FFh)
	movwf	(406)^0180h	;volatile
	line	823
;display.c: 823: SEGEN1 = 0B00000000;
	clrf	(405)^0180h	;volatile
	line	824
	
l15626:	
;display.c: 824: SEGEN2 = 0X70;
	movlw	low(070h)
	movwf	(404)^0180h	;volatile
	line	826
	
l15628:	
;display.c: 826: LEDADD = 0X10;
	movlw	low(010h)
	movwf	(402)^0180h	;volatile
	line	827
	
l15630:	
;display.c: 827: LCDCON = (0x40 | 0x02);
	movlw	low(042h)
	bcf	status, 5	;RP0=0, select bank2
	movwf	(276)^0100h	;volatile
	line	829
	
l4029:	
	return
	opt stack 0
GLOBAL	__end_of_Init_LED_Module
	__end_of_Init_LED_Module:
	signat	_Init_LED_Module,89
	global	_Init_GPIO

;; *************** function _Init_GPIO *****************
;; Defined at:
;;		line 72 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_System
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	72
global __ptext45
__ptext45:	;psect for function _Init_GPIO
psect	text45
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	72
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_GPIO: [wreg+status,2]
	line	76
	
l15684:	
;main.c: 76: WPUA = 0B00000000;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(398)^0180h	;volatile
	line	77
;main.c: 77: WPUB = 0B00000000;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	78
;main.c: 78: WPUC = 0B00000000;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(399)^0180h	;volatile
	line	79
;main.c: 79: WPUD = 0B00000000;
	clrf	(389)^0180h	;volatile
	line	83
;main.c: 83: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	84
;main.c: 84: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	85
;main.c: 85: PORTC = 0B00000000;
	clrf	(7)	;volatile
	line	86
;main.c: 86: PORTD = 0B00000000;
	clrf	(8)	;volatile
	line	92
	
l15686:	
;main.c: 92: TRISA = 0B11111111;
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	93
	
l15688:	
;main.c: 93: TRISB = 0B11111111;
	movlw	low(0FFh)
	movwf	(134)^080h	;volatile
	line	94
	
l15690:	
;main.c: 94: TRISC = 0B11111101;
	movlw	low(0FDh)
	movwf	(135)^080h	;volatile
	line	95
	
l15692:	
;main.c: 95: TRISD = 0B11111111;
	movlw	low(0FFh)
	movwf	(136)^080h	;volatile
	line	98
	
l6832:	
	return
	opt stack 0
GLOBAL	__end_of_Init_GPIO
	__end_of_Init_GPIO:
	signat	_Init_GPIO,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 10 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\delay.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init_System
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\delay.c"
	line	10
global __ptext46
__ptext46:	;psect for function _DelayXms
psect	text46
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\delay.c"
	line	10
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 4
; Regs used in _DelayXms: [wreg+status,2+status,0]
	line	12
	
l15364:	
;delay.c: 12: unsigned char i = 0;;
	clrf	(DelayXms@i)
	line	14
;delay.c: 14: while(x--)
	goto	l15366
	
l2924:	
	line	16
# 16 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\delay.c"
clrwdt ;# 
psect	text46
	line	17
;delay.c: 17: while(--i)
	goto	l2925
	
l2926:	
	line	19
# 19 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\delay.c"
nop ;# 
	line	20
# 20 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\delay.c"
nop ;# 
	line	21
# 21 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\delay.c"
nop ;# 
	line	22
# 22 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\delay.c"
nop ;# 
	line	23
# 23 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\delay.c"
nop ;# 
psect	text46
	line	24
	
l2925:	
	line	17
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(DelayXms@i),f
	goto	u6841
	goto	u6840
u6841:
	goto	l2926
u6840:
	line	14
	
l15366:	
	movlw	01h
	subwf	(DelayXms@x),f
	movlw	0
	skipc
	decf	(DelayXms@x+1),f
	subwf	(DelayXms@x+1),f
		incf	(((DelayXms@x))),w
	skipz
	goto	u6851
	incf	(((DelayXms@x+1))),w
	btfss	status,2
	goto	u6851
	goto	u6850
u6851:
	goto	l2924
u6850:
	line	26
	
l2929:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_Get_Temp_Data

;; *************** function _Get_Temp_Data *****************
;; Defined at:
;;		line 353 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	353
global __ptext47
__ptext47:	;psect for function _Get_Temp_Data
psect	text47
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	353
	global	__size_of_Get_Temp_Data
	__size_of_Get_Temp_Data	equ	__end_of_Get_Temp_Data-_Get_Temp_Data
	
_Get_Temp_Data:	
;incstack = 0
	opt	stack 5
; Regs used in _Get_Temp_Data: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	360
	
l15776:	
;adc.c: 355: static v_uint8 s_admax = 0x00;
;adc.c: 356: static v_uint8 s_admin = 0xFF;
;adc.c: 357: static v_uint16 s_adsum = 0;
;adc.c: 358: static v_uint8 s_adtimes = 0;
;adc.c: 360: s_adsum += Ad_Bot_Raw;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_Ad_Bot_Raw),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	addwf	(Get_Temp_Data@s_adsum)^080h,f	;volatile
	skipnc
	incf	(Get_Temp_Data@s_adsum+1)^080h,f	;volatile
	line	363
;adc.c: 363: if(Ad_Bot_Raw > s_admax)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_Ad_Bot_Raw),w	;volatile
	subwf	(Get_Temp_Data@s_admax),w	;volatile
	skipnc
	goto	u7701
	goto	u7700
u7701:
	goto	l948
u7700:
	line	365
	
l15778:	
;adc.c: 364: {
;adc.c: 365: s_admax = Ad_Bot_Raw;
	movf	(_Ad_Bot_Raw),w	;volatile
	movwf	(Get_Temp_Data@s_admax)	;volatile
	line	366
	
l948:	
	line	367
;adc.c: 366: }
;adc.c: 367: if(Ad_Bot_Raw < s_admin)
	movf	(Get_Temp_Data@s_admin),w	;volatile
	subwf	(_Ad_Bot_Raw),w	;volatile
	skipnc
	goto	u7711
	goto	u7710
u7711:
	goto	l15782
u7710:
	line	369
	
l15780:	
;adc.c: 368: {
;adc.c: 369: s_admin = Ad_Bot_Raw;
	movf	(_Ad_Bot_Raw),w	;volatile
	movwf	(Get_Temp_Data@s_admin)	;volatile
	line	373
	
l15782:	
;adc.c: 370: }
;adc.c: 373: if(++s_adtimes >= 18)
	movlw	low(012h)
	bsf	status, 5	;RP0=1, select bank1
	incf	(Get_Temp_Data@s_adtimes)^080h,f	;volatile
	subwf	((Get_Temp_Data@s_adtimes)^080h),w	;volatile
	skipc
	goto	u7721
	goto	u7720
u7721:
	goto	l15806
u7720:
	line	375
	
l15784:	
;adc.c: 374: {
;adc.c: 375: s_adsum -= s_admax;
	bcf	status, 5	;RP0=0, select bank0
	movf	(Get_Temp_Data@s_admax),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	subwf	(Get_Temp_Data@s_adsum)^080h,f	;volatile
	skipc
	decf	(Get_Temp_Data@s_adsum+1)^080h,f	;volatile
	line	376
;adc.c: 376: s_adsum -= s_admin;
	bcf	status, 5	;RP0=0, select bank0
	movf	(Get_Temp_Data@s_admin),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	subwf	(Get_Temp_Data@s_adsum)^080h,f	;volatile
	skipc
	decf	(Get_Temp_Data@s_adsum+1)^080h,f	;volatile
	line	378
	
l15786:	
;adc.c: 378: Ad_Bot = (v_uint8) (s_adsum>>4);
	movf	(Get_Temp_Data@s_adsum+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Get_Temp_Data+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(Get_Temp_Data@s_adsum)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Get_Temp_Data+0)+0
	movlw	04h
u7735:
	clrc
	rrf	(??_Get_Temp_Data+0)+1,f
	rrf	(??_Get_Temp_Data+0)+0,f
	addlw	-1
	skipz
	goto	u7735
	movf	0+(??_Get_Temp_Data+0)+0,w
	movwf	(_Ad_Bot)	;volatile
	line	380
	
l15788:	
;adc.c: 380: if(Ad_Bot > 245)
	movlw	low(0F6h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u7741
	goto	u7740
u7741:
	goto	l15792
u7740:
	line	382
	
l15790:	
;adc.c: 381: {
;adc.c: 382: Bot_Temp = 223;
	movlw	low(0DFh)
	movwf	(_Bot_Temp)	;volatile
	line	383
;adc.c: 383: }
	goto	l15798
	line	384
	
l15792:	
;adc.c: 384: else if(Ad_Bot < 8)
	movlw	low(08h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u7751
	goto	u7750
u7751:
	goto	l15796
u7750:
	line	386
	
l15794:	
;adc.c: 385: {
;adc.c: 386: Bot_Temp = 0;
	clrf	(_Bot_Temp)	;volatile
	line	387
;adc.c: 387: }
	goto	l15798
	line	390
	
l15796:	
;adc.c: 388: else
;adc.c: 389: {
;adc.c: 390: Bot_Temp = REF_TEMP_TAB[Ad_Bot];
	movf	(_Ad_Bot),w
	addlw	low(((_REF_TEMP_TAB)|8000h))
	movwf	fsr0
	movlw	high(((_REF_TEMP_TAB)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(_Bot_Temp)	;volatile
	line	393
	
l15798:	
;adc.c: 391: }
;adc.c: 393: s_adtimes = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Get_Temp_Data@s_adtimes)^080h	;volatile
	line	394
	
l15800:	
;adc.c: 394: s_admax = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(Get_Temp_Data@s_admax)	;volatile
	line	395
	
l15802:	
;adc.c: 395: s_admin = 0xFF;
	movlw	low(0FFh)
	movwf	(Get_Temp_Data@s_admin)	;volatile
	line	396
	
l15804:	
;adc.c: 396: s_adsum = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Get_Temp_Data@s_adsum)^080h	;volatile
	clrf	(Get_Temp_Data@s_adsum+1)^080h	;volatile
	line	399
	
l15806:	
;adc.c: 397: }
;adc.c: 399: b_AdBot_OK = 0;
	bcf	(_b_AdBot_OK/8),(_b_AdBot_OK)&7	;volatile
	line	401
	
l955:	
	return
	opt stack 0
GLOBAL	__end_of_Get_Temp_Data
	__end_of_Get_Temp_Data:
	signat	_Get_Temp_Data,89
	global	_Get_Lid_Data

;; *************** function _Get_Lid_Data *****************
;; Defined at:
;;		line 42 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1,group=0
	line	42
global __ptext48
__ptext48:	;psect for function _Get_Lid_Data
psect	text48
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	42
	global	__size_of_Get_Lid_Data
	__size_of_Get_Lid_Data	equ	__end_of_Get_Lid_Data-_Get_Lid_Data
	
_Get_Lid_Data:	
;incstack = 0
	opt	stack 5
; Regs used in _Get_Lid_Data: [wreg+status,2+status,0]
	line	47
	
l13820:	
;adc.c: 44: static v_uint8 s_lidcount = 0;
;adc.c: 47: if(b_LidClosed == 0)
	btfsc	(_b_LidClosed/8),(_b_LidClosed)&7	;volatile
	goto	u4911
	goto	u4910
u4911:
	goto	l857
u4910:
	line	49
	
l13822:	
;adc.c: 48: {
;adc.c: 49: if(RC0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(56/8),(56)&7	;volatile
	goto	u4921
	goto	u4920
u4921:
	goto	l13838
u4920:
	line	51
	
l13824:	
;adc.c: 50: {
;adc.c: 51: if(++s_lidcount >= 25)
	movlw	low(019h)
	incf	(Get_Lid_Data@s_lidcount),f	;volatile
	subwf	((Get_Lid_Data@s_lidcount)),w	;volatile
	skipc
	goto	u4931
	goto	u4930
u4931:
	goto	l867
u4930:
	line	53
	
l13826:	
;adc.c: 52: {
;adc.c: 53: s_lidcount = 0;
	clrf	(Get_Lid_Data@s_lidcount)	;volatile
	line	54
	
l13828:	
;adc.c: 54: b_LidClosed = 1;
	bsf	(_b_LidClosed/8),(_b_LidClosed)&7	;volatile
	line	56
	
l13830:	
;adc.c: 56: b_Standby = 0;
	bcf	(_b_Standby/8),(_b_Standby)&7	;volatile
	line	57
;adc.c: 57: StandbyTimeCnt = 0;
	clrf	(_StandbyTimeCnt)	;volatile
	line	58
	
l13832:	
;adc.c: 58: if(ErrorCode == 0 && SysStatus != 6)
	movf	((_ErrorCode)),w	;volatile
	btfss	status,2
	goto	u4941
	goto	u4940
u4941:
	goto	l861
u4940:
	
l13834:	
		movlw	6
	xorwf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u4951
	goto	u4950
u4951:
	goto	l861
u4950:
	line	60
	
l13836:	
;adc.c: 59: {
;adc.c: 60: {{BuzCnt = 1; BuzUpTime = 50/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(01h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(019h)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l867
	line	66
	
l13838:	
;adc.c: 64: else
;adc.c: 65: {
;adc.c: 66: s_lidcount = 0;
	clrf	(Get_Lid_Data@s_lidcount)	;volatile
	goto	l867
	line	67
	
l861:	
	line	68
;adc.c: 67: }
;adc.c: 68: }
	goto	l867
	line	69
	
l857:	
	line	71
;adc.c: 69: else
;adc.c: 70: {
;adc.c: 71: if(RC0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(56/8),(56)&7	;volatile
	goto	u4961
	goto	u4960
u4961:
	goto	l13838
u4960:
	line	73
	
l13840:	
;adc.c: 72: {
;adc.c: 73: if(++s_lidcount >= 25)
	movlw	low(019h)
	incf	(Get_Lid_Data@s_lidcount),f	;volatile
	subwf	((Get_Lid_Data@s_lidcount)),w	;volatile
	skipc
	goto	u4971
	goto	u4970
u4971:
	goto	l867
u4970:
	line	75
	
l13842:	
;adc.c: 74: {
;adc.c: 75: s_lidcount = 0;
	clrf	(Get_Lid_Data@s_lidcount)	;volatile
	line	76
	
l13844:	
;adc.c: 76: b_LidClosed = 0;
	bcf	(_b_LidClosed/8),(_b_LidClosed)&7	;volatile
	line	78
	
l13846:	
;adc.c: 78: b_Standby = 0;
	bcf	(_b_Standby/8),(_b_Standby)&7	;volatile
	line	79
;adc.c: 79: StandbyTimeCnt = 0;
	clrf	(_StandbyTimeCnt)	;volatile
	line	80
	
l13848:	
;adc.c: 80: if(ErrorCode == 0 && SysStatus != 6)
	movf	((_ErrorCode)),w	;volatile
	btfss	status,2
	goto	u4981
	goto	u4980
u4981:
	goto	l867
u4980:
	
l13850:	
		movlw	6
	xorwf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u4991
	goto	u4990
u4991:
	goto	l867
u4990:
	line	82
	
l13852:	
;adc.c: 81: {
;adc.c: 82: {{BuzCnt = 2; BuzUpTime = 15/2; BuzDownTime = 20/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(02h)
	movwf	(_BuzCnt)	;volatile
	movlw	low(07h)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(0Ah)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	line	91
	
l867:	
	return
	opt stack 0
GLOBAL	__end_of_Get_Lid_Data
	__end_of_Get_Lid_Data:
	signat	_Get_Lid_Data,89
	global	_Get_AC_Rms

;; *************** function _Get_AC_Rms *****************
;; Defined at:
;;		line 180 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1,group=0
	line	180
global __ptext49
__ptext49:	;psect for function _Get_AC_Rms
psect	text49
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	180
	global	__size_of_Get_AC_Rms
	__size_of_Get_AC_Rms	equ	__end_of_Get_AC_Rms-_Get_AC_Rms
	
_Get_AC_Rms:	
;incstack = 0
	opt	stack 4
; Regs used in _Get_AC_Rms: [wreg+status,2+status,0+pclath+cstack]
	line	187
	
l16900:	
;adc.c: 182: static v_uint8 s_maxvol = 0x00;
;adc.c: 183: static v_uint8 s_minvol = 0xFF;
;adc.c: 184: static v_uint16 s_sumvol = 0;
;adc.c: 185: static v_uint8 s_voltimes = 0;
;adc.c: 187: Ad_Vol_Raw = (v_uint8) (Ad_Vol_Sum/400);
	movlw	090h
	movwf	(___lwdiv@divisor)
	movlw	01h
	movwf	((___lwdiv@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(_Ad_Vol_Sum+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwdiv@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_Ad_Vol_Sum)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(_Ad_Vol_Raw)	;volatile
	line	188
	
l16902:	
;adc.c: 188: Ad_Vol_Sum = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_Ad_Vol_Sum)^080h	;volatile
	clrf	(_Ad_Vol_Sum+1)^080h	;volatile
	line	190
	
l16904:	
;adc.c: 190: s_sumvol += Ad_Vol_Raw;
	movf	(_Ad_Vol_Raw),w	;volatile
	addwf	(Get_AC_Rms@s_sumvol)^080h,f	;volatile
	skipnc
	incf	(Get_AC_Rms@s_sumvol+1)^080h,f	;volatile
	line	193
	
l16906:	
;adc.c: 193: if(Ad_Vol_Raw > s_maxvol)
	movf	(_Ad_Vol_Raw),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	subwf	(Get_AC_Rms@s_maxvol),w	;volatile
	skipnc
	goto	u8821
	goto	u8820
u8821:
	goto	l900
u8820:
	line	195
	
l16908:	
;adc.c: 194: {
;adc.c: 195: s_maxvol = Ad_Vol_Raw;
	movf	(_Ad_Vol_Raw),w	;volatile
	movwf	(Get_AC_Rms@s_maxvol)	;volatile
	line	196
	
l900:	
	line	197
;adc.c: 196: }
;adc.c: 197: if(Ad_Vol_Raw < s_minvol)
	movf	(Get_AC_Rms@s_minvol),w	;volatile
	subwf	(_Ad_Vol_Raw),w	;volatile
	skipnc
	goto	u8831
	goto	u8830
u8831:
	goto	l16912
u8830:
	line	199
	
l16910:	
;adc.c: 198: {
;adc.c: 199: s_minvol = Ad_Vol_Raw;
	movf	(_Ad_Vol_Raw),w	;volatile
	movwf	(Get_AC_Rms@s_minvol)	;volatile
	line	202
	
l16912:	
;adc.c: 200: }
;adc.c: 202: if(++s_voltimes >= 6)
	movlw	low(06h)
	incf	(Get_AC_Rms@s_voltimes),f	;volatile
	subwf	((Get_AC_Rms@s_voltimes)),w	;volatile
	skipc
	goto	u8841
	goto	u8840
u8841:
	goto	l16952
u8840:
	line	204
	
l16914:	
;adc.c: 203: {
;adc.c: 204: s_sumvol -= s_maxvol;
	movf	(Get_AC_Rms@s_maxvol),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	subwf	(Get_AC_Rms@s_sumvol)^080h,f	;volatile
	skipc
	decf	(Get_AC_Rms@s_sumvol+1)^080h,f	;volatile
	line	205
;adc.c: 205: s_sumvol -= s_minvol;
	bcf	status, 5	;RP0=0, select bank0
	movf	(Get_AC_Rms@s_minvol),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	subwf	(Get_AC_Rms@s_sumvol)^080h,f	;volatile
	skipc
	decf	(Get_AC_Rms@s_sumvol+1)^080h,f	;volatile
	line	207
	
l16916:	
;adc.c: 207: Ad_Vol_Avg = (v_uint8) (s_sumvol>>2);
	movf	(Get_AC_Rms@s_sumvol+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Get_AC_Rms+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(Get_AC_Rms@s_sumvol)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Get_AC_Rms+0)+0
	clrc
	rrf	(??_Get_AC_Rms+0)+1,f
	rrf	(??_Get_AC_Rms+0)+0,f
	clrc
	rrf	(??_Get_AC_Rms+0)+1,f
	rrf	(??_Get_AC_Rms+0)+0,f
	movf	0+(??_Get_AC_Rms+0)+0,w
	movwf	(_Ad_Vol_Avg)	;volatile
	line	209
	
l16918:	
;adc.c: 209: if(Ad_Vol_Avg > 66)
	movlw	low(043h)
	subwf	(_Ad_Vol_Avg),w	;volatile
	skipc
	goto	u8851
	goto	u8850
u8851:
	goto	l16922
u8850:
	line	211
	
l16920:	
;adc.c: 210: {
;adc.c: 211: AC_Vol_Rms = 265;
	movlw	09h
	movwf	(_AC_Vol_Rms)	;volatile
	movlw	01h
	movwf	((_AC_Vol_Rms))+1	;volatile
	line	212
;adc.c: 212: }
	goto	l16930
	line	213
	
l16922:	
;adc.c: 213: else if(Ad_Vol_Avg < 39)
	movlw	low(027h)
	subwf	(_Ad_Vol_Avg),w	;volatile
	skipnc
	goto	u8861
	goto	u8860
u8861:
	goto	l16926
u8860:
	line	215
	
l16924:	
;adc.c: 214: {
;adc.c: 215: AC_Vol_Rms = 155;
	movlw	09Bh
	movwf	(_AC_Vol_Rms)	;volatile
	clrf	(_AC_Vol_Rms+1)	;volatile
	line	216
;adc.c: 216: }
	goto	l16930
	line	219
	
l16926:	
;adc.c: 217: else
;adc.c: 218: {
;adc.c: 219: AC_Vol_Rms = Ad_Vol_Avg*4;
	movf	(_Ad_Vol_Avg),w	;volatile
	movwf	(_AC_Vol_Rms)	;volatile
	clrf	(_AC_Vol_Rms+1)	;volatile
	
l16928:	
	clrc
	rlf	(_AC_Vol_Rms),f	;volatile
	rlf	(_AC_Vol_Rms+1),f
	clrc	;volatile
	rlf	(_AC_Vol_Rms),f	;volatile
	rlf	(_AC_Vol_Rms+1),f	;volatile
	line	223
	
l16930:	
;adc.c: 220: }
;adc.c: 223: if(AC_Vol_Rms <= 190)
	movlw	0
	subwf	(_AC_Vol_Rms+1),w	;volatile
	movlw	0BFh
	skipnz
	subwf	(_AC_Vol_Rms),w	;volatile
	skipnc
	goto	u8871
	goto	u8870
u8871:
	goto	l16934
u8870:
	line	225
	
l16932:	
;adc.c: 224: {
;adc.c: 225: Vrms_Level = 1;
	movlw	low(01h)
	movwf	(_Vrms_Level)	;volatile
	line	226
;adc.c: 226: }
	goto	l16946
	line	227
	
l16934:	
;adc.c: 227: else if(AC_Vol_Rms <= 210)
	movlw	0
	subwf	(_AC_Vol_Rms+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_AC_Vol_Rms),w	;volatile
	skipnc
	goto	u8881
	goto	u8880
u8881:
	goto	l16938
u8880:
	line	229
	
l16936:	
;adc.c: 228: {
;adc.c: 229: Vrms_Level = 2;
	movlw	low(02h)
	movwf	(_Vrms_Level)	;volatile
	line	230
;adc.c: 230: }
	goto	l16946
	line	231
	
l16938:	
;adc.c: 231: else if(AC_Vol_Rms <= 235)
	movlw	0
	subwf	(_AC_Vol_Rms+1),w	;volatile
	movlw	0ECh
	skipnz
	subwf	(_AC_Vol_Rms),w	;volatile
	skipnc
	goto	u8891
	goto	u8890
u8891:
	goto	l16942
u8890:
	line	233
	
l16940:	
;adc.c: 232: {
;adc.c: 233: Vrms_Level = 3;
	movlw	low(03h)
	movwf	(_Vrms_Level)	;volatile
	line	234
;adc.c: 234: }
	goto	l16946
	line	235
	
l16942:	
;adc.c: 235: else if(AC_Vol_Rms <= 265)
	movlw	01h
	subwf	(_AC_Vol_Rms+1),w	;volatile
	movlw	0Ah
	skipnz
	subwf	(_AC_Vol_Rms),w	;volatile
	skipnc
	goto	u8901
	goto	u8900
u8901:
	goto	l910
u8900:
	line	237
	
l16944:	
;adc.c: 236: {
;adc.c: 237: Vrms_Level = 4;
	movlw	low(04h)
	movwf	(_Vrms_Level)	;volatile
	goto	l16946
	line	240
	
l910:	
	
l16946:	
;adc.c: 238: }
;adc.c: 240: s_voltimes = 0;
	clrf	(Get_AC_Rms@s_voltimes)	;volatile
	line	241
	
l16948:	
;adc.c: 241: s_maxvol = 0x00;
	clrf	(Get_AC_Rms@s_maxvol)	;volatile
	line	242
;adc.c: 242: s_minvol = 0xFF;
	movlw	low(0FFh)
	movwf	(Get_AC_Rms@s_minvol)	;volatile
	line	243
	
l16950:	
;adc.c: 243: s_sumvol = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Get_AC_Rms@s_sumvol)^080h	;volatile
	clrf	(Get_AC_Rms@s_sumvol+1)^080h	;volatile
	line	247
	
l16952:	
;adc.c: 245: }
;adc.c: 247: b_VolData_OK = 0;
	bcf	(_b_VolData_OK/8),(_b_VolData_OK)&7	;volatile
	line	249
	
l914:	
	return
	opt stack 0
GLOBAL	__end_of_Get_AC_Rms
	__end_of_Get_AC_Rms:
	signat	_Get_AC_Rms,89
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[BANK0 ] unsigned int 
;;  counter         1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Mode_Show
;;		_Get_AC_Rms
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lwdiv.c"
	line	6
global __ptext50
__ptext50:	;psect for function ___lwdiv
psect	text50
	file	"D:\PROGRA~2\CMS_ID~1.12\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l16694:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l16696:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u8371
	goto	u8370
u8371:
	goto	l16716
u8370:
	line	16
	
l16698:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l16702
	line	18
	
l16700:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l16702:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u8381
	goto	u8380
u8381:
	goto	l16700
u8380:
	line	22
	
l16704:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l16706:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u8395
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u8395:
	skipc
	goto	u8391
	goto	u8390
u8391:
	goto	l16712
u8390:
	line	24
	
l16708:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l16710:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l16712:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l16714:	
	decfsz	(___lwdiv@counter),f
	goto	u8401
	goto	u8400
u8401:
	goto	l16704
u8400:
	line	30
	
l16716:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l9983:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_Error_Deal

;; *************** function _Error_Deal *****************
;; Defined at:
;;		line 9 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\error.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\error.c"
	line	9
global __ptext51
__ptext51:	;psect for function _Error_Deal
psect	text51
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\error.c"
	line	9
	global	__size_of_Error_Deal
	__size_of_Error_Deal	equ	__end_of_Error_Deal-_Error_Deal
	
_Error_Deal:	
;incstack = 0
	opt	stack 5
; Regs used in _Error_Deal: [wreg+status,2+status,0]
	line	13
	
l14260:	
;error.c: 11: static v_uint16 E3_delaycount = 0;
;error.c: 13: if(SysStatus == 3 || SysStatus == 4 || (SysStatus == 5 && FactoryTestData >= 19))
		movlw	3
	xorwf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u5791
	goto	u5790
u5791:
	goto	l14268
u5790:
	
l14262:	
		movlw	4
	xorwf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u5801
	goto	u5800
u5801:
	goto	l14268
u5800:
	
l14264:	
		movlw	5
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u5811
	goto	u5810
u5811:
	goto	l14336
u5810:
	
l14266:	
	movlw	low(013h)
	subwf	(_FactoryTestData),w	;volatile
	skipc
	goto	u5821
	goto	u5820
u5821:
	goto	l14336
u5820:
	line	16
	
l14268:	
;error.c: 14: {
;error.c: 16: if(ErrorCode == 4)
		movlw	4
	xorwf	((_ErrorCode)),w	;volatile
	btfss	status,2
	goto	u5831
	goto	u5830
u5831:
	goto	l14272
u5830:
	goto	l4857
	line	22
	
l14272:	
;error.c: 19: }
;error.c: 22: if(Ad_Bot <= 94 && b_PressureOn == 1)
	movlw	low(05Fh)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u5841
	goto	u5840
u5841:
	goto	l14284
u5840:
	
l14274:	
	btfss	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u5851
	goto	u5850
u5851:
	goto	l14284
u5850:
	line	24
	
l14276:	
;error.c: 23: {
;error.c: 24: if(++E3_delaycount >= 1250)
	bsf	status, 5	;RP0=1, select bank1
	incf	(Error_Deal@E3_delaycount)^080h,f	;volatile
	skipnz
	incf	(Error_Deal@E3_delaycount+1)^080h,f	;volatile
	movlw	04h
	subwf	((Error_Deal@E3_delaycount+1)^080h),w	;volatile
	movlw	0E2h
	skipnz
	subwf	((Error_Deal@E3_delaycount)^080h),w	;volatile
	skipc
	goto	u5861
	goto	u5860
u5861:
	goto	l4857
u5860:
	line	26
	
l14278:	
;error.c: 25: {
;error.c: 26: E3_delaycount = 0;
	clrf	(Error_Deal@E3_delaycount)^080h	;volatile
	clrf	(Error_Deal@E3_delaycount+1)^080h	;volatile
	line	27
	
l14280:	
;error.c: 27: ErrorCode = 3;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_ErrorCode)	;volatile
	goto	l4857
	line	31
	
l14284:	
;error.c: 30: }
;error.c: 31: E3_delaycount = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Error_Deal@E3_delaycount)^080h	;volatile
	clrf	(Error_Deal@E3_delaycount+1)^080h	;volatile
	line	34
	
l14286:	
;error.c: 34: if((b_LidClosed == 0) && ((SysStatus == 3) || (SysStatus == 5 && FactoryTestData >= 19)))
	btfsc	(_b_LidClosed/8),(_b_LidClosed)&7	;volatile
	goto	u5871
	goto	u5870
u5871:
	goto	l14300
u5870:
	
l14288:	
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u5881
	goto	u5880
u5881:
	goto	l14294
u5880:
	
l14290:	
		movlw	5
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u5891
	goto	u5890
u5891:
	goto	l14300
u5890:
	
l14292:	
	movlw	low(013h)
	subwf	(_FactoryTestData),w	;volatile
	skipc
	goto	u5901
	goto	u5900
u5901:
	goto	l14300
u5900:
	line	37
	
l14294:	
;error.c: 35: {
;error.c: 37: if(!(ChooseFun == 14))
		movlw	14
	xorwf	((_ChooseFun)),w	;volatile
	btfsc	status,2
	goto	u5911
	goto	u5910
u5911:
	goto	l14300
u5910:
	line	39
	
l14296:	
;error.c: 38: {
;error.c: 39: ErrorCode = 7;
	movlw	low(07h)
	movwf	(_ErrorCode)	;volatile
	goto	l4857
	line	45
	
l14300:	
;error.c: 41: }
;error.c: 42: }
;error.c: 45: if(AC_Vol_Rms >= 265)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_AC_Vol_Rms+1),w	;volatile
	movlw	09h
	skipnz
	subwf	(_AC_Vol_Rms),w	;volatile
	skipc
	goto	u5921
	goto	u5920
u5921:
	goto	l14306
u5920:
	line	47
	
l14302:	
;error.c: 46: {
;error.c: 47: ErrorCode = 8;
	movlw	low(08h)
	movwf	(_ErrorCode)	;volatile
	goto	l4857
	line	52
	
l14306:	
;error.c: 49: }
;error.c: 52: if(AC_Vol_Rms <= 155 && AC_Vol_Rms >= 85)
	movlw	0
	subwf	(_AC_Vol_Rms+1),w	;volatile
	movlw	09Ch
	skipnz
	subwf	(_AC_Vol_Rms),w	;volatile
	skipnc
	goto	u5931
	goto	u5930
u5931:
	goto	l14314
u5930:
	
l14308:	
	movlw	0
	subwf	(_AC_Vol_Rms+1),w	;volatile
	movlw	055h
	skipnz
	subwf	(_AC_Vol_Rms),w	;volatile
	skipc
	goto	u5941
	goto	u5940
u5941:
	goto	l14314
u5940:
	line	54
	
l14310:	
;error.c: 53: {
;error.c: 54: ErrorCode = 9;
	movlw	low(09h)
	movwf	(_ErrorCode)	;volatile
	goto	l4857
	line	59
	
l14314:	
;error.c: 56: }
;error.c: 59: if(Ad_Bot < 2)
	movlw	low(02h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u5951
	goto	u5950
u5951:
	goto	l14320
u5950:
	line	61
	
l14316:	
;error.c: 60: {
;error.c: 61: ErrorCode = 1;
	movlw	low(01h)
	movwf	(_ErrorCode)	;volatile
	goto	l4857
	line	66
	
l14320:	
;error.c: 63: }
;error.c: 66: if(Ad_Bot >= 252)
	movlw	low(0FCh)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u5961
	goto	u5960
u5961:
	goto	l14326
u5960:
	line	68
	
l14322:	
;error.c: 67: {
;error.c: 68: ErrorCode = 2;
	movlw	low(02h)
	movwf	(_ErrorCode)	;volatile
	goto	l4857
	line	75
	
l14326:	
;error.c: 70: }
;error.c: 75: if(SysStatus == 3 && WorkStage == 2 && WorkTimeH >= 1)
		movlw	3
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u5971
	goto	u5970
u5971:
	goto	l14336
u5970:
	
l14328:	
		movlw	2
	xorwf	((_WorkStage)),w	;volatile
	btfss	status,2
	goto	u5981
	goto	u5980
u5981:
	goto	l14336
u5980:
	
l14330:	
	movf	((_WorkTimeH)),w	;volatile
	btfsc	status,2
	goto	u5991
	goto	u5990
u5991:
	goto	l14336
u5990:
	line	77
	
l14332:	
;error.c: 76: {
;error.c: 77: ErrorCode = 4;
	movlw	low(04h)
	movwf	(_ErrorCode)	;volatile
	goto	l4857
	line	81
	
l14336:	
;error.c: 79: }
;error.c: 80: }
;error.c: 81: ErrorCode = 0;
	clrf	(_ErrorCode)	;volatile
	line	82
;error.c: 82: E3_delaycount = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Error_Deal@E3_delaycount)^080h	;volatile
	clrf	(Error_Deal@E3_delaycount+1)^080h	;volatile
	line	83
	
l4857:	
	return
	opt stack 0
GLOBAL	__end_of_Error_Deal
	__end_of_Error_Deal:
	signat	_Error_Deal,89
	global	_Cook_Task

;; *************** function _Cook_Task *****************
;; Defined at:
;;		line 658 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_BotHeatOff
;;		_BotHeatOn
;;		_CakeHeat
;;		_FactoryTest
;;		_KeepWarmHeat
;;		_OpenCook
;;		_PressureHeat
;;		_ReheatCook
;;		_RiceHeat
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	658
global __ptext52
__ptext52:	;psect for function _Cook_Task
psect	text52
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	658
	global	__size_of_Cook_Task
	__size_of_Cook_Task	equ	__end_of_Cook_Task-_Cook_Task
	
_Cook_Task:	
;incstack = 0
	opt	stack 3
; Regs used in _Cook_Task: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	661
	
l15808:	
;cook.c: 661: if(ErrorCode != 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_ErrorCode)),w	;volatile
	btfsc	status,2
	goto	u7761
	goto	u7760
u7761:
	goto	l15814
u7760:
	line	663
	
l15810:	
;cook.c: 662: {
;cook.c: 663: BotHeatOff();
	fcall	_BotHeatOff
	goto	l2054
	line	668
	
l15814:	
;cook.c: 665: }
;cook.c: 668: if((SysStatus == 3 || SysStatus == 4) && Ad_Bot <= 114 && b_PressureOn == 1)
		movlw	3
	xorwf	((_SysStatus)),w	;volatile
	btfsc	status,2
	goto	u7771
	goto	u7770
u7771:
	goto	l15818
u7770:
	
l15816:	
		movlw	4
	xorwf	((_SysStatus)),w	;volatile
	btfss	status,2
	goto	u7781
	goto	u7780
u7781:
	goto	l15868
u7780:
	
l15818:	
	movlw	low(073h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u7791
	goto	u7790
u7791:
	goto	l15868
u7790:
	
l15820:	
	btfss	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u7801
	goto	u7800
u7801:
	goto	l15868
u7800:
	line	670
	
l15822:	
;cook.c: 669: {
;cook.c: 670: BotHeatOn();
	fcall	_BotHeatOn
	goto	l2054
	line	678
	
l15826:	
;cook.c: 678: if(FactoryTestData == 19 || FactoryTestData == 20)
		movlw	19
	xorwf	((_FactoryTestData)),w	;volatile
	btfsc	status,2
	goto	u7811
	goto	u7810
u7811:
	goto	l15830
u7810:
	
l15828:	
		movlw	20
	xorwf	((_FactoryTestData)),w	;volatile
	btfss	status,2
	goto	u7821
	goto	u7820
u7821:
	goto	l15810
u7820:
	line	680
	
l15830:	
;cook.c: 679: {
;cook.c: 680: FactoryTest();
	fcall	_FactoryTest
	line	681
;cook.c: 681: }
	goto	l2054
	line	689
	
l15834:	
;cook.c: 689: if(WorkStage == 2 || WorkStage == 3 )
		movlw	2
	xorwf	((_WorkStage)),w	;volatile
	btfsc	status,2
	goto	u7831
	goto	u7830
u7831:
	goto	l15838
u7830:
	
l15836:	
		movlw	3
	xorwf	((_WorkStage)),w	;volatile
	btfss	status,2
	goto	u7841
	goto	u7840
u7841:
	goto	l15810
u7840:
	line	691
	
l15838:	
;cook.c: 690: {
;cook.c: 691: if(ChooseFun == 1 || ChooseFun == 2)
		decf	((_ChooseFun)),w	;volatile
	btfsc	status,2
	goto	u7851
	goto	u7850
u7851:
	goto	l15842
u7850:
	
l15840:	
		movlw	2
	xorwf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u7861
	goto	u7860
u7861:
	goto	l15844
u7860:
	line	693
	
l15842:	
;cook.c: 692: {
;cook.c: 693: RiceHeat();
	fcall	_RiceHeat
	line	694
;cook.c: 694: }
	goto	l2054
	line	695
	
l15844:	
;cook.c: 695: else if(ChooseFun == 14)
		movlw	14
	xorwf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u7871
	goto	u7870
u7871:
	goto	l15850
u7870:
	line	697
	
l15846:	
;cook.c: 696: {
;cook.c: 697: WorkStep = 2;
	movlw	low(02h)
	movwf	(_WorkStep)	;volatile
	line	698
	
l15848:	
;cook.c: 698: OpenCook();
	fcall	_OpenCook
	line	699
;cook.c: 699: }
	goto	l2054
	line	700
	
l15850:	
;cook.c: 700: else if(ChooseFun == 13)
		movlw	13
	xorwf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u7881
	goto	u7880
u7881:
	goto	l15854
u7880:
	line	702
	
l15852:	
;cook.c: 701: {
;cook.c: 702: ReheatCook();
	fcall	_ReheatCook
	line	703
;cook.c: 703: }
	goto	l2054
	line	704
	
l15854:	
;cook.c: 704: else if(ChooseFun == 12)
		movlw	12
	xorwf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u7891
	goto	u7890
u7891:
	goto	l15858
u7890:
	line	706
	
l15856:	
;cook.c: 705: {
;cook.c: 706: CakeHeat();
	fcall	_CakeHeat
	line	707
;cook.c: 707: }
	goto	l2054
	line	710
	
l15858:	
;cook.c: 708: else
;cook.c: 709: {
;cook.c: 710: PressureHeat();
	fcall	_PressureHeat
	goto	l2054
	line	721
	
l15862:	
;cook.c: 721: KeepWarmHeat();
	fcall	_KeepWarmHeat
	line	722
;cook.c: 722: break;
	goto	l2054
	line	674
	
l15868:	
	movf	(_SysStatus),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 3 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	3^0	; case 3
	skipnz
	goto	l15834
	xorlw	4^3	; case 4
	skipnz
	goto	l15862
	xorlw	5^4	; case 5
	skipnz
	goto	l15826
	goto	l15810
	opt asmopt_pop

	line	726
	
l2054:	
	return
	opt stack 0
GLOBAL	__end_of_Cook_Task
	__end_of_Cook_Task:
	signat	_Cook_Task,89
	global	_RiceHeat

;; *************** function _RiceHeat *****************
;; Defined at:
;;		line 139 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BotHeatOff
;;		_BotHeatOn
;;		_Heat_Time_Select
;;		_ShortTimeOn
;; This function is called by:
;;		_Cook_Task
;; This function uses a non-reentrant model
;;
psect	text53,local,class=CODE,delta=2,merge=1,group=0
	line	139
global __ptext53
__ptext53:	;psect for function _RiceHeat
psect	text53
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	139
	global	__size_of_RiceHeat
	__size_of_RiceHeat	equ	__end_of_RiceHeat-_RiceHeat
	
_RiceHeat:	
;incstack = 0
	opt	stack 3
; Regs used in _RiceHeat: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	142
	
l12290:	
;cook.c: 142: if((b_PressureOn == 1 || Ad_Bot >= 213) && WorkStage != 3)
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u1981
	goto	u1980
u1981:
	goto	l12294
u1980:
	
l12292:	
	movlw	low(0D5h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u1991
	goto	u1990
u1991:
	goto	l12408
u1990:
	
l12294:	
		movlw	3
	xorwf	((_WorkStage)),w	;volatile
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l12408
u2000:
	line	144
	
l12296:	
;cook.c: 143: {
;cook.c: 144: WorkStage = 3;
	movlw	low(03h)
	movwf	(_WorkStage)	;volatile
	line	145
;cook.c: 145: WorkStep = 5;
	movlw	low(05h)
	movwf	(_WorkStep)	;volatile
	line	146
	
l12298:	
;cook.c: 146: ShortTimeOn();
	fcall	_ShortTimeOn
	line	148
	
l12300:	
;cook.c: 148: TotalTimeSave = WorkTimeM + CountDownTime;
	movf	(_CountDownTime),w	;volatile
	addwf	(_WorkTimeM),w	;volatile
	movwf	(_TotalTimeSave)	;volatile
	goto	l12408
	line	155
	
l12302:	
;cook.c: 155: if(Ad_Bot >= 145)
	movlw	low(091h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l12312
u2010:
	line	158
	
l12304:	
;cook.c: 156: {
;cook.c: 158: if(AC_Vol_Rms >= 205)
	movlw	0
	subwf	(_AC_Vol_Rms+1),w	;volatile
	movlw	0CDh
	skipnz
	subwf	(_AC_Vol_Rms),w	;volatile
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l12310
u2020:
	line	160
	
l12306:	
;cook.c: 159: {
;cook.c: 160: BotHeatOff();
	fcall	_BotHeatOff
	line	161
;cook.c: 161: ShortTimeOn();
	fcall	_ShortTimeOn
	line	162
	
l12308:	
;cook.c: 162: WorkStep++;
	incf	(_WorkStep),f	;volatile
	line	163
;cook.c: 163: }
	goto	l1917
	line	166
	
l12310:	
;cook.c: 164: else
;cook.c: 165: {
;cook.c: 166: WorkStep = 2;
	movlw	low(02h)
	movwf	(_WorkStep)	;volatile
	goto	l1917
	line	170
	
l12312:	
;cook.c: 169: }
;cook.c: 170: BotHeatOn();
	fcall	_BotHeatOn
	line	171
;cook.c: 171: break;
	goto	l1917
	line	174
	
l12314:	
;cook.c: 174: if(ShortCntM >= 2)
	movlw	low(02h)
	subwf	(_ShortCntM),w	;volatile
	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l12320
u2030:
	line	176
	
l12316:	
;cook.c: 175: {
;cook.c: 176: ShortTimeOn();
	fcall	_ShortTimeOn
	goto	l12308
	line	180
	
l12320:	
;cook.c: 179: }
;cook.c: 180: BotHeatOff();
	fcall	_BotHeatOff
	line	181
;cook.c: 181: break;
	goto	l1917
	line	183
	
l12322:	
;cook.c: 183: if(Ad_Bot >= 197)
	movlw	low(0C5h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l12312
u2040:
	line	185
	
l12324:	
;cook.c: 184: {
;cook.c: 185: ShortTimeOn();
	fcall	_ShortTimeOn
	line	186
;cook.c: 186: BotHeatOff();
	fcall	_BotHeatOff
	goto	l12308
	line	193
	
l12330:	
;cook.c: 193: if(Ad_Bot <= 192)
	movlw	low(0C1h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2051
	goto	u2050
u2051:
	goto	l12336
u2050:
	line	195
	
l12332:	
;cook.c: 194: {
;cook.c: 195: ShortTimeOn();
	fcall	_ShortTimeOn
	goto	l12310
	line	199
	
l12336:	
;cook.c: 198: }
;cook.c: 199: if(Ad_Bot >= 204)
	movlw	low(0CCh)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l12354
u2060:
	goto	l12324
	line	211
	
l12344:	
	movlw	low(03h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(011h)
	fcall	_Heat_Time_Select
	goto	l1917
	line	212
	
l12346:	
	movlw	low(06h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Eh)
	fcall	_Heat_Time_Select
	goto	l1917
	line	213
	
l12348:	
	movlw	low(08h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ch)
	fcall	_Heat_Time_Select
	goto	l1917
	line	214
	
l12350:	
	movlw	low(06h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Eh)
	fcall	_Heat_Time_Select
	goto	l1917
	line	208
	
l12354:	
	movf	(_Vrms_Level),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l12312
	xorlw	2^1	; case 2
	skipnz
	goto	l12344
	xorlw	3^2	; case 3
	skipnz
	goto	l12346
	xorlw	4^3	; case 4
	skipnz
	goto	l12348
	goto	l12350
	opt asmopt_pop

	line	218
	
l12356:	
;cook.c: 218: if(Ad_Bot <= 200)
	movlw	low(0C9h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2071
	goto	u2070
u2071:
	goto	l12374
u2070:
	line	220
	
l12358:	
;cook.c: 219: {
;cook.c: 220: ShortTimeOn();
	fcall	_ShortTimeOn
	line	221
;cook.c: 221: BotHeatOff();
	fcall	_BotHeatOff
	line	222
	
l12360:	
;cook.c: 222: WorkStep = 3;
	movlw	low(03h)
	movwf	(_WorkStep)	;volatile
	line	223
;cook.c: 223: break;
	goto	l1917
	line	229
	
l12362:	
	movlw	low(04h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(010h)
	fcall	_Heat_Time_Select
	goto	l1917
	line	230
	
l12364:	
	movlw	low(08h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ch)
	fcall	_Heat_Time_Select
	goto	l1917
	line	231
	
l12366:	
	movlw	low(0Ah)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ah)
	fcall	_Heat_Time_Select
	goto	l1917
	line	232
	
l12368:	
	movlw	low(0Ch)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(08h)
	fcall	_Heat_Time_Select
	goto	l1917
	line	233
	
l12370:	
	movlw	low(0Ah)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ah)
	fcall	_Heat_Time_Select
	goto	l1917
	line	227
	
l12374:	
	movf	(_Vrms_Level),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l12362
	xorlw	2^1	; case 2
	skipnz
	goto	l12364
	xorlw	3^2	; case 3
	skipnz
	goto	l12366
	xorlw	4^3	; case 4
	skipnz
	goto	l12368
	goto	l12370
	opt asmopt_pop

	line	238
	
l12376:	
;cook.c: 238: if(ChooseFun == 1)
		decf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u2081
	goto	u2080
u2081:
	goto	l1902
u2080:
	line	240
	
l12378:	
;cook.c: 239: {
;cook.c: 240: if(CountDownTime <= 5)
	movlw	low(06h)
	subwf	(_CountDownTime),w	;volatile
	skipnc
	goto	u2091
	goto	u2090
u2091:
	goto	l1902
u2090:
	goto	l12320
	line	245
	
l1902:	
	line	248
;cook.c: 244: }
;cook.c: 245: }
;cook.c: 248: if(b_PressureOn == 1 || Ad_Bot >= 179)
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u2101
	goto	u2100
u2101:
	goto	l12320
u2100:
	
l12382:	
	movlw	low(0B3h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2111
	goto	u2110
u2111:
	goto	l12386
u2110:
	goto	l12320
	line	252
	
l12386:	
;cook.c: 252: else if(Ad_Bot <= 174)
	movlw	low(0AFh)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2121
	goto	u2120
u2121:
	goto	l1917
u2120:
	goto	l12402
	line	257
	
l12390:	
	movlw	low(04h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(010h)
	fcall	_Heat_Time_Select
	goto	l1917
	line	258
	
l12392:	
	movlw	low(08h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ch)
	fcall	_Heat_Time_Select
	goto	l1917
	line	259
	
l12394:	
	movlw	low(0Ah)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ah)
	fcall	_Heat_Time_Select
	goto	l1917
	line	260
	
l12396:	
	movlw	low(0Ch)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(08h)
	fcall	_Heat_Time_Select
	goto	l1917
	line	261
	
l12398:	
	movlw	low(0Ah)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ah)
	fcall	_Heat_Time_Select
	goto	l1917
	line	255
	
l12402:	
	movf	(_Vrms_Level),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l12390
	xorlw	2^1	; case 2
	skipnz
	goto	l12392
	xorlw	3^2	; case 3
	skipnz
	goto	l12394
	xorlw	4^3	; case 4
	skipnz
	goto	l12396
	goto	l12398
	opt asmopt_pop

	line	151
	
l12408:	
	movf	(_WorkStep),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           26     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l12302
	xorlw	1^0	; case 1
	skipnz
	goto	l12314
	xorlw	2^1	; case 2
	skipnz
	goto	l12322
	xorlw	3^2	; case 3
	skipnz
	goto	l12330
	xorlw	4^3	; case 4
	skipnz
	goto	l12356
	xorlw	5^4	; case 5
	skipnz
	goto	l12376
	goto	l12320
	opt asmopt_pop

	line	267
	
l1917:	
	return
	opt stack 0
GLOBAL	__end_of_RiceHeat
	__end_of_RiceHeat:
	signat	_RiceHeat,89
	global	_ReheatCook

;; *************** function _ReheatCook *****************
;; Defined at:
;;		line 563 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BotHeatOff
;;		_BotHeatOn
;;		_Heat_Time_Select
;;		_ShortTimeOn
;; This function is called by:
;;		_Cook_Task
;; This function uses a non-reentrant model
;;
psect	text54,local,class=CODE,delta=2,merge=1,group=0
	line	563
global __ptext54
__ptext54:	;psect for function _ReheatCook
psect	text54
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	563
	global	__size_of_ReheatCook
	__size_of_ReheatCook	equ	__end_of_ReheatCook-_ReheatCook
	
_ReheatCook:	
;incstack = 0
	opt	stack 3
; Regs used in _ReheatCook: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	565
	
l12656:	
;cook.c: 565: if((b_PressureOn || WorkTimeM >= 30) && WorkStage != 3)
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u2581
	goto	u2580
u2581:
	goto	l12660
u2580:
	
l12658:	
	movlw	low(01Eh)
	subwf	(_WorkTimeM),w	;volatile
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l12710
u2590:
	
l12660:	
		movlw	3
	xorwf	((_WorkStage)),w	;volatile
	btfsc	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l12710
u2600:
	line	567
	
l12662:	
;cook.c: 566: {
;cook.c: 567: WorkStage = 3;
	movlw	low(03h)
	movwf	(_WorkStage)	;volatile
	line	568
;cook.c: 568: WorkStep = 2;
	movlw	low(02h)
	movwf	(_WorkStep)	;volatile
	line	569
	
l12664:	
;cook.c: 569: ShortTimeOn();
	fcall	_ShortTimeOn
	goto	l12710
	line	575
	
l12666:	
;cook.c: 575: if(Ad_Bot >= 163)
	movlw	low(0A3h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l12672
u2610:
	line	577
	
l12668:	
;cook.c: 576: {
;cook.c: 577: BotHeatOff();
	fcall	_BotHeatOff
	line	578
;cook.c: 578: ShortTimeOn();
	fcall	_ShortTimeOn
	line	579
	
l12670:	
;cook.c: 579: WorkStep++;
	incf	(_WorkStep),f	;volatile
	line	580
;cook.c: 580: break;
	goto	l2039
	line	582
	
l12672:	
;cook.c: 581: }
;cook.c: 582: BotHeatOn();
	fcall	_BotHeatOn
	line	583
;cook.c: 583: break;
	goto	l2039
	line	586
	
l12674:	
;cook.c: 586: if(ShortCntM==0 && ShortCntL< 30)
	movf	((_ShortCntM)),w	;volatile
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l12680
u2620:
	
l12676:	
	movlw	low(01Eh)
	subwf	(_ShortCntL),w	;volatile
	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l12680
u2630:
	line	588
	
l12678:	
;cook.c: 587: {
;cook.c: 588: BotHeatOff();
	fcall	_BotHeatOff
	line	589
;cook.c: 589: break;
	goto	l2039
	line	592
	
l12680:	
;cook.c: 590: }
;cook.c: 592: if(ShortCntM >= 5)
	movlw	low(05h)
	subwf	(_ShortCntM),w	;volatile
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l12690
u2640:
	line	594
	
l12682:	
;cook.c: 593: {
;cook.c: 594: WorkStage = 3;
	movlw	low(03h)
	movwf	(_WorkStage)	;volatile
	line	595
	
l12684:	
;cook.c: 595: BotHeatOff();
	fcall	_BotHeatOff
	line	596
	
l12686:	
;cook.c: 596: ShortTimeOn();
	fcall	_ShortTimeOn
	goto	l12670
	line	601
	
l12690:	
;cook.c: 599: }
;cook.c: 601: if(Ad_Bot>180)
	movlw	low(0B5h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l12694
u2650:
	goto	l12678
	line	606
	
l12694:	
;cook.c: 605: }
;cook.c: 606: if(Ad_Bot<=177)
	movlw	low(0B2h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2661
	goto	u2660
u2661:
	goto	l2039
u2660:
	line	608
	
l12696:	
;cook.c: 607: {
;cook.c: 608: Heat_Time_Select(24, 6);
	movlw	low(06h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(018h)
	fcall	_Heat_Time_Select
	goto	l2039
	line	612
;cook.c: 612: case 2 :
	
l2032:	
	line	614
;cook.c: 614: if(b_PressureOn == 1 || Ad_Bot >= 180)
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u2671
	goto	u2670
u2671:
	goto	l12678
u2670:
	
l12698:	
	movlw	low(0B4h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l12702
u2680:
	goto	l12678
	line	618
	
l12702:	
;cook.c: 618: else if(Ad_Bot <= 177)
	movlw	low(0B2h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2691
	goto	u2690
u2691:
	goto	l2039
u2690:
	line	620
	
l12704:	
;cook.c: 619: {
;cook.c: 620: Heat_Time_Select(8, 10);
	movlw	low(0Ah)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(08h)
	fcall	_Heat_Time_Select
	goto	l2039
	line	572
	
l12710:	
	movf	(_WorkStep),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l12666
	xorlw	1^0	; case 1
	skipnz
	goto	l12674
	xorlw	2^1	; case 2
	skipnz
	goto	l2032
	goto	l12678
	opt asmopt_pop

	line	626
	
l2039:	
	return
	opt stack 0
GLOBAL	__end_of_ReheatCook
	__end_of_ReheatCook:
	signat	_ReheatCook,89
	global	_PressureHeat

;; *************** function _PressureHeat *****************
;; Defined at:
;;		line 275 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BotHeatOff
;;		_BotHeatOn
;;		_Cancel
;;		_Heat_Time_Select
;;		_ShortTimeOn
;; This function is called by:
;;		_Cook_Task
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1,group=0
	line	275
global __ptext55
__ptext55:	;psect for function _PressureHeat
psect	text55
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	275
	global	__size_of_PressureHeat
	__size_of_PressureHeat	equ	__end_of_PressureHeat-_PressureHeat
	
_PressureHeat:	
;incstack = 0
	opt	stack 3
; Regs used in _PressureHeat: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	278
	
l12410:	
;cook.c: 278: if((b_PressureOn == 1) && WorkStage != 3)
	btfss	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u2131
	goto	u2130
u2131:
	goto	l12420
u2130:
	
l12412:	
		movlw	3
	xorwf	((_WorkStage)),w	;volatile
	btfsc	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l12420
u2140:
	line	280
	
l12414:	
;cook.c: 279: {
;cook.c: 280: WorkStage = 3;
	movlw	low(03h)
	movwf	(_WorkStage)	;volatile
	line	281
;cook.c: 281: WorkStep = 5;
	movlw	low(05h)
	movwf	(_WorkStep)	;volatile
	line	282
	
l12416:	
;cook.c: 282: ShortTimeOn();
	fcall	_ShortTimeOn
	line	284
	
l12418:	
;cook.c: 284: TotalTimeSave = WorkTimeM + CountDownTime;
	movf	(_CountDownTime),w	;volatile
	addwf	(_WorkTimeM),w	;volatile
	movwf	(_TotalTimeSave)	;volatile
	line	287
	
l12420:	
;cook.c: 285: }
;cook.c: 287: if(Ad_Bot >= 213)
	movlw	low(0D5h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l12520
u2150:
	line	289
	
l12422:	
;cook.c: 288: {
;cook.c: 289: BotHeatOff();
	fcall	_BotHeatOff
	line	290
	
l12424:	
;cook.c: 290: Cancel();
	fcall	_Cancel
	line	291
;cook.c: 291: {{BuzCnt = 5; BuzUpTime = 50/2; BuzDownTime = 250/2; BuzUpTemp = BuzUpTime; BuzDownTemp = BuzDownTime;};};
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_BuzCnt)	;volatile
	movlw	low(019h)
	movwf	(_BuzUpTime)	;volatile
	movlw	low(07Dh)
	movwf	(_BuzDownTime)	;volatile
	movf	(_BuzUpTime),w	;volatile
	movwf	(_BuzUpTemp)	;volatile
	movf	(_BuzDownTime),w	;volatile
	movwf	(_BuzDownTemp)	;volatile
	goto	l1922
	line	299
	
l12428:	
;cook.c: 299: if(Ad_Bot >= 145)
	movlw	low(091h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l12434
u2160:
	line	301
	
l12430:	
;cook.c: 300: {
;cook.c: 301: BotHeatOff();
	fcall	_BotHeatOff
	line	302
;cook.c: 302: ShortTimeOn();
	fcall	_ShortTimeOn
	line	303
	
l12432:	
;cook.c: 303: WorkStep++;
	incf	(_WorkStep),f	;volatile
	line	304
;cook.c: 304: break;
	goto	l1922
	line	306
	
l12434:	
;cook.c: 305: }
;cook.c: 306: BotHeatOn();
	fcall	_BotHeatOn
	line	307
;cook.c: 307: break;
	goto	l1922
	line	310
	
l12436:	
;cook.c: 310: if(ShortCntM >= 2)
	movlw	low(02h)
	subwf	(_ShortCntM),w	;volatile
	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l12442
u2170:
	line	312
	
l12438:	
;cook.c: 311: {
;cook.c: 312: ShortTimeOn();
	fcall	_ShortTimeOn
	goto	l12432
	line	316
	
l12442:	
;cook.c: 315: }
;cook.c: 316: BotHeatOff();
	fcall	_BotHeatOff
	line	317
;cook.c: 317: break;
	goto	l1922
	line	319
	
l12444:	
;cook.c: 319: if(Ad_Bot >= 186)
	movlw	low(0BAh)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l12434
u2180:
	line	321
	
l12446:	
;cook.c: 320: {
;cook.c: 321: ShortTimeOn();
	fcall	_ShortTimeOn
	line	322
;cook.c: 322: BotHeatOff();
	fcall	_BotHeatOff
	goto	l12432
	line	329
	
l12452:	
;cook.c: 329: if(Ad_Bot <= 183)
	movlw	low(0B8h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2191
	goto	u2190
u2191:
	goto	l12458
u2190:
	line	331
	
l12454:	
;cook.c: 330: {
;cook.c: 331: ShortTimeOn();
	fcall	_ShortTimeOn
	line	332
	
l12456:	
;cook.c: 332: WorkStep = 2;
	movlw	low(02h)
	movwf	(_WorkStep)	;volatile
	line	333
;cook.c: 333: break;
	goto	l1922
	line	336
	
l12458:	
;cook.c: 334: }
;cook.c: 336: if(Ad_Bot >= 197)
	movlw	low(0C5h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l12476
u2200:
	goto	l12446
	line	348
	
l12466:	
	movlw	low(03h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(011h)
	fcall	_Heat_Time_Select
	goto	l1922
	line	349
	
l12468:	
	movlw	low(06h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Eh)
	fcall	_Heat_Time_Select
	goto	l1922
	line	350
	
l12470:	
	movlw	low(08h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ch)
	fcall	_Heat_Time_Select
	goto	l1922
	line	351
	
l12472:	
	movlw	low(06h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Eh)
	fcall	_Heat_Time_Select
	goto	l1922
	line	345
	
l12476:	
	movf	(_Vrms_Level),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l12434
	xorlw	2^1	; case 2
	skipnz
	goto	l12466
	xorlw	3^2	; case 3
	skipnz
	goto	l12468
	xorlw	4^3	; case 4
	skipnz
	goto	l12470
	goto	l12472
	opt asmopt_pop

	line	355
	
l12478:	
;cook.c: 355: if(Ad_Bot <= 193)
	movlw	low(0C2h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l12496
u2210:
	line	357
	
l12480:	
;cook.c: 356: {
;cook.c: 357: ShortTimeOn();
	fcall	_ShortTimeOn
	line	358
;cook.c: 358: BotHeatOff();
	fcall	_BotHeatOff
	line	359
	
l12482:	
;cook.c: 359: WorkStep = 3;
	movlw	low(03h)
	movwf	(_WorkStep)	;volatile
	line	360
;cook.c: 360: break;
	goto	l1922
	line	366
	
l12484:	
	movlw	low(04h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(010h)
	fcall	_Heat_Time_Select
	goto	l1922
	line	367
	
l12486:	
	movlw	low(08h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ch)
	fcall	_Heat_Time_Select
	goto	l1922
	line	368
	
l12488:	
	movlw	low(0Ah)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ah)
	fcall	_Heat_Time_Select
	goto	l1922
	line	369
	
l12490:	
	movlw	low(0Ch)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(08h)
	fcall	_Heat_Time_Select
	goto	l1922
	line	370
	
l12492:	
	movlw	low(0Ah)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ah)
	fcall	_Heat_Time_Select
	goto	l1922
	line	364
	
l12496:	
	movf	(_Vrms_Level),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l12484
	xorlw	2^1	; case 2
	skipnz
	goto	l12486
	xorlw	3^2	; case 3
	skipnz
	goto	l12488
	xorlw	4^3	; case 4
	skipnz
	goto	l12490
	goto	l12492
	opt asmopt_pop

	line	375
	
l12498:	
;cook.c: 375: if(ChooseFun == 3 || ChooseFun == 4 || ChooseFun == 9)
		movlw	3
	xorwf	((_ChooseFun)),w	;volatile
	btfsc	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l12504
u2220:
	
l12500:	
		movlw	4
	xorwf	((_ChooseFun)),w	;volatile
	btfsc	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l12504
u2230:
	
l12502:	
		movlw	9
	xorwf	((_ChooseFun)),w	;volatile
	btfss	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l1951
u2240:
	line	377
	
l12504:	
;cook.c: 376: {
;cook.c: 377: if(CountDownTime <= 8)
	movlw	low(09h)
	subwf	(_CountDownTime),w	;volatile
	skipnc
	goto	u2251
	goto	u2250
u2251:
	goto	l1951
u2250:
	goto	l12442
	line	382
	
l1951:	
	line	384
;cook.c: 381: }
;cook.c: 382: }
;cook.c: 384: if(b_PressureOn == 1 || Ad_Bot >= 183)
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u2261
	goto	u2260
u2261:
	goto	l12442
u2260:
	
l12508:	
	movlw	low(0B7h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l12512
u2270:
	goto	l12442
	line	388
	
l12512:	
;cook.c: 388: else if(Ad_Bot <= 179)
	movlw	low(0B4h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2281
	goto	u2280
u2281:
	goto	l1922
u2280:
	goto	l12434
	line	295
	
l12520:	
	movf	(_WorkStep),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           26     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l12428
	xorlw	1^0	; case 1
	skipnz
	goto	l12436
	xorlw	2^1	; case 2
	skipnz
	goto	l12444
	xorlw	3^2	; case 3
	skipnz
	goto	l12452
	xorlw	4^3	; case 4
	skipnz
	goto	l12478
	xorlw	5^4	; case 5
	skipnz
	goto	l12498
	goto	l12442
	opt asmopt_pop

	line	395
	
l1922:	
	return
	opt stack 0
GLOBAL	__end_of_PressureHeat
	__end_of_PressureHeat:
	signat	_PressureHeat,89
	global	_Cancel

;; *************** function _Cancel *****************
;; Defined at:
;;		line 549 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PressureHeat
;;		_Maink_Cancel
;;		_Maink_Factory
;;		_StandbyTimeStart
;;		_CountDownTimeStart
;;		_KeepWarmTimeStart
;; This function uses a non-reentrant model
;;
psect	text56,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	549
global __ptext56
__ptext56:	;psect for function _Cancel
psect	text56
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\key.c"
	line	549
	global	__size_of_Cancel
	__size_of_Cancel	equ	__end_of_Cancel-_Cancel
	
_Cancel:	
;incstack = 0
	opt	stack 3
; Regs used in _Cancel: [wreg+status,2]
	line	552
	
l12078:	
;key.c: 552: SysStatus = 1;
	movlw	low(01h)
	movwf	(_SysStatus)	;volatile
	line	553
	
l12080:	
;key.c: 553: WorkStage = 0;
	clrf	(_WorkStage)	;volatile
	line	554
	
l12082:	
;key.c: 554: ChooseFun = 0;
	clrf	(_ChooseFun)	;volatile
	line	556
	
l12084:	
;key.c: 556: PresetState = 0;
	clrf	(_PresetState)	;volatile
	line	557
	
l12086:	
;key.c: 557: ErrorCode = 0;
	clrf	(_ErrorCode)	;volatile
	line	558
	
l12088:	
;key.c: 558: CountDownTime = 0;
	clrf	(_CountDownTime)	;volatile
	line	559
	
l12090:	
;key.c: 559: CountDownTimeSave = 0;
	clrf	(_CountDownTimeSave)	;volatile
	line	560
	
l12092:	
;key.c: 560: WorkStep = 0;
	clrf	(_WorkStep)	;volatile
	line	561
	
l12094:	
;key.c: 561: FactoryTestData = 0;
	clrf	(_FactoryTestData)	;volatile
	line	562
	
l12096:	
;key.c: 562: PressureData = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_PressureData)^080h	;volatile
	line	563
	
l12098:	
;key.c: 563: PressureCountTime = 0;
	clrf	(_PressureCountTime)^080h	;volatile
	line	566
	
l12100:	
;key.c: 566: b_ShortOn = 0;
	bcf	(_b_ShortOn/8),(_b_ShortOn)&7	;volatile
	line	567
	
l12102:	
;key.c: 567: ShortCntL = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_ShortCntL)	;volatile
	line	568
	
l12104:	
;key.c: 568: ShortCntM = 0;
	clrf	(_ShortCntM)	;volatile
	line	570
	
l12106:	
;key.c: 570: PresetTimeH = 0;
	clrf	(_PresetTimeH)	;volatile
	line	571
	
l12108:	
;key.c: 571: PresetTimeM = 0;
	clrf	(_PresetTimeM)	;volatile
	line	572
	
l12110:	
;key.c: 572: PresetTimeS = 0;
	clrf	(_PresetTimeS)	;volatile
	line	574
	
l12112:	
;key.c: 574: WorkTimeH = 0;
	clrf	(_WorkTimeH)	;volatile
	line	575
	
l12114:	
;key.c: 575: WorkTimeM = 0;
	clrf	(_WorkTimeM)	;volatile
	line	576
	
l12116:	
;key.c: 576: WorkTimeS = 0;
	clrf	(_WorkTimeS)	;volatile
	line	578
	
l12118:	
;key.c: 578: KeepWarmH = 0;
	clrf	(_KeepWarmH)	;volatile
	line	579
	
l12120:	
;key.c: 579: KeepWarmM = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_KeepWarmM)^080h	;volatile
	line	580
	
l12122:	
;key.c: 580: KeepWarmS = 0;
	clrf	(_KeepWarmS)^080h	;volatile
	line	582
	
l12124:	
;key.c: 582: CountTimeS = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_CountTimeS)	;volatile
	line	585
	
l12126:	
;key.c: 585: b_BotHeatEn = 0;
	bcf	(_b_BotHeatEn/8),(_b_BotHeatEn)&7	;volatile
	line	586
	
l12128:	
;key.c: 586: b_BotHeatOn = 0;
	bcf	(_b_BotHeatOn/8),(_b_BotHeatOn)&7	;volatile
	line	589
	
l12130:	
;key.c: 589: b_BotTempOut = 0;
	bcf	(_b_BotTempOut/8),(_b_BotTempOut)&7	;volatile
	line	590
	
l12132:	
;key.c: 590: b_Opencook_OK = 0;
	bcf	(_b_Opencook_OK/8),(_b_Opencook_OK)&7	;volatile
	line	592
	
l12134:	
;key.c: 592: Led_Step_100C = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_Led_Step_100C)^080h	;volatile
	line	593
	
l5909:	
	return
	opt stack 0
GLOBAL	__end_of_Cancel
	__end_of_Cancel:
	signat	_Cancel,89
	global	_OpenCook

;; *************** function _OpenCook *****************
;; Defined at:
;;		line 403 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BotHeatOff
;;		_BotHeatOn
;;		_Heat_Time_Select
;;		_ShortTimeOn
;; This function is called by:
;;		_Cook_Task
;; This function uses a non-reentrant model
;;
psect	text57,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	403
global __ptext57
__ptext57:	;psect for function _OpenCook
psect	text57
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	403
	global	__size_of_OpenCook
	__size_of_OpenCook	equ	__end_of_OpenCook-_OpenCook
	
_OpenCook:	
;incstack = 0
	opt	stack 3
; Regs used in _OpenCook: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	405
	
l12522:	
;cook.c: 405: if((b_PressureOn || WorkTimeM >= 30) && WorkStage != 3)
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u2291
	goto	u2290
u2291:
	goto	l12526
u2290:
	
l12524:	
	movlw	low(01Eh)
	subwf	(_WorkTimeM),w	;volatile
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l12584
u2300:
	
l12526:	
		movlw	3
	xorwf	((_WorkStage)),w	;volatile
	btfsc	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l12584
u2310:
	line	407
	
l12528:	
;cook.c: 406: {
;cook.c: 407: WorkStage = 3;
	movlw	low(03h)
	movwf	(_WorkStage)	;volatile
	line	408
;cook.c: 408: WorkStep = 2;
	movlw	low(02h)
	movwf	(_WorkStep)	;volatile
	line	409
	
l12530:	
;cook.c: 409: ShortTimeOn();
	fcall	_ShortTimeOn
	goto	l12584
	line	416
	
l12532:	
;cook.c: 416: if(Ad_Bot >= 163)
	movlw	low(0A3h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l12540
u2320:
	line	418
	
l12534:	
;cook.c: 417: {
;cook.c: 418: BotHeatOff();
	fcall	_BotHeatOff
	line	419
;cook.c: 419: ShortTimeOn();
	fcall	_ShortTimeOn
	line	420
	
l12536:	
;cook.c: 420: WorkStep++;
	incf	(_WorkStep),f	;volatile
	line	421
	
l12538:	
;cook.c: 421: b_Opencook_OK = 0;
	bcf	(_b_Opencook_OK/8),(_b_Opencook_OK)&7	;volatile
	line	422
;cook.c: 422: break;
	goto	l1986
	line	424
	
l12540:	
;cook.c: 423: }
;cook.c: 424: BotHeatOn();
	fcall	_BotHeatOn
	line	425
;cook.c: 425: break;
	goto	l1986
	line	427
	
l12542:	
;cook.c: 427: if(ShortCntM >= 5 || Ad_Bot >= 204)
	movlw	low(05h)
	subwf	(_ShortCntM),w	;volatile
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l12546
u2330:
	
l12544:	
	movlw	low(0CCh)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l12554
u2340:
	line	429
	
l12546:	
;cook.c: 428: {
;cook.c: 429: WorkStage = 3;
	movlw	low(03h)
	movwf	(_WorkStage)	;volatile
	line	430
	
l12548:	
;cook.c: 430: BotHeatOff();
	fcall	_BotHeatOff
	line	431
	
l12550:	
;cook.c: 431: ShortTimeOn();
	fcall	_ShortTimeOn
	line	432
	
l12552:	
;cook.c: 432: WorkStep++;
	incf	(_WorkStep),f	;volatile
	line	434
;cook.c: 434: TotalTimeSave = WorkTimeM + CountDownTime;
	movf	(_CountDownTime),w	;volatile
	addwf	(_WorkTimeM),w	;volatile
	movwf	(_TotalTimeSave)	;volatile
	line	435
;cook.c: 435: break;
	goto	l1986
	line	437
	
l12554:	
;cook.c: 436: }
;cook.c: 437: Heat_Time_Select(24, 6);
	movlw	low(06h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(018h)
	fcall	_Heat_Time_Select
	line	438
;cook.c: 438: break;
	goto	l1986
	line	439
;cook.c: 439: case 2:
	
l1974:	
	line	441
;cook.c: 441: if(b_PressureOn)
	btfss	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u2351
	goto	u2350
u2351:
	goto	l1975
u2350:
	line	443
	
l12556:	
;cook.c: 442: {
;cook.c: 443: BotHeatOff();
	fcall	_BotHeatOff
	line	444
;cook.c: 444: break;
	goto	l1986
	line	445
	
l1975:	
	line	447
;cook.c: 445: }
;cook.c: 447: if(b_Opencook_OK == 0 && Ad_Bot >= 204)
	btfsc	(_b_Opencook_OK/8),(_b_Opencook_OK)&7	;volatile
	goto	u2361
	goto	u2360
u2361:
	goto	l1976
u2360:
	
l12558:	
	movlw	low(0CCh)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l1976
u2370:
	line	449
	
l12560:	
;cook.c: 448: {
;cook.c: 449: BotHeatOff();
	fcall	_BotHeatOff
	line	450
	
l12562:	
;cook.c: 450: b_Opencook_OK = 1;
	bsf	(_b_Opencook_OK/8),(_b_Opencook_OK)&7	;volatile
	line	451
;cook.c: 451: break;
	goto	l1986
	line	452
	
l1976:	
	line	454
;cook.c: 452: }
;cook.c: 454: if(b_Opencook_OK)
	btfss	(_b_Opencook_OK/8),(_b_Opencook_OK)&7	;volatile
	goto	u2381
	goto	u2380
u2381:
	goto	l12572
u2380:
	line	456
	
l12564:	
;cook.c: 455: {
;cook.c: 456: if(Ad_Bot >= 179)
	movlw	low(0B3h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l12568
u2390:
	goto	l12556
	line	460
	
l12568:	
;cook.c: 460: else if(Ad_Bot <= 171)
	movlw	low(0ACh)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2401
	goto	u2400
u2401:
	goto	l1981
u2400:
	line	462
	
l12570:	
;cook.c: 461: {
;cook.c: 462: Heat_Time_Select(15, 15);
	movlw	low(0Fh)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Fh)
	fcall	_Heat_Time_Select
	goto	l1986
	line	468
	
l12572:	
;cook.c: 465: else
;cook.c: 466: {
;cook.c: 468: if(Ad_Bot >= 179)
	movlw	low(0B3h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l12576
u2410:
	line	470
	
l12574:	
;cook.c: 469: {
;cook.c: 470: Heat_Time_Select(24, 6);
	movlw	low(06h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(018h)
	fcall	_Heat_Time_Select
	line	471
;cook.c: 471: }
	goto	l1986
	line	472
	
l12576:	
;cook.c: 472: else if(Ad_Bot <= 171)
	movlw	low(0ACh)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l1981
u2420:
	goto	l12540
	line	476
	
l1981:	
	line	477
;cook.c: 475: }
;cook.c: 476: }
;cook.c: 477: break;
	goto	l1986
	line	413
	
l12584:	
	movf	(_WorkStep),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l12532
	xorlw	1^0	; case 1
	skipnz
	goto	l12542
	xorlw	2^1	; case 2
	skipnz
	goto	l1974
	goto	l12556
	opt asmopt_pop

	line	480
	
l1986:	
	return
	opt stack 0
GLOBAL	__end_of_OpenCook
	__end_of_OpenCook:
	signat	_OpenCook,89
	global	_KeepWarmHeat

;; *************** function _KeepWarmHeat *****************
;; Defined at:
;;		line 634 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BotHeatOff
;;		_BotHeatOn
;;		_Heat_Time_Select
;; This function is called by:
;;		_Cook_Task
;; This function uses a non-reentrant model
;;
psect	text58,local,class=CODE,delta=2,merge=1,group=0
	line	634
global __ptext58
__ptext58:	;psect for function _KeepWarmHeat
psect	text58
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	634
	global	__size_of_KeepWarmHeat
	__size_of_KeepWarmHeat	equ	__end_of_KeepWarmHeat-_KeepWarmHeat
	
_KeepWarmHeat:	
;incstack = 0
	opt	stack 3
; Regs used in _KeepWarmHeat: [wreg+status,2+status,0+pclath+cstack]
	line	636
	
l15348:	
;cook.c: 636: if(b_PressureOn == 1 || Ad_Bot >= 89)
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u6791
	goto	u6790
u6791:
	goto	l15352
u6790:
	
l15350:	
	movlw	low(059h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u6801
	goto	u6800
u6801:
	goto	l15354
u6800:
	line	638
	
l15352:	
;cook.c: 637: {
;cook.c: 638: BotHeatOff();
	fcall	_BotHeatOff
	line	639
;cook.c: 639: }
	goto	l2050
	line	640
	
l15354:	
;cook.c: 640: else if(Ad_Bot <= 80)
	movlw	low(051h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u6811
	goto	u6810
u6811:
	goto	l2050
u6810:
	line	642
	
l15356:	
;cook.c: 641: {
;cook.c: 642: if(Ad_Bot >= 70)
	movlw	low(046h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u6821
	goto	u6820
u6821:
	goto	l15360
u6820:
	line	644
	
l15358:	
;cook.c: 643: {
;cook.c: 644: Heat_Time_Select(10, 22);
	movlw	low(016h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ah)
	fcall	_Heat_Time_Select
	line	645
;cook.c: 645: }
	goto	l2050
	line	646
	
l15360:	
;cook.c: 646: else if(Ad_Bot <= 65)
	movlw	low(042h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u6831
	goto	u6830
u6831:
	goto	l2046
u6830:
	line	648
	
l15362:	
;cook.c: 647: {
;cook.c: 648: BotHeatOn();
	fcall	_BotHeatOn
	goto	l2050
	line	650
	
l2046:	
	line	651
	
l2050:	
	return
	opt stack 0
GLOBAL	__end_of_KeepWarmHeat
	__end_of_KeepWarmHeat:
	signat	_KeepWarmHeat,89
	global	_FactoryTest

;; *************** function _FactoryTest *****************
;; Defined at:
;;		line 77 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BotHeatOff
;;		_BotHeatOn
;;		_ShortTimeOn
;; This function is called by:
;;		_Cook_Task
;; This function uses a non-reentrant model
;;
psect	text59,local,class=CODE,delta=2,merge=1,group=0
	line	77
global __ptext59
__ptext59:	;psect for function _FactoryTest
psect	text59
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	77
	global	__size_of_FactoryTest
	__size_of_FactoryTest	equ	__end_of_FactoryTest-_FactoryTest
	
_FactoryTest:	
;incstack = 0
	opt	stack 3
; Regs used in _FactoryTest: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	80
	
l12248:	
;cook.c: 80: if(b_Auto_test == 1)
	btfss	(_b_Auto_test/8),(_b_Auto_test)&7	;volatile
	goto	u1931
	goto	u1930
u1931:
	goto	l1854
u1930:
	line	82
	
l12250:	
;cook.c: 81: {
;cook.c: 82: BotHeatOn();
	fcall	_BotHeatOn
	goto	l1855
	line	85
	
l1854:	
	line	87
;cook.c: 85: }
;cook.c: 87: if(b_BotTempOut == 1)
	btfss	(_b_BotTempOut/8),(_b_BotTempOut)&7	;volatile
	goto	u1941
	goto	u1940
u1941:
	goto	l12258
u1940:
	line	89
	
l12254:	
;cook.c: 88: {
;cook.c: 89: BotHeatOff();
	fcall	_BotHeatOff
	goto	l1855
	line	93
	
l12258:	
;cook.c: 91: }
;cook.c: 93: if(Ad_Bot >= 204)
	movlw	low(0CCh)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l12288
u1950:
	line	95
	
l12260:	
;cook.c: 94: {
;cook.c: 95: BotHeatOff();
	fcall	_BotHeatOff
	line	96
	
l12262:	
;cook.c: 96: b_BotTempOut = 1;
	bsf	(_b_BotTempOut/8),(_b_BotTempOut)&7	;volatile
	goto	l1855
	line	103
	
l12266:	
;cook.c: 103: ShortTimeOn();
	fcall	_ShortTimeOn
	line	104
	
l12268:	
;cook.c: 104: WorkStep++;
	incf	(_WorkStep),f	;volatile
	line	105
;cook.c: 105: break;
	goto	l1855
	line	106
;cook.c: 106: case 1:
	
l1861:	
	line	107
;cook.c: 107: if(b_PressureOn)
	btfss	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u1961
	goto	u1960
u1961:
	goto	l12250
u1960:
	line	109
	
l12270:	
;cook.c: 108: {
;cook.c: 109: FactoryTestData = 20;
	movlw	low(014h)
	movwf	(_FactoryTestData)	;volatile
	line	110
;cook.c: 110: CountDownTime = 1;
	movlw	low(01h)
	movwf	(_CountDownTime)	;volatile
	line	111
	
l12272:	
;cook.c: 111: BotHeatOff();
	fcall	_BotHeatOff
	goto	l12266
	line	118
;cook.c: 118: case 2:
	
l1863:	
	line	119
;cook.c: 119: if(b_PressureOn)
	btfss	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u1971
	goto	u1970
u1971:
	goto	l12250
u1970:
	goto	l12254
	line	100
	
l12288:	
	movf	(_WorkStep),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l12266
	xorlw	1^0	; case 1
	skipnz
	goto	l1861
	xorlw	2^1	; case 2
	skipnz
	goto	l1863
	goto	l12254
	opt asmopt_pop

	line	131
	
l1855:	
	return
	opt stack 0
GLOBAL	__end_of_FactoryTest
	__end_of_FactoryTest:
	signat	_FactoryTest,89
	global	_CakeHeat

;; *************** function _CakeHeat *****************
;; Defined at:
;;		line 491 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BotHeatOff
;;		_BotHeatOn
;;		_Heat_Time_Select
;;		_ShortTimeOn
;; This function is called by:
;;		_Cook_Task
;; This function uses a non-reentrant model
;;
psect	text60,local,class=CODE,delta=2,merge=1,group=0
	line	491
global __ptext60
__ptext60:	;psect for function _CakeHeat
psect	text60
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	491
	global	__size_of_CakeHeat
	__size_of_CakeHeat	equ	__end_of_CakeHeat-_CakeHeat
	
_CakeHeat:	
;incstack = 0
	opt	stack 3
; Regs used in _CakeHeat: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	493
	
l12586:	
;cook.c: 493: if(((WorkTimeM >= 30) || Ad_Bot >= 204 || b_PressureOn) && WorkStage != 3)
	movlw	low(01Eh)
	subwf	(_WorkTimeM),w	;volatile
	skipnc
	goto	u2431
	goto	u2430
u2431:
	goto	l12592
u2430:
	
l12588:	
	movlw	low(0CCh)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l12592
u2440:
	
l12590:	
	btfss	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u2451
	goto	u2450
u2451:
	goto	l12654
u2450:
	
l12592:	
		movlw	3
	xorwf	((_WorkStage)),w	;volatile
	btfsc	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l12654
u2460:
	line	495
	
l12594:	
;cook.c: 494: {
;cook.c: 495: WorkStage = 3;
	movlw	low(03h)
	movwf	(_WorkStage)	;volatile
	line	496
;cook.c: 496: WorkStep = 3;
	movlw	low(03h)
	movwf	(_WorkStep)	;volatile
	line	497
	
l12596:	
;cook.c: 497: ShortTimeOn();
	fcall	_ShortTimeOn
	line	499
	
l12598:	
;cook.c: 499: TotalTimeSave = WorkTimeM + CountDownTime;
	movf	(_CountDownTime),w	;volatile
	addwf	(_WorkTimeM),w	;volatile
	movwf	(_TotalTimeSave)	;volatile
	goto	l12654
	line	504
	
l12600:	
;cook.c: 504: ShortTimeOn();
	fcall	_ShortTimeOn
	line	505
	
l12602:	
;cook.c: 505: WorkStep++;
	incf	(_WorkStep),f	;volatile
	line	506
;cook.c: 506: break;
	goto	l2017
	line	508
	
l12604:	
;cook.c: 508: if(Ad_Bot >= 154 || ShortCntM >= 15)
	movlw	low(09Ah)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2471
	goto	u2470
u2471:
	goto	l12608
u2470:
	
l12606:	
	movlw	low(0Fh)
	subwf	(_ShortCntM),w	;volatile
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l12612
u2480:
	line	510
	
l12608:	
;cook.c: 509: {
;cook.c: 510: BotHeatOff();
	fcall	_BotHeatOff
	line	511
;cook.c: 511: ShortTimeOn();
	fcall	_ShortTimeOn
	goto	l12602
	line	515
	
l12612:	
;cook.c: 514: }
;cook.c: 515: BotHeatOn();
	fcall	_BotHeatOn
	line	516
;cook.c: 516: break;
	goto	l2017
	line	518
	
l12614:	
;cook.c: 518: if(Ad_Bot >= 204 || ShortCntM >= 15)
	movlw	low(0CCh)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l12618
u2490:
	
l12616:	
	movlw	low(0Fh)
	subwf	(_ShortCntM),w	;volatile
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l12626
u2500:
	line	520
	
l12618:	
;cook.c: 519: {
;cook.c: 520: WorkStage = 3;
	movlw	low(03h)
	movwf	(_WorkStage)	;volatile
	line	521
	
l12620:	
;cook.c: 521: WorkStep++;
	incf	(_WorkStep),f	;volatile
	line	522
	
l12622:	
;cook.c: 522: BotHeatOff();
	fcall	_BotHeatOff
	line	524
	
l12624:	
;cook.c: 524: TotalTimeSave = WorkTimeM + CountDownTime;
	movf	(_CountDownTime),w	;volatile
	addwf	(_WorkTimeM),w	;volatile
	movwf	(_TotalTimeSave)	;volatile
	line	525
;cook.c: 525: break;
	goto	l2017
	line	527
	
l12626:	
;cook.c: 526: }
;cook.c: 527: if(Ad_Bot <= 186)
	movlw	low(0BBh)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l12630
u2510:
	line	529
	
l12628:	
;cook.c: 528: {
;cook.c: 529: Heat_Time_Select(12, 8);
	movlw	low(08h)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(0Ch)
	fcall	_Heat_Time_Select
	line	530
;cook.c: 530: }
	goto	l2017
	line	531
	
l12630:	
;cook.c: 531: else if(Ad_Bot <= 197)
	movlw	low(0C6h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2521
	goto	u2520
u2521:
	goto	l12634
u2520:
	line	533
	
l12632:	
;cook.c: 532: {
;cook.c: 533: Heat_Time_Select(7, 13);
	movlw	low(0Dh)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(07h)
	fcall	_Heat_Time_Select
	line	534
;cook.c: 534: }
	goto	l2017
	line	535
	
l12634:	
;cook.c: 535: else if(Ad_Bot <= 204)
	movlw	low(0CDh)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l2004
u2530:
	line	537
	
l12636:	
;cook.c: 536: {
;cook.c: 537: Heat_Time_Select(5, 15);
	movlw	low(0Fh)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(05h)
	fcall	_Heat_Time_Select
	goto	l2017
	line	539
	
l2004:	
;cook.c: 538: }
;cook.c: 539: break;
	goto	l2017
	line	540
;cook.c: 540: case 3:
	
l2008:	
	line	541
;cook.c: 541: if(b_PressureOn || Ad_Bot >= 201)
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u2541
	goto	u2540
u2541:
	goto	l12640
u2540:
	
l12638:	
	movlw	low(0C9h)
	subwf	(_Ad_Bot),w	;volatile
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l12642
u2550:
	line	543
	
l12640:	
;cook.c: 542: {
;cook.c: 543: BotHeatOff();
	fcall	_BotHeatOff
	line	544
;cook.c: 544: }
	goto	l2017
	line	545
	
l12642:	
;cook.c: 545: else if(Ad_Bot <= 186)
	movlw	low(0BBh)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2561
	goto	u2560
u2561:
	goto	l12646
u2560:
	line	547
	
l12644:	
;cook.c: 546: {
;cook.c: 547: Heat_Time_Select(7, 13);
	movlw	low(0Dh)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(07h)
	fcall	_Heat_Time_Select
	line	548
;cook.c: 548: }
	goto	l2017
	line	549
	
l12646:	
;cook.c: 549: else if(Ad_Bot <= 197)
	movlw	low(0C6h)
	subwf	(_Ad_Bot),w	;volatile
	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l2017
u2570:
	line	551
	
l12648:	
;cook.c: 550: {
;cook.c: 551: Heat_Time_Select(5, 15);
	movlw	low(0Fh)
	movwf	(Heat_Time_Select@offtm)
	movlw	low(05h)
	fcall	_Heat_Time_Select
	goto	l2017
	line	501
	
l12654:	
	movf	(_WorkStep),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           20     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l12600
	xorlw	1^0	; case 1
	skipnz
	goto	l12604
	xorlw	2^1	; case 2
	skipnz
	goto	l12614
	xorlw	3^2	; case 3
	skipnz
	goto	l2008
	goto	l12640
	opt asmopt_pop

	line	556
	
l2017:	
	return
	opt stack 0
GLOBAL	__end_of_CakeHeat
	__end_of_CakeHeat:
	signat	_CakeHeat,89
	global	_ShortTimeOn

;; *************** function _ShortTimeOn *****************
;; Defined at:
;;		line 64 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_FactoryTest
;;		_RiceHeat
;;		_PressureHeat
;;		_OpenCook
;;		_CakeHeat
;;		_ReheatCook
;; This function uses a non-reentrant model
;;
psect	text61,local,class=CODE,delta=2,merge=1,group=0
	line	64
global __ptext61
__ptext61:	;psect for function _ShortTimeOn
psect	text61
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	64
	global	__size_of_ShortTimeOn
	__size_of_ShortTimeOn	equ	__end_of_ShortTimeOn-_ShortTimeOn
	
_ShortTimeOn:	
;incstack = 0
	opt	stack 3
; Regs used in _ShortTimeOn: [status,2]
	line	66
	
l12074:	
;cook.c: 66: b_ShortOn = 1;
	bsf	(_b_ShortOn/8),(_b_ShortOn)&7	;volatile
	line	67
	
l12076:	
;cook.c: 67: ShortCntL = 0;
	clrf	(_ShortCntL)	;volatile
	line	68
;cook.c: 68: ShortCntM = 0;
	clrf	(_ShortCntM)	;volatile
	line	69
	
l1851:	
	return
	opt stack 0
GLOBAL	__end_of_ShortTimeOn
	__end_of_ShortTimeOn:
	signat	_ShortTimeOn,89
	global	_Heat_Time_Select

;; *************** function _Heat_Time_Select *****************
;; Defined at:
;;		line 11 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;  ontm            1    wreg     unsigned char 
;;  offtm           1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ontm            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RiceHeat
;;		_PressureHeat
;;		_OpenCook
;;		_CakeHeat
;;		_ReheatCook
;;		_KeepWarmHeat
;; This function uses a non-reentrant model
;;
psect	text62,local,class=CODE,delta=2,merge=1,group=0
	line	11
global __ptext62
__ptext62:	;psect for function _Heat_Time_Select
psect	text62
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	11
	global	__size_of_Heat_Time_Select
	__size_of_Heat_Time_Select	equ	__end_of_Heat_Time_Select-_Heat_Time_Select
	
_Heat_Time_Select:	
;incstack = 0
	opt	stack 3
; Regs used in _Heat_Time_Select: [wreg+status,2+status,0]
;Heat_Time_Select@ontm stored from wreg
	movwf	(Heat_Time_Select@ontm)
	line	14
	
l12052:	
;cook.c: 14: if(ontm > 63)
	movlw	low(040h)
	subwf	(Heat_Time_Select@ontm),w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l1840
u1680:
	line	16
	
l12054:	
;cook.c: 15: {
;cook.c: 16: ontm = 63;
	movlw	low(03Fh)
	movwf	(Heat_Time_Select@ontm)
	line	17
	
l1840:	
	line	19
;cook.c: 17: }
;cook.c: 19: if(offtm > 63)
	movlw	low(040h)
	subwf	(Heat_Time_Select@offtm),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l12058
u1690:
	line	21
	
l12056:	
;cook.c: 20: {
;cook.c: 21: offtm = 63;
	movlw	low(03Fh)
	movwf	(Heat_Time_Select@offtm)
	line	25
	
l12058:	
;cook.c: 22: }
;cook.c: 25: RelOnCnt = ontm*2;
	clrc
	rlf	(Heat_Time_Select@ontm),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_RelOnCnt)^080h	;volatile
	line	26
	
l12060:	
;cook.c: 26: RelOffCnt = offtm*2;
	bcf	status, 5	;RP0=0, select bank0
	clrc
	rlf	(Heat_Time_Select@offtm),w
	movwf	(_RelOffCnt)	;volatile
	line	28
	
l12062:	
;cook.c: 28: b_BotHeatEn = 1;
	bsf	(_b_BotHeatEn/8),(_b_BotHeatEn)&7	;volatile
	line	29
	
l12064:	
;cook.c: 29: b_BotHeatOn = 0;
	bcf	(_b_BotHeatOn/8),(_b_BotHeatOn)&7	;volatile
	line	30
	
l1842:	
	return
	opt stack 0
GLOBAL	__end_of_Heat_Time_Select
	__end_of_Heat_Time_Select:
	signat	_Heat_Time_Select,8313
	global	_BotHeatOn

;; *************** function _BotHeatOn *****************
;; Defined at:
;;		line 38 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_FactoryTest
;;		_RiceHeat
;;		_PressureHeat
;;		_OpenCook
;;		_CakeHeat
;;		_ReheatCook
;;		_KeepWarmHeat
;;		_Cook_Task
;; This function uses a non-reentrant model
;;
psect	text63,local,class=CODE,delta=2,merge=1,group=0
	line	38
global __ptext63
__ptext63:	;psect for function _BotHeatOn
psect	text63
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	38
	global	__size_of_BotHeatOn
	__size_of_BotHeatOn	equ	__end_of_BotHeatOn-_BotHeatOn
	
_BotHeatOn:	
;incstack = 0
	opt	stack 3
; Regs used in _BotHeatOn: [status,2]
	line	40
	
l12066:	
;cook.c: 40: b_BotHeatEn = 0;
	bcf	(_b_BotHeatEn/8),(_b_BotHeatEn)&7	;volatile
	line	41
;cook.c: 41: b_BotHeatOn = 1;
	bsf	(_b_BotHeatOn/8),(_b_BotHeatOn)&7	;volatile
	line	42
	
l12068:	
;cook.c: 42: HeatCnt500ms = 0;
	clrf	(_HeatCnt500ms)	;volatile
	line	43
	
l1845:	
	return
	opt stack 0
GLOBAL	__end_of_BotHeatOn
	__end_of_BotHeatOn:
	signat	_BotHeatOn,89
	global	_BotHeatOff

;; *************** function _BotHeatOff *****************
;; Defined at:
;;		line 51 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_FactoryTest
;;		_RiceHeat
;;		_PressureHeat
;;		_OpenCook
;;		_CakeHeat
;;		_ReheatCook
;;		_KeepWarmHeat
;;		_Cook_Task
;; This function uses a non-reentrant model
;;
psect	text64,local,class=CODE,delta=2,merge=1,group=0
	line	51
global __ptext64
__ptext64:	;psect for function _BotHeatOff
psect	text64
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	51
	global	__size_of_BotHeatOff
	__size_of_BotHeatOff	equ	__end_of_BotHeatOff-_BotHeatOff
	
_BotHeatOff:	
;incstack = 0
	opt	stack 3
; Regs used in _BotHeatOff: [status,2]
	line	53
	
l12070:	
;cook.c: 53: b_BotHeatEn = 0;
	bcf	(_b_BotHeatEn/8),(_b_BotHeatEn)&7	;volatile
	line	54
;cook.c: 54: b_BotHeatOn = 0;
	bcf	(_b_BotHeatOn/8),(_b_BotHeatOn)&7	;volatile
	line	55
	
l12072:	
;cook.c: 55: HeatCnt500ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_HeatCnt500ms)	;volatile
	line	56
	
l1848:	
	return
	opt stack 0
GLOBAL	__end_of_BotHeatOff
	__end_of_BotHeatOff:
	signat	_BotHeatOff,89
	global	_Timer1_Isr

;; *************** function _Timer1_Isr *****************
;; Defined at:
;;		line 143 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Get_AC_Voltage
;;		_Get_AD
;;		_Get_Pressure_Switch_Data
;;		_Get_Zero
;;		_Operate_Relay_IO
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text65,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	143
global __ptext65
__ptext65:	;psect for function _Timer1_Isr
psect	text65
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\main.c"
	line	143
	global	__size_of_Timer1_Isr
	__size_of_Timer1_Isr	equ	__end_of_Timer1_Isr-_Timer1_Isr
	
_Timer1_Isr:	
;incstack = 0
	opt	stack 2
; Regs used in _Timer1_Isr: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Timer1_Isr+0)
	movf	pclath,w
	movwf	(??_Timer1_Isr+1)
	ljmp	_Timer1_Isr
psect	text65
	line	145
	
i1l14620:	
;main.c: 145: if(TMR1IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7	;volatile
	goto	u626_21
	goto	u626_20
u626_21:
	goto	i1l6850
u626_20:
	line	148
	
i1l14622:	
;main.c: 146: {
;main.c: 148: TMR1L += 0x30;
	movlw	low(030h)
	addwf	(14),f	;volatile
	line	149
;main.c: 149: TMR1H += 0xF8;
	movlw	low(0F8h)
	addwf	(15),f	;volatile
	line	152
	
i1l14624:	
;main.c: 152: Operate_Relay_IO();
	fcall	_Operate_Relay_IO
	line	153
	
i1l14626:	
;main.c: 153: Ad_Pressure_Raw = Get_AD(0x13);
	movlw	low(013h)
	fcall	_Get_AD
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_Ad_Pressure_Raw)	;volatile
	line	154
	
i1l14628:	
;main.c: 154: Get_Pressure_Switch_Data();
	fcall	_Get_Pressure_Switch_Data
	line	155
	
i1l14630:	
;main.c: 155: Get_Zero();
	fcall	_Get_Zero
	line	157
	
i1l14632:	
;main.c: 157: if(b_VolData_OK == 0)
	btfsc	(_b_VolData_OK/8),(_b_VolData_OK)&7	;volatile
	goto	u627_21
	goto	u627_20
u627_21:
	goto	i1l14636
u627_20:
	line	159
	
i1l14634:	
;main.c: 158: {
;main.c: 159: Get_AC_Voltage();
	fcall	_Get_AC_Voltage
	line	163
	
i1l14636:	
;main.c: 160: }
;main.c: 163: if(++MainTime_8ms >= 32)
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_MainTime_8ms)^080h,f	;volatile
	subwf	((_MainTime_8ms)^080h),w	;volatile
	skipc
	goto	u628_21
	goto	u628_20
u628_21:
	goto	i1l14648
u628_20:
	line	165
	
i1l14638:	
;main.c: 164: {
;main.c: 165: MainTime_8ms = 0;
	clrf	(_MainTime_8ms)^080h	;volatile
	line	166
	
i1l14640:	
;main.c: 166: b_MainLoop_8ms = 1;
	bsf	(_b_MainLoop_8ms/8),(_b_MainLoop_8ms)&7	;volatile
	line	168
	
i1l14642:	
;main.c: 168: if(b_AdBot_OK == 0)
	btfsc	(_b_AdBot_OK/8),(_b_AdBot_OK)&7	;volatile
	goto	u629_21
	goto	u629_20
u629_21:
	goto	i1l14648
u629_20:
	line	170
	
i1l14644:	
;main.c: 169: {
;main.c: 170: Ad_Bot_Raw = Get_AD(0x14);
	movlw	low(014h)
	fcall	_Get_AD
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_Ad_Bot_Raw)	;volatile
	line	171
	
i1l14646:	
;main.c: 171: b_AdBot_OK = 1;
	bsf	(_b_AdBot_OK/8),(_b_AdBot_OK)&7	;volatile
	line	176
	
i1l14648:	
;main.c: 172: }
;main.c: 173: }
;main.c: 176: if(++MainTime_10ms >= 40)
	movlw	low(028h)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_MainTime_10ms)^080h,f	;volatile
	subwf	((_MainTime_10ms)^080h),w	;volatile
	skipc
	goto	u630_21
	goto	u630_20
u630_21:
	goto	i1l14664
u630_20:
	line	178
	
i1l14650:	
;main.c: 177: {
;main.c: 178: MainTime_10ms = 0;
	clrf	(_MainTime_10ms)^080h	;volatile
	line	181
	
i1l14652:	
;main.c: 181: if(++MainTime_500ms >= 50)
	movlw	low(032h)
	incf	(_MainTime_500ms)^080h,f	;volatile
	subwf	((_MainTime_500ms)^080h),w	;volatile
	skipc
	goto	u631_21
	goto	u631_20
u631_21:
	goto	i1l14658
u631_20:
	line	183
	
i1l14654:	
;main.c: 182: {
;main.c: 183: MainTime_500ms = 0;
	clrf	(_MainTime_500ms)^080h	;volatile
	line	184
	
i1l14656:	
;main.c: 184: b_MainLoop_500ms = 1;
	bsf	(_b_MainLoop_500ms/8),(_b_MainLoop_500ms)&7	;volatile
	line	187
	
i1l14658:	
;main.c: 185: }
;main.c: 187: if(++LedCol_500ms >= 50)
	movlw	low(032h)
	incf	(_LedCol_500ms)^080h,f	;volatile
	subwf	((_LedCol_500ms)^080h),w	;volatile
	skipc
	goto	u632_21
	goto	u632_20
u632_21:
	goto	i1l14664
u632_20:
	line	189
	
i1l14660:	
;main.c: 188: {
;main.c: 189: LedCol_500ms = 0;
	clrf	(_LedCol_500ms)^080h	;volatile
	line	190
	
i1l14662:	
;main.c: 190: b_LedCol = ~b_LedCol;
	movlw	1<<((_b_LedCol)&7)
	xorwf	((_b_LedCol)/8),f
	line	193
	
i1l14664:	
;main.c: 191: }
;main.c: 192: }
;main.c: 193: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(96/8),(96)&7	;volatile
	line	196
	
i1l6850:	
	movf	(??_Timer1_Isr+1),w
	movwf	pclath
	swapf	(??_Timer1_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Timer1_Isr
	__end_of_Timer1_Isr:
	signat	_Timer1_Isr,89
	global	_Operate_Relay_IO

;; *************** function _Operate_Relay_IO *****************
;; Defined at:
;;		line 805 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Timer1_Isr
;; This function uses a non-reentrant model
;;
psect	text66,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	805
global __ptext66
__ptext66:	;psect for function _Operate_Relay_IO
psect	text66
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\cook.c"
	line	805
	global	__size_of_Operate_Relay_IO
	__size_of_Operate_Relay_IO	equ	__end_of_Operate_Relay_IO-_Operate_Relay_IO
	
_Operate_Relay_IO:	
;incstack = 0
	opt	stack 2
; Regs used in _Operate_Relay_IO: [wreg+status,2+status,0]
	line	808
	
i1l14132:	
;cook.c: 808: if(++RelWaitCnt >= 4000)
	incf	(_RelWaitCnt),f	;volatile
	skipnz
	incf	(_RelWaitCnt+1),f	;volatile
	movlw	0Fh
	subwf	((_RelWaitCnt+1)),w	;volatile
	movlw	0A0h
	skipnz
	subwf	((_RelWaitCnt)),w	;volatile
	skipc
	goto	u553_21
	goto	u553_20
u553_21:
	goto	i1l14136
u553_20:
	line	810
	
i1l14134:	
;cook.c: 809: {
;cook.c: 810: RelWaitCnt = 4000;
	movlw	0A0h
	movwf	(_RelWaitCnt)	;volatile
	movlw	0Fh
	movwf	((_RelWaitCnt))+1	;volatile
	line	813
	
i1l14136:	
;cook.c: 811: }
;cook.c: 813: if(b_Rel_NoZero)
	btfss	(_b_Rel_NoZero/8),(_b_Rel_NoZero)&7	;volatile
	goto	u554_21
	goto	u554_20
u554_21:
	goto	i1l2103
u554_20:
	line	815
	
i1l14138:	
;cook.c: 814: {
;cook.c: 815: b_Rel_NoZero = 0;
	bcf	(_b_Rel_NoZero/8),(_b_Rel_NoZero)&7	;volatile
	line	816
;cook.c: 816: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	817
	
i1l14140:	
;cook.c: 817: RelWaitCnt = 0;
	clrf	(_RelWaitCnt)	;volatile
	clrf	(_RelWaitCnt+1)	;volatile
	line	818
;cook.c: 818: }
	goto	i1l14176
	line	819
	
i1l2103:	
;cook.c: 819: else if(b_Zero)
	btfss	(_b_Zero/8),(_b_Zero)&7	;volatile
	goto	u555_21
	goto	u555_20
u555_21:
	goto	i1l2105
u555_20:
	line	822
	
i1l14142:	
;cook.c: 820: {
;cook.c: 822: if(b_RelType)
	btfss	(_b_RelType/8),(_b_RelType)&7	;volatile
	goto	u556_21
	goto	u556_20
u556_21:
	goto	i1l14152
u556_20:
	line	824
	
i1l14144:	
;cook.c: 823: {
;cook.c: 824: if(++ZeroDeley >= 21)
	movlw	low(015h)
	incf	(_ZeroDeley),f	;volatile
	subwf	((_ZeroDeley)),w	;volatile
	skipc
	goto	u557_21
	goto	u557_20
u557_21:
	goto	i1l2110
u557_20:
	line	826
	
i1l14146:	
;cook.c: 825: {
;cook.c: 826: ZeroDeley = 0;
	clrf	(_ZeroDeley)	;volatile
	line	827
	
i1l14148:	
;cook.c: 827: b_ZeroDeley_OK = 1;
	bsf	(_b_ZeroDeley_OK/8),(_b_ZeroDeley_OK)&7	;volatile
	line	828
	
i1l14150:	
;cook.c: 828: b_Zero = 0;
	bcf	(_b_Zero/8),(_b_Zero)&7	;volatile
	goto	i1l14176
	line	833
	
i1l14152:	
;cook.c: 831: else
;cook.c: 832: {
;cook.c: 833: if(++ZeroDeley >= 21)
	movlw	low(015h)
	incf	(_ZeroDeley),f	;volatile
	subwf	((_ZeroDeley)),w	;volatile
	skipc
	goto	u558_21
	goto	u558_20
u558_21:
	goto	i1l2110
u558_20:
	goto	i1l14146
	line	841
	
i1l2105:	
;cook.c: 841: else if(b_ZeroTimeout == 1)
	btfss	(_b_ZeroTimeout/8),(_b_ZeroTimeout)&7	;volatile
	goto	u559_21
	goto	u559_20
u559_21:
	goto	i1l14176
u559_20:
	line	843
	
i1l14160:	
;cook.c: 842: {
;cook.c: 843: b_ZeroTimeout = 0;
	bcf	(_b_ZeroTimeout/8),(_b_ZeroTimeout)&7	;volatile
	line	844
	
i1l14162:	
;cook.c: 844: ZeroTimeoutCnt++;
	incf	(_ZeroTimeoutCnt),f	;volatile
	line	845
	
i1l14164:	
;cook.c: 845: if(ZeroTimeoutCnt >= 254)
	movlw	low(0FEh)
	subwf	(_ZeroTimeoutCnt),w	;volatile
	skipc
	goto	u560_21
	goto	u560_20
u560_21:
	goto	i1l14168
u560_20:
	line	847
	
i1l14166:	
;cook.c: 846: {
;cook.c: 847: ZeroTimeoutCnt = 254;
	movlw	low(0FEh)
	movwf	(_ZeroTimeoutCnt)	;volatile
	line	850
	
i1l14168:	
;cook.c: 848: }
;cook.c: 850: if(b_RelType)
	btfss	(_b_RelType/8),(_b_RelType)&7	;volatile
	goto	u561_21
	goto	u561_20
u561_21:
	goto	i1l2113
u561_20:
	line	852
	
i1l14170:	
;cook.c: 851: {
;cook.c: 852: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	goto	i1l14140
	line	855
	
i1l2113:	
	line	857
;cook.c: 855: else
;cook.c: 856: {
;cook.c: 857: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	goto	i1l14140
	line	863
	
i1l2110:	
	
i1l14176:	
;cook.c: 859: }
;cook.c: 860: }
;cook.c: 863: if(b_ZeroDeley_OK)
	btfss	(_b_ZeroDeley_OK/8),(_b_ZeroDeley_OK)&7	;volatile
	goto	u562_21
	goto	u562_20
u562_21:
	goto	i1l2118
u562_20:
	line	865
	
i1l14178:	
;cook.c: 864: {
;cook.c: 865: b_ZeroDeley_OK = 0;
	bcf	(_b_ZeroDeley_OK/8),(_b_ZeroDeley_OK)&7	;volatile
	line	867
;cook.c: 867: if(b_RelType)
	btfss	(_b_RelType/8),(_b_RelType)&7	;volatile
	goto	u563_21
	goto	u563_20
u563_21:
	goto	i1l2116
u563_20:
	line	869
	
i1l14180:	
;cook.c: 868: {
;cook.c: 869: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	870
	
i1l14182:	
;cook.c: 870: RelWaitCnt = 0;
	clrf	(_RelWaitCnt)	;volatile
	clrf	(_RelWaitCnt+1)	;volatile
	line	871
;cook.c: 871: }
	goto	i1l2118
	line	872
	
i1l2116:	
	line	874
;cook.c: 872: else
;cook.c: 873: {
;cook.c: 874: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	goto	i1l14182
	line	878
	
i1l2118:	
	return
	opt stack 0
GLOBAL	__end_of_Operate_Relay_IO
	__end_of_Operate_Relay_IO:
	signat	_Operate_Relay_IO,89
	global	_Get_Zero

;; *************** function _Get_Zero *****************
;; Defined at:
;;		line 259 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Timer1_Isr
;; This function uses a non-reentrant model
;;
psect	text67,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	259
global __ptext67
__ptext67:	;psect for function _Get_Zero
psect	text67
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	259
	global	__size_of_Get_Zero
	__size_of_Get_Zero	equ	__end_of_Get_Zero-_Get_Zero
	
_Get_Zero:	
;incstack = 0
	opt	stack 2
; Regs used in _Get_Zero: [wreg+status,2+status,0]
	line	268
	
i1l13952:	
;adc.c: 261: static v_uint16 s_zerotimes = 0;
;adc.c: 262: static v_uint8 s_zerocnt9ms = 0;
;adc.c: 263: static v_uint8 s_highcount = 0;
;adc.c: 264: static v_uint8 s_lowcount = 0;
;adc.c: 268: if(b_Zero_EN == 1)
	btfss	(_b_Zero_EN/8),(_b_Zero_EN)&7	;volatile
	goto	u519_21
	goto	u519_20
u519_21:
	goto	i1l927
u519_20:
	line	270
	
i1l13954:	
;adc.c: 269: {
;adc.c: 270: s_zerotimes++;
	incf	(Get_Zero@s_zerotimes)^080h,f	;volatile
	skipnz
	incf	(Get_Zero@s_zerotimes+1)^080h,f	;volatile
	line	272
	
i1l13956:	
;adc.c: 272: if(s_zerotimes >= 20000)
	movlw	04Eh
	subwf	(Get_Zero@s_zerotimes+1)^080h,w	;volatile
	movlw	020h
	skipnz
	subwf	(Get_Zero@s_zerotimes)^080h,w	;volatile
	skipc
	goto	u520_21
	goto	u520_20
u520_21:
	goto	i1l13968
u520_20:
	line	274
	
i1l13958:	
;adc.c: 273: {
;adc.c: 274: s_zerotimes = 0;
	clrf	(Get_Zero@s_zerotimes)^080h	;volatile
	clrf	(Get_Zero@s_zerotimes+1)^080h	;volatile
	line	275
	
i1l13960:	
;adc.c: 275: b_ZeroTimeout = 1;
	bsf	(_b_ZeroTimeout/8),(_b_ZeroTimeout)&7	;volatile
	line	278
	
i1l13962:	
;adc.c: 278: b_Zero_EN = 0;
	bcf	(_b_Zero_EN/8),(_b_Zero_EN)&7	;volatile
	line	279
	
i1l13964:	
;adc.c: 279: b_ZeroWave_OK = 0;
	bcf	(_b_ZeroWave_OK/8),(_b_ZeroWave_OK)&7	;volatile
	line	280
;adc.c: 280: s_zerocnt9ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(Get_Zero@s_zerocnt9ms)	;volatile
	line	281
;adc.c: 281: s_lowcount = 0;
	clrf	(Get_Zero@s_lowcount)	;volatile
	line	282
;adc.c: 282: s_highcount = 0;
	clrf	(Get_Zero@s_highcount)	;volatile
	goto	i1l927
	line	287
	
i1l13968:	
;adc.c: 284: }
;adc.c: 287: if(Ad_Pressure_Raw >= 20)
	movlw	low(014h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_Ad_Pressure_Raw),w	;volatile
	skipc
	goto	u521_21
	goto	u521_20
u521_21:
	goto	i1l13982
u521_20:
	line	289
	
i1l13970:	
;adc.c: 288: {
;adc.c: 289: s_zerocnt9ms++;
	incf	(Get_Zero@s_zerocnt9ms),f	;volatile
	line	290
	
i1l13972:	
;adc.c: 290: if(b_ZeroWave_OK == 0)
	btfsc	(_b_ZeroWave_OK/8),(_b_ZeroWave_OK)&7	;volatile
	goto	u522_21
	goto	u522_20
u522_21:
	goto	i1l13992
u522_20:
	line	292
	
i1l13974:	
;adc.c: 291: {
;adc.c: 292: s_lowcount = 0;
	clrf	(Get_Zero@s_lowcount)	;volatile
	line	293
	
i1l13976:	
;adc.c: 293: if(++s_highcount >= 34)
	movlw	low(022h)
	incf	(Get_Zero@s_highcount),f	;volatile
	subwf	((Get_Zero@s_highcount)),w	;volatile
	skipc
	goto	u523_21
	goto	u523_20
u523_21:
	goto	i1l13992
u523_20:
	line	295
	
i1l13978:	
;adc.c: 294: {
;adc.c: 295: s_highcount = 0;
	clrf	(Get_Zero@s_highcount)	;volatile
	line	296
	
i1l13980:	
;adc.c: 296: b_ZeroWave_OK = 1;
	bsf	(_b_ZeroWave_OK/8),(_b_ZeroWave_OK)&7	;volatile
	goto	i1l13992
	line	303
	
i1l13982:	
;adc.c: 301: else
;adc.c: 302: {
;adc.c: 303: if(s_zerocnt9ms > 0)
	movf	((Get_Zero@s_zerocnt9ms)),w	;volatile
	btfsc	status,2
	goto	u524_21
	goto	u524_20
u524_21:
	goto	i1l13992
u524_20:
	line	305
	
i1l13984:	
;adc.c: 304: {
;adc.c: 305: s_zerocnt9ms++;
	incf	(Get_Zero@s_zerocnt9ms),f	;volatile
	line	306
	
i1l13986:	
;adc.c: 306: if(b_ZeroWave_OK == 0)
	btfsc	(_b_ZeroWave_OK/8),(_b_ZeroWave_OK)&7	;volatile
	goto	u525_21
	goto	u525_20
u525_21:
	goto	i1l13992
u525_20:
	line	308
	
i1l13988:	
;adc.c: 307: {
;adc.c: 308: if(++s_lowcount >= 2)
	movlw	low(02h)
	incf	(Get_Zero@s_lowcount),f	;volatile
	subwf	((Get_Zero@s_lowcount)),w	;volatile
	skipc
	goto	u526_21
	goto	u526_20
u526_21:
	goto	i1l13992
u526_20:
	line	310
	
i1l13990:	
;adc.c: 309: {
;adc.c: 310: s_lowcount = 0;
	clrf	(Get_Zero@s_lowcount)	;volatile
	line	311
;adc.c: 311: s_highcount = 0;
	clrf	(Get_Zero@s_highcount)	;volatile
	line	312
;adc.c: 312: s_zerocnt9ms = 0;
	clrf	(Get_Zero@s_zerocnt9ms)	;volatile
	line	319
	
i1l13992:	
;adc.c: 313: }
;adc.c: 314: }
;adc.c: 315: }
;adc.c: 316: }
;adc.c: 319: if(s_zerocnt9ms >= 36)
	movlw	low(024h)
	subwf	(Get_Zero@s_zerocnt9ms),w	;volatile
	skipc
	goto	u527_21
	goto	u527_20
u527_21:
	goto	i1l927
u527_20:
	line	321
	
i1l13994:	
;adc.c: 320: {
;adc.c: 321: if(b_ZeroWave_OK)
	btfss	(_b_ZeroWave_OK/8),(_b_ZeroWave_OK)&7	;volatile
	goto	u528_21
	goto	u528_20
u528_21:
	goto	i1l14008
u528_20:
	line	323
	
i1l13996:	
;adc.c: 322: {
;adc.c: 323: b_ZeroWave_OK = 0;
	bcf	(_b_ZeroWave_OK/8),(_b_ZeroWave_OK)&7	;volatile
	line	324
	
i1l13998:	
;adc.c: 324: s_zerocnt9ms = 0;
	clrf	(Get_Zero@s_zerocnt9ms)	;volatile
	line	325
	
i1l14000:	
;adc.c: 325: b_Zero = 1;
	bsf	(_b_Zero/8),(_b_Zero)&7	;volatile
	line	326
	
i1l14002:	
;adc.c: 326: b_Zero_EN = 0;
	bcf	(_b_Zero_EN/8),(_b_Zero_EN)&7	;volatile
	line	329
	
i1l14004:	
;adc.c: 329: ZeroTimesShow = s_zerotimes;
	bsf	status, 5	;RP0=1, select bank1
	movf	(Get_Zero@s_zerotimes+1)^080h,w	;volatile
	movwf	(_ZeroTimesShow+1)^080h	;volatile
	movf	(Get_Zero@s_zerotimes)^080h,w	;volatile
	movwf	(_ZeroTimesShow)^080h	;volatile
	line	330
	
i1l14006:	
;adc.c: 330: s_zerotimes = 0;
	clrf	(Get_Zero@s_zerotimes)^080h	;volatile
	clrf	(Get_Zero@s_zerotimes+1)^080h	;volatile
	line	331
;adc.c: 331: }
	goto	i1l927
	line	335
	
i1l14008:	
;adc.c: 332: else
;adc.c: 333: {
;adc.c: 335: s_lowcount = 0;
	clrf	(Get_Zero@s_lowcount)	;volatile
	line	336
;adc.c: 336: s_highcount = 0;
	clrf	(Get_Zero@s_highcount)	;volatile
	line	337
;adc.c: 337: s_zerocnt9ms = 0;
	clrf	(Get_Zero@s_zerocnt9ms)	;volatile
	line	341
	
i1l927:	
	return
	opt stack 0
GLOBAL	__end_of_Get_Zero
	__end_of_Get_Zero:
	signat	_Get_Zero,89
	global	_Get_Pressure_Switch_Data

;; *************** function _Get_Pressure_Switch_Data *****************
;; Defined at:
;;		line 102 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Timer1_Isr
;; This function uses a non-reentrant model
;;
psect	text68,local,class=CODE,delta=2,merge=1,group=0
	line	102
global __ptext68
__ptext68:	;psect for function _Get_Pressure_Switch_Data
psect	text68
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	102
	global	__size_of_Get_Pressure_Switch_Data
	__size_of_Get_Pressure_Switch_Data	equ	__end_of_Get_Pressure_Switch_Data-_Get_Pressure_Switch_Data
	
_Get_Pressure_Switch_Data:	
;incstack = 0
	opt	stack 2
; Regs used in _Get_Pressure_Switch_Data: [wreg+status,2+status,0]
	line	108
	
i1l13856:	
;adc.c: 104: static v_uint16 s_pscount = 0;
;adc.c: 108: if(b_PressureOn == 0)
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u500_21
	goto	u500_20
u500_21:
	goto	i1l13868
u500_20:
	line	110
	
i1l13858:	
;adc.c: 109: {
;adc.c: 110: if(Ad_Pressure_Raw < 15)
	movlw	low(0Fh)
	subwf	(_Ad_Pressure_Raw),w	;volatile
	skipnc
	goto	u501_21
	goto	u501_20
u501_21:
	goto	i1l13866
u501_20:
	line	112
	
i1l13860:	
;adc.c: 111: {
;adc.c: 112: if(++s_pscount >= 1600)
	bsf	status, 5	;RP0=1, select bank1
	incf	(Get_Pressure_Switch_Data@s_pscount)^080h,f	;volatile
	skipnz
	incf	(Get_Pressure_Switch_Data@s_pscount+1)^080h,f	;volatile
	movlw	06h
	subwf	((Get_Pressure_Switch_Data@s_pscount+1)^080h),w	;volatile
	movlw	040h
	skipnz
	subwf	((Get_Pressure_Switch_Data@s_pscount)^080h),w	;volatile
	skipc
	goto	u502_21
	goto	u502_20
u502_21:
	goto	i1l880
u502_20:
	line	114
	
i1l13862:	
;adc.c: 113: {
;adc.c: 114: s_pscount = 0;
	clrf	(Get_Pressure_Switch_Data@s_pscount)^080h	;volatile
	clrf	(Get_Pressure_Switch_Data@s_pscount+1)^080h	;volatile
	line	115
	
i1l13864:	
;adc.c: 115: b_PressureOn = 1;
	bsf	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	i1l880
	line	120
	
i1l13866:	
;adc.c: 118: else
;adc.c: 119: {
;adc.c: 120: s_pscount = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Get_Pressure_Switch_Data@s_pscount)^080h	;volatile
	clrf	(Get_Pressure_Switch_Data@s_pscount+1)^080h	;volatile
	goto	i1l880
	line	125
	
i1l13868:	
;adc.c: 123: else
;adc.c: 124: {
;adc.c: 125: if(Ad_Pressure_Raw > 20)
	movlw	low(015h)
	subwf	(_Ad_Pressure_Raw),w	;volatile
	skipc
	goto	u503_21
	goto	u503_20
u503_21:
	goto	i1l13866
u503_20:
	line	127
	
i1l13870:	
;adc.c: 126: {
;adc.c: 127: if(++s_pscount >= 24)
	bsf	status, 5	;RP0=1, select bank1
	incf	(Get_Pressure_Switch_Data@s_pscount)^080h,f	;volatile
	skipnz
	incf	(Get_Pressure_Switch_Data@s_pscount+1)^080h,f	;volatile
	movlw	0
	subwf	((Get_Pressure_Switch_Data@s_pscount+1)^080h),w	;volatile
	movlw	018h
	skipnz
	subwf	((Get_Pressure_Switch_Data@s_pscount)^080h),w	;volatile
	skipc
	goto	u504_21
	goto	u504_20
u504_21:
	goto	i1l880
u504_20:
	line	129
	
i1l13872:	
;adc.c: 128: {
;adc.c: 129: s_pscount = 0;
	clrf	(Get_Pressure_Switch_Data@s_pscount)^080h	;volatile
	clrf	(Get_Pressure_Switch_Data@s_pscount+1)^080h	;volatile
	line	130
	
i1l13874:	
;adc.c: 130: b_PressureOn = 0;
	bcf	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	line	138
	
i1l880:	
	return
	opt stack 0
GLOBAL	__end_of_Get_Pressure_Switch_Data
	__end_of_Get_Pressure_Switch_Data:
	signat	_Get_Pressure_Switch_Data,89
	global	_Get_AD

;; *************** function _Get_AD *****************
;; Defined at:
;;		line 409 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    2[COMMON] unsigned char 
;;  adresult        1    1[COMMON] unsigned char 
;;  i               1    3[COMMON] volatile unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Timer1_Isr
;; This function uses a non-reentrant model
;;
psect	text69,local,class=CODE,delta=2,merge=1,group=0
	line	409
global __ptext69
__ptext69:	;psect for function _Get_AD
psect	text69
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	409
	global	__size_of_Get_AD
	__size_of_Get_AD	equ	__end_of_Get_AD-_Get_AD
	
_Get_AD:	
;incstack = 0
	opt	stack 2
; Regs used in _Get_AD: [wreg+status,2+status,0]
;Get_AD@ch stored from wreg
	movwf	(Get_AD@ch)
	line	411
	
i1l14042:	
;adc.c: 411: v_uint8 i = 0;
	clrf	(Get_AD@i)	;volatile
	line	415
	
i1l14044:	
;adc.c: 413: uint8 adresult;
;adc.c: 415: ADCON1 = 0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	417
	
i1l14046:	
;adc.c: 417: if(ch & 0x10)
	btfss	(Get_AD@ch),(4)&7
	goto	u535_21
	goto	u535_20
u535_21:
	goto	i1l14050
u535_20:
	line	419
	
i1l14048:	
;adc.c: 418: {
;adc.c: 419: ADCON1 |= 0x40;
	bsf	(159)^080h+(6/8),(6)&7	;volatile
	line	422
	
i1l14050:	
;adc.c: 420: }
;adc.c: 422: ch &= 0x0f;
	movlw	low(0Fh)
	andwf	(Get_AD@ch),f
	line	424
	
i1l14052:	
;adc.c: 424: ADCON0 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	425
	
i1l14054:	
;adc.c: 425: ADCON0 |= (unsigned char)(ch << 2);
	movf	(Get_AD@ch),w
	movwf	(??_Get_AD+0)+0
	movlw	(02h)-1
u536_25:
	clrc
	rlf	(??_Get_AD+0)+0,f
	addlw	-1
	skipz
	goto	u536_25
	clrc
	rlf	(??_Get_AD+0)+0,w
	iorwf	(31),f	;volatile
	line	426
	
i1l14056:	
;adc.c: 426: ADCON0 |= 0x01;
	bsf	(31)+(0/8),(0)&7	;volatile
	line	428
# 428 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
nop ;# 
	line	429
# 429 "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
nop ;# 
psect	text69
	line	431
	
i1l14058:	
;adc.c: 431: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	433
;adc.c: 433: while(GODONE)
	goto	i1l959
	
i1l960:	
	line	435
;adc.c: 434: {
;adc.c: 435: if(0 == (--i))
	decfsz	(Get_AD@i),f	;volatile
	goto	u537_21
	goto	u537_20
u537_21:
	goto	i1l959
u537_20:
	line	436
	
i1l14060:	
;adc.c: 436: return 0;
	movlw	low(0)
	goto	i1l962
	line	437
	
i1l959:	
	line	433
	btfsc	(249/8),(249)&7	;volatile
	goto	u538_21
	goto	u538_20
u538_21:
	goto	i1l960
u538_20:
	line	444
	
i1l14064:	
;adc.c: 437: }
;adc.c: 444: adresult = ADRESH << 6;
	movf	(30),w	;volatile
	movwf	(??_Get_AD+0)+0
	rrf	(??_Get_AD+0)+0,f
	rrf	(??_Get_AD+0)+0,f
	rrf	(??_Get_AD+0)+0,w
	andlw	0c0h
	movwf	(Get_AD@adresult)
	line	445
;adc.c: 445: adresult |= (ADRESL>>2);
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_Get_AD+0)+0
	clrc
	rrf	(??_Get_AD+0)+0,f
	clrc
	rrf	(??_Get_AD+0)+0,f
	movf	0+(??_Get_AD+0)+0,w
	iorwf	(Get_AD@adresult),f
	line	447
	
i1l14066:	
;adc.c: 447: return adresult;
	movf	(Get_AD@adresult),w
	line	449
	
i1l962:	
	return
	opt stack 0
GLOBAL	__end_of_Get_AD
	__end_of_Get_AD:
	signat	_Get_AD,4217
	global	_Get_AC_Voltage

;; *************** function _Get_AC_Voltage *****************
;; Defined at:
;;		line 149 in file "E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Timer1_Isr
;; This function uses a non-reentrant model
;;
psect	text70,local,class=CODE,delta=2,merge=1,group=0
	line	149
global __ptext70
__ptext70:	;psect for function _Get_AC_Voltage
psect	text70
	file	"E:\ProjectFile\2019\1-50C88\Program\Y-50C88-A008\adc.c"
	line	149
	global	__size_of_Get_AC_Voltage
	__size_of_Get_AC_Voltage	equ	__end_of_Get_AC_Voltage-_Get_AC_Voltage
	
_Get_AC_Voltage:	
;incstack = 0
	opt	stack 2
; Regs used in _Get_AC_Voltage: [wreg+status,2+status,0]
	line	154
	
i1l13878:	
;adc.c: 151: static v_uint16 s_volcount = 0;
;adc.c: 154: if(b_PressureOn == 1 || (RC1 == 0 && ErrorCode != 8 && ErrorCode != 9))
	btfsc	(_b_PressureOn/8),(_b_PressureOn)&7	;volatile
	goto	u505_21
	goto	u505_20
u505_21:
	goto	i1l13886
u505_20:
	
i1l13880:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(57/8),(57)&7	;volatile
	goto	u506_21
	goto	u506_20
u506_21:
	goto	i1l13890
u506_20:
	
i1l13882:	
		movlw	8
	xorwf	((_ErrorCode)),w	;volatile
	btfsc	status,2
	goto	u507_21
	goto	u507_20
u507_21:
	goto	i1l13890
u507_20:
	
i1l13884:	
		movlw	9
	xorwf	((_ErrorCode)),w	;volatile
	btfsc	status,2
	goto	u508_21
	goto	u508_20
u508_21:
	goto	i1l13890
u508_20:
	line	156
	
i1l13886:	
;adc.c: 155: {
;adc.c: 156: Ad_Vol_Sum = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_Ad_Vol_Sum)^080h	;volatile
	clrf	(_Ad_Vol_Sum+1)^080h	;volatile
	line	157
;adc.c: 157: s_volcount = 0;
	clrf	(Get_AC_Voltage@s_volcount)^080h	;volatile
	clrf	(Get_AC_Voltage@s_volcount+1)^080h	;volatile
	goto	i1l888
	line	161
	
i1l13890:	
;adc.c: 159: }
;adc.c: 161: Ad_Vol_Sum += Ad_Pressure_Raw;
	movf	(_Ad_Pressure_Raw),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_Ad_Vol_Sum)^080h,f	;volatile
	skipnc
	incf	(_Ad_Vol_Sum+1)^080h,f	;volatile
	line	163
	
i1l13892:	
;adc.c: 163: if(++s_volcount >= 400)
	incf	(Get_AC_Voltage@s_volcount)^080h,f	;volatile
	skipnz
	incf	(Get_AC_Voltage@s_volcount+1)^080h,f	;volatile
	movlw	01h
	subwf	((Get_AC_Voltage@s_volcount+1)^080h),w	;volatile
	movlw	090h
	skipnz
	subwf	((Get_AC_Voltage@s_volcount)^080h),w	;volatile
	skipc
	goto	u509_21
	goto	u509_20
u509_21:
	goto	i1l888
u509_20:
	line	165
	
i1l13894:	
;adc.c: 164: {
;adc.c: 165: s_volcount = 0;
	clrf	(Get_AC_Voltage@s_volcount)^080h	;volatile
	clrf	(Get_AC_Voltage@s_volcount+1)^080h	;volatile
	line	166
	
i1l13896:	
;adc.c: 166: b_VolData_OK = 1;
	bsf	(_b_VolData_OK/8),(_b_VolData_OK)&7	;volatile
	line	169
	
i1l888:	
	return
	opt stack 0
GLOBAL	__end_of_Get_AC_Voltage
	__end_of_Get_AC_Voltage:
	signat	_Get_AC_Voltage,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
