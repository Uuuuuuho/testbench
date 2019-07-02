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
	.loc 1 20 0
	.loc 1 27 0
	mov	%d15, 0
	movh.a	%a15, hi:IR_Encoder
	.loc 1 21 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 27 0
	lea	%a15, [%a15] lo:IR_Encoder
	.loc 1 22 0
	call	BasicPort_init
.LVL1:
	.loc 1 23 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 24 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 25 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 26 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 27 0
	st.w	[%a15] 16, %d15
	.loc 1 37 0
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
	.loc 1 46 0
	.loc 1 47 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 48 0
	mov	%d2, 1000
	.loc 1 47 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1m, %d15
	.loc 1 48 0
	jeq	%d15, %d2, .L7
	.loc 1 53 0
	mov	%d2, 100
	div	%e2, %d15, %d2
	jz	%d3, .L4
	.loc 1 57 0
	call	BasicGpt12Enc_run
.LVL7:
	.loc 1 58 0
	call	SpeedCalculation
.LVL8:
	.loc 1 59 0
	j	Speed_Buff
.LVL9:
.L7:
	.loc 1 49 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1m, %d15
.L4:
	.loc 1 55 0
	call	BasicGpt12Enc_IR_Encoder_reset
.LVL10:
	.loc 1 57 0
	call	BasicGpt12Enc_run
.LVL11:
	.loc 1 58 0
	call	SpeedCalculation
.LVL12:
	.loc 1 59 0
	j	Speed_Buff
.LVL13:
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
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 69 0
	call	Speed_Avg
.LVL14:
	.loc 1 73 0
	call	Checking_PSD
.LVL15:
	jz	%d2, .L9
	.loc 1 74 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 565
	jz	%d15, .L16
.LBB9:
.LBB10:
	.loc 1 249 0
	movh	%d4, 48922
	addi	%d4, %d4, -26214
	call	IR_setSrvAngle
.LVL16:
	.loc 1 250 0
	call	resetPSD
.LVL17:
.L11:
.LBE10:
.LBE9:
	.loc 1 95 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jeq	%d15, %d2, .L17
.L12:
	.loc 1 99 0
	jz.t	%d15, 0, .L13
	ret
.L16:
.LBB11:
.LBB12:
	.loc 1 245 0
	movh	%d4, 49024
	call	IR_setMotor0Vol
.LVL18:
.LBE12:
.LBE11:
	.loc 1 95 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jne	%d15, %d2, .L12
.L17:
	.loc 1 96 0
	mov	%d15, 0
	movh.a	%a15, hi:task_cnt_10m
	st.w	[%a15] lo:task_cnt_10m, %d15
.L13:
.LBB13:
	.loc 1 107 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 101 0
	call	BasicGtmTom_run
.LVL19:
	.loc 1 102 0
	call	BasicPort_run
.LVL20:
	.loc 1 105 0
	call	BasicVadcBgScan_run
.LVL21:
	.loc 1 107 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L18
	.loc 1 116 0
	j	AsclinShellInterface_runEncScan
.LVL22:
.L9:
.LBE13:
	.loc 1 83 0
	movh.a	%a2, hi:testVol
	ld.w	%d4, [%a2] lo:testVol
	call	IR_setMotor0Vol
.LVL23:
	j	.L11
.L18:
.LBB14:
	.loc 1 109 0
	call	InfineonRacer_control
.LVL24:
	.loc 1 116 0
	j	AsclinShellInterface_runEncScan
.LVL25:
.LBE14:
.LFE726:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
	.global	__extendsfdf2
	.global	__muldf3
	.global	__divdf3
	.global	__subdf3
	.global	__truncdfsf2
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB727:
	.loc 1 122 0
	.loc 1 123 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_100m, %d15
	.loc 1 126 0
	call	BasicLineScan_run
.LVL26:
	.loc 1 127 0
	call	median_filter
.LVL27:
	.loc 1 128 0
	call	Line_Buffer
.LVL28:
	.loc 1 129 0
	ld.w	%d15, [%a15] lo:task_cnt_100m
	mov	%d2, 5
	div	%e2, %d15, %d2
	jz	%d3, .L25
.L20:
	.loc 1 135 0
	mov	%d2, 10
	div	%e2, %d15, %d2
	jnz	%d3, .L21
	.loc 1 136 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 565
	jz	%d15, .L26
	.loc 1 139 0
	call	IsOutSchoolZone
.LVL29:
.L23:
	.loc 1 141 0
	call	Direction
.LVL30:
.LBB15:
.LBB16:
	.loc 1 240 0
	mov	%d4, %d2
	call	__extendsfdf2
.LVL31:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__muldf3
.LVL32:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16475
	call	__divdf3
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
	.loc 1 241 0
	mov	%d4, %d2
	call	IR_setSrvAngle
.LVL36:
	ld.w	%d15, [%a15] lo:task_cnt_100m
.L21:
.LBE16:
.LBE15:
	.loc 1 155 0
	mov	%d2, 1000
	jeq	%d15, %d2, .L27
	ret
.L27:
	.loc 1 156 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_100m, %d15
	ret
.L26:
	.loc 1 137 0
	call	IsInSchoolZone
.LVL37:
	j	.L23
.L25:
	.loc 1 130 0
	call	convolutionOP
.LVL38:
	.loc 1 131 0
	call	Line_avgerage
.LVL39:
	.loc 1 132 0
	call	getLineData
.LVL40:
	ld.w	%d15, [%a15] lo:task_cnt_100m
	j	.L20
.LFE727:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB728:
	.loc 1 172 0
	.loc 1 173 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 200 0
	mov	%d2, 1000
	.loc 1 173 0
	add	%d15, 1
	.loc 1 200 0
	jne	%d15, %d2, .L31
	.loc 1 201 0
	mov	%d15, 0
.L31:
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
	.loc 1 212 0
	.loc 1 213 0
	call	AsclinShellInterface_run
.LVL41:
	.loc 1 219 0
	j	BasicGpt12Enc_IR_Encoder_turn
.LVL42:
.LFE729:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB730:
	.loc 1 223 0
	ret
.LFE730:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
.section .text.PID,"ax",@progbits
	.align 1
	.global	PID
	.type	PID, @function
PID:
.LFB731:
	.loc 1 228 0
	.loc 1 229 0
	movh.a	%a15, hi:IR_Encoder
	ld.w	%d15, [%a15] lo:IR_Encoder
	.loc 1 230 0
	movh.a	%a15, hi:Target_speeed
	ld.w	%d2, [%a15] lo:Target_speeed
	movh.a	%a15, hi:error
	sub.f	%d2, %d2, %d15
	st.w	[%a15] lo:error, %d2
	.loc 1 231 0
	movh.a	%a15, hi:Kp
	ld.w	%d3, [%a15] lo:Kp
	movh.a	%a15, hi:Current_Speed
	mul.f	%d2, %d2, %d3
	add.f	%d15, %d15, %d2
	st.w	[%a15] lo:Current_Speed, %d15
	ret
.LFE731:
	.size	PID, .-PID
.section .text.Speed2Vol,"ax",@progbits
	.align 1
	.global	Speed2Vol
	.type	Speed2Vol, @function
Speed2Vol:
.LFB732:
	.loc 1 234 0
	ret
.LFE732:
	.size	Speed2Vol, .-Speed2Vol
.section .text.SrvControl,"ax",@progbits
	.align 1
	.global	SrvControl
	.type	SrvControl, @function
SrvControl:
.LFB733:
	.loc 1 239 0
.LVL43:
	.loc 1 240 0
	call	__extendsfdf2
.LVL44:
	movh	%d7, 16339
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62304
	call	__muldf3
.LVL45:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16475
	call	__divdf3
.LVL46:
	mov	%e6, %d3, %d2
	movh	%d5, 49114
	movh	%d4, 39322
	addi	%d5, %d5, -26215
	addi	%d4, %d4, -26214
	call	__subdf3
.LVL47:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL48:
	.loc 1 241 0
	mov	%d4, %d2
	j	IR_setSrvAngle
.LVL49:
.LFE733:
	.size	SrvControl, .-SrvControl
.section .text.AEB,"ax",@progbits
	.align 1
	.global	AEB
	.type	AEB, @function
AEB:
.LFB734:
	.loc 1 244 0
	.loc 1 245 0
	movh	%d4, 49024
	j	IR_setMotor0Vol
.LVL50:
.LFE734:
	.size	AEB, .-AEB
.section .text.Avoid,"ax",@progbits
	.align 1
	.global	Avoid
	.type	Avoid, @function
Avoid:
.LFB735:
	.loc 1 248 0
	.loc 1 249 0
	movh	%d4, 48922
	addi	%d4, %d4, -26214
	call	IR_setSrvAngle
.LVL51:
	.loc 1 250 0
	j	resetPSD
.LVL52:
.LFE735:
	.size	Avoid, .-Avoid
	.global	NextVol
.section .bss.NextVol,"aw",@nobits
	.align 2
	.type	NextVol, @object
	.size	NextVol, 4
NextVol:
	.zero	4
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
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB734
	.uaword	.LFE734-.LFB734
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB735
	.uaword	.LFE735-.LFB735
	.align 2
.LEFDE22:
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
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x13ff
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"C:\\\\Users\\\\JB\\\\Documents\\\\Github\\\\testbench\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
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
	.uaword	0x212
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
	.uaword	0x1bc
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1c8
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x1b3
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1f3
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x27d
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
	.uaword	0x2b8
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x26f
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x204
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x304
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x2b2
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x235
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2de
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
	.uaword	0x38a
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
	.uaword	0x2b0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3c0
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x53f
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x38a
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x260
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x58b
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5d2
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5ed
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x626
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6d3
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x6f7
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x731
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x774
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x798
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x801
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7d1
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x81f
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x83f
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x860
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x65f
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x698
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x87e
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x560
	.uleb128 0x5
	.byte	0x4
	.uaword	0x566
	.uleb128 0xc
	.uaword	0x260
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x560
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x5a7
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5ad
	.uleb128 0xd
	.byte	0x1
	.uaword	0x260
	.uaword	0x5cc
	.uleb128 0xe
	.uaword	0x38a
	.uleb128 0xe
	.uaword	0x2b0
	.uleb128 0xe
	.uaword	0x5cc
	.uleb128 0xe
	.uaword	0x2b9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2cd
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x5a7
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x610
	.uleb128 0x5
	.byte	0x4
	.uaword	0x616
	.uleb128 0xd
	.byte	0x1
	.uaword	0x235
	.uaword	0x626
	.uleb128 0xe
	.uaword	0x38a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x649
	.uleb128 0x5
	.byte	0x4
	.uaword	0x64f
	.uleb128 0xd
	.byte	0x1
	.uaword	0x56b
	.uaword	0x65f
	.uleb128 0xe
	.uaword	0x38a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x682
	.uleb128 0x5
	.byte	0x4
	.uaword	0x688
	.uleb128 0xd
	.byte	0x1
	.uaword	0x243
	.uaword	0x698
	.uleb128 0xe
	.uaword	0x38a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6bd
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6c3
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2b9
	.uaword	0x6d3
	.uleb128 0xe
	.uaword	0x38a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x610
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x71b
	.uleb128 0x5
	.byte	0x4
	.uaword	0x721
	.uleb128 0xd
	.byte	0x1
	.uaword	0x53f
	.uaword	0x731
	.uleb128 0xe
	.uaword	0x38a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x754
	.uleb128 0x5
	.byte	0x4
	.uaword	0x75a
	.uleb128 0xd
	.byte	0x1
	.uaword	0x260
	.uaword	0x774
	.uleb128 0xe
	.uaword	0x38a
	.uleb128 0xe
	.uaword	0x2cd
	.uleb128 0xe
	.uaword	0x2b9
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x754
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x7b6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7bc
	.uleb128 0xd
	.byte	0x1
	.uaword	0x260
	.uaword	0x7d1
	.uleb128 0xe
	.uaword	0x38a
	.uleb128 0xe
	.uaword	0x2b9
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7ef
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7f5
	.uleb128 0xf
	.byte	0x1
	.uaword	0x801
	.uleb128 0xe
	.uaword	0x38a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7ef
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7ef
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7ef
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7ef
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7ef
	.uleb128 0x9
	.byte	0x1
	.byte	0x7
	.byte	0x4c
	.uaword	0x8fe
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
	.uaword	0x8a3
	.uleb128 0x7
	.byte	0x18
	.byte	0x8
	.byte	0x21
	.uaword	0x979
	.uleb128 0x8
	.string	"speed"
	.byte	0x8
	.byte	0x22
	.uaword	0x251
	.byte	0
	.uleb128 0x8
	.string	"rawPosition"
	.byte	0x8
	.byte	0x23
	.uaword	0x251
	.byte	0x4
	.uleb128 0x8
	.string	"direction"
	.byte	0x8
	.byte	0x24
	.uaword	0x8fe
	.byte	0x8
	.uleb128 0x8
	.string	"turn"
	.byte	0x8
	.byte	0x25
	.uaword	0x235
	.byte	0xc
	.uleb128 0x8
	.string	"buff"
	.byte	0x8
	.byte	0x26
	.uaword	0x251
	.byte	0x10
	.uleb128 0x8
	.string	"avg"
	.byte	0x8
	.byte	0x27
	.uaword	0x251
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"IR_Encoder_t"
	.byte	0x8
	.byte	0x28
	.uaword	0x916
	.uleb128 0x7
	.byte	0x8
	.byte	0x9
	.byte	0x26
	.uaword	0x9b7
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x9
	.byte	0x28
	.uaword	0x9b7
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x9
	.byte	0x29
	.uaword	0x204
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3aa
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x9
	.byte	0x2a
	.uaword	0x98d
	.uleb128 0x7
	.byte	0xc
	.byte	0xa
	.byte	0x2b
	.uaword	0xa0f
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0xa
	.byte	0x2c
	.uaword	0x235
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0xa
	.byte	0x2d
	.uaword	0x235
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0xa
	.byte	0x2e
	.uaword	0x260
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0xa
	.byte	0x2f
	.uaword	0x9d0
	.uleb128 0x10
	.uahalf	0x238
	.byte	0xa
	.byte	0x31
	.uaword	0xaca
	.uleb128 0x8
	.string	"Result"
	.byte	0xa
	.byte	0x32
	.uaword	0xaca
	.byte	0
	.uleb128 0x11
	.string	"Transfer"
	.byte	0xa
	.byte	0x33
	.uaword	0xada
	.uahalf	0x208
	.uleb128 0x11
	.string	"sample"
	.byte	0xa
	.byte	0x35
	.uaword	0xaea
	.uahalf	0x214
	.uleb128 0x11
	.string	"temp"
	.byte	0xa
	.byte	0x36
	.uaword	0x251
	.uahalf	0x228
	.uleb128 0x11
	.string	"previous"
	.byte	0xa
	.byte	0x38
	.uaword	0x243
	.uahalf	0x22c
	.uleb128 0x11
	.string	"present"
	.byte	0xa
	.byte	0x39
	.uaword	0x243
	.uahalf	0x230
	.uleb128 0x11
	.string	"Direction_Determined"
	.byte	0xa
	.byte	0x3b
	.uaword	0x260
	.uahalf	0x234
	.uleb128 0x11
	.string	"School_Zone_flag"
	.byte	0xa
	.byte	0x3c
	.uaword	0x260
	.uahalf	0x235
	.byte	0
	.uleb128 0x12
	.uaword	0x1dd
	.uaword	0xada
	.uleb128 0x13
	.uaword	0x32e
	.byte	0x81
	.byte	0
	.uleb128 0x12
	.uaword	0x1dd
	.uaword	0xaea
	.uleb128 0x13
	.uaword	0x32e
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uaword	0x243
	.uaword	0xafa
	.uleb128 0x13
	.uaword	0x32e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"LineData"
	.byte	0xa
	.byte	0x3d
	.uaword	0xa26
	.uleb128 0x14
	.byte	0x1
	.string	"SrvControl"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.byte	0x1
	.uaword	0xb3a
	.uleb128 0x15
	.string	"diff"
	.byte	0x1
	.byte	0xef
	.uaword	0x251
	.uleb128 0x16
	.string	"result"
	.byte	0x1
	.byte	0xf0
	.uaword	0x251
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"AEB"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"Avoid"
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.uaword	.LFB724
	.uaword	.LFE724
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbb4
	.uleb128 0x19
	.uaword	.LVL0
	.uaword	0x1114
	.uleb128 0x19
	.uaword	.LVL1
	.uaword	0x112d
	.uleb128 0x19
	.uaword	.LVL2
	.uaword	0x1142
	.uleb128 0x19
	.uaword	.LVL3
	.uaword	0x1159
	.uleb128 0x19
	.uaword	.LVL4
	.uaword	0x1174
	.uleb128 0x19
	.uaword	.LVL5
	.uaword	0x118d
	.uleb128 0x1a
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x11ad
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.uaword	.LFB725
	.uaword	.LFE725
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc2b
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3b
	.uaword	0x1dd
	.byte	0x1
	.uaword	0xbe9
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL7
	.uaword	0x11c6
	.uleb128 0x19
	.uaword	.LVL8
	.uaword	0x11de
	.uleb128 0x1a
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x11f5
	.uleb128 0x19
	.uaword	.LVL10
	.uaword	0x1208
	.uleb128 0x19
	.uaword	.LVL11
	.uaword	0x11c6
	.uleb128 0x19
	.uaword	.LVL12
	.uaword	0x11de
	.uleb128 0x1a
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x11f5
	.byte	0
	.uleb128 0x18
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
	.uaword	0xd0f
	.uleb128 0x1d
	.uaword	0xb44
	.uaword	.LBB9
	.uaword	.LBE9
	.byte	0x1
	.byte	0x4e
	.uaword	0xc74
	.uleb128 0x19
	.uaword	.LVL16
	.uaword	0x122d
	.uleb128 0x19
	.uaword	.LVL17
	.uaword	0x124c
	.byte	0
	.uleb128 0x1d
	.uaword	0xb3a
	.uaword	.LBB11
	.uaword	.LBE11
	.byte	0x1
	.byte	0x4b
	.uaword	0xc9e
	.uleb128 0x1e
	.uaword	.LVL18
	.uaword	0x125b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b3
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	.Ldebug_ranges0+0
	.uaword	0xcf3
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x74
	.uaword	0x1dd
	.byte	0x1
	.uaword	0xcba
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL19
	.uaword	0x127b
	.uleb128 0x19
	.uaword	.LVL20
	.uaword	0x1291
	.uleb128 0x19
	.uaword	.LVL21
	.uaword	0x12a5
	.uleb128 0x1a
	.uaword	.LVL22
	.byte	0x1
	.uaword	0x12bf
	.uleb128 0x19
	.uaword	.LVL24
	.uaword	0x12d2
	.uleb128 0x1a
	.uaword	.LVL25
	.byte	0x1
	.uaword	0x12bf
	.byte	0
	.uleb128 0x19
	.uaword	.LVL14
	.uaword	0x12ee
	.uleb128 0x19
	.uaword	.LVL15
	.uaword	0x12fe
	.uleb128 0x19
	.uaword	.LVL23
	.uaword	0x125b
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdbe
	.uleb128 0x1d
	.uaword	0xb0a
	.uaword	.LBB15
	.uaword	.LBE15
	.byte	0x1
	.byte	0x8d
	.uaword	0xd6c
	.uleb128 0x22
	.uaword	0xb1f
	.uaword	.LLST0
	.uleb128 0x23
	.uaword	.LBB16
	.uaword	.LBE16
	.uleb128 0x24
	.uaword	0xb2b
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	.LVL36
	.uaword	0x122d
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL26
	.uaword	0x1315
	.uleb128 0x19
	.uaword	.LVL27
	.uaword	0x132d
	.uleb128 0x19
	.uaword	.LVL28
	.uaword	0x1341
	.uleb128 0x19
	.uaword	.LVL29
	.uaword	0x1353
	.uleb128 0x19
	.uaword	.LVL30
	.uaword	0x136d
	.uleb128 0x19
	.uaword	.LVL37
	.uaword	0x1381
	.uleb128 0x19
	.uaword	.LVL38
	.uaword	0x139a
	.uleb128 0x19
	.uaword	.LVL39
	.uaword	0x13ae
	.uleb128 0x19
	.uaword	.LVL40
	.uaword	0x13c2
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe29
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0xdb
	.uaword	0x1dd
	.byte	0x1
	.uaword	0xe15
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL41
	.uaword	0x13d4
	.uleb128 0x1a
	.uaword	.LVL42
	.byte	0x1
	.uaword	0x13f3
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"PID"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"Speed2Vol"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.uaword	.LFB732
	.uaword	.LFE732
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x26
	.uaword	0xb0a
	.uaword	.LFB733
	.uaword	.LFE733
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xea5
	.uleb128 0x22
	.uaword	0xb1f
	.uaword	.LLST2
	.uleb128 0x24
	.uaword	0xb2b
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.LVL49
	.byte	0x1
	.uaword	0x122d
	.byte	0
	.uleb128 0x27
	.uaword	0xb3a
	.uaword	.LFB734
	.uaword	.LFE734
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xed1
	.uleb128 0x28
	.uaword	.LVL50
	.byte	0x1
	.uaword	0x125b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b3
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xb44
	.uaword	.LFB735
	.uaword	.LFE735
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xef9
	.uleb128 0x19
	.uaword	.LVL51
	.uaword	0x122d
	.uleb128 0x1a
	.uaword	.LVL52
	.byte	0x1
	.uaword	0x124c
	.byte	0
	.uleb128 0x29
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x235
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x29
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x235
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x29
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x235
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x29
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x235
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x12
	.uaword	0x304
	.uaword	0xf73
	.uleb128 0x13
	.uaword	0x32e
	.byte	0x2
	.byte	0
	.uleb128 0x2a
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0xf90
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.uaword	0xf63
	.uleb128 0x2a
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x243
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"IR_Encoder"
	.byte	0x8
	.byte	0x2d
	.uaword	0x979
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"Ifx_g_console"
	.byte	0x9
	.byte	0x2c
	.uaword	0x9bd
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"IR_Ctrl"
	.byte	0xa
	.byte	0x42
	.uaword	0xa0f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.string	"IR_LineData"
	.byte	0xa
	.byte	0x43
	.uaword	0xafa
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x260
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x2c
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x260
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x2c
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x260
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x2c
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x260
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x2c
	.string	"testVol"
	.byte	0x1
	.byte	0xd
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testVol
	.uleb128 0x2c
	.string	"testSrv"
	.byte	0x1
	.byte	0xe
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSrv
	.uleb128 0x2c
	.string	"Target_speeed"
	.byte	0x1
	.byte	0xf
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Target_speeed
	.uleb128 0x2c
	.string	"error"
	.byte	0x1
	.byte	0xf
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	error
	.uleb128 0x2c
	.string	"Kp"
	.byte	0x1
	.byte	0xf
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Kp
	.uleb128 0x2c
	.string	"Current_Speed"
	.byte	0x1
	.byte	0xf
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Current_Speed
	.uleb128 0x2c
	.string	"NextVol"
	.byte	0x1
	.byte	0xf
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NextVol
	.uleb128 0x2d
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xc
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xd
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0xe
	.byte	0x7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xf
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0x8
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0x10
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0xa
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
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
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3b
	.uaword	0x1dd
	.byte	0x1
	.uaword	0x1208
	.uleb128 0x1c
	.byte	0
	.uleb128 0x2d
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
	.uaword	0x124c
	.uleb128 0xe
	.uaword	0x251
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"resetPSD"
	.byte	0xf
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0xe
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x127b
	.uleb128 0xe
	.uaword	0x251
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0xe
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xd
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xf
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x74
	.uaword	0x1dd
	.byte	0x1
	.uaword	0x12d2
	.uleb128 0x1c
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0xa
	.byte	0x4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"Speed_Avg"
	.byte	0x8
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"Checking_PSD"
	.byte	0xf
	.byte	0x31
	.byte	0x1
	.uaword	0x260
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xc
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"median_filter"
	.byte	0xa
	.byte	0x52
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"Line_Buffer"
	.byte	0xa
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"IsOutSchoolZone"
	.byte	0xa
	.byte	0x56
	.byte	0x1
	.uaword	0x260
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"Direction"
	.byte	0xa
	.byte	0x5a
	.byte	0x1
	.uaword	0x251
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"IsInSchoolZone"
	.byte	0xa
	.byte	0x57
	.byte	0x1
	.uaword	0x260
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"convolutionOP"
	.byte	0xa
	.byte	0x53
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"Line_avgerage"
	.byte	0xa
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.byte	0x1
	.string	"getLineData"
	.byte	0xa
	.byte	0x54
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
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
	.byte	0xdb
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x1c
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0xb
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
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x32
	.byte	0xf4
	.uleb128 0x1a9
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0xbfd99999
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b3
	.byte	0xf7
	.uleb128 0x1a9
	.byte	0xf4
	.uleb128 0x1a9
	.byte	0x8
	.uaword	0x33333333
	.uaword	0x3fd33333
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x1a9
	.byte	0x8
	.uaword	0
	.uaword	0x405b0000
	.byte	0x1b
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b3
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44-1
	.uaword	.LFE733
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b3
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x32
	.byte	0xf4
	.uleb128 0x1a9
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0xbfd99999
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b3
	.byte	0xf7
	.uleb128 0x1a9
	.byte	0xf4
	.uleb128 0x1a9
	.byte	0x8
	.uaword	0x33333333
	.uaword	0x3fd33333
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x1a9
	.byte	0x8
	.uaword	0
	.uaword	0x405b0000
	.byte	0x1b
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b3
	.byte	0x9f
	.uaword	.LVL44-1
	.uaword	.LFE733
	.uahalf	0x34
	.byte	0xf4
	.uleb128 0x1a9
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0xbfd99999
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b3
	.byte	0xf7
	.uleb128 0x1a9
	.byte	0xf4
	.uleb128 0x1a9
	.byte	0x8
	.uaword	0x33333333
	.uaword	0x3fd33333
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x1a9
	.byte	0x8
	.uaword	0
	.uaword	0x405b0000
	.byte	0x1b
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b3
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x74
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
	.uaword	.LFB734
	.uaword	.LFE734-.LFB734
	.uaword	.LFB735
	.uaword	.LFE735-.LFB735
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB13
	.uaword	.LBE13
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
	.uaword	.LFB734
	.uaword	.LFE734
	.uaword	.LFB735
	.uaword	.LFE735
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
	.extern	getLineData,STT_FUNC,0
	.extern	Line_avgerage,STT_FUNC,0
	.extern	convolutionOP,STT_FUNC,0
	.extern	IsInSchoolZone,STT_FUNC,0
	.extern	Direction,STT_FUNC,0
	.extern	IsOutSchoolZone,STT_FUNC,0
	.extern	Line_Buffer,STT_FUNC,0
	.extern	median_filter,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	InfineonRacer_control,STT_FUNC,0
	.extern	AsclinShellInterface_runEncScan,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	resetPSD,STT_FUNC,0
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	IR_LineData,STT_OBJECT,568
	.extern	Checking_PSD,STT_FUNC,0
	.extern	Speed_Avg,STT_FUNC,0
	.extern	BasicGpt12Enc_IR_Encoder_reset,STT_FUNC,0
	.extern	Speed_Buff,STT_FUNC,0
	.extern	SpeedCalculation,STT_FUNC,0
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
