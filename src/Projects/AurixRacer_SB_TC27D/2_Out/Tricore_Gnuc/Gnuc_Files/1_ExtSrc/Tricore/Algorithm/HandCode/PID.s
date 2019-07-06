	.file	"PID.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.PID_init,"ax",@progbits
	.align 1
	.global	PID_init
	.type	PID_init, @function
PID_init:
.LFB577:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/PID.c"
	.loc 1 36 0
	.loc 1 38 0
	mov	%d15, 0
	movh.a	%a2, hi:IR_PID_Control
	.loc 1 39 0
	movh	%d2, 15821
	.loc 1 38 0
	lea	%a15, [%a2] lo:IR_PID_Control
	.loc 1 39 0
	addi	%d2, %d2, -13107
	.loc 1 38 0
	st.w	[%a2] lo:IR_PID_Control, %d15
	.loc 1 40 0
	st.w	[%a15] 8, %d15
	.loc 1 41 0
	st.w	[%a15] 12, %d15
	.loc 1 42 0
	st.w	[%a15] 16, %d15
	.loc 1 43 0
	st.w	[%a15] 20, %d15
	.loc 1 46 0
	st.w	[%a15] 32, %d15
	.loc 1 47 0
	st.w	[%a15] 36, %d15
	.loc 1 48 0
	st.w	[%a15] 40, %d15
	.loc 1 49 0
	st.w	[%a15] 44, %d15
	.loc 1 50 0
	st.w	[%a15] 48, %d15
	.loc 1 51 0
	st.w	[%a15] 52, %d15
	.loc 1 52 0
	st.w	[%a15] 56, %d15
	.loc 1 56 0
	addih	%d15, %d2, 65408
	.loc 1 44 0
	movh	%d3, 16256
	.loc 1 39 0
	st.w	[%a15] 4, %d2
	.loc 1 56 0
	st.w	[%a15] 64, %d15
	.loc 1 57 0
	movh	%d15, 14979
	.loc 1 44 0
	st.w	[%a15] 24, %d3
	.loc 1 57 0
	addi	%d15, %d15, 4719
	.loc 1 45 0
	movh	%d3, 49024
	.loc 1 55 0
	st.w	[%a15] 60, %d2
	.loc 1 57 0
	st.w	[%a15] 68, %d15
	.loc 1 45 0
	st.w	[%a15] 28, %d3
	.loc 1 57 0
	ret
.LFE577:
	.size	PID_init, .-PID_init
.section .text.PID_control,"ax",@progbits
	.align 1
	.global	PID_control
	.type	PID_control, @function
PID_control:
.LFB578:
	.loc 1 61 0
	.loc 1 70 0
	movh.a	%a2, hi:IR_PID_Control
	lea	%a15, [%a2] lo:IR_PID_Control
	ld.w	%d3, [%a15] 16
	ld.w	%d15, [%a2] lo:IR_PID_Control
	.loc 1 76 0
	ld.w	%d4, [%a15] 4
	.loc 1 70 0
	sub.f	%d15, %d15, %d3
	.loc 1 76 0
	ld.w	%d2, [%a15] 40
	mul.f	%d5, %d15, %d4
	.loc 1 73 0
	ld.w	%d6, [%a15] 60
	.loc 1 76 0
	add.f	%d5, %d5, %d2
	.loc 1 77 0
	ld.w	%d2, [%a15] 64
	.loc 1 73 0
	mul.f	%d6, %d15, %d6
	.loc 1 70 0
	st.w	[%a15] 12, %d15
	.loc 1 76 0
	st.w	[%a15] 40, %d5
	.loc 1 77 0
	mul.f	%d5, %d5, %d2
	.loc 1 80 0
	ld.w	%d2, [%a15] 20
	.loc 1 87 0
	st.w	[%a15] 20, %d15
	.loc 1 80 0
	sub.f	%d2, %d15, %d2
	.loc 1 90 0
	ld.w	%d15, [%a15] 24
	.loc 1 80 0
	div.f	%d2, %d2, %d4
	.loc 1 81 0
	ld.w	%d4, [%a15] 68
	.loc 1 73 0
	st.w	[%a15] 32, %d6
	.loc 1 81 0
	mul.f	%d4, %d2, %d4
	.loc 1 80 0
	st.w	[%a15] 48, %d2
	.loc 1 84 0
	add.f	%d2, %d6, %d5
	.loc 1 77 0
	st.w	[%a15] 36, %d5
	.loc 1 84 0
	add.f	%d2, %d4, %d2
	.loc 1 81 0
	st.w	[%a15] 44, %d4
	.loc 1 90 0
	cmp.f	%d4, %d2, %d15
	.loc 1 84 0
	st.w	[%a15] 52, %d2
	.loc 1 90 0
	jnz.t	%d4, 2, .L10
	.loc 1 92 0
	ld.w	%d15, [%a15] 28
	cmp.f	%d4, %d2, %d15
	jz.t	%d4, 0, .L5
.L10:
	.loc 1 93 0
	st.w	[%a15] 52, %d15
	mov	%d2, %d15
.L5:
	.loc 1 95 0
	add.f	%d2, %d3, %d2
	st.w	[%a15] 56, %d2
	ret
.LFE578:
	.size	PID_control, .-PID_control
.section .text.get_Speed,"ax",@progbits
	.align 1
	.global	get_Speed
	.type	get_Speed, @function
get_Speed:
.LFB579:
	.loc 1 99 0
.LVL0:
	.loc 1 100 0
	movh.a	%a15, hi:IR_PID_Control
	lea	%a15, [%a15] lo:IR_PID_Control
	st.w	[%a15] 16, %d4
	ret
.LFE579:
	.size	get_Speed, .-get_Speed
.section .text.set_Speed,"ax",@progbits
	.align 1
	.global	set_Speed
	.type	set_Speed, @function
set_Speed:
.LFB580:
	.loc 1 103 0
.LVL1:
	.loc 1 104 0
	movh.a	%a15, hi:IR_PID_Control
	st.w	[%a15] lo:IR_PID_Control, %d4
	ret
.LFE580:
	.size	set_Speed, .-set_Speed
.section .text.set_propotion,"ax",@progbits
	.align 1
	.global	set_propotion
	.type	set_propotion, @function
set_propotion:
.LFB581:
	.loc 1 107 0
.LVL2:
	.loc 1 108 0
	movh.a	%a15, hi:IR_PID_Control
	lea	%a15, [%a15] lo:IR_PID_Control
	st.w	[%a15] 60, %d4
	.loc 1 109 0
	st.w	[%a15] 64, %d5
	.loc 1 110 0
	st.w	[%a15] 68, %d6
	ret
.LFE581:
	.size	set_propotion, .-set_propotion
.section .text.set_SamplingTime,"ax",@progbits
	.align 1
	.global	set_SamplingTime
	.type	set_SamplingTime, @function
set_SamplingTime:
.LFB582:
	.loc 1 112 0
.LVL3:
	.loc 1 113 0
	movh.a	%a15, hi:IR_PID_Control
	lea	%a15, [%a15] lo:IR_PID_Control
	st.w	[%a15] 4, %d4
	ret
.LFE582:
	.size	set_SamplingTime, .-set_SamplingTime
.section .text.set_Min_Max_Output,"ax",@progbits
	.align 1
	.global	set_Min_Max_Output
	.type	set_Min_Max_Output, @function
set_Min_Max_Output:
.LFB583:
	.loc 1 116 0
.LVL4:
	.loc 1 117 0
	movh.a	%a15, hi:IR_PID_Control
	lea	%a15, [%a15] lo:IR_PID_Control
	st.w	[%a15] 28, %d4
	.loc 1 118 0
	st.w	[%a15] 24, %d5
	ret
.LFE583:
	.size	set_Min_Max_Output, .-set_Min_Max_Output
	.global	__extendsfdf2
	.global	__subdf3
	.global	__muldf3
	.global	__truncdfsf2
.section .text.next_Vol,"ax",@progbits
	.align 1
	.global	next_Vol
	.type	next_Vol, @function
next_Vol:
.LFB584:
	.loc 1 121 0
	.loc 1 122 0
	movh.a	%a15, hi:IR_PID_Control
	lea	%a15, [%a15] lo:IR_PID_Control
	ld.w	%d4, [%a15] 56
	call	__extendsfdf2
.LVL5:
	mov	%e4, %d3, %d2
	movh	%d7, 16383
	movh	%d6, 11010
	addi	%d7, %d7, 5767
	addi	%d6, %d6, 3146
	call	__subdf3
.LVL6:
	mov	%e4, %d3, %d2
	imask	%e6, 0, 21, 9
	call	__muldf3
.LVL7:
	mov	%e4, %d3, %d2
	.loc 1 123 0
	j	__truncdfsf2
.LVL8:
.LFE584:
	.size	next_Vol, .-next_Vol
	.global	IR_PID_Control
.section .bss.IR_PID_Control,"aw",@nobits
	.align 2
	.type	IR_PID_Control, @object
	.size	IR_PID_Control, 72
IR_PID_Control:
	.zero	72
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/PID.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x63d
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/PID.c"
	.string	"C:\\\\Users\\\\boldasl\\\\SEUNGHO\\\\Workspace\\\\GitHub\\\\testbench\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
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
	.uaword	0x1b7
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1c3
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x24d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
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
	.uaword	0x299
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x2c0
	.uleb128 0x7
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x293
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x222
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x29a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x48
	.byte	0x4
	.byte	0x19
	.uaword	0x40a
	.uleb128 0x7
	.string	"TargetSpeed"
	.byte	0x4
	.byte	0x1a
	.uaword	0x23e
	.byte	0
	.uleb128 0x7
	.string	"SamplingTime"
	.byte	0x4
	.byte	0x1b
	.uaword	0x23e
	.byte	0x4
	.uleb128 0x7
	.string	"Time"
	.byte	0x4
	.byte	0x1c
	.uaword	0x23e
	.byte	0x8
	.uleb128 0x7
	.string	"error"
	.byte	0x4
	.byte	0x1d
	.uaword	0x23e
	.byte	0xc
	.uleb128 0x7
	.string	"current"
	.byte	0x4
	.byte	0x1e
	.uaword	0x23e
	.byte	0x10
	.uleb128 0x7
	.string	"pre_error"
	.byte	0x4
	.byte	0x1f
	.uaword	0x23e
	.byte	0x14
	.uleb128 0x7
	.string	"max"
	.byte	0x4
	.byte	0x20
	.uaword	0x23e
	.byte	0x18
	.uleb128 0x7
	.string	"min"
	.byte	0x4
	.byte	0x21
	.uaword	0x23e
	.byte	0x1c
	.uleb128 0x7
	.string	"Pout"
	.byte	0x4
	.byte	0x22
	.uaword	0x23e
	.byte	0x20
	.uleb128 0x7
	.string	"Iout"
	.byte	0x4
	.byte	0x23
	.uaword	0x23e
	.byte	0x24
	.uleb128 0x7
	.string	"integral"
	.byte	0x4
	.byte	0x24
	.uaword	0x23e
	.byte	0x28
	.uleb128 0x7
	.string	"Dout"
	.byte	0x4
	.byte	0x25
	.uaword	0x23e
	.byte	0x2c
	.uleb128 0x7
	.string	"derivative"
	.byte	0x4
	.byte	0x26
	.uaword	0x23e
	.byte	0x30
	.uleb128 0x7
	.string	"output"
	.byte	0x4
	.byte	0x27
	.uaword	0x23e
	.byte	0x34
	.uleb128 0x7
	.string	"nextSpeed"
	.byte	0x4
	.byte	0x28
	.uaword	0x23e
	.byte	0x38
	.uleb128 0x7
	.string	"Kp"
	.byte	0x4
	.byte	0x2b
	.uaword	0x23e
	.byte	0x3c
	.uleb128 0x7
	.string	"Ki"
	.byte	0x4
	.byte	0x2c
	.uaword	0x23e
	.byte	0x40
	.uleb128 0x7
	.string	"Kd"
	.byte	0x4
	.byte	0x2d
	.uaword	0x23e
	.byte	0x44
	.byte	0
	.uleb128 0x3
	.string	"PID_Control"
	.byte	0x4
	.byte	0x2e
	.uaword	0x2f6
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x76
	.uaword	0x46d
	.uleb128 0x9
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"PID_init"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	.LFB577
	.uaword	.LFE577
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"PID_control"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	.LFB578
	.uaword	.LFE578
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"get_Speed"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	.LFB579
	.uaword	.LFE579
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4d0
	.uleb128 0xc
	.string	"speed"
	.byte	0x1
	.byte	0x63
	.uaword	0x23e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"set_Speed"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	.LFB580
	.uaword	.LFE580
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ff
	.uleb128 0xc
	.string	"target"
	.byte	0x1
	.byte	0x67
	.uaword	0x23e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"set_propotion"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	.LFB581
	.uaword	.LFE581
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x543
	.uleb128 0xc
	.string	"P"
	.byte	0x1
	.byte	0x6b
	.uaword	0x23e
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.string	"I"
	.byte	0x1
	.byte	0x6b
	.uaword	0x23e
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.string	"D"
	.byte	0x1
	.byte	0x6b
	.uaword	0x23e
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"set_SamplingTime"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	.LFB582
	.uaword	.LFE582
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x577
	.uleb128 0xc
	.string	"time"
	.byte	0x1
	.byte	0x70
	.uaword	0x23e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"set_Min_Max_Output"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.uaword	.LFB583
	.uaword	.LFE583
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5b9
	.uleb128 0xc
	.string	"min"
	.byte	0x1
	.byte	0x74
	.uaword	0x23e
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.string	"max"
	.byte	0x1
	.byte	0x74
	.uaword	0x23e
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"next_Vol"
	.byte	0x1
	.byte	0x79
	.uaword	0x23e
	.uaword	.LFB584
	.uaword	.LFE584
	.byte	0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"IR_PID_Control"
	.byte	0x1
	.byte	0x17
	.uaword	0x40a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_PID_Control
	.uleb128 0xf
	.uaword	0x2c0
	.uaword	0x601
	.uleb128 0x10
	.uaword	0x2ea
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x5
	.byte	0x96
	.uaword	0x61e
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x5f1
	.uleb128 0x11
	.string	"Assert_verboseLevel"
	.byte	0x6
	.byte	0x79
	.uaword	0x230
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
