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
	.loc 1 22 0
	.loc 1 29 0
	mov	%d15, 0
	movh.a	%a15, hi:IR_Encoder
	.loc 1 23 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 29 0
	lea	%a15, [%a15] lo:IR_Encoder
	.loc 1 24 0
	call	BasicPort_init
.LVL1:
	.loc 1 25 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 26 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 27 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 28 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 29 0
	st.w	[%a15] 16, %d15
	.loc 1 39 0
	j	InfineonRacer_init
.LVL6:
.LFE724:
	.size	appTaskfu_init, .-appTaskfu_init
.section .text.appTaskfu_1ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1ms
	.type	appTaskfu_1ms, @function
appTaskfu_1ms:
.LFB725:
	.loc 1 48 0
	.loc 1 49 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 50 0
	mov	%d2, 1000
	.loc 1 49 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1m, %d15
	.loc 1 50 0
	jeq	%d15, %d2, .L7
	.loc 1 55 0
	mov	%d2, 100
	div	%e2, %d15, %d2
	jz	%d3, .L4
	.loc 1 59 0
	j	BasicGpt12Enc_run
.LVL7:
.L7:
	.loc 1 51 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1m, %d15
.L4:
	.loc 1 57 0
	call	BasicGpt12Enc_IR_Encoder_reset
.LVL8:
	.loc 1 59 0
	j	BasicGpt12Enc_run
.LVL9:
.LFE725:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB726:
	.loc 1 66 0
	.loc 1 67 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	.loc 1 70 0
	movh.a	%a2, hi:IR_Encoder
	.loc 1 67 0
	add	%d15, 1
	.loc 1 70 0
	lea	%a2, [%a2] lo:IR_Encoder
	.loc 1 67 0
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 70 0
	mov	%d15, 0
	st.w	[%a2] 16, %d15
	.loc 1 72 0
	movh.a	%a2, hi:testVol
	ld.w	%d4, [%a2] lo:testVol
	call	IR_setMotor0Vol
.LVL10:
	.loc 1 82 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jeq	%d15, %d2, .L13
	.loc 1 86 0
	jz.t	%d15, 0, .L10
	ret
.L13:
	.loc 1 83 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_10m, %d15
.L10:
.LBB2:
	.loc 1 95 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 87 0
	call	BasicLineScan_run
.LVL11:
	.loc 1 88 0
	call	median_filter
.LVL12:
	.loc 1 89 0
	call	Line_Buffer
.LVL13:
	.loc 1 91 0
	call	BasicGtmTom_run
.LVL14:
	.loc 1 92 0
	call	BasicPort_run
.LVL15:
	.loc 1 93 0
	call	BasicVadcBgScan_run
.LVL16:
	.loc 1 95 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L14
	.loc 1 104 0
	j	AsclinShellInterface_runEncScan
.LVL17:
.L14:
	.loc 1 97 0
	call	InfineonRacer_control
.LVL18:
	.loc 1 104 0
	j	AsclinShellInterface_runEncScan
.LVL19:
.LBE2:
.LFE726:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .rodata,"a",@progbits
.LC0:
	.string	"%f\n"
	.global	__extendsfdf2
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB727:
	.loc 1 110 0
	.loc 1 111 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 110 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 111 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_100m, %d15
	.loc 1 114 0
	call	Line_avgerage
.LVL20:
	.loc 1 115 0
	call	convolutionOP
.LVL21:
	.loc 1 116 0
	call	getLineData
.LVL22:
	.loc 1 118 0
	movh.a	%a2, hi:IR_Encoder
	ld.w	%d4, [%a2] lo:IR_Encoder
	.loc 1 120 0
	mov	%d15, 1000
	.loc 1 118 0
	call	__extendsfdf2
.LVL23:
	movh.a	%a4, hi:.LC0
	st.d	[%SP]0, %e2
	lea	%a4, [%a4] lo:.LC0
	call	printf
.LVL24:
	.loc 1 120 0
	ld.w	%d2, [%a15] lo:task_cnt_100m
	jeq	%d2, %d15, .L17
	ret
.L17:
	.loc 1 121 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_100m, %d15
	ret
.LFE727:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
	.global	__adddf3
	.global	__truncdfsf2
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB728:
	.loc 1 137 0
	.loc 1 138 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	movh.a	%a2, hi:testSrv
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1000m, %d15
	.loc 1 141 0
	jnz.t	%d15, 0, .L19
	.loc 1 142 0
	movh	%d2, 48794
	addi	%d2, %d2, -26214
	st.w	[%a2] lo:testSrv, %d2
.L19:
	.loc 1 145 0
	sh	%d2, %d15, -31
	xor.t	%d3, %d15,31, %d15,0
	sub	%d2, %d3, %d2
	ld.w	%d8, [%a2] lo:testSrv
	jeq	%d2, 1, .L29
.L21:
	.loc 1 150 0
	mov	%d2, 5
	div	%e2, %d15, %d2
	.loc 1 151 0
	movh.a	%a12, hi:testVol
	.loc 1 150 0
	jz	%d3, .L22
	ld.w	%d2, [%a12] lo:testVol
.L23:
	.loc 1 154 0
	movh	%d3, 16128
	cmp.f	%d2, %d2, %d3
	jz.t	%d2, 2, .L24
	.loc 1 155 0
	movh	%d2, 49024
	st.w	[%a12] lo:testVol, %d2
.L24:
	.loc 1 164 0
	mov	%d2, 1000
	jne	%d15, %d2, .L26
	.loc 1 165 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1000m, %d15
.L26:
	.loc 1 170 0
	mov	%d4, %d8
	j	IR_setSrvAngle
.LVL25:
.L22:
	.loc 1 151 0
	ld.w	%d4, [%a12] lo:testVol
	call	__extendsfdf2
.LVL26:
	mov	%e4, %d3, %d2
	movh	%d7, 16314
	movh	%d6, 39322
	addi	%d7, %d7, -26215
	addi	%d6, %d6, -26214
	call	__adddf3
.LVL27:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL28:
	st.w	[%a12] lo:testVol, %d2
	j	.L23
.L29:
	.loc 1 146 0
	movh	%d8, 49024
	st.w	[%a2] lo:testSrv, %d8
	j	.L21
.LFE728:
	.size	appTaskfu_1000ms, .-appTaskfu_1000ms
.section .text.appTaskfu_idle,"ax",@progbits
	.align 1
	.global	appTaskfu_idle
	.type	appTaskfu_idle, @function
appTaskfu_idle:
.LFB729:
	.loc 1 174 0
	.loc 1 175 0
	call	AsclinShellInterface_run
.LVL29:
	.loc 1 181 0
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
	.loc 1 185 0
	ret
.LFE730:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
.section .text.PID,"ax",@progbits
	.align 1
	.global	PID
	.type	PID, @function
PID:
.LFB731:
	.loc 1 190 0
	.loc 1 191 0
	movh.a	%a15, hi:IR_Encoder
	ld.w	%d15, [%a15] lo:IR_Encoder
	.loc 1 192 0
	movh.a	%a15, hi:Target_speeed
	ld.w	%d2, [%a15] lo:Target_speeed
	movh.a	%a15, hi:error
	sub.f	%d2, %d2, %d15
	st.w	[%a15] lo:error, %d2
	.loc 1 193 0
	movh.a	%a15, hi:Kp
	ld.w	%d3, [%a15] lo:Kp
	movh.a	%a15, hi:Current_Speed
	mul.f	%d2, %d2, %d3
	add.f	%d15, %d15, %d2
	st.w	[%a15] lo:Current_Speed, %d15
	ret
.LFE731:
	.size	PID, .-PID
	.global	Current_Speed
.section .bss.Current_Speed,"aw",@nobits
	.align 2
	.type	Current_Speed, @object
	.size	Current_Speed, 4
Current_Speed:
	.zero	4
	.global	Kp
.section .bss.Kp,"aw",@nobits
	.align 2
	.type	Kp, @object
	.size	Kp, 4
Kp:
	.zero	4
	.global	error
.section .bss.error,"aw",@nobits
	.align 2
	.type	error, @object
	.size	error, 4
error:
	.zero	4
	.global	Target_speeed
.section .bss.Target_speeed,"aw",@nobits
	.align 2
	.type	Target_speeed, @object
	.size	Target_speeed, 4
Target_speeed:
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
	.word	-1090519040
	.global	Turn_Right_flag
.section .bss.Turn_Right_flag,"aw",@nobits
	.type	Turn_Right_flag, @object
	.size	Turn_Right_flag, 1
Turn_Right_flag:
	.zero	1
	.global	Turn_Left_flag
.section .bss.Turn_Left_flag,"aw",@nobits
	.type	Turn_Left_flag, @object
	.size	Turn_Left_flag, 1
Turn_Left_flag:
	.zero	1
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
	.byte	0x4
	.uaword	.LCFI0-.LFB727
	.byte	0xe
	.uleb128 0x8
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
	.file 17 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1100
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"C:\\\\Users\\\\JB\\\\Documents\\\\testbench\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
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
	.uaword	0x200
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
	.uaword	0x1aa
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1b6
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x1a1
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1e1
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x275
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2a6
	.uleb128 0x5
	.uaword	0x2ab
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2bb
	.uleb128 0x7
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x267
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x1f2
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x307
	.uleb128 0x9
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x2b5
	.byte	0
	.uleb128 0x9
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x223
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2e1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.byte	0x76
	.uaword	0x38d
	.uleb128 0xb
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xb
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xb
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xb
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x4
	.byte	0x62
	.uaword	0x2b3
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3c3
	.uleb128 0xc
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x542
	.uleb128 0x9
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x38d
	.byte	0
	.uleb128 0x9
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x258
	.byte	0x4
	.uleb128 0x9
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x58e
	.byte	0x8
	.uleb128 0x9
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5d5
	.byte	0xc
	.uleb128 0x9
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5f0
	.byte	0x10
	.uleb128 0x9
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x629
	.byte	0x14
	.uleb128 0x9
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6d6
	.byte	0x18
	.uleb128 0x9
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x6fa
	.byte	0x1c
	.uleb128 0x9
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x734
	.byte	0x20
	.uleb128 0x9
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x777
	.byte	0x24
	.uleb128 0x9
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x79b
	.byte	0x28
	.uleb128 0x9
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x804
	.byte	0x2c
	.uleb128 0x9
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7d4
	.byte	0x30
	.uleb128 0x9
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x822
	.byte	0x34
	.uleb128 0x9
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x842
	.byte	0x38
	.uleb128 0x9
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x863
	.byte	0x3c
	.uleb128 0x9
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x662
	.byte	0x40
	.uleb128 0x9
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x69b
	.byte	0x44
	.uleb128 0x9
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x881
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x563
	.uleb128 0x4
	.byte	0x4
	.uaword	0x569
	.uleb128 0xd
	.uaword	0x258
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x563
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x5aa
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5b0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x258
	.uaword	0x5cf
	.uleb128 0xf
	.uaword	0x38d
	.uleb128 0xf
	.uaword	0x2b3
	.uleb128 0xf
	.uaword	0x5cf
	.uleb128 0xf
	.uaword	0x2bc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x5aa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x613
	.uleb128 0x4
	.byte	0x4
	.uaword	0x619
	.uleb128 0xe
	.byte	0x1
	.uaword	0x223
	.uaword	0x629
	.uleb128 0xf
	.uaword	0x38d
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x64c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x652
	.uleb128 0xe
	.byte	0x1
	.uaword	0x56e
	.uaword	0x662
	.uleb128 0xf
	.uaword	0x38d
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x685
	.uleb128 0x4
	.byte	0x4
	.uaword	0x68b
	.uleb128 0xe
	.byte	0x1
	.uaword	0x231
	.uaword	0x69b
	.uleb128 0xf
	.uaword	0x38d
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6c0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6c6
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2bc
	.uaword	0x6d6
	.uleb128 0xf
	.uaword	0x38d
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x613
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x71e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x724
	.uleb128 0xe
	.byte	0x1
	.uaword	0x542
	.uaword	0x734
	.uleb128 0xf
	.uaword	0x38d
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x757
	.uleb128 0x4
	.byte	0x4
	.uaword	0x75d
	.uleb128 0xe
	.byte	0x1
	.uaword	0x258
	.uaword	0x777
	.uleb128 0xf
	.uaword	0x38d
	.uleb128 0xf
	.uaword	0x2d0
	.uleb128 0xf
	.uaword	0x2bc
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x757
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x7b9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7bf
	.uleb128 0xe
	.byte	0x1
	.uaword	0x258
	.uaword	0x7d4
	.uleb128 0xf
	.uaword	0x38d
	.uleb128 0xf
	.uaword	0x2bc
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7f2
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7f8
	.uleb128 0x10
	.byte	0x1
	.uaword	0x804
	.uleb128 0xf
	.uaword	0x38d
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7f2
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7f2
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7f2
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7f2
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7f2
	.uleb128 0xa
	.byte	0x1
	.byte	0x7
	.byte	0x4c
	.uaword	0x901
	.uleb128 0xb
	.string	"IfxStdIf_Pos_Dir_forward"
	.sleb128 0
	.uleb128 0xb
	.string	"IfxStdIf_Pos_Dir_backward"
	.sleb128 1
	.uleb128 0xb
	.string	"IfxStdIf_Pos_Dir_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Dir"
	.byte	0x7
	.byte	0x50
	.uaword	0x8a6
	.uleb128 0x8
	.byte	0x18
	.byte	0x8
	.byte	0x21
	.uaword	0x97c
	.uleb128 0x9
	.string	"speed"
	.byte	0x8
	.byte	0x22
	.uaword	0x23f
	.byte	0
	.uleb128 0x9
	.string	"rawPosition"
	.byte	0x8
	.byte	0x23
	.uaword	0x23f
	.byte	0x4
	.uleb128 0x9
	.string	"direction"
	.byte	0x8
	.byte	0x24
	.uaword	0x901
	.byte	0x8
	.uleb128 0x9
	.string	"turn"
	.byte	0x8
	.byte	0x25
	.uaword	0x223
	.byte	0xc
	.uleb128 0x9
	.string	"buff"
	.byte	0x8
	.byte	0x26
	.uaword	0x23f
	.byte	0x10
	.uleb128 0x9
	.string	"avg"
	.byte	0x8
	.byte	0x27
	.uaword	0x23f
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"IR_Encoder_t"
	.byte	0x8
	.byte	0x28
	.uaword	0x919
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0x26
	.uaword	0x9ba
	.uleb128 0x9
	.string	"standardIo"
	.byte	0x9
	.byte	0x28
	.uaword	0x9ba
	.byte	0
	.uleb128 0x9
	.string	"align"
	.byte	0x9
	.byte	0x29
	.uaword	0x1f2
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3ad
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x9
	.byte	0x2a
	.uaword	0x990
	.uleb128 0x8
	.byte	0xc
	.byte	0xa
	.byte	0x23
	.uaword	0xa12
	.uleb128 0x9
	.string	"Ls0Margin"
	.byte	0xa
	.byte	0x24
	.uaword	0x223
	.byte	0
	.uleb128 0x9
	.string	"Ls1Margin"
	.byte	0xa
	.byte	0x25
	.uaword	0x223
	.byte	0x4
	.uleb128 0x9
	.string	"basicTest"
	.byte	0xa
	.byte	0x26
	.uaword	0x258
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0xa
	.byte	0x27
	.uaword	0x9d3
	.uleb128 0x11
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.uaword	.LFB724
	.uaword	.LFE724
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa8d
	.uleb128 0x12
	.uaword	.LVL0
	.uaword	0xea0
	.uleb128 0x12
	.uaword	.LVL1
	.uaword	0xeb9
	.uleb128 0x12
	.uaword	.LVL2
	.uaword	0xece
	.uleb128 0x12
	.uaword	.LVL3
	.uaword	0xee5
	.uleb128 0x12
	.uaword	.LVL4
	.uaword	0xf00
	.uleb128 0x12
	.uaword	.LVL5
	.uaword	0xf19
	.uleb128 0x13
	.uaword	.LVL6
	.byte	0x1
	.uaword	0xf39
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.uaword	.LFB725
	.uaword	.LFE725
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xacd
	.uleb128 0x13
	.uaword	.LVL7
	.byte	0x1
	.uaword	0xf52
	.uleb128 0x12
	.uaword	.LVL8
	.uaword	0xf6a
	.uleb128 0x13
	.uaword	.LVL9
	.byte	0x1
	.uaword	0xf52
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb6e
	.uleb128 0x14
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0xb64
	.uleb128 0x15
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x68
	.uaword	0x1cb
	.byte	0x1
	.uaword	0xb10
	.uleb128 0x16
	.byte	0
	.uleb128 0x12
	.uaword	.LVL11
	.uaword	0xf8f
	.uleb128 0x12
	.uaword	.LVL12
	.uaword	0xfa7
	.uleb128 0x12
	.uaword	.LVL13
	.uaword	0xfbb
	.uleb128 0x12
	.uaword	.LVL14
	.uaword	0xfcd
	.uleb128 0x12
	.uaword	.LVL15
	.uaword	0xfe3
	.uleb128 0x12
	.uaword	.LVL16
	.uaword	0xff7
	.uleb128 0x13
	.uaword	.LVL17
	.byte	0x1
	.uaword	0x1011
	.uleb128 0x12
	.uaword	.LVL18
	.uaword	0x1024
	.uleb128 0x13
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x1011
	.byte	0
	.uleb128 0x12
	.uaword	.LVL10
	.uaword	0x1040
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbc1
	.uleb128 0x12
	.uaword	.LVL20
	.uaword	0x1060
	.uleb128 0x12
	.uaword	.LVL21
	.uaword	0x1074
	.uleb128 0x12
	.uaword	.LVL22
	.uaword	0x1088
	.uleb128 0x18
	.uaword	.LVL24
	.uaword	0x109a
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbfa
	.uleb128 0x1a
	.uaword	.LVL25
	.byte	0x1
	.uaword	0x10b6
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x1a1
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc44
	.uleb128 0x15
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb5
	.uaword	0x1cb
	.byte	0x1
	.uaword	0xc30
	.uleb128 0x16
	.byte	0
	.uleb128 0x12
	.uaword	.LVL29
	.uaword	0x10d5
	.uleb128 0x13
	.uaword	.LVL30
	.byte	0x1
	.uaword	0x10f4
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"PID"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1c
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x223
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x1c
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x223
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x1c
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x223
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x1c
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x223
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x1d
	.uaword	0x307
	.uaword	0xcef
	.uleb128 0x1e
	.uaword	0x331
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0xd0c
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xcdf
	.uleb128 0x1f
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x231
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"IR_Encoder"
	.byte	0x8
	.byte	0x2d
	.uaword	0x97c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"Ifx_g_console"
	.byte	0x9
	.byte	0x2c
	.uaword	0x9c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"IR_Ctrl"
	.byte	0xa
	.byte	0x3a
	.uaword	0xa12
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x258
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x20
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x258
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x20
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x258
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x20
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x258
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x20
	.string	"Turn_Left_flag"
	.byte	0x1
	.byte	0xd
	.uaword	0x258
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Turn_Left_flag
	.uleb128 0x20
	.string	"Turn_Right_flag"
	.byte	0x1
	.byte	0xe
	.uaword	0x258
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Turn_Right_flag
	.uleb128 0x20
	.string	"testVol"
	.byte	0x1
	.byte	0x10
	.uaword	0x23f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testVol
	.uleb128 0x20
	.string	"testSrv"
	.byte	0x1
	.byte	0x11
	.uaword	0x23f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSrv
	.uleb128 0x20
	.string	"Target_speeed"
	.byte	0x1
	.byte	0x12
	.uaword	0x23f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Target_speeed
	.uleb128 0x20
	.string	"error"
	.byte	0x1
	.byte	0x12
	.uaword	0x23f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	error
	.uleb128 0x20
	.string	"Kp"
	.byte	0x1
	.byte	0x12
	.uaword	0x23f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Kp
	.uleb128 0x20
	.string	"Current_Speed"
	.byte	0x1
	.byte	0x12
	.uaword	0x23f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Current_Speed
	.uleb128 0x21
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xc
	.byte	0x27
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xd
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0xe
	.byte	0x7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xf
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0x8
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0x10
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0xa
	.byte	0x44
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"BasicGpt12Enc_run"
	.byte	0x8
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"BasicGpt12Enc_IR_Encoder_reset"
	.byte	0x8
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xc
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"median_filter"
	.byte	0xa
	.byte	0x4a
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"Line_Buffer"
	.byte	0xa
	.byte	0x49
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0xe
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xd
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xf
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x68
	.uaword	0x1cb
	.byte	0x1
	.uaword	0x1024
	.uleb128 0x16
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0xa
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0xe
	.byte	0x74
	.byte	0x1
	.byte	0x1
	.uaword	0x1060
	.uleb128 0xf
	.uaword	0x23f
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Line_avgerage"
	.byte	0xa
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"convolutionOP"
	.byte	0xa
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"getLineData"
	.byte	0xa
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"printf"
	.byte	0x11
	.byte	0xba
	.byte	0x1
	.uaword	0x1cb
	.byte	0x1
	.uaword	0x10b6
	.uleb128 0xf
	.uaword	0x2a0
	.uleb128 0x16
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0xe
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x10d5
	.uleb128 0xf
	.uaword	0x23f
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0x10
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb5
	.uaword	0x1cb
	.byte	0x1
	.uleb128 0x16
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"AsclinShellInterface_runEncScan"
.LASF1:
	.string	"BasicGpt12Enc_IR_Encoder_turn"
	.extern	BasicGpt12Enc_IR_Encoder_turn,STT_FUNC,0
	.extern	AsclinShellInterface_run,STT_FUNC,0
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	printf,STT_FUNC,0
	.extern	getLineData,STT_FUNC,0
	.extern	convolutionOP,STT_FUNC,0
	.extern	Line_avgerage,STT_FUNC,0
	.extern	InfineonRacer_control,STT_FUNC,0
	.extern	AsclinShellInterface_runEncScan,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	Line_Buffer,STT_FUNC,0
	.extern	median_filter,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	BasicGpt12Enc_IR_Encoder_reset,STT_FUNC,0
	.extern	BasicGpt12Enc_run,STT_FUNC,0
	.extern	InfineonRacer_init,STT_FUNC,0
	.extern	AsclinShellInterface_init,STT_FUNC,0
	.extern	BasicGpt12Enc_init,STT_FUNC,0
	.extern	BasicVadcBgScan_init,STT_FUNC,0
	.extern	BasicGtmTom_init,STT_FUNC,0
	.extern	BasicPort_init,STT_FUNC,0
	.extern	BasicLineScan_init,STT_FUNC,0
	.extern	IR_Encoder,STT_OBJECT,24
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
