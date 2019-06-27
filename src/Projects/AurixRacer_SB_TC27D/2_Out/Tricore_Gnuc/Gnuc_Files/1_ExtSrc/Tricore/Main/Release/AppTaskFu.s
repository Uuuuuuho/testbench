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
	.loc 1 13 0
	.loc 1 14 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 15 0
	call	BasicPort_init
.LVL1:
	.loc 1 16 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 17 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 18 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 19 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 29 0
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
	.loc 1 38 0
	.loc 1 39 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 40 0
	mov	%d2, 1000
	.loc 1 39 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1m, %d15
	.loc 1 40 0
	jeq	%d15, %d2, .L7
	.loc 1 45 0
	mov	%d2, 100
	div	%e2, %d15, %d2
	jz	%d3, .L4
	.loc 1 49 0
	j	BasicGpt12Enc_run
.LVL7:
.L7:
	.loc 1 41 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1m, %d15
.L4:
	.loc 1 47 0
	call	BasicGpt12Enc_IR_Encoder_reset
.LVL8:
	.loc 1 49 0
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
	.loc 1 56 0
	.loc 1 57 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	.loc 1 58 0
	mov	%d2, 1000
	.loc 1 57 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 58 0
	jeq	%d15, %d2, .L13
	.loc 1 63 0
	jz.t	%d15, 0, .L10
	ret
.L13:
	.loc 1 59 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_10m, %d15
.L10:
.LBB2:
	.loc 1 70 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 64 0
	call	BasicLineScan_run
.LVL10:
	.loc 1 65 0
	call	InfineonRacer_detectLane
.LVL11:
	.loc 1 66 0
	call	BasicPort_run
.LVL12:
	.loc 1 67 0
	call	BasicGtmTom_run
.LVL13:
	.loc 1 68 0
	call	BasicVadcBgScan_run
.LVL14:
	.loc 1 70 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L14
	.loc 1 79 0
	j	AsclinShellInterface_runEncScan
.LVL15:
.L14:
	.loc 1 72 0
	call	InfineonRacer_control
.LVL16:
	.loc 1 79 0
	j	AsclinShellInterface_runEncScan
.LVL17:
.LBE2:
.LFE726:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB727:
	.loc 1 85 0
	.loc 1 86 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 87 0
	mov	%d2, 1000
	.loc 1 86 0
	add	%d15, 1
	.loc 1 87 0
	jne	%d15, %d2, .L18
	.loc 1 88 0
	mov	%d15, 0
.L18:
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
	.loc 1 104 0
	.loc 1 105 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 106 0
	mov	%d2, 1000
	.loc 1 105 0
	add	%d15, 1
	.loc 1 106 0
	jne	%d15, %d2, .L22
	.loc 1 107 0
	mov	%d15, 0
.L22:
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
	.loc 1 114 0
	.loc 1 115 0
	call	AsclinShellInterface_run
.LVL18:
	.loc 1 121 0
	j	BasicGpt12Enc_IR_Encoder_turn
.LVL19:
.LFE729:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB730:
	.loc 1 125 0
	.loc 1 126 0
	j	BasicGpt12Enc_run
.LVL20:
.LFE730:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 7 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 10 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 11 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicPort.h"
	.file 12 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicVadcBgScan.h"
	.file 14 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGpt12Enc.h"
	.file 15 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/AsclinShellInterface.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe20
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"C:\\\\Users\\\\kim\\\\eclipse-workspace\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
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
	.uaword	0x1f5
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
	.uaword	0x19f
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1ab
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1d6
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x264
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
	.uaword	0x29f
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x256
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x1e7
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x2eb
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x299
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x218
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2c5
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
	.byte	0x8
	.byte	0x76
	.uaword	0x371
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
	.uaword	0x297
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3a7
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x526
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x371
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x247
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x572
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5b9
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5d4
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x60d
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6ba
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x6de
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x718
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x75b
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x77f
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x7e8
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7b8
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x806
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x826
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x847
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x646
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x67f
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x865
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x547
	.uleb128 0x5
	.byte	0x4
	.uaword	0x54d
	.uleb128 0xc
	.uaword	0x247
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x547
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x58e
	.uleb128 0x5
	.byte	0x4
	.uaword	0x594
	.uleb128 0xd
	.byte	0x1
	.uaword	0x247
	.uaword	0x5b3
	.uleb128 0xe
	.uaword	0x371
	.uleb128 0xe
	.uaword	0x297
	.uleb128 0xe
	.uaword	0x5b3
	.uleb128 0xe
	.uaword	0x2a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b4
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x58e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x5f7
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5fd
	.uleb128 0xd
	.byte	0x1
	.uaword	0x218
	.uaword	0x60d
	.uleb128 0xe
	.uaword	0x371
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x630
	.uleb128 0x5
	.byte	0x4
	.uaword	0x636
	.uleb128 0xd
	.byte	0x1
	.uaword	0x552
	.uaword	0x646
	.uleb128 0xe
	.uaword	0x371
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x669
	.uleb128 0x5
	.byte	0x4
	.uaword	0x66f
	.uleb128 0xd
	.byte	0x1
	.uaword	0x226
	.uaword	0x67f
	.uleb128 0xe
	.uaword	0x371
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6a4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6aa
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2a0
	.uaword	0x6ba
	.uleb128 0xe
	.uaword	0x371
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x5f7
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x702
	.uleb128 0x5
	.byte	0x4
	.uaword	0x708
	.uleb128 0xd
	.byte	0x1
	.uaword	0x526
	.uaword	0x718
	.uleb128 0xe
	.uaword	0x371
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x73b
	.uleb128 0x5
	.byte	0x4
	.uaword	0x741
	.uleb128 0xd
	.byte	0x1
	.uaword	0x247
	.uaword	0x75b
	.uleb128 0xe
	.uaword	0x371
	.uleb128 0xe
	.uaword	0x2b4
	.uleb128 0xe
	.uaword	0x2a0
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x73b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x79d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7a3
	.uleb128 0xd
	.byte	0x1
	.uaword	0x247
	.uaword	0x7b8
	.uleb128 0xe
	.uaword	0x371
	.uleb128 0xe
	.uaword	0x2a0
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7d6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7dc
	.uleb128 0xf
	.byte	0x1
	.uaword	0x7e8
	.uleb128 0xe
	.uaword	0x371
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7d6
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7d6
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7d6
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7d6
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7d6
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x26
	.uaword	0x8b4
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x6
	.byte	0x28
	.uaword	0x8b4
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x6
	.byte	0x29
	.uaword	0x1e7
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x391
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x6
	.byte	0x2a
	.uaword	0x88a
	.uleb128 0x7
	.byte	0xc
	.byte	0x7
	.byte	0x1b
	.uaword	0x90c
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0x7
	.byte	0x1c
	.uaword	0x218
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0x7
	.byte	0x1d
	.uaword	0x218
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0x7
	.byte	0x1e
	.uaword	0x247
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x7
	.byte	0x1f
	.uaword	0x8cd
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.uaword	.LFB724
	.uaword	.LFE724
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x987
	.uleb128 0x11
	.uaword	.LVL0
	.uaword	0xc5c
	.uleb128 0x11
	.uaword	.LVL1
	.uaword	0xc75
	.uleb128 0x11
	.uaword	.LVL2
	.uaword	0xc8a
	.uleb128 0x11
	.uaword	.LVL3
	.uaword	0xca1
	.uleb128 0x11
	.uaword	.LVL4
	.uaword	0xcbc
	.uleb128 0x11
	.uaword	.LVL5
	.uaword	0xcd5
	.uleb128 0x12
	.uaword	.LVL6
	.byte	0x1
	.uaword	0xcf5
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uaword	.LFB725
	.uaword	.LFE725
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9c7
	.uleb128 0x12
	.uaword	.LVL7
	.byte	0x1
	.uaword	0xd0e
	.uleb128 0x11
	.uaword	.LVL8
	.uaword	0xd26
	.uleb128 0x12
	.uaword	.LVL9
	.byte	0x1
	.uaword	0xd0e
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa52
	.uleb128 0x13
	.uaword	.LBB2
	.uaword	.LBE2
	.uleb128 0x14
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4f
	.uaword	0x1c0
	.byte	0x1
	.uaword	0xa06
	.uleb128 0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LVL10
	.uaword	0xd4b
	.uleb128 0x11
	.uaword	.LVL11
	.uaword	0xd63
	.uleb128 0x11
	.uaword	.LVL12
	.uaword	0xd82
	.uleb128 0x11
	.uaword	.LVL13
	.uaword	0xd96
	.uleb128 0x11
	.uaword	.LVL14
	.uaword	0xdac
	.uleb128 0x12
	.uaword	.LVL15
	.byte	0x1
	.uaword	0xdc6
	.uleb128 0x11
	.uaword	.LVL16
	.uaword	0xdd9
	.uleb128 0x12
	.uaword	.LVL17
	.byte	0x1
	.uaword	0xdc6
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xadd
	.uleb128 0x14
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x79
	.uaword	0x1c0
	.byte	0x1
	.uaword	0xac9
	.uleb128 0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LVL18
	.uaword	0xdf5
	.uleb128 0x12
	.uaword	.LVL19
	.byte	0x1
	.uaword	0xe14
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb09
	.uleb128 0x12
	.uaword	.LVL20
	.byte	0x1
	.uaword	0xd0e
	.byte	0
	.uleb128 0x17
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x218
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x17
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x218
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x17
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x218
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x17
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x218
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x18
	.uaword	0x2eb
	.uaword	0xb83
	.uleb128 0x19
	.uaword	0x315
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0x96
	.uaword	0xba0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0xb73
	.uleb128 0x1a
	.string	"Assert_verboseLevel"
	.byte	0x9
	.byte	0x79
	.uaword	0x226
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"Ifx_g_console"
	.byte	0x6
	.byte	0x2c
	.uaword	0x8ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"IR_Ctrl"
	.byte	0x7
	.byte	0x24
	.uaword	0x90c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x1c
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x1c
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x1c
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xa
	.byte	0x27
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xb
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0xc
	.byte	0x7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xd
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0xe
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0xf
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0x7
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicGpt12Enc_run"
	.byte	0xe
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicGpt12Enc_IR_Encoder_reset"
	.byte	0xe
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xa
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"InfineonRacer_detectLane"
	.byte	0x7
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xb
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0xc
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xd
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4f
	.uaword	0x1c0
	.byte	0x1
	.uaword	0xdd9
	.uleb128 0x15
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0x7
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0xf
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x79
	.uaword	0x1c0
	.byte	0x1
	.uleb128 0x15
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uaword	0x4c
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
	.extern	InfineonRacer_control,STT_FUNC,0
	.extern	AsclinShellInterface_runEncScan,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	InfineonRacer_detectLane,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	BasicGpt12Enc_IR_Encoder_reset,STT_FUNC,0
	.extern	BasicGpt12Enc_run,STT_FUNC,0
	.extern	InfineonRacer_init,STT_FUNC,0
	.extern	AsclinShellInterface_init,STT_FUNC,0
	.extern	BasicGpt12Enc_init,STT_FUNC,0
	.extern	BasicVadcBgScan_init,STT_FUNC,0
	.extern	BasicGtmTom_init,STT_FUNC,0
	.extern	BasicPort_init,STT_FUNC,0
	.extern	BasicLineScan_init,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
