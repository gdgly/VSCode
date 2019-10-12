#ifndef	__adc_h__
#define	__adc_h__ 

#include "board_define.h"


//IO定义
#define		LID_PORT	RC0		// NTC

//电压分档
#define VRMS_LEVEL_175     1
#define VRMS_LEVEL_198     2
#define VRMS_LEVEL_220     3
#define VRMS_LEVEL_242     4

//AD通道定义
#define	ADC_AN0			0x00
#define	ADC_AN1			0x01
#define	ADC_AN2			0x02
#define	ADC_AN3			0x03
#define	ADC_AN4			0x04
#define	ADC_AN5			0x05
#define	ADC_AN6			0x06
#define	ADC_AN7			0x07
#define	ADC_AN8			0x08
#define	ADC_AN9			0x09
#define	ADC_AN10		0x0A
#define	ADC_AN11		0x0B
#define	ADC_AN12		0x0C
#define	ADC_AN13		0x0D
#define	ADC_AN14		0x0E
#define	ADC_AN15		0x0F
#define	ADC_AN16		0x10
#define	ADC_AN17		0x11
#define	ADC_AN18		0x12
#define	ADC_AN19		0x13
#define	ADC_AN20		0x14
#define	ADC_AN21		0x15
#define	ADC_AN22		0x16
#define	ADC_AN23		0x17
#define	ADC_AN24		0x18
#define	ADC_AN25		0x19
#define	ADC_AN26		0x1A
#define	ADC_AN27		0x1B
#define	ADC_AN28		0x1C
#define	ADC_AN29		0x1D


/* 开合盖AD阈值*/  
#define LID_CLOSE_TH   220        //合盖AD阈值   导通1K电阻计算
#define LID_OPEN_TH    200        //开盖AD阈值

/* 开合盖去抖次数  */
#define LID_DEBOUNCE_TH   25     //开合盖判断去抖次数


/* 顶部和底部NTC温度常量 下拉10K 
   博远R25=100K+-1% B25/50=3990k +-1%
*/
#define	BOT_TEMP_0_30  1  // -30度
#define	BOT_TEMP_0_21  2  // -21度
#define	BOT_TEMP_0_15  3  // -15度
#define	BOT_TEMP_0_11  4  // -11度
#define	BOT_TEMP_0_7   5  // -7 度
#define	BOT_TEMP_0_4   6  // -4 度
#define	BOT_TEMP_0_1   7  // -1 度

#define	BOT_TEMP_0     8
#define	BOT_TEMP_1     8
#define	BOT_TEMP_2     8
#define	BOT_TEMP_3     9
#define	BOT_TEMP_4     9
#define	BOT_TEMP_5     10
#define	BOT_TEMP_6     10
#define	BOT_TEMP_7     11
#define	BOT_TEMP_8     11
#define	BOT_TEMP_9     12
#define	BOT_TEMP_10    12
#define	BOT_TEMP_11    13
#define	BOT_TEMP_12    13
#define	BOT_TEMP_13    14
#define	BOT_TEMP_14    15
#define	BOT_TEMP_15    15
#define	BOT_TEMP_16    16
#define	BOT_TEMP_17    17
#define	BOT_TEMP_18    17
#define	BOT_TEMP_19    18
#define	BOT_TEMP_20    19
#define	BOT_TEMP_21    20
#define	BOT_TEMP_22    21
#define	BOT_TEMP_23    21
#define	BOT_TEMP_24    22
#define	BOT_TEMP_25    23
#define	BOT_TEMP_26    24
#define BOT_TEMP_27    25
#define	BOT_TEMP_28    26
#define	BOT_TEMP_29    27
#define	BOT_TEMP_30    28
#define	BOT_TEMP_31    29
#define	BOT_TEMP_32    30
#define	BOT_TEMP_33    32
#define	BOT_TEMP_34    33
#define	BOT_TEMP_35    34
#define	BOT_TEMP_36	   35
#define	BOT_TEMP_37	   36
#define	BOT_TEMP_38    38
#define	BOT_TEMP_39    39
#define	BOT_TEMP_40    40
#define	BOT_TEMP_41    42
#define	BOT_TEMP_42    43
#define	BOT_TEMP_43    45
#define	BOT_TEMP_44    46
#define	BOT_TEMP_45    48
#define	BOT_TEMP_46    49
#define	BOT_TEMP_47    51
#define	BOT_TEMP_48    52
#define	BOT_TEMP_49    54
#define	BOT_TEMP_50    56
#define	BOT_TEMP_51    57
#define	BOT_TEMP_52    59
#define	BOT_TEMP_53    61
#define	BOT_TEMP_54    63
#define	BOT_TEMP_55    65
#define	BOT_TEMP_56    66	
#define	BOT_TEMP_57    68
#define	BOT_TEMP_58    70
#define	BOT_TEMP_59    72
#define	BOT_TEMP_60    74
#define	BOT_TEMP_61    76  
#define	BOT_TEMP_62    78
#define	BOT_TEMP_63    80
#define	BOT_TEMP_64    82
#define	BOT_TEMP_65    83
#define	BOT_TEMP_66    85
#define	BOT_TEMP_67    87
#define	BOT_TEMP_68    89
#define	BOT_TEMP_69    92
#define	BOT_TEMP_69A   93
#define	BOT_TEMP_70    94	
#define	BOT_TEMP_70A   95
#define	BOT_TEMP_71    96 
#define	BOT_TEMP_72    98 
#define	BOT_TEMP_73    100
#define	BOT_TEMP_74    102
#define	BOT_TEMP_75    104
#define	BOT_TEMP_76    106
#define	BOT_TEMP_77    108
#define	BOT_TEMP_78    110
#define	BOT_TEMP_79    112
#define	BOT_TEMP_80    114
#define	BOT_TEMP_81    116
#define	BOT_TEMP_81A   117
#define	BOT_TEMP_82    118
#define	BOT_TEMP_83    120
#define	BOT_TEMP_84    123
#define	BOT_TEMP_85    125
#define	BOT_TEMP_86    127
#define	BOT_TEMP_87    129
#define	BOT_TEMP_88    131
#define	BOT_TEMP_89    133
#define	BOT_TEMP_90    135
#define	BOT_TEMP_91    137
#define	BOT_TEMP_92    139
#define	BOT_TEMP_93    141
#define	BOT_TEMP_94    143
#define	BOT_TEMP_95    145
#define	BOT_TEMP_96    147
#define	BOT_TEMP_97    148
#define	BOT_TEMP_98    150
#define	BOT_TEMP_99    152
#define	BOT_TEMP_100   154
#define	BOT_TEMP_101   156
#define	BOT_TEMP_102   157
#define	BOT_TEMP_103   159
#define	BOT_TEMP_104   161
#define	BOT_TEMP_105   163
#define	BOT_TEMP_106   165
#define	BOT_TEMP_107   166
#define	BOT_TEMP_108   168
#define	BOT_TEMP_109   170
#define	BOT_TEMP_110   171
#define	BOT_TEMP_111   173
#define	BOT_TEMP_112   174
#define	BOT_TEMP_113   176
#define	BOT_TEMP_114   177
#define	BOT_TEMP_115   179
#define	BOT_TEMP_116   180
#define	BOT_TEMP_117   182
#define	BOT_TEMP_118   183
#define	BOT_TEMP_119   185
#define	BOT_TEMP_120   186
#define	BOT_TEMP_121   188
#define	BOT_TEMP_122   189
#define	BOT_TEMP_123   190
#define	BOT_TEMP_124   192
#define	BOT_TEMP_125   193
#define	BOT_TEMP_126   194
#define	BOT_TEMP_127   195
#define	BOT_TEMP_128   197
#define	BOT_TEMP_129   198
#define	BOT_TEMP_130   199
#define	BOT_TEMP_131   200
#define	BOT_TEMP_132   201
#define	BOT_TEMP_133   202
#define	BOT_TEMP_134   203
#define	BOT_TEMP_135   204
#define	BOT_TEMP_136   205
#define	BOT_TEMP_137   206
#define	BOT_TEMP_138   207
#define	BOT_TEMP_139   208
#define	BOT_TEMP_140   209
#define	BOT_TEMP_141   210
#define	BOT_TEMP_142   211
#define	BOT_TEMP_143   212
#define	BOT_TEMP_144   213
#define	BOT_TEMP_145   213
#define	BOT_TEMP_146   214
#define	BOT_TEMP_147   215
#define	BOT_TEMP_148   216
#define	BOT_TEMP_149   217
#define	BOT_TEMP_150   218
#define	BOT_TEMP_151   218
#define	BOT_TEMP_152   219
#define	BOT_TEMP_153   220
#define	BOT_TEMP_154   221
#define	BOT_TEMP_155   221
#define	BOT_TEMP_156   222
#define	BOT_TEMP_157   223
#define	BOT_TEMP_158   223
#define	BOT_TEMP_159   224
#define	BOT_TEMP_160   225
#define	BOT_TEMP_161   225
#define	BOT_TEMP_162   226
#define	BOT_TEMP_163   226
#define	BOT_TEMP_164   227
#define	BOT_TEMP_165   227
#define	BOT_TEMP_166   228
#define	BOT_TEMP_167   229
#define	BOT_TEMP_168   229
#define	BOT_TEMP_169   230
#define	BOT_TEMP_170   230
#define	BOT_TEMP_171   231
#define	BOT_TEMP_172   231
#define	BOT_TEMP_173   232
#define	BOT_TEMP_174   232
#define	BOT_TEMP_175   233
#define	BOT_TEMP_176   233
#define	BOT_TEMP_177   233
#define	BOT_TEMP_178   234
#define	BOT_TEMP_179   234
#define	BOT_TEMP_180   235
#define	BOT_TEMP_181   235
#define	BOT_TEMP_182   236
#define	BOT_TEMP_183   236
#define	BOT_TEMP_184   236
#define	BOT_TEMP_185   237
#define	BOT_TEMP_186   237
#define	BOT_TEMP_187   237
#define	BOT_TEMP_188   238
#define	BOT_TEMP_189   238
#define	BOT_TEMP_190   238
#define	BOT_TEMP_191   239
#define	BOT_TEMP_192   239
#define	BOT_TEMP_193   239
#define	BOT_TEMP_194   240
#define	BOT_TEMP_195   240
#define	BOT_TEMP_196   240
#define	BOT_TEMP_197   241
#define	BOT_TEMP_198   241
#define	BOT_TEMP_199   241
#define	BOT_TEMP_200   241
#define	BOT_TEMP_201   242
#define	BOT_TEMP_202   242
#define	BOT_TEMP_203   242
#define	BOT_TEMP_204   242
#define	BOT_TEMP_205   243
#define	BOT_TEMP_206   243
#define	BOT_TEMP_207   243
#define	BOT_TEMP_208   243
#define	BOT_TEMP_209   244
#define	BOT_TEMP_210   244
#define	BOT_TEMP_211   244
#define	BOT_TEMP_212   244
#define	BOT_TEMP_213   244
#define	BOT_TEMP_214   245
#define	BOT_TEMP_215   245
#define	BOT_TEMP_216   245
#define	BOT_TEMP_217   245
#define	BOT_TEMP_218   245
#define	BOT_TEMP_219   245
#define	BOT_TEMP_220   246
#define	BOT_TEMP_221   246
#define	BOT_TEMP_222   246
#define	BOT_TEMP_223   246



void Get_Lid_Data(void);
void Get_Pressure_Switch_Data(void);
void Get_AC_Voltage(void);
void Get_AC_Rms(void);
void Get_Zero(void);
void Get_Temp_Data(void);
uint8 Get_AD(uint8 ad_ch);






#endif