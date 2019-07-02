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
	.loc 1 39 0
	mov	%d15, 1
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	st.w	[%a15] 520, %d15
	.loc 1 41 0
	mov	%d2, -1
	.loc 1 40 0
	mov	%d15, 0
	.loc 1 41 0
	st.w	[%a15] 528, %d2
	.loc 1 40 0
	st.w	[%a15] 524, %d15
	.loc 1 43 0
	st.b	[%a15] 565, %d15
	.loc 1 44 0
	st.b	[%a15] 564, %d15
	ret
.LFE577:
	.size	InfineonRacer_init, .-InfineonRacer_init
.section .text.InfineonRacer_detectLane,"ax",@progbits
	.align 1
	.global	InfineonRacer_detectLane
	.type	InfineonRacer_detectLane, @function
InfineonRacer_detectLane:
.LFB578:
	.loc 1 47 0
	ret
.LFE578:
	.size	InfineonRacer_detectLane, .-InfineonRacer_detectLane
.section .text.InfineonRacer_control,"ax",@progbits
	.align 1
	.global	InfineonRacer_control
	.type	InfineonRacer_control, @function
InfineonRacer_control:
.LFB579:
	.loc 1 56 0
	ret
.LFE579:
	.size	InfineonRacer_control, .-InfineonRacer_control
.section .text.Line_Buffer,"ax",@progbits
	.align 1
	.global	Line_Buffer
	.type	Line_Buffer, @function
Line_Buffer:
.LFB580:
	.loc 1 60 0
.LVL0:
	movh.a	%a3, hi:IR_LineScan
.LBB2:
	.loc 1 61 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 127
.LVL1:
.L5:
	.loc 1 62 0 discriminator 3
	addi	%d2, %d15, 256
	addsc.a	%a2, %a3, %d2, 2
	addsc.a	%a4, %a3, %d15, 2
	ld.w	%d3, [%a2]0
	ld.w	%d2, [%a4]0
	.loc 1 61 0 discriminator 3
	add	%d15, 1
.LVL2:
	.loc 1 62 0 discriminator 3
	add	%d2, %d3
	st.w	[%a2]0, %d2
	.loc 1 61 0 discriminator 3
	loop	%a15, .L5
.LBE2:
	.loc 1 64 0
	ret
.LFE580:
	.size	Line_Buffer, .-Line_Buffer
.section .text.Line_avgerage,"ax",@progbits
	.align 1
	.global	Line_avgerage
	.type	Line_avgerage, @function
Line_avgerage:
.LFB581:
	.loc 1 66 0
.LVL3:
	movh.a	%a3, hi:IR_LineScan
.LBB3:
	.loc 1 67 0
	mov	%d4, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 127
.LVL4:
.L9:
	.loc 1 68 0 discriminator 3
	addi	%d15, %d4, 256
	addsc.a	%a2, %a3, %d15, 2
	movh	%d2, 52429
	ld.w	%d15, [%a2]0
	addi	%d2, %d2, -13107
	mul.u	%e2, %d15, %d2
	.loc 1 67 0 discriminator 3
	add	%d4, 1
.LVL5:
	.loc 1 68 0 discriminator 3
	sh	%d15, %d3, -2
	st.w	[%a2]0, %d15
	.loc 1 67 0 discriminator 3
	loop	%a15, .L9
.LBE3:
	.loc 1 71 0
	ret
.LFE581:
	.size	Line_avgerage, .-Line_avgerage
.section .text.convolutionOP,"ax",@progbits
	.align 1
	.global	convolutionOP
	.type	convolutionOP, @function
convolutionOP:
.LFB582:
	.loc 1 73 0
.LVL6:
	movh.a	%a3, hi:IR_LineData
	lea	%a3, [%a3] lo:IR_LineData
	movh.a	%a4, hi:IR_LineScan
	.loc 1 75 0
	mov	%d7, 0
.LBB4:
	.loc 1 79 0
	mov	%d1, 0
	lea	%a4, [%a4] lo:IR_LineScan
	.loc 1 86 0
	mov.d	%d8, %a3
	lea	%a5, 129
.LVL7:
.L14:
	.loc 1 79 0
	sh	%d0, %d7, 2
	addsc.a	%a15, %a3, %d0, 0
	st.w	[%a15]0, %d1
	.loc 1 81 0
	jlt.u	%d7, 2, .L12
	.loc 1 81 0 is_stmt 0 discriminator 1
	add	%d15, %d7, -2
.LVL8:
	.loc 1 82 0 is_stmt 1 discriminator 1
	min.u	%d4, %d7, 127
.LVL9:
	.loc 1 84 0 discriminator 1
	jlt.u	%d4, %d15, .L17
.LVL10:
.L13:
	sub	%d3, %d7, %d15
	.loc 1 81 0 discriminator 3
	mov	%d2, 0
.LVL11:
.L16:
	.loc 1 86 0 discriminator 3
	addsc.a	%a2, %a3, %d3, 2
	addsc.a	%a15, %a4, %d15, 2
	ld.w	%d6, [%a2] 520
	ld.w	%d5, [%a15] 1024
	.loc 1 84 0 discriminator 3
	add	%d15, 1
.LVL12:
	.loc 1 86 0 discriminator 3
	madd	%d2, %d2, %d6, %d5
	add	%d3, -1
	.loc 1 84 0 discriminator 3
	jge.u	%d4, %d15, .L16
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d0, 0
	st.w	[%a15]0, %d2
.L17:
.LBE4:
	.loc 1 75 0
	add	%d7, 1
.LVL13:
	loop	%a5, .L14
	ret
.LVL14:
.L12:
.LBB5:
	.loc 1 82 0
	min.u	%d4, %d7, 127
.LVL15:
	.loc 1 81 0
	mov	%d15, 0
	j	.L13
.LBE5:
.LFE582:
	.size	convolutionOP, .-convolutionOP
.section .text.clearBuffer,"ax",@progbits
	.align 1
	.global	clearBuffer
	.type	clearBuffer, @function
clearBuffer:
.LFB583:
	.loc 1 91 0
.LVL16:
	movh.a	%a3, hi:IR_LineScan
.LBB6:
	.loc 1 92 0
	mov	%d2, 0
	lea	%a3, [%a3] lo:IR_LineScan
	.loc 1 93 0
	mov	%d3, 0
	lea	%a15, 127
.LVL17:
.L22:
	.loc 1 93 0 is_stmt 0 discriminator 3
	addi	%d15, %d2, 256
	addsc.a	%a2, %a3, %d15, 2
	.loc 1 92 0 is_stmt 1 discriminator 3
	add	%d2, 1
.LVL18:
	.loc 1 93 0 discriminator 3
	st.w	[%a2]0, %d3
	.loc 1 92 0 discriminator 3
	loop	%a15, .L22
.LBE6:
	.loc 1 95 0
	ret
.LFE583:
	.size	clearBuffer, .-clearBuffer
.section .text.median_filter,"ax",@progbits
	.align 1
	.global	median_filter
	.type	median_filter, @function
median_filter:
.LFB584:
	.loc 1 97 0
.LVL19:
	ret
.LFE584:
	.size	median_filter, .-median_filter
.section .text.getLineData,"ax",@progbits
	.align 1
	.global	getLineData
	.type	getLineData, @function
getLineData:
.LFB585:
	.loc 1 117 0
.LVL20:
	.loc 1 121 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 564
	jnz	%d15, .L26
	ld.w	%d4, [%a2] 556
	mov	%e2, 5
	lea	%a15, 117
.LVL21:
.L28:
.LBB7:
	.loc 1 123 0
	addsc.a	%a3, %a2, %d2, 2
	mov	%d15, %d4
	ld.w	%d5, [%a3]0
	jge.u	%d3, %d5, .L27
	.loc 1 124 0
	mov	%d15, %d2
	.loc 1 123 0
	mov	%d3, %d5
.LVL22:
.L27:
	.loc 1 122 0 discriminator 2
	add	%d2, 1
.LVL23:
	mov	%d4, %d15
	loop	%a15, .L28
	st.w	[%a2] 556, %d15
	.loc 1 131 0
	lt.u	%d2, %d15, 123
.LVL24:
	.loc 1 129 0
	sh	%d3, -1
.LVL25:
	.loc 1 131 0
	jz	%d2, .L33
	rsub	%d4, %d15, 122
.LVL26:
	ld.bu	%d2, [%a2] 565
	mov.a	%a15, %d4
.LVL27:
.L32:
	.loc 1 132 0
	addsc.a	%a3, %a2, %d15, 2
	.loc 1 131 0
	add	%d15, 1
.LVL28:
	.loc 1 132 0
	ld.w	%d4, [%a3]0
	.loc 1 133 0
	ge.u	%d4, %d3, %d4
	sel	%d2, %d4, %d2, 1
	.loc 1 131 0
	loop	%a15, .L32
	st.b	[%a2] 565, %d2
.L33:
	.loc 1 135 0
	mov	%d15, 1
.LVL29:
	st.b	[%a2] 564, %d15
.LBE7:
	ret
.LVL30:
.L26:
	ld.w	%d4, [%a2] 560
	.loc 1 121 0
	mov	%e2, 5
	lea	%a15, 117
.LVL31:
.L35:
.LBB8:
	.loc 1 140 0
	addsc.a	%a3, %a2, %d2, 2
	mov	%d15, %d4
	ld.w	%d5, [%a3]0
	jge.u	%d3, %d5, .L34
	.loc 1 141 0
	mov	%d15, %d2
	.loc 1 140 0
	mov	%d3, %d5
.LVL32:
.L34:
	.loc 1 139 0 discriminator 2
	add	%d2, 1
.LVL33:
	mov	%d4, %d15
	loop	%a15, .L35
	st.w	[%a2] 560, %d15
	.loc 1 148 0
	lt.u	%d2, %d15, 123
.LVL34:
	.loc 1 146 0
	sh	%d3, -1
.LVL35:
	.loc 1 148 0
	jz	%d2, .L39
	rsub	%d4, %d15, 122
.LVL36:
	ld.bu	%d2, [%a2] 565
	mov.a	%a15, %d4
.LVL37:
.L38:
	.loc 1 149 0
	addsc.a	%a3, %a2, %d15, 2
	.loc 1 148 0
	add	%d15, 1
.LVL38:
	.loc 1 149 0
	ld.w	%d4, [%a3]0
	.loc 1 150 0
	ge.u	%d4, %d3, %d4
	sel	%d2, %d4, %d2, 1
	.loc 1 148 0
	loop	%a15, .L38
	st.b	[%a2] 565, %d2
.L39:
	.loc 1 152 0
	mov	%d15, 0
.LVL39:
	st.b	[%a2] 564, %d15
	ret
.LBE8:
.LFE585:
	.size	getLineData, .-getLineData
.section .text.IsOutSchoolZone,"ax",@progbits
	.align 1
	.global	IsOutSchoolZone
	.type	IsOutSchoolZone, @function
IsOutSchoolZone:
.LFB586:
	.loc 1 158 0
.LVL40:
	.loc 1 160 0
	movh.a	%a3, hi:IR_LineData
	lea	%a3, [%a3] lo:IR_LineData
	ld.w	%d15, [%a3] 560
	addsc.a	%a15, %a3, %d15, 2
	.loc 1 164 0
	ge.u	%d4, %d15, 123
	.loc 1 160 0
	ld.w	%d2, [%a15]0
.LVL41:
	.loc 1 162 0
	sh	%d3, %d2, -1
.LVL42:
	.loc 1 164 0
	jnz	%d4, .L49
	.loc 1 165 0
	jlt.u	%d3, %d2, .L50
	rsub	%d2, %d15, 122
.LVL43:
	mov.a	%a15, %d2
.LVL44:
.L52:
	.loc 1 164 0 discriminator 2
	add	%d15, 1
.LVL45:
	loop	%a15, .L53
.L49:
	.loc 1 172 0
	ret
.L53:
	.loc 1 165 0
	addsc.a	%a2, %a3, %d15, 2
	ld.w	%d2, [%a2]0
	jge.u	%d3, %d2, .L52
.L50:
	.loc 1 166 0
	mov	%d15, 0
.LVL46:
	.loc 1 167 0
	mov	%d2, 0
	.loc 1 166 0
	st.b	[%a3] 565, %d15
	ret
.LFE586:
	.size	IsOutSchoolZone, .-IsOutSchoolZone
.section .text.Direction,"ax",@progbits
	.align 1
	.global	Direction
	.type	Direction, @function
Direction:
.LFB587:
	.loc 1 174 0
	.loc 1 175 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d2, [%a15] 560
	ld.w	%d15, [%a15] 556
	sub	%d2, %d15
	.loc 1 176 0
	utof	%d2, %d2
	ret
.LFE587:
	.size	Direction, .-Direction
	.global	IR_LineData
.section .bss.IR_LineData,"aw",@nobits
	.align 2
	.type	IR_LineData, @object
	.size	IR_LineData, 568
IR_LineData:
	.zero	568
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
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB583
	.uaword	.LFE583-.LFB583
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB584
	.uaword	.LFE584-.LFB584
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB585
	.uaword	.LFE585-.LFB585
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB586
	.uaword	.LFE586-.LFB586
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB587
	.uaword	.LFE587-.LFB587
	.align 2
.LEFDE20:
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
	.uaword	0x801
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.c"
	.string	"C:\\\\Users\\\\JB\\\\Documents\\\\Github\\\\testbench\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x1b3
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1bf
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x249
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
	.uaword	0x1ea
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
	.uaword	0x2a4
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x2c9
	.uleb128 0x7
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x29e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x3
	.byte	0x81
	.uaword	0x21e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2a5
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
	.byte	0x2a
	.uaword	0x33e
	.uleb128 0x7
	.string	"Ls0Margin"
	.byte	0x4
	.byte	0x2b
	.uaword	0x21e
	.byte	0
	.uleb128 0x7
	.string	"Ls1Margin"
	.byte	0x4
	.byte	0x2c
	.uaword	0x21e
	.byte	0x4
	.uleb128 0x7
	.string	"basicTest"
	.byte	0x4
	.byte	0x2d
	.uaword	0x25c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x4
	.byte	0x2e
	.uaword	0x2ff
	.uleb128 0x9
	.uahalf	0x238
	.byte	0x4
	.byte	0x30
	.uaword	0x3f9
	.uleb128 0x7
	.string	"Result"
	.byte	0x4
	.byte	0x31
	.uaword	0x3f9
	.byte	0
	.uleb128 0xa
	.string	"Transfer"
	.byte	0x4
	.byte	0x32
	.uaword	0x409
	.uahalf	0x208
	.uleb128 0xa
	.string	"sample"
	.byte	0x4
	.byte	0x34
	.uaword	0x419
	.uahalf	0x214
	.uleb128 0xa
	.string	"temp"
	.byte	0x4
	.byte	0x35
	.uaword	0x23a
	.uahalf	0x228
	.uleb128 0xa
	.string	"previous"
	.byte	0x4
	.byte	0x37
	.uaword	0x22c
	.uahalf	0x22c
	.uleb128 0xa
	.string	"present"
	.byte	0x4
	.byte	0x38
	.uaword	0x22c
	.uahalf	0x230
	.uleb128 0xa
	.string	"Direction_Determined"
	.byte	0x4
	.byte	0x3a
	.uaword	0x25c
	.uahalf	0x234
	.uleb128 0xa
	.string	"School_Zone_flag"
	.byte	0x4
	.byte	0x3b
	.uaword	0x25c
	.uahalf	0x235
	.byte	0
	.uleb128 0xb
	.uaword	0x1d4
	.uaword	0x409
	.uleb128 0xc
	.uaword	0x2f3
	.byte	0x81
	.byte	0
	.uleb128 0xb
	.uaword	0x1d4
	.uaword	0x419
	.uleb128 0xc
	.uaword	0x2f3
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.uaword	0x22c
	.uaword	0x429
	.uleb128 0xc
	.uaword	0x2f3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"LineData"
	.byte	0x4
	.byte	0x3c
	.uaword	0x355
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.byte	0x76
	.uaword	0x489
	.uleb128 0xe
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xe
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xe
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xe
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x9
	.uahalf	0x800
	.byte	0x5
	.byte	0x1b
	.uaword	0x4b8
	.uleb128 0x7
	.string	"adcResult"
	.byte	0x5
	.byte	0x1c
	.uaword	0x4b8
	.byte	0
	.uleb128 0xa
	.string	"adcBuffer"
	.byte	0x5
	.byte	0x1d
	.uaword	0x4b8
	.uahalf	0x400
	.byte	0
	.uleb128 0xb
	.uaword	0x22c
	.uaword	0x4ce
	.uleb128 0xc
	.uaword	0x2f3
	.byte	0x1
	.uleb128 0xc
	.uaword	0x2f3
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.string	"IR_LineScan_t"
	.byte	0x5
	.byte	0x1e
	.uaword	0x489
	.uleb128 0xf
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
	.uleb128 0x10
	.byte	0x1
	.string	"InfineonRacer_detectLane"
	.byte	0x1
	.byte	0x2f
	.uaword	.LFB578
	.uaword	.LFE578
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB579
	.uaword	.LFE579
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"Line_Buffer"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	.LFB580
	.uaword	.LFE580
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x58e
	.uleb128 0x12
	.uaword	.LBB2
	.uaword	.LBE2
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3d
	.uaword	0x22c
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Line_avgerage"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	.LFB581
	.uaword	.LFE581
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5ca
	.uleb128 0x12
	.uaword	.LBB3
	.uaword	.LBE3
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x43
	.uaword	0x22c
	.uaword	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"convolutionOP"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.uaword	.LFB582
	.uaword	.LFE582
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x62d
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x4a
	.uaword	0x22c
	.uaword	.LLST2
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x14
	.string	"kmin"
	.byte	0x1
	.byte	0x4d
	.uaword	0x22c
	.uaword	.LLST3
	.uleb128 0x14
	.string	"kmax"
	.byte	0x1
	.byte	0x4d
	.uaword	0x22c
	.uaword	.LLST4
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0x4d
	.uaword	0x22c
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"clearBuffer"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	.LFB583
	.uaword	.LFE583
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x667
	.uleb128 0x12
	.uaword	.LBB6
	.uaword	.LBE6
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5c
	.uaword	0x22c
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"median_filter"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	.LFB584
	.uaword	.LFE584
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"getLineData"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	.LFB585
	.uaword	.LFE585
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6fb
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x76
	.uaword	0x22c
	.uaword	.LLST7
	.uleb128 0x14
	.string	"MaxVal"
	.byte	0x1
	.byte	0x77
	.uaword	0x22c
	.uaword	.LLST8
	.uleb128 0x16
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0x6e3
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.byte	0x81
	.uaword	0x22c
	.uaword	.LLST9
	.byte	0
	.uleb128 0x12
	.uaword	.LBB8
	.uaword	.LBE8
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0x92
	.uaword	0x22c
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IsOutSchoolZone"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.uaword	0x25c
	.uaword	.LFB586
	.uaword	.LFE586
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x752
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x9f
	.uaword	0x22c
	.uaword	.LLST10
	.uleb128 0x14
	.string	"MaxVal"
	.byte	0x1
	.byte	0xa0
	.uaword	0x22c
	.uaword	.LLST11
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa2
	.uaword	0x22c
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Direction"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	0x23a
	.uaword	.LFB587
	.uaword	.LFE587
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1a
	.string	"IR_Ctrl"
	.byte	0x1
	.byte	0x17
	.uaword	0x33e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Ctrl
	.uleb128 0x1a
	.string	"IR_LineData"
	.byte	0x1
	.byte	0x19
	.uaword	0x429
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_LineData
	.uleb128 0xb
	.uaword	0x2c9
	.uaword	0x7b0
	.uleb128 0xc
	.uaword	0x2f3
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0x7cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x7a0
	.uleb128 0x1b
	.string	"Assert_verboseLevel"
	.byte	0x7
	.byte	0x79
	.uaword	0x22c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"IR_LineScan"
	.byte	0x5
	.byte	0x23
	.uaword	0x4ce
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE581
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LFE582
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LFE582
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LFE582
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LFE582
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE583
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL44
	.uaword	.LFE586
	.uahalf	0xb
	.byte	0x3
	.uaword	IR_LineData+560
	.byte	0x6
	.byte	0x32
	.byte	0x24
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x6c
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
	.uaword	.LFB583
	.uaword	.LFE583-.LFB583
	.uaword	.LFB584
	.uaword	.LFE584-.LFB584
	.uaword	.LFB585
	.uaword	.LFE585-.LFB585
	.uaword	.LFB586
	.uaword	.LFE586-.LFB586
	.uaword	.LFB587
	.uaword	.LFE587-.LFB587
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB5
	.uaword	.LBE5
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
	.uaword	.LFB583
	.uaword	.LFE583
	.uaword	.LFB584
	.uaword	.LFE584
	.uaword	.LFB585
	.uaword	.LFE585
	.uaword	.LFB586
	.uaword	.LFE586
	.uaword	.LFB587
	.uaword	.LFE587
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"index"
.LASF1:
	.string	"SCHOOLZONE_DETECTION"
	.extern	IR_LineScan,STT_OBJECT,2048
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
