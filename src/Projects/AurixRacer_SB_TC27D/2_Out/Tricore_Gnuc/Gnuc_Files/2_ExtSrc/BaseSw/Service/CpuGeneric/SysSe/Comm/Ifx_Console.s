	.file	"Ifx_Console.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ifx_Console_init,"ax",@progbits
	.align 1
	.global	Ifx_Console_init
	.type	Ifx_Console_init, @function
Ifx_Console_init:
.LFB183:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.c"
	.loc 1 40 0
.LVL0:
	.loc 1 42 0
	mov	%d15, 0
	.loc 1 41 0
	movh.a	%a2, hi:Ifx_g_console
	lea	%a15, [%a2] lo:Ifx_g_console
	st.a	[%a2] lo:Ifx_g_console, %a4
	.loc 1 42 0
	st.h	[%a15] 4, %d15
	ret
.LFE183:
	.size	Ifx_Console_init, .-Ifx_Console_init
.section .rodata,"a",@progbits
.LC0:
	.string	"count < STDIF_DPIPE_MAX_PRINT_SIZE"
.LC1:
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.c"
.section .text.Ifx_Console_print,"ax",@progbits
	.align 1
	.global	Ifx_Console_print
	.type	Ifx_Console_print, @function
Ifx_Console_print:
.LFB184:
	.loc 1 53 0
.LVL1:
	.loc 1 54 0
	movh.a	%a15, hi:Ifx_g_console
	ld.a	%a2, [%a15] lo:Ifx_g_console
	.loc 1 53 0
	lea	%SP, [%SP] -264
.LCFI0:
	.loc 1 69 0
	mov	%d2, 1
	.loc 1 54 0
	ld.bu	%d15, [%a2] 4
	jz	%d15, .L7
	.loc 1 71 0 discriminator 1
	ret
.L7:
	mov.aa	%a5, %a4
.LVL2:
.LBB13:
	.loc 1 60 0
	lea	%a6, [%SP] 264
.LVL3:
	lea	%a4, [%SP] 8
.LVL4:
	call	vsprintf
.LVL5:
	.loc 1 62 0
	lea	%a4, [%SP] 8
	call	strlen
.LVL6:
	extr	%d2, %d2, 0, 16
	st.h	[%SP] 6, %d2
	.loc 1 63 0
	lt	%d2, %d2, 255
	jnz	%d2, .L4
	.loc 1 63 0 is_stmt 0 discriminator 1
	movh.a	%a2, hi:Assert_verboseLevel
	ld.w	%d15, [%a2] lo:Assert_verboseLevel
	jlt.u	%d15, 2, .L4
	.loc 1 63 0 discriminator 2
	movh.a	%a4, hi:.LC0
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.3105
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC0
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 63
	lea	%a6, [%a6] lo:__func__.3105
	call	Ifx_Assert_doLevel
.LVL7:
.L4:
	.loc 1 65 0 is_stmt 1
	ld.a	%a15, [%a15] lo:Ifx_g_console
.LVL8:
.LBB14:
.LBB15:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.loc 2 244 0
	mov	%d4, -1
	lea	%a5, [%SP] 8
.LVL9:
	ld.a	%a2, [%a15] 8
	ld.a	%a4, [%a15]0
	lea	%a6, [%SP] 6
.LVL10:
	addih	%d5, %d4, 32768
	calli	%a2
.LVL11:
.LBE15:
.LBE14:
.LBE13:
	.loc 1 71 0
	ret
.LFE184:
	.size	Ifx_Console_print, .-Ifx_Console_print
.section .rodata,"a",@progbits
.LC2:
	.string	"                "
.section .text.Ifx_Console_printAlign,"ax",@progbits
	.align 1
	.global	Ifx_Console_printAlign
	.type	Ifx_Console_printAlign, @function
Ifx_Console_printAlign:
.LFB185:
	.loc 1 82 0
.LVL12:
	.loc 1 83 0
	movh.a	%a13, hi:Ifx_g_console
	ld.a	%a15, [%a13] lo:Ifx_g_console
	.loc 1 82 0
	lea	%SP, [%SP] -280
.LCFI1:
	.loc 1 108 0
	mov	%d2, 1
	.loc 1 83 0
	ld.bu	%d15, [%a15] 4
	jz	%d15, .L17
	.loc 1 110 0 discriminator 1
	ret
.L17:
.LBB16:
	.loc 1 87 0
	lea	%a12, [%SP] 7
	movh.a	%a15, hi:.LC2
	mov.aa	%a5, %a4
	mov.aa	%a2, %a12
	.loc 1 90 0
	lea	%a4, [%SP] 24
.LVL13:
	lea	%a6, [%SP] 280
	.loc 1 87 0
	lea	%a15, [%a15] lo:.LC2
		# #chunks=17, chunksize=1, remains=0
	lea	%a3, 17-1
	0:
	ld.bu	%d15, [%a15+]1
	st.b	[%a2+]1, %d15
	loop	%a3, 0b
.LVL14:
	.loc 1 90 0
	call	vsprintf
.LVL15:
	.loc 1 92 0
	lea	%a4, [%SP] 24
	call	strlen
.LVL16:
	extr	%d2, %d2, 0, 16
	st.h	[%SP] 2, %d2
	.loc 1 93 0
	lt	%d2, %d2, 255
	jnz	%d2, .L10
	.loc 1 93 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Assert_verboseLevel
	ld.w	%d15, [%a15] lo:Assert_verboseLevel
	jlt.u	%d15, 2, .L10
	.loc 1 93 0 discriminator 2
	movh.a	%a4, hi:.LC0
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.3114
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC0
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 93
	lea	%a6, [%a6] lo:__func__.3114
	call	Ifx_Assert_doLevel
.LVL17:
.L10:
	.loc 1 94 0 is_stmt 1
	lea	%a15, [%a13] lo:Ifx_g_console
	ld.h	%d15, [%a15] 4
.LVL18:
.LBB17:
.LBB18:
.LBB19:
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 160 0
	mov	%d8, 10
.LBE19:
.LBE18:
.LBE17:
	.loc 1 96 0
	jlez	%d15, .L13
.LVL19:
.L15:
.LBB26:
.LBB21:
.LBB20:
	.loc 3 160 0
#APP
	# 160 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min %d2, %d15, %d8
	# 0 "" 2
.LVL20:
#NO_APP
.LBE20:
.LBE21:
	.loc 1 100 0
	ld.a	%a3, [%a15]0
.LVL21:
.LBB22:
.LBB23:
	.loc 2 244 0
	mov	%d4, -1
.LBE23:
.LBE22:
	.loc 1 99 0
	st.h	[%SP] 4, %d2
.LBB25:
.LBB24:
	.loc 2 244 0
	ld.a	%a2, [%a3] 8
	ld.a	%a4, [%a3]0
	mov.aa	%a5, %a12
	lea	%a6, [%SP] 4
.LVL22:
	addih	%d5, %d4, 32768
	calli	%a2
.LVL23:
.LBE24:
.LBE25:
	.loc 1 101 0
	ld.h	%d2, [%SP] 4
	sub	%d15, %d2
.LVL24:
	extr	%d15, %d15, 0, 16
.LVL25:
.LBE26:
	.loc 1 96 0
	jgtz	%d15, .L15
.LVL26:
.L13:
	.loc 1 104 0
	ld.a	%a15, [%a13] lo:Ifx_g_console
.LVL27:
.LBB27:
.LBB28:
	.loc 2 244 0
	mov	%d4, -1
	lea	%a5, [%SP] 24
.LVL28:
	ld.a	%a2, [%a15] 8
	ld.a	%a4, [%a15]0
	lea	%a6, [%SP] 2
.LVL29:
	addih	%d5, %d4, 32768
	ji	%a2
.LVL30:
.LBE28:
.LBE27:
.LBE16:
.LFE185:
	.size	Ifx_Console_printAlign, .-Ifx_Console_printAlign
.section .rodata.__func__.3114,"a",@progbits
	.type	__func__.3114, @object
	.size	__func__.3114, 23
__func__.3114:
	.string	"Ifx_Console_printAlign"
.section .rodata.__func__.3105,"a",@progbits
	.type	__func__.3105, @object
	.size	__func__.3105, 18
__func__.3105:
	.string	"Ifx_Console_print"
	.global	Ifx_g_console
.section .bss.Ifx_g_console,"aw",@nobits
	.align 2
	.type	Ifx_g_console, @object
	.size	Ifx_g_console, 8
Ifx_g_console:
	.zero	8
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
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.byte	0x4
	.uaword	.LCFI0-.LFB184
	.byte	0xe
	.uleb128 0x108
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.byte	0x4
	.uaword	.LCFI1-.LFB185
	.byte	0xe
	.uleb128 0x118
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 11 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h"
	.file 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xdc7
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.c"
	.string	"C:\\\\Users\\\\kim\\\\eclipse-workspace\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x48
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x270
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x27e
	.uleb128 0x5
	.uaword	0x270
	.uleb128 0x6
	.string	"size_t"
	.byte	0x4
	.byte	0xd4
	.uaword	0x255
	.uleb128 0x6
	.string	"__gnuc_va_list"
	.byte	0x5
	.byte	0x28
	.uaword	0x2a7
	.uleb128 0x7
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x6
	.string	"va_list"
	.byte	0x5
	.byte	0x62
	.uaword	0x291
	.uleb128 0x6
	.string	"uint8"
	.byte	0x6
	.byte	0x59
	.uaword	0x1c5
	.uleb128 0x6
	.string	"sint16"
	.byte	0x6
	.byte	0x5a
	.uaword	0x1d6
	.uleb128 0x6
	.string	"sint32"
	.byte	0x6
	.byte	0x5c
	.uaword	0x23b
	.uleb128 0x6
	.string	"uint32"
	.byte	0x6
	.byte	0x5d
	.uaword	0x255
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x6
	.string	"boolean"
	.byte	0x6
	.byte	0x68
	.uaword	0x1c5
	.uleb128 0x6
	.string	"sint64"
	.byte	0x7
	.byte	0x24
	.uaword	0x210
	.uleb128 0x6
	.string	"pchar"
	.byte	0x7
	.byte	0x27
	.uaword	0x278
	.uleb128 0x6
	.string	"Ifx_TickTime"
	.byte	0x7
	.byte	0x3e
	.uaword	0x323
	.uleb128 0x6
	.string	"Ifx_SizeT"
	.byte	0x7
	.byte	0x4b
	.uaword	0x2d7
	.uleb128 0x6
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x8
	.byte	0x62
	.uaword	0x253
	.uleb128 0x6
	.string	"IfxStdIf_DPipe"
	.byte	0x2
	.byte	0x33
	.uaword	0x399
	.uleb128 0x8
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x2
	.byte	0xd5
	.uaword	0x518
	.uleb128 0x9
	.string	"driver"
	.byte	0x2
	.byte	0xd7
	.uaword	0x363
	.byte	0
	.uleb128 0x9
	.string	"txDisabled"
	.byte	0x2
	.byte	0xd8
	.uaword	0x314
	.byte	0x4
	.uleb128 0x9
	.string	"write"
	.byte	0x2
	.byte	0xdb
	.uaword	0x564
	.byte	0x8
	.uleb128 0x9
	.string	"read"
	.byte	0x2
	.byte	0xdc
	.uaword	0x5ab
	.byte	0xc
	.uleb128 0x9
	.string	"getReadCount"
	.byte	0x2
	.byte	0xdd
	.uaword	0x5c6
	.byte	0x10
	.uleb128 0x9
	.string	"getReadEvent"
	.byte	0x2
	.byte	0xde
	.uaword	0x5ff
	.byte	0x14
	.uleb128 0x9
	.string	"getWriteCount"
	.byte	0x2
	.byte	0xdf
	.uaword	0x6ac
	.byte	0x18
	.uleb128 0x9
	.string	"getWriteEvent"
	.byte	0x2
	.byte	0xe0
	.uaword	0x6d0
	.byte	0x1c
	.uleb128 0x9
	.string	"canReadCount"
	.byte	0x2
	.byte	0xe1
	.uaword	0x70a
	.byte	0x20
	.uleb128 0x9
	.string	"canWriteCount"
	.byte	0x2
	.byte	0xe2
	.uaword	0x74d
	.byte	0x24
	.uleb128 0x9
	.string	"flushTx"
	.byte	0x2
	.byte	0xe3
	.uaword	0x771
	.byte	0x28
	.uleb128 0x9
	.string	"clearTx"
	.byte	0x2
	.byte	0xe4
	.uaword	0x7da
	.byte	0x2c
	.uleb128 0x9
	.string	"clearRx"
	.byte	0x2
	.byte	0xe5
	.uaword	0x7aa
	.byte	0x30
	.uleb128 0x9
	.string	"onReceive"
	.byte	0x2
	.byte	0xe6
	.uaword	0x7f8
	.byte	0x34
	.uleb128 0x9
	.string	"onTransmit"
	.byte	0x2
	.byte	0xe7
	.uaword	0x818
	.byte	0x38
	.uleb128 0x9
	.string	"onError"
	.byte	0x2
	.byte	0xe8
	.uaword	0x839
	.byte	0x3c
	.uleb128 0x9
	.string	"getSendCount"
	.byte	0x2
	.byte	0xea
	.uaword	0x638
	.byte	0x40
	.uleb128 0x9
	.string	"getTxTimeStamp"
	.byte	0x2
	.byte	0xeb
	.uaword	0x671
	.byte	0x44
	.uleb128 0x9
	.string	"resetSendCount"
	.byte	0x2
	.byte	0xec
	.uaword	0x857
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x2
	.byte	0x35
	.uaword	0x539
	.uleb128 0x4
	.byte	0x4
	.uaword	0x53f
	.uleb128 0xa
	.uaword	0x314
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x2
	.byte	0x36
	.uaword	0x539
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x2
	.byte	0x48
	.uaword	0x580
	.uleb128 0x4
	.byte	0x4
	.uaword	0x586
	.uleb128 0xb
	.byte	0x1
	.uaword	0x314
	.uaword	0x5a5
	.uleb128 0xc
	.uaword	0x363
	.uleb128 0xc
	.uaword	0x253
	.uleb128 0xc
	.uaword	0x5a5
	.uleb128 0xc
	.uaword	0x33e
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x352
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x2
	.byte	0x57
	.uaword	0x580
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x2
	.byte	0x5f
	.uaword	0x5e9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5ef
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2e5
	.uaword	0x5ff
	.uleb128 0xc
	.uaword	0x363
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x2
	.byte	0x67
	.uaword	0x622
	.uleb128 0x4
	.byte	0x4
	.uaword	0x628
	.uleb128 0xb
	.byte	0x1
	.uaword	0x544
	.uaword	0x638
	.uleb128 0xc
	.uaword	0x363
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x2
	.byte	0x6f
	.uaword	0x65b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x661
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2f3
	.uaword	0x671
	.uleb128 0xc
	.uaword	0x363
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x2
	.byte	0x77
	.uaword	0x696
	.uleb128 0x4
	.byte	0x4
	.uaword	0x69c
	.uleb128 0xb
	.byte	0x1
	.uaword	0x33e
	.uaword	0x6ac
	.uleb128 0xc
	.uaword	0x363
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x2
	.byte	0x7f
	.uaword	0x5e9
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x2
	.byte	0x87
	.uaword	0x6f4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6fa
	.uleb128 0xb
	.byte	0x1
	.uaword	0x518
	.uaword	0x70a
	.uleb128 0xc
	.uaword	0x363
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x2
	.byte	0x92
	.uaword	0x72d
	.uleb128 0x4
	.byte	0x4
	.uaword	0x733
	.uleb128 0xb
	.byte	0x1
	.uaword	0x314
	.uaword	0x74d
	.uleb128 0xc
	.uaword	0x363
	.uleb128 0xc
	.uaword	0x352
	.uleb128 0xc
	.uaword	0x33e
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x2
	.byte	0x9d
	.uaword	0x72d
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x2
	.byte	0xa6
	.uaword	0x78f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x795
	.uleb128 0xb
	.byte	0x1
	.uaword	0x314
	.uaword	0x7aa
	.uleb128 0xc
	.uaword	0x363
	.uleb128 0xc
	.uaword	0x33e
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x2
	.byte	0xad
	.uaword	0x7c8
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7ce
	.uleb128 0xd
	.byte	0x1
	.uaword	0x7da
	.uleb128 0xc
	.uaword	0x363
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x2
	.byte	0xb4
	.uaword	0x7c8
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x2
	.byte	0xbc
	.uaword	0x7c8
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x2
	.byte	0xc3
	.uaword	0x7c8
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x2
	.byte	0xca
	.uaword	0x7c8
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x2
	.byte	0xd1
	.uaword	0x7c8
	.uleb128 0xe
	.byte	0x8
	.byte	0x9
	.byte	0x26
	.uaword	0x89f
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x9
	.byte	0x28
	.uaword	0x89f
	.byte	0
	.uleb128 0x9
	.string	"align"
	.byte	0x9
	.byte	0x29
	.uaword	0x2d7
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x383
	.uleb128 0x6
	.string	"Ifx_Console"
	.byte	0x9
	.byte	0x2a
	.uaword	0x87c
	.uleb128 0x10
	.string	"IfxStdIf_DPipe_write"
	.byte	0x2
	.byte	0xf2
	.byte	0x1
	.uaword	0x314
	.byte	0x3
	.uaword	0x910
	.uleb128 0x11
	.string	"stdif"
	.byte	0x2
	.byte	0xf2
	.uaword	0x89f
	.uleb128 0x11
	.string	"data"
	.byte	0x2
	.byte	0xf2
	.uaword	0x253
	.uleb128 0x11
	.string	"count"
	.byte	0x2
	.byte	0xf2
	.uaword	0x5a5
	.uleb128 0x11
	.string	"timeout"
	.byte	0x2
	.byte	0xf2
	.uaword	0x33e
	.byte	0
	.uleb128 0x10
	.string	"__min"
	.byte	0x3
	.byte	0x9d
	.byte	0x1
	.uaword	0x2e5
	.byte	0x3
	.uaword	0x941
	.uleb128 0x11
	.string	"a"
	.byte	0x3
	.byte	0x9d
	.uaword	0x2e5
	.uleb128 0x11
	.string	"b"
	.byte	0x3
	.byte	0x9d
	.uaword	0x2e5
	.uleb128 0x12
	.string	"res"
	.byte	0x3
	.byte	0x9f
	.uaword	0x2e5
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Ifx_Console_init"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.uaword	.LFB183
	.uaword	.LFE183
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x974
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.byte	0x27
	.uaword	0x89f
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Ifx_Console_print"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.uaword	0x314
	.uaword	.LFB184
	.uaword	.LFE184
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xabc
	.uleb128 0x16
	.string	"format"
	.byte	0x1
	.byte	0x34
	.uaword	0x331
	.uaword	.LLST0
	.uleb128 0x17
	.uleb128 0x18
	.uaword	.LASF1
	.uaword	0xacc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.3105
	.uleb128 0x19
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x1a
	.string	"message"
	.byte	0x1
	.byte	0x38
	.uaword	0xad1
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1a
	.string	"count"
	.byte	0x1
	.byte	0x39
	.uaword	0x352
	.byte	0x3
	.byte	0x91
	.sleb128 -258
	.uleb128 0x1b
	.string	"args"
	.byte	0x1
	.byte	0x3a
	.uaword	0x2bb
	.uaword	.LLST1
	.uleb128 0x1c
	.uaword	0x8b8
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.byte	0x41
	.uaword	0xa53
	.uleb128 0x1d
	.uaword	0x8da
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1d
	.uaword	0x8da
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1e
	.uaword	0x900
	.uaxword	0x7fffffffffffffff
	.uleb128 0x1f
	.uaword	0x8f3
	.uaword	.LLST2
	.uleb128 0x1f
	.uaword	0x8e7
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	.LVL11
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -258
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL5
	.uaword	0xd55
	.uaword	0xa75
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x22
	.uaword	.LVL6
	.uaword	0xd7c
	.uaword	0xa8a
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x23
	.uaword	.LVL7
	.uaword	0xd97
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.3105
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x270
	.uaword	0xacc
	.uleb128 0x25
	.uaword	0x247
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.uaword	0xabc
	.uleb128 0x24
	.uaword	0x270
	.uaword	0xae1
	.uleb128 0x25
	.uaword	0x247
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Ifx_Console_printAlign"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.uaword	0x314
	.uaword	.LFB185
	.uaword	.LFE185
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcf7
	.uleb128 0x16
	.string	"format"
	.byte	0x1
	.byte	0x51
	.uaword	0x331
	.uaword	.LLST4
	.uleb128 0x17
	.uleb128 0x18
	.uaword	.LASF1
	.uaword	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.3114
	.uleb128 0x26
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	0xce1
	.uleb128 0x1a
	.string	"message"
	.byte	0x1
	.byte	0x55
	.uaword	0xad1
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1b
	.string	"align"
	.byte	0x1
	.byte	0x56
	.uaword	0x352
	.uaword	.LLST5
	.uleb128 0x1a
	.string	"count"
	.byte	0x1
	.byte	0x56
	.uaword	0x352
	.byte	0x3
	.byte	0x91
	.sleb128 -278
	.uleb128 0x1a
	.string	"spaces"
	.byte	0x1
	.byte	0x57
	.uaword	0xd0c
	.byte	0x3
	.byte	0x91
	.sleb128 -273
	.uleb128 0x1b
	.string	"args"
	.byte	0x1
	.byte	0x58
	.uaword	0x2bb
	.uaword	.LLST6
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uaword	0xc38
	.uleb128 0x1a
	.string	"scount"
	.byte	0x1
	.byte	0x62
	.uaword	0x352
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x28
	.uaword	0x910
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x63
	.uaword	0xbe7
	.uleb128 0x1f
	.uaword	0x92c
	.uaword	.LLST7
	.uleb128 0x1f
	.uaword	0x923
	.uaword	.LLST8
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.uaword	0x935
	.uaword	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0x8b8
	.uaword	.LBB22
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	0x8da
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	0x8da
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	0x900
	.uaword	.LLST12
	.uleb128 0x1f
	.uaword	0x8f3
	.uaword	.LLST13
	.uleb128 0x1f
	.uaword	0x8e7
	.uaword	.LLST14
	.uleb128 0x20
	.uaword	.LVL23
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x8b8
	.uaword	.LBB27
	.uaword	.LBE27
	.byte	0x1
	.byte	0x68
	.uaword	0xc79
	.uleb128 0x1d
	.uaword	0x8da
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1d
	.uaword	0x8da
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1e
	.uaword	0x900
	.uaxword	0x7fffffffffffffff
	.uleb128 0x1f
	.uaword	0x8f3
	.uaword	.LLST15
	.uleb128 0x1f
	.uaword	0x8e7
	.uaword	.LLST16
	.byte	0
	.uleb128 0x22
	.uaword	.LVL15
	.uaword	0xd55
	.uaword	0xc9b
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x22
	.uaword	.LVL16
	.uaword	0xd7c
	.uaword	0xcb0
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x23
	.uaword	.LVL17
	.uaword	0xd97
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.3114
	.uleb128 0x21
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x5d
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL30
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -278
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x270
	.uaword	0xd07
	.uleb128 0x25
	.uaword	0x247
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.uaword	0xcf7
	.uleb128 0x24
	.uaword	0x270
	.uaword	0xd1c
	.uleb128 0x25
	.uaword	0x247
	.byte	0x10
	.byte	0
	.uleb128 0x2d
	.string	"Ifx_g_console"
	.byte	0x1
	.byte	0x21
	.uaword	0x8a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Ifx_g_console
	.uleb128 0x2e
	.string	"Assert_verboseLevel"
	.byte	0xa
	.byte	0x79
	.uaword	0x2f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"vsprintf"
	.byte	0xb
	.byte	0xc4
	.byte	0x1
	.uaword	0x1f9
	.byte	0x1
	.uaword	0xd7c
	.uleb128 0xc
	.uaword	0x26a
	.uleb128 0xc
	.uaword	0x278
	.uleb128 0xc
	.uaword	0x253
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"strlen"
	.byte	0xc
	.byte	0x22
	.byte	0x1
	.uaword	0x283
	.byte	0x1
	.uaword	0xd97
	.uleb128 0xc
	.uaword	0x278
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Ifx_Assert_doLevel"
	.byte	0xa
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x2ca
	.uleb128 0xc
	.uaword	0x331
	.uleb128 0xc
	.uaword	0x331
	.uleb128 0xc
	.uaword	0x200
	.uleb128 0xc
	.uaword	0x331
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL5-1
	.uaword	.LFE184
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL5-1
	.uaword	.LFE184
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0x91
	.sleb128 -258
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL11-1
	.uaword	.LFE184
	.uahalf	0x4
	.byte	0x91
	.sleb128 -258
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-1
	.uaword	.LFE184
	.uahalf	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15-1
	.uaword	.LFE185
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x5
	.byte	0x3
	.uaword	Ifx_g_console+4
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL15-1
	.uaword	.LFE185
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL19
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL21
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x7fffffffffffffff
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0x91
	.sleb128 -276
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL23-1
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0x91
	.sleb128 -276
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0x91
	.sleb128 -278
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL30-1
	.uaword	.LFE185
	.uahalf	0x4
	.byte	0x91
	.sleb128 -278
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL30-1
	.uaword	.LFE185
	.uahalf	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	0
	.uaword	0
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LFB183
	.uaword	.LFE183
	.uaword	.LFB184
	.uaword	.LFE184
	.uaword	.LFB185
	.uaword	.LFE185
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"__func__"
.LASF0:
	.string	"standardIo"
	.extern	Ifx_Assert_doLevel,STT_FUNC,0
	.extern	Assert_verboseLevel,STT_OBJECT,4
	.extern	strlen,STT_FUNC,0
	.extern	vsprintf,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
