	.file	"InfineonRacer.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.InfineonRacer_init,"ax",@progbits
	.align 1
	.global	InfineonRacer_init
	.type	InfineonRacer_init, @function
InfineonRacer_init:
.LFB577:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.c"
	.loc 1 38 0
	ret
.LFE577:
	.size	InfineonRacer_init, .-InfineonRacer_init
.section .text.InfineonRacer_detectLane,"ax",@progbits
	.align 1
	.global	InfineonRacer_detectLane
	.type	InfineonRacer_detectLane, @function
InfineonRacer_detectLane:
.LFB578:
	.loc 1 42 0
	ret
.LFE578:
	.size	InfineonRacer_detectLane, .-InfineonRacer_detectLane
.section .text.InfineonRacer_control,"ax",@progbits
	.align 1
	.global	InfineonRacer_control
	.type	InfineonRacer_control, @function
InfineonRacer_control:
.LFB579:
	.loc 1 51 0
	ret
.LFE579:
	.size	InfineonRacer_control, .-InfineonRacer_control
.section .text.convolutionOP,"ax",@progbits
	.align 1
	.global	convolutionOP
	.type	convolutionOP, @function
convolutionOP:
.LFB580:
	.loc 1 56 0
.LVL0:
	movh.a	%a3, hi:IR_LineData
	lea	%a3, [%a3] lo:IR_LineData
	movh.a	%a4, hi:IR_LineScan
	.loc 1 58 0
	mov	%d7, 0
.LBB2:
	.loc 1 62 0
	mov	%d1, 0
	lea	%a4, [%a4] lo:IR_LineScan
	.loc 1 69 0
	mov.d	%d8, %a3
	lea	%a5, 129
.LVL1:
.L7:
	.loc 1 62 0
	sh	%d0, %d7, 2
	addsc.a	%a15, %a3, %d0, 0
	st.w	[%a15]0, %d1
	.loc 1 64 0
	jlt.u	%d7, 2, .L5
	.loc 1 64 0 is_stmt 0 discriminator 1
	add	%d15, %d7, -2
.LVL2:
	.loc 1 65 0 is_stmt 1 discriminator 1
	min.u	%d4, %d7, 127
.LVL3:
	.loc 1 67 0 discriminator 1
	jlt.u	%d4, %d15, .L10
.LVL4:
.L6:
	sub	%d3, %d7, %d15
	.loc 1 64 0 discriminator 3
	mov	%d2, 0
.LVL5:
.L9:
	.loc 1 69 0 discriminator 3
	addsc.a	%a2, %a3, %d3, 2
	addsc.a	%a15, %a4, %d15, 2
	ld.w	%d6, [%a2] 520
	ld.w	%d5, [%a15]0
	.loc 1 67 0 discriminator 3
	add	%d15, 1
.LVL6:
	.loc 1 69 0 discriminator 3
	madd	%d2, %d2, %d6, %d5
	add	%d3, -1
	.loc 1 67 0 discriminator 3
	jge.u	%d4, %d15, .L9
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d0, 0
	st.w	[%a15]0, %d2
.L10:
.LBE2:
	.loc 1 58 0
	add	%d7, 1
.LVL7:
	loop	%a5, .L7
	ret
.LVL8:
.L5:
.LBB3:
	.loc 1 65 0
	min.u	%d4, %d7, 127
.LVL9:
	.loc 1 64 0
	mov	%d15, 0
	j	.L6
.LBE3:
.LFE580:
	.size	convolutionOP, .-convolutionOP
.section .text.median_filter,"ax",@progbits
	.align 1
	.global	median_filter
	.type	median_filter, @function
median_filter:
.LFB581:
	.loc 1 75 0
.LVL10:
	ret
.LFE581:
	.size	median_filter, .-median_filter
.section .text.getLineData,"ax",@progbits
	.align 1
	.global	getLineData
	.type	getLineData, @function
getLineData:
.LFB582:
	.loc 1 95 0
.LVL11:
	movh.a	%a3, hi:IR_LineData
	lea	%a3, [%a3] lo:IR_LineData
	ld.hu	%d4, [%a3] 558
	ld.hu	%d5, [%a3] 560
	.loc 1 97 0
	mov	%d3, 0
	.loc 1 103 0
	mov	%d15, 5
	.loc 1 107 0
	lea	%a15, 117
.LVL12:
.L19:
	.loc 1 104 0
	addsc.a	%a2, %a3, %d15, 2
	ld.w	%d2, [%a2]0
	jnz	%d2, .L17
	.loc 1 105 0
	jnz	%d3, .L18
	.loc 1 106 0
	extr.u	%d4, %d15, 0, 16
.LVL13:
	.loc 1 107 0
	mov	%d3, 1
.LVL14:
.L17:
	.loc 1 103 0 discriminator 2
	add	%d15, 1
.LVL15:
	loop	%a15, .L19
	st.h	[%a3] 558, %d4
	st.h	[%a3] 560, %d5
	ret
.L18:
	.loc 1 109 0
	jeq	%d3, 1, .L20
	.loc 1 113 0
	extr.u	%d5, %d15, 0, 16
	j	.L17
.L20:
	.loc 1 110 0
	mov	%d3, 2
.LVL16:
	j	.L17
.LFE582:
	.size	getLineData, .-getLineData
	.global	IR_LineData
.section .data.IR_LineData,"aw",@progbits
	.align 2
	.type	IR_LineData, @object
	.size	IR_LineData, 564
IR_LineData:
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.zero	492
	.zero	44
	.global	IR_Ctrl
.section .data.IR_Ctrl,"aw",@progbits
	.align 2
	.type	IR_Ctrl, @object
	.size	IR_Ctrl, 12
IR_Ctrl:
	.word	64
	.word	64
	.byte	0
	.zero	3
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
	.uaword	.LFB577
	.uaword	.LFE577-.LFB577
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB578
	.uaword	.LFE578-.LFB578
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB579
	.uaword	.LFE579-.LFB579
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB580
	.uaword	.LFE580-.LFB580
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB581
	.uaword	.LFE581-.LFB581
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB582
	.uaword	.LFE582-.LFB582
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 5 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x67a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.c"
	.string	"C:\\\\Users\\\\JB\\\\Documents\\\\testbench\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x18
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x20e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x1ab
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1b7
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x24f
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
	.uaword	0x1e2
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
	.uaword	0x2aa
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x2d1
	.uleb128 0x7
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x2a4
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x224
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2ab
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.byte	0x22
	.uaword	0x346
	.uleb128 0x7
	.string	"Ls0Margin"
	.byte	0x4
	.byte	0x23
	.uaword	0x224
	.byte	0
	.uleb128 0x7
	.string	"Ls1Margin"
	.byte	0x4
	.byte	0x24
	.uaword	0x224
	.byte	0x4
	.uleb128 0x7
	.string	"basicTest"
	.byte	0x4
	.byte	0x25
	.uaword	0x262
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x4
	.byte	0x26
	.uaword	0x307
	.uleb128 0x8
	.uahalf	0x234
	.byte	0x4
	.byte	0x28
	.uaword	0x3d6
	.uleb128 0x7
	.string	"Result"
	.byte	0x4
	.byte	0x29
	.uaword	0x3d6
	.byte	0
	.uleb128 0x9
	.string	"Transfer"
	.byte	0x4
	.byte	0x2a
	.uaword	0x3e6
	.uahalf	0x208
	.uleb128 0x9
	.string	"sample"
	.byte	0x4
	.byte	0x2c
	.uaword	0x3f6
	.uahalf	0x214
	.uleb128 0x9
	.string	"temp"
	.byte	0x4
	.byte	0x2d
	.uaword	0x240
	.uahalf	0x228
	.uleb128 0x9
	.string	"LineAmount"
	.byte	0x4
	.byte	0x30
	.uaword	0x200
	.uahalf	0x22c
	.uleb128 0x9
	.string	"head"
	.byte	0x4
	.byte	0x31
	.uaword	0x200
	.uahalf	0x22e
	.uleb128 0x9
	.string	"tail"
	.byte	0x4
	.byte	0x32
	.uaword	0x200
	.uahalf	0x230
	.byte	0
	.uleb128 0xa
	.uaword	0x232
	.uaword	0x3e6
	.uleb128 0xb
	.uaword	0x2fb
	.byte	0x81
	.byte	0
	.uleb128 0xa
	.uaword	0x232
	.uaword	0x3f6
	.uleb128 0xb
	.uaword	0x2fb
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.uaword	0x232
	.uaword	0x406
	.uleb128 0xb
	.uaword	0x2fb
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"LineData"
	.byte	0x4
	.byte	0x33
	.uaword	0x35d
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.byte	0x76
	.uaword	0x466
	.uleb128 0xd
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xd
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xd
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xd
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x8
	.uahalf	0x400
	.byte	0x5
	.byte	0x1b
	.uaword	0x482
	.uleb128 0x7
	.string	"adcResult"
	.byte	0x5
	.byte	0x1c
	.uaword	0x482
	.byte	0
	.byte	0
	.uleb128 0xa
	.uaword	0x232
	.uaword	0x498
	.uleb128 0xb
	.uaword	0x2fb
	.byte	0x1
	.uleb128 0xb
	.uaword	0x2fb
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.string	"IR_LineScan_t"
	.byte	0x5
	.byte	0x1d
	.uaword	0x466
	.uleb128 0xe
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.uaword	.LFB577
	.uaword	.LFE577
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"InfineonRacer_detectLane"
	.byte	0x1
	.byte	0x2a
	.uaword	.LFB578
	.uaword	.LFE578
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB579
	.uaword	.LFE579
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"convolutionOP"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB580
	.uaword	.LFE580
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x581
	.uleb128 0x11
	.string	"n"
	.byte	0x1
	.byte	0x39
	.uaword	0x232
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x11
	.string	"kmin"
	.byte	0x1
	.byte	0x3c
	.uaword	0x232
	.uaword	.LLST1
	.uleb128 0x11
	.string	"kmax"
	.byte	0x1
	.byte	0x3c
	.uaword	0x232
	.uaword	.LLST2
	.uleb128 0x11
	.string	"k"
	.byte	0x1
	.byte	0x3c
	.uaword	0x232
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"median_filter"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB581
	.uaword	.LFE581
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"getLineData"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	.LFB582
	.uaword	.LFE582
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5e9
	.uleb128 0x11
	.string	"index"
	.byte	0x1
	.byte	0x60
	.uaword	0x232
	.uaword	.LLST4
	.uleb128 0x11
	.string	"pixelCounter"
	.byte	0x1
	.byte	0x61
	.uaword	0x200
	.uaword	.LLST5
	.byte	0
	.uleb128 0x13
	.string	"IR_Ctrl"
	.byte	0x1
	.byte	0x17
	.uaword	0x346
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Ctrl
	.uleb128 0x13
	.string	"IR_LineData"
	.byte	0x1
	.byte	0x19
	.uaword	0x406
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_LineData
	.uleb128 0xa
	.uaword	0x2d1
	.uaword	0x629
	.uleb128 0xb
	.uaword	0x2fb
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0x646
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.uaword	0x619
	.uleb128 0x14
	.string	"Assert_verboseLevel"
	.byte	0x7
	.byte	0x79
	.uaword	0x232
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"IR_LineScan"
	.byte	0x5
	.byte	0x22
	.uaword	0x498
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LFE580
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LFE580
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LFE580
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9
	.uaword	.LFE580
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE582
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB577
	.uaword	.LFE577-.LFB577
	.uaword	.LFB578
	.uaword	.LFE578-.LFB578
	.uaword	.LFB579
	.uaword	.LFE579-.LFB579
	.uaword	.LFB580
	.uaword	.LFE580-.LFB580
	.uaword	.LFB581
	.uaword	.LFE581-.LFB581
	.uaword	.LFB582
	.uaword	.LFE582-.LFB582
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	.LBB3
	.uaword	.LBE3
	.uaword	0
	.uaword	0
	.uaword	.LFB577
	.uaword	.LFE577
	.uaword	.LFB578
	.uaword	.LFE578
	.uaword	.LFB579
	.uaword	.LFE579
	.uaword	.LFB580
	.uaword	.LFE580
	.uaword	.LFB581
	.uaword	.LFE581
	.uaword	.LFB582
	.uaword	.LFE582
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	IR_LineScan,STT_OBJECT,1024
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
