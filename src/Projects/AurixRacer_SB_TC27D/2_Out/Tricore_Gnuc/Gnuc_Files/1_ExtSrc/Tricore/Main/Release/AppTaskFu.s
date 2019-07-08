	.file	"AppTaskFu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.appTaskfu_init,"ax",@progbits
	.align 1
	.global	appTaskfu_init
	.type	appTaskfu_init, @function
appTaskfu_init:
.LFB724:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.loc 1 23 0
	.loc 1 37 0
	mov	%d15, 0
	movh.a	%a15, hi:IR_Encoder
	.loc 1 24 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 37 0
	lea	%a15, [%a15] lo:IR_Encoder
	.loc 1 25 0
	call	BasicPort_init
.LVL1:
	.loc 1 26 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 27 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 28 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 29 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 30 0
	call	PID_init
.LVL6:
	.loc 1 37 0
	st.w	[%a15] 16, %d15
	.loc 1 47 0
	j	InfineonRacer_init
.LVL7:
.LFE724:
	.size	appTaskfu_init, .-appTaskfu_init
.section .text.appTaskfu_1ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1ms
	.type	appTaskfu_1ms, @function
appTaskfu_1ms:
.LFB725:
	.loc 1 56 0
	.loc 1 57 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 61 0
	mov	%d2, 1000
	.loc 1 57 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1m, %d15
	.loc 1 61 0
	jeq	%d15, %d2, .L7
	.loc 1 66 0
	mov	%d2, 100
	div	%e2, %d15, %d2
	jz	%d3, .L4
	.loc 1 71 0
	call	BasicGpt12Enc_run
.LVL8:
	.loc 1 72 0
	call	SpeedCalculation
.LVL9:
	.loc 1 73 0
	j	Speed_Buff
.LVL10:
.L7:
	.loc 1 62 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1m, %d15
.L4:
	.loc 1 68 0
	call	BasicGpt12Enc_IR_Encoder_reset
.LVL11:
	.loc 1 71 0
	call	BasicGpt12Enc_run
.LVL12:
	.loc 1 72 0
	call	SpeedCalculation
.LVL13:
	.loc 1 73 0
	j	Speed_Buff
.LVL14:
.LFE725:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB726:
	.loc 1 83 0
	.loc 1 84 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
.LBB6:
.LBB7:
	.loc 1 452 0
	movh	%d4, 48845
.LBE7:
.LBE6:
	.loc 1 84 0
	add	%d15, 1
.LBB10:
.LBB8:
	.loc 1 452 0
	addi	%d4, %d4, -13107
.LBE8:
.LBE10:
	.loc 1 84 0
	st.w	[%a15] lo:task_cnt_10m, %d15
.LVL15:
.LBB11:
.LBB9:
	.loc 1 452 0
	call	IR_setSrvAngle
.LVL16:
.LBE9:
.LBE11:
	.loc 1 93 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 10
	div	%e2, %d15, %d2
	jz	%d3, .L15
.L9:
	.loc 1 96 0
	mov	%d2, 50
	div	%e2, %d15, %d2
	jz	%d3, .L16
.L10:
	.loc 1 340 0
	mov	%d2, 1000
	jeq	%d15, %d2, .L17
	.loc 1 344 0
	jz.t	%d15, 0, .L12
	ret
.L17:
	.loc 1 341 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_10m, %d15
.L12:
.LBB12:
	.loc 1 350 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 346 0
	call	BasicGtmTom_run
.LVL17:
	.loc 1 347 0
	call	BasicPort_run
.LVL18:
	.loc 1 350 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L18
	.loc 1 359 0
	j	AsclinShellInterface_runEncScan
.LVL19:
.L16:
.LBE12:
	.loc 1 97 0
	call	Speed_Avg
.LVL20:
	.loc 1 98 0
	call	SpeedCalculation
.LVL21:
	mov	%d4, %d2
	call	get_Speed
.LVL22:
	.loc 1 106 0
	call	PID_control
.LVL23:
	.loc 1 107 0
	call	next_Vol
.LVL24:
	mov	%d4, %d2
	call	IR_setMotor0Vol
.LVL25:
	ld.w	%d15, [%a15] lo:task_cnt_10m
	j	.L10
.L15:
.LBB13:
	.loc 1 94 0
	call	Speed_Buff
.LVL26:
	ld.w	%d15, [%a15] lo:task_cnt_10m
	j	.L9
.L18:
.LBE13:
.LBB14:
	.loc 1 352 0
	call	InfineonRacer_control
.LVL27:
	.loc 1 359 0
	j	AsclinShellInterface_runEncScan
.LVL28:
.LBE14:
.LFE726:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB727:
	.loc 1 365 0
	.loc 1 366 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 374 0
	mov	%d2, 1000
	.loc 1 366 0
	add	%d15, 1
	.loc 1 374 0
	jne	%d15, %d2, .L22
	.loc 1 375 0
	mov	%d15, 0
.L22:
	st.w	[%a15] lo:task_cnt_100m, %d15
	ret
.LFE727:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB728:
	.loc 1 391 0
	.loc 1 392 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 419 0
	mov	%d2, 1000
	.loc 1 392 0
	add	%d15, 1
	.loc 1 419 0
	jne	%d15, %d2, .L26
	.loc 1 420 0
	mov	%d15, 0
.L26:
	st.w	[%a15] lo:task_cnt_1000m, %d15
	ret
.LFE728:
	.size	appTaskfu_1000ms, .-appTaskfu_1000ms
.section .text.appTaskfu_idle,"ax",@progbits
	.align 1
	.global	appTaskfu_idle
	.type	appTaskfu_idle, @function
appTaskfu_idle:
.LFB729:
	.loc 1 431 0
	.loc 1 432 0
	call	AsclinShellInterface_run
.LVL29:
	.loc 1 438 0
	j	BasicGpt12Enc_IR_Encoder_turn
.LVL30:
.LFE729:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB730:
	.loc 1 442 0
	ret
.LFE730:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
	.global	__extendsfdf2
	.global	__subdf3
	.global	__truncdfsf2
.section .text.SrvControl,"ax",@progbits
	.align 1
	.global	SrvControl
	.type	SrvControl, @function
SrvControl:
.LFB731:
	.loc 1 449 0
.LVL31:
	.loc 1 451 0
	movh	%d15, 17112
	div.f	%d4, %d4, %d15
.LVL32:
	call	__extendsfdf2
.LVL33:
	mov	%e6, %d3, %d2
	movh	%d5, 49114
	movh	%d4, 39322
	addi	%d5, %d5, -26215
	addi	%d4, %d4, -26214
	call	__subdf3
.LVL34:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL35:
	.loc 1 452 0
	mov	%d4, %d2
	j	IR_setSrvAngle
.LVL36:
.LFE731:
	.size	SrvControl, .-SrvControl
.section .text.AEB,"ax",@progbits
	.align 1
	.global	AEB
	.type	AEB, @function
AEB:
.LFB732:
	.loc 1 457 0
	.loc 1 458 0
	movh	%d4, 49024
	j	IR_setMotor0Vol
.LVL37:
.LFE732:
	.size	AEB, .-AEB
.section .text.Avoid,"ax",@progbits
	.align 1
	.global	Avoid
	.type	Avoid, @function
Avoid:
.LFB733:
	.loc 1 461 0
	.loc 1 462 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L33
	jne	%d15, 2, .L36
	.loc 1 467 0
	movh	%d4, 48717
	addi	%d4, %d4, -13107
	j	IR_setSrvAngle
.LVL38:
.L36:
	ret
.L33:
	.loc 1 464 0
	movh	%d4, 49024
	j	IR_setSrvAngle
.LVL39:
.LFE733:
	.size	Avoid, .-Avoid
	.global	WHICH_LANE
.section .data.WHICH_LANE,"aw",@progbits
	.align 2
	.type	WHICH_LANE, @object
	.size	WHICH_LANE, 4
WHICH_LANE:
	.word	1
	.global	speed_max
.section .data.speed_max,"aw",@progbits
	.align 2
	.type	speed_max, @object
	.size	speed_max, 4
speed_max:
	.word	1000593162
	.global	speed_min
.section .data.speed_min,"aw",@progbits
	.align 2
	.type	speed_min, @object
	.size	speed_min, 4
speed_min:
	.word	-1146890486
	.global	time
.section .data.time,"aw",@progbits
	.align 2
	.type	time, @object
	.size	time, 4
time:
	.word	1036831949
	.global	D
.section .data.D,"aw",@progbits
	.align 2
	.type	D, @object
	.size	D, 4
D:
	.word	1065353216
	.global	I
.section .data.I,"aw",@progbits
	.align 2
	.type	I, @object
	.size	I, 4
I:
	.word	1036831949
	.global	P
.section .data.P,"aw",@progbits
	.align 2
	.type	P, @object
	.size	P, 4
P:
	.word	1092616192
	.global	Speed_Out_Of_School_Zone
.section .data.Speed_Out_Of_School_Zone,"aw",@progbits
	.align 2
	.type	Speed_Out_Of_School_Zone, @object
	.size	Speed_Out_Of_School_Zone, 4
Speed_Out_Of_School_Zone:
	.word	1120403456
	.global	Obstacle_flag
.section .bss.Obstacle_flag,"aw",@nobits
	.align 2
	.type	Obstacle_flag, @object
	.size	Obstacle_flag, 4
Obstacle_flag:
	.zero	4
	.global	signORunsign
.section .bss.signORunsign,"aw",@nobits
	.align 2
	.type	signORunsign, @object
	.size	signORunsign, 4
signORunsign:
	.zero	4
	.global	testSrv
.section .bss.testSrv,"aw",@nobits
	.align 2
	.type	testSrv, @object
	.size	testSrv, 4
testSrv:
	.zero	4
	.global	testVol
.section .data.testVol,"aw",@progbits
	.align 2
	.type	testVol, @object
	.size	testVol, 4
testVol:
	.word	1065353216
	.global	task_flag_1000m
.section .bss.task_flag_1000m,"aw",@nobits
	.type	task_flag_1000m, @object
	.size	task_flag_1000m, 1
task_flag_1000m:
	.zero	1
	.global	task_flag_100m
.section .bss.task_flag_100m,"aw",@nobits
	.type	task_flag_100m, @object
	.size	task_flag_100m, 1
task_flag_100m:
	.zero	1
	.global	task_flag_10m
.section .bss.task_flag_10m,"aw",@nobits
	.type	task_flag_10m, @object
	.size	task_flag_10m, 1
task_flag_10m:
	.zero	1
	.global	task_flag_1m
.section .bss.task_flag_1m,"aw",@nobits
	.type	task_flag_1m, @object
	.size	task_flag_1m, 1
task_flag_1m:
	.zero	1
.section .bss.task_cnt_1000m,"aw",@nobits
	.align 2
	.type	task_cnt_1000m, @object
	.size	task_cnt_1000m, 4
task_cnt_1000m:
	.zero	4
.section .bss.task_cnt_100m,"aw",@nobits
	.align 2
	.type	task_cnt_100m, @object
	.size	task_cnt_100m, 4
task_cnt_100m:
	.zero	4
.section .bss.task_cnt_10m,"aw",@nobits
	.align 2
	.type	task_cnt_10m, @object
	.size	task_cnt_10m, 4
task_cnt_10m:
	.zero	4
.section .bss.task_cnt_1m,"aw",@nobits
	.align 2
	.type	task_cnt_1m, @object
	.size	task_cnt_1m, 4
task_cnt_1m:
	.zero	4
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB724
	.uaword	.LFE724-.LFB724
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB725
	.uaword	.LFE725-.LFB725
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB726
	.uaword	.LFE726-.LFB726
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB727
	.uaword	.LFE727-.LFB727
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB728
	.uaword	.LFE728-.LFB728
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB729
	.uaword	.LFE729-.LFB729
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB730
	.uaword	.LFE730-.LFB730
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB731
	.uaword	.LFE731-.LFB731
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB732
	.uaword	.LFE732-.LFB732
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB733
	.uaword	.LFE733-.LFB733
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
	.file 8 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGpt12Enc.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 10 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 12 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicPort.h"
	.file 14 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 15 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicVadcBgScan.h"
	.file 16 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/AsclinShellInterface.h"
	.file 17 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/PID.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1261
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"C:\\\\Users\\\\boldasl\\\\SEUNGHO\\\\Workspace\\\\GitHub\\\\testbench\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x38
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x220
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x1ca
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1d6
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x1b7
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x201
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x28b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2c6
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x27d
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x212
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x312
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x2c0
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x243
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2ec
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0x76
	.uaword	0x398
	.uleb128 0xa
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x4
	.byte	0x62
	.uaword	0x2be
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3ce
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x54d
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x398
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x26e
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x599
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5e0
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5fb
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x634
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6e1
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x705
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x73f
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x782
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x7a6
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x80f
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7df
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x82d
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x84d
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x86e
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x66d
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x6a6
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x88c
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x56e
	.uleb128 0x5
	.byte	0x4
	.uaword	0x574
	.uleb128 0xc
	.uaword	0x26e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x56e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x5b5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5bb
	.uleb128 0xd
	.byte	0x1
	.uaword	0x26e
	.uaword	0x5da
	.uleb128 0xe
	.uaword	0x398
	.uleb128 0xe
	.uaword	0x2be
	.uleb128 0xe
	.uaword	0x5da
	.uleb128 0xe
	.uaword	0x2c7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2db
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x5b5
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x61e
	.uleb128 0x5
	.byte	0x4
	.uaword	0x624
	.uleb128 0xd
	.byte	0x1
	.uaword	0x243
	.uaword	0x634
	.uleb128 0xe
	.uaword	0x398
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x657
	.uleb128 0x5
	.byte	0x4
	.uaword	0x65d
	.uleb128 0xd
	.byte	0x1
	.uaword	0x579
	.uaword	0x66d
	.uleb128 0xe
	.uaword	0x398
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x690
	.uleb128 0x5
	.byte	0x4
	.uaword	0x696
	.uleb128 0xd
	.byte	0x1
	.uaword	0x251
	.uaword	0x6a6
	.uleb128 0xe
	.uaword	0x398
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6cb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6d1
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2c7
	.uaword	0x6e1
	.uleb128 0xe
	.uaword	0x398
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x61e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x729
	.uleb128 0x5
	.byte	0x4
	.uaword	0x72f
	.uleb128 0xd
	.byte	0x1
	.uaword	0x54d
	.uaword	0x73f
	.uleb128 0xe
	.uaword	0x398
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x762
	.uleb128 0x5
	.byte	0x4
	.uaword	0x768
	.uleb128 0xd
	.byte	0x1
	.uaword	0x26e
	.uaword	0x782
	.uleb128 0xe
	.uaword	0x398
	.uleb128 0xe
	.uaword	0x2db
	.uleb128 0xe
	.uaword	0x2c7
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x762
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x7c4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7ca
	.uleb128 0xd
	.byte	0x1
	.uaword	0x26e
	.uaword	0x7df
	.uleb128 0xe
	.uaword	0x398
	.uleb128 0xe
	.uaword	0x2c7
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7fd
	.uleb128 0x5
	.byte	0x4
	.uaword	0x803
	.uleb128 0xf
	.byte	0x1
	.uaword	0x80f
	.uleb128 0xe
	.uaword	0x398
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7fd
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7fd
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7fd
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7fd
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7fd
	.uleb128 0x9
	.byte	0x1
	.byte	0x7
	.byte	0x4c
	.uaword	0x90c
	.uleb128 0xa
	.string	"IfxStdIf_Pos_Dir_forward"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxStdIf_Pos_Dir_backward"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxStdIf_Pos_Dir_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Dir"
	.byte	0x7
	.byte	0x50
	.uaword	0x8b1
	.uleb128 0x7
	.byte	0x18
	.byte	0x8
	.byte	0x21
	.uaword	0x987
	.uleb128 0x8
	.string	"speed"
	.byte	0x8
	.byte	0x22
	.uaword	0x25f
	.byte	0
	.uleb128 0x8
	.string	"rawPosition"
	.byte	0x8
	.byte	0x23
	.uaword	0x25f
	.byte	0x4
	.uleb128 0x8
	.string	"direction"
	.byte	0x8
	.byte	0x24
	.uaword	0x90c
	.byte	0x8
	.uleb128 0x8
	.string	"turn"
	.byte	0x8
	.byte	0x25
	.uaword	0x243
	.byte	0xc
	.uleb128 0x8
	.string	"buff"
	.byte	0x8
	.byte	0x26
	.uaword	0x25f
	.byte	0x10
	.uleb128 0x8
	.string	"avg"
	.byte	0x8
	.byte	0x27
	.uaword	0x25f
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"IR_Encoder_t"
	.byte	0x8
	.byte	0x28
	.uaword	0x924
	.uleb128 0x7
	.byte	0x8
	.byte	0x9
	.byte	0x26
	.uaword	0x9c5
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x9
	.byte	0x28
	.uaword	0x9c5
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x9
	.byte	0x29
	.uaword	0x212
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3b8
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x9
	.byte	0x2a
	.uaword	0x99b
	.uleb128 0x7
	.byte	0xc
	.byte	0xa
	.byte	0x32
	.uaword	0xa1d
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0xa
	.byte	0x33
	.uaword	0x243
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0xa
	.byte	0x34
	.uaword	0x243
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0xa
	.byte	0x35
	.uaword	0x26e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0xa
	.byte	0x36
	.uaword	0x9de
	.uleb128 0x10
	.byte	0x1
	.string	"SrvControl"
	.byte	0x1
	.uahalf	0x1c1
	.byte	0x1
	.byte	0x1
	.uaword	0xa67
	.uleb128 0x11
	.string	"diff"
	.byte	0x1
	.uahalf	0x1c1
	.uaword	0x25f
	.uleb128 0x12
	.string	"result"
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x25f
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.uaword	.LFB724
	.uaword	.LFE724
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xad4
	.uleb128 0x14
	.uaword	.LVL0
	.uaword	0x101c
	.uleb128 0x14
	.uaword	.LVL1
	.uaword	0x1035
	.uleb128 0x14
	.uaword	.LVL2
	.uaword	0x104a
	.uleb128 0x14
	.uaword	.LVL3
	.uaword	0x1061
	.uleb128 0x14
	.uaword	.LVL4
	.uaword	0x107c
	.uleb128 0x14
	.uaword	.LVL5
	.uaword	0x1095
	.uleb128 0x14
	.uaword	.LVL6
	.uaword	0x10b5
	.uleb128 0x15
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x10c4
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	.LFB725
	.uaword	.LFE725
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb4b
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x49
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xb09
	.uleb128 0x17
	.byte	0
	.uleb128 0x14
	.uaword	.LVL8
	.uaword	0x10dd
	.uleb128 0x14
	.uaword	.LVL9
	.uaword	0x10f5
	.uleb128 0x15
	.uaword	.LVL10
	.byte	0x1
	.uaword	0x1110
	.uleb128 0x14
	.uaword	.LVL11
	.uaword	0x1123
	.uleb128 0x14
	.uaword	.LVL12
	.uaword	0x10dd
	.uleb128 0x14
	.uaword	.LVL13
	.uaword	0x10f5
	.uleb128 0x15
	.uaword	.LVL14
	.byte	0x1
	.uaword	0x1110
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc53
	.uleb128 0x18
	.uaword	0xa34
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x56
	.uaword	0xba5
	.uleb128 0x19
	.uaword	0xa4a
	.byte	0x4
	.uaword	0
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1b
	.uaword	0xa57
	.byte	0x4
	.uaword	0xbecccccd
	.uleb128 0x14
	.uaword	.LVL16
	.uaword	0x1148
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0xbf2
	.uleb128 0x1d
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x167
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xbc2
	.uleb128 0x17
	.byte	0
	.uleb128 0x14
	.uaword	.LVL17
	.uaword	0x1167
	.uleb128 0x14
	.uaword	.LVL18
	.uaword	0x117d
	.uleb128 0x15
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x1191
	.uleb128 0x14
	.uaword	.LVL27
	.uaword	0x11a5
	.uleb128 0x15
	.uaword	.LVL28
	.byte	0x1
	.uaword	0x1191
	.byte	0
	.uleb128 0x1e
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0xc1c
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x49
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xc12
	.uleb128 0x17
	.byte	0
	.uleb128 0x14
	.uaword	.LVL26
	.uaword	0x1110
	.byte	0
	.uleb128 0x14
	.uaword	.LVL20
	.uaword	0x11c1
	.uleb128 0x14
	.uaword	.LVL21
	.uaword	0x10f5
	.uleb128 0x14
	.uaword	.LVL22
	.uaword	0x11d1
	.uleb128 0x14
	.uaword	.LVL23
	.uaword	0x11eb
	.uleb128 0x14
	.uaword	.LVL24
	.uaword	0x11fd
	.uleb128 0x14
	.uaword	.LVL25
	.uaword	0x1215
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.uahalf	0x16c
	.byte	0x1
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.uahalf	0x186
	.byte	0x1
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.uahalf	0x1af
	.byte	0x1
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xce2
	.uleb128 0x1d
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xcce
	.uleb128 0x17
	.byte	0
	.uleb128 0x14
	.uaword	.LVL29
	.uaword	0x1235
	.uleb128 0x15
	.uaword	.LVL30
	.byte	0x1
	.uaword	0x1254
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.uahalf	0x1ba
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x21
	.uaword	0xa34
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd31
	.uleb128 0x22
	.uaword	0xa4a
	.uaword	.LLST0
	.uleb128 0x23
	.uaword	0xa57
	.uaword	.LLST1
	.uleb128 0x15
	.uaword	.LVL36
	.byte	0x1
	.uaword	0x1148
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"AEB"
	.byte	0x1
	.uahalf	0x1c9
	.byte	0x1
	.uaword	.LFB732
	.uaword	.LFE732
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd62
	.uleb128 0x24
	.uaword	.LVL37
	.byte	0x1
	.uaword	0x1215
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"Avoid"
	.byte	0x1
	.uahalf	0x1cd
	.byte	0x1
	.uaword	.LFB733
	.uaword	.LFE733
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd9f
	.uleb128 0x15
	.uaword	.LVL38
	.byte	0x1
	.uaword	0x1148
	.uleb128 0x24
	.uaword	.LVL39
	.byte	0x1
	.uaword	0x1148
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x26
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x26
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x26
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x27
	.uaword	0x312
	.uaword	0xe19
	.uleb128 0x28
	.uaword	0x33c
	.byte	0x2
	.byte	0
	.uleb128 0x29
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0xe36
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0xe09
	.uleb128 0x29
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x251
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"IR_Encoder"
	.byte	0x8
	.byte	0x2d
	.uaword	0x987
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"Ifx_g_console"
	.byte	0x9
	.byte	0x2c
	.uaword	0x9cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"IR_Ctrl"
	.byte	0xa
	.byte	0x52
	.uaword	0xa1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x2b
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x2b
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x2b
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x2b
	.string	"testVol"
	.byte	0x1
	.byte	0xd
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testVol
	.uleb128 0x2b
	.string	"testSrv"
	.byte	0x1
	.byte	0xe
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSrv
	.uleb128 0x2b
	.string	"signORunsign"
	.byte	0x1
	.byte	0xf
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	signORunsign
	.uleb128 0x2b
	.string	"Obstacle_flag"
	.byte	0x1
	.byte	0x10
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Obstacle_flag
	.uleb128 0x2b
	.string	"Speed_Out_Of_School_Zone"
	.byte	0x1
	.byte	0x11
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_Out_Of_School_Zone
	.uleb128 0x2b
	.string	"P"
	.byte	0x1
	.byte	0x12
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	P
	.uleb128 0x2b
	.string	"I"
	.byte	0x1
	.byte	0x12
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	I
	.uleb128 0x2b
	.string	"D"
	.byte	0x1
	.byte	0x12
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	D
	.uleb128 0x2b
	.string	"time"
	.byte	0x1
	.byte	0x13
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	time
	.uleb128 0x2b
	.string	"speed_min"
	.byte	0x1
	.byte	0x14
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_min
	.uleb128 0x2b
	.string	"speed_max"
	.byte	0x1
	.byte	0x14
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_max
	.uleb128 0x2b
	.string	"WHICH_LANE"
	.byte	0x1
	.byte	0x15
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WHICH_LANE
	.uleb128 0x2c
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xc
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xd
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0xe
	.byte	0x7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xf
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0x8
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0x10
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"PID_init"
	.byte	0x11
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0xa
	.byte	0x5c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"BasicGpt12Enc_run"
	.byte	0x8
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"SpeedCalculation"
	.byte	0x8
	.byte	0x37
	.byte	0x1
	.uaword	0x25f
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x49
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x1123
	.uleb128 0x17
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"BasicGpt12Enc_IR_Encoder_reset"
	.byte	0x8
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0xe
	.byte	0x78
	.byte	0x1
	.byte	0x1
	.uaword	0x1167
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0xe
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xd
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x167
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x11a5
	.uleb128 0x17
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0xa
	.byte	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.string	"Speed_Avg"
	.byte	0x8
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"get_Speed"
	.byte	0x11
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.uaword	0x11eb
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"PID_control"
	.byte	0x11
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"next_Vol"
	.byte	0x11
	.byte	0x41
	.uaword	0x25f
	.byte	0x1
	.uaword	0x1215
	.uleb128 0x17
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0xe
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x1235
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0x10
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x1eb
	.byte	0x1
	.uleb128 0x17
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LFE731
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x21
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0xbfd99999
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x42d80000
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x1c0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LFE731
	.uahalf	0x23
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0xbfd99999
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x42d80000
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x1c0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x64
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB724
	.uaword	.LFE724-.LFB724
	.uaword	.LFB725
	.uaword	.LFE725-.LFB725
	.uaword	.LFB726
	.uaword	.LFE726-.LFB726
	.uaword	.LFB727
	.uaword	.LFE727-.LFB727
	.uaword	.LFB728
	.uaword	.LFE728-.LFB728
	.uaword	.LFB729
	.uaword	.LFE729-.LFB729
	.uaword	.LFB730
	.uaword	.LFE730-.LFB730
	.uaword	.LFB731
	.uaword	.LFE731-.LFB731
	.uaword	.LFB732
	.uaword	.LFE732-.LFB732
	.uaword	.LFB733
	.uaword	.LFE733-.LFB733
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0
	.uaword	0
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	0
	.uaword	0
	.uaword	.LFB724
	.uaword	.LFE724
	.uaword	.LFB725
	.uaword	.LFE725
	.uaword	.LFB726
	.uaword	.LFE726
	.uaword	.LFB727
	.uaword	.LFE727
	.uaword	.LFB728
	.uaword	.LFE728
	.uaword	.LFB729
	.uaword	.LFE729
	.uaword	.LFB730
	.uaword	.LFE730
	.uaword	.LFB731
	.uaword	.LFE731
	.uaword	.LFB732
	.uaword	.LFE732
	.uaword	.LFB733
	.uaword	.LFE733
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"AsclinShellInterface_runEncScan"
.LASF2:
	.string	"BasicGpt12Enc_IR_Encoder_turn"
.LASF0:
	.string	"Speed_Buff"
	.extern	BasicGpt12Enc_IR_Encoder_turn,STT_FUNC,0
	.extern	AsclinShellInterface_run,STT_FUNC,0
	.extern	InfineonRacer_control,STT_FUNC,0
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	next_Vol,STT_FUNC,0
	.extern	PID_control,STT_FUNC,0
	.extern	get_Speed,STT_FUNC,0
	.extern	Speed_Avg,STT_FUNC,0
	.extern	AsclinShellInterface_runEncScan,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	BasicGpt12Enc_IR_Encoder_reset,STT_FUNC,0
	.extern	Speed_Buff,STT_FUNC,0
	.extern	SpeedCalculation,STT_FUNC,0
	.extern	BasicGpt12Enc_run,STT_FUNC,0
	.extern	InfineonRacer_init,STT_FUNC,0
	.extern	PID_init,STT_FUNC,0
	.extern	AsclinShellInterface_init,STT_FUNC,0
	.extern	BasicGpt12Enc_init,STT_FUNC,0
	.extern	BasicVadcBgScan_init,STT_FUNC,0
	.extern	BasicGtmTom_init,STT_FUNC,0
	.extern	BasicPort_init,STT_FUNC,0
	.extern	BasicLineScan_init,STT_FUNC,0
	.extern	IR_Encoder,STT_OBJECT,24
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
