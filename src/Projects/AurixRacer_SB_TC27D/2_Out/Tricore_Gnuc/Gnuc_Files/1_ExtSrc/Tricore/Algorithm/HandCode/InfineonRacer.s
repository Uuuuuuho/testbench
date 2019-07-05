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
	.loc 1 45 0
	.loc 1 46 0
	mov	%d15, 1
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	st.w	[%a15] 520, %d15
	.loc 1 48 0
	mov	%d2, -1
	.loc 1 47 0
	mov	%d15, 0
	.loc 1 48 0
	st.w	[%a15] 528, %d2
	.loc 1 47 0
	st.w	[%a15] 524, %d15
	.loc 1 50 0
	st.b	[%a15] 574, %d15
	.loc 1 51 0
	st.b	[%a15] 572, %d15
	.loc 1 52 0
	st.b	[%a15] 573, %d15
	ret
.LFE577:
	.size	InfineonRacer_init, .-InfineonRacer_init
.section .text.InfineonRacer_detectLane,"ax",@progbits
	.align 1
	.global	InfineonRacer_detectLane
	.type	InfineonRacer_detectLane, @function
InfineonRacer_detectLane:
.LFB578:
	.loc 1 55 0
	ret
.LFE578:
	.size	InfineonRacer_detectLane, .-InfineonRacer_detectLane
.section .text.InfineonRacer_control,"ax",@progbits
	.align 1
	.global	InfineonRacer_control
	.type	InfineonRacer_control, @function
InfineonRacer_control:
.LFB579:
	.loc 1 64 0
	ret
.LFE579:
	.size	InfineonRacer_control, .-InfineonRacer_control
.section .text.Line_Buffer,"ax",@progbits
	.align 1
	.global	Line_Buffer
	.type	Line_Buffer, @function
Line_Buffer:
.LFB580:
	.loc 1 68 0
.LVL0:
	movh.a	%a3, hi:IR_LineScan
.LBB6:
	.loc 1 69 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 127
.LVL1:
.L5:
	.loc 1 70 0 discriminator 3
	addi	%d2, %d15, 256
	addsc.a	%a2, %a3, %d2, 2
	addsc.a	%a4, %a3, %d15, 2
	ld.w	%d3, [%a2]0
	ld.w	%d2, [%a4]0
	.loc 1 69 0 discriminator 3
	add	%d15, 1
.LVL2:
	.loc 1 70 0 discriminator 3
	add	%d2, %d3
	st.w	[%a2]0, %d2
	.loc 1 69 0 discriminator 3
	loop	%a15, .L5
.LBE6:
	.loc 1 72 0
	ret
.LFE580:
	.size	Line_Buffer, .-Line_Buffer
.section .text.Line_Buffer_RIGHT,"ax",@progbits
	.align 1
	.global	Line_Buffer_RIGHT
	.type	Line_Buffer_RIGHT, @function
Line_Buffer_RIGHT:
.LFB581:
	.loc 1 74 0
.LVL3:
	movh.a	%a3, hi:IR_LineScan
.LBB7:
	.loc 1 75 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 127
.LVL4:
.L9:
	.loc 1 76 0 discriminator 3
	addi	%d2, %d15, 384
	addsc.a	%a2, %a3, %d2, 2
	addsc.a	%a4, %a3, %d15, 2
	ld.w	%d3, [%a2]0
	ld.w	%d2, [%a4] 512
	.loc 1 75 0 discriminator 3
	add	%d15, 1
.LVL5:
	.loc 1 76 0 discriminator 3
	add	%d2, %d3
	st.w	[%a2]0, %d2
	.loc 1 75 0 discriminator 3
	loop	%a15, .L9
.LBE7:
	.loc 1 78 0
	ret
.LFE581:
	.size	Line_Buffer_RIGHT, .-Line_Buffer_RIGHT
.section .text.Line_avgerage,"ax",@progbits
	.align 1
	.global	Line_avgerage
	.type	Line_avgerage, @function
Line_avgerage:
.LFB582:
	.loc 1 80 0
.LVL6:
	movh.a	%a3, hi:IR_LineScan
.LBB8:
	.loc 1 81 0
	mov	%d4, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 127
.LVL7:
.L12:
	.loc 1 82 0 discriminator 3
	addi	%d15, %d4, 256
	addsc.a	%a2, %a3, %d15, 2
	movh	%d2, 52429
	ld.w	%d15, [%a2]0
	addi	%d2, %d2, -13107
	mul.u	%e2, %d15, %d2
	.loc 1 81 0 discriminator 3
	add	%d4, 1
.LVL8:
	.loc 1 82 0 discriminator 3
	sh	%d15, %d3, -2
	st.w	[%a2]0, %d15
	.loc 1 81 0 discriminator 3
	loop	%a15, .L12
.LBE8:
	.loc 1 85 0
	ret
.LFE582:
	.size	Line_avgerage, .-Line_avgerage
.section .text.Line_avgerage_RIGHT,"ax",@progbits
	.align 1
	.global	Line_avgerage_RIGHT
	.type	Line_avgerage_RIGHT, @function
Line_avgerage_RIGHT:
.LFB583:
	.loc 1 87 0
.LVL9:
	movh.a	%a3, hi:IR_LineScan
.LBB9:
	.loc 1 88 0
	mov	%d4, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 127
.LVL10:
.L15:
	.loc 1 89 0 discriminator 3
	addi	%d15, %d4, 384
	addsc.a	%a2, %a3, %d15, 2
	movh	%d2, 52429
	ld.w	%d15, [%a2]0
	addi	%d2, %d2, -13107
	mul.u	%e2, %d15, %d2
	.loc 1 88 0 discriminator 3
	add	%d4, 1
.LVL11:
	.loc 1 89 0 discriminator 3
	sh	%d15, %d3, -2
	st.w	[%a2]0, %d15
	.loc 1 88 0 discriminator 3
	loop	%a15, .L15
.LBE9:
	.loc 1 91 0
	ret
.LFE583:
	.size	Line_avgerage_RIGHT, .-Line_avgerage_RIGHT
.section .text.convolutionOP,"ax",@progbits
	.align 1
	.global	convolutionOP
	.type	convolutionOP, @function
convolutionOP:
.LFB584:
	.loc 1 93 0
.LVL12:
	movh.a	%a3, hi:IR_LineData
	lea	%a3, [%a3] lo:IR_LineData
	movh.a	%a4, hi:IR_LineScan
	.loc 1 95 0
	mov	%d7, 0
.LBB10:
	.loc 1 99 0
	mov	%d1, 0
	lea	%a4, [%a4] lo:IR_LineScan
	.loc 1 106 0
	mov.d	%d8, %a3
	lea	%a5, 129
.LVL13:
.L20:
	.loc 1 99 0
	sh	%d0, %d7, 2
	addsc.a	%a15, %a3, %d0, 0
	st.w	[%a15]0, %d1
	.loc 1 101 0
	jlt.u	%d7, 2, .L18
	.loc 1 101 0 is_stmt 0 discriminator 1
	add	%d15, %d7, -2
.LVL14:
	.loc 1 102 0 is_stmt 1 discriminator 1
	min.u	%d4, %d7, 127
.LVL15:
	.loc 1 104 0 discriminator 1
	jlt.u	%d4, %d15, .L23
.LVL16:
.L19:
	sub	%d3, %d7, %d15
	.loc 1 101 0 discriminator 3
	mov	%d2, 0
.LVL17:
.L22:
	.loc 1 106 0 discriminator 3
	addsc.a	%a2, %a3, %d3, 2
	addsc.a	%a15, %a4, %d15, 2
	ld.w	%d6, [%a2] 520
	ld.w	%d5, [%a15] 1024
	.loc 1 104 0 discriminator 3
	add	%d15, 1
.LVL18:
	.loc 1 106 0 discriminator 3
	madd	%d2, %d2, %d6, %d5
	add	%d3, -1
	.loc 1 104 0 discriminator 3
	jge.u	%d4, %d15, .L22
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d0, 0
	st.w	[%a15]0, %d2
.L23:
.LBE10:
	.loc 1 95 0
	add	%d7, 1
.LVL19:
	loop	%a5, .L20
	ret
.LVL20:
.L18:
.LBB11:
	.loc 1 102 0
	min.u	%d4, %d7, 127
.LVL21:
	.loc 1 101 0
	mov	%d15, 0
	j	.L19
.LBE11:
.LFE584:
	.size	convolutionOP, .-convolutionOP
.section .text.convolutionOP_RIGHT,"ax",@progbits
	.align 1
	.global	convolutionOP_RIGHT
	.type	convolutionOP_RIGHT, @function
convolutionOP_RIGHT:
.LFB585:
	.loc 1 111 0
.LVL22:
	movh.a	%a3, hi:IR_LineData
	lea	%a3, [%a3] lo:IR_LineData
	movh.a	%a4, hi:IR_LineScan
	.loc 1 113 0
	mov	%d7, 0
.LBB12:
	.loc 1 117 0
	mov	%d1, 0
	lea	%a4, [%a4] lo:IR_LineScan
	.loc 1 124 0
	mov.d	%d8, %a3
	lea	%a5, 129
.LVL23:
.L30:
	.loc 1 117 0
	sh	%d0, %d7, 2
	addsc.a	%a15, %a3, %d0, 0
	st.w	[%a15]0, %d1
	.loc 1 119 0
	jlt.u	%d7, 2, .L28
	.loc 1 119 0 is_stmt 0 discriminator 1
	add	%d15, %d7, -2
.LVL24:
	.loc 1 120 0 is_stmt 1 discriminator 1
	min.u	%d4, %d7, 127
.LVL25:
	.loc 1 122 0 discriminator 1
	jlt.u	%d4, %d15, .L33
.LVL26:
.L29:
	sub	%d3, %d7, %d15
	.loc 1 119 0 discriminator 3
	mov	%d2, 0
.LVL27:
.L32:
	.loc 1 124 0 discriminator 3
	addsc.a	%a2, %a3, %d3, 2
	addsc.a	%a15, %a4, %d15, 2
	ld.w	%d6, [%a2] 520
	ld.w	%d5, [%a15] 1536
	.loc 1 122 0 discriminator 3
	add	%d15, 1
.LVL28:
	.loc 1 124 0 discriminator 3
	madd	%d2, %d2, %d6, %d5
	add	%d3, -1
	.loc 1 122 0 discriminator 3
	jge.u	%d4, %d15, .L32
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d0, 0
	st.w	[%a15]0, %d2
.L33:
.LBE12:
	.loc 1 113 0
	add	%d7, 1
.LVL29:
	loop	%a5, .L30
	ret
.LVL30:
.L28:
.LBB13:
	.loc 1 120 0
	min.u	%d4, %d7, 127
.LVL31:
	.loc 1 119 0
	mov	%d15, 0
	j	.L29
.LBE13:
.LFE585:
	.size	convolutionOP_RIGHT, .-convolutionOP_RIGHT
.section .text.clearBuffer,"ax",@progbits
	.align 1
	.global	clearBuffer
	.type	clearBuffer, @function
clearBuffer:
.LFB586:
	.loc 1 129 0
.LVL32:
	movh.a	%a3, hi:IR_LineScan
.LBB14:
	.loc 1 130 0
	mov	%d2, 0
	lea	%a3, [%a3] lo:IR_LineScan
	.loc 1 131 0
	mov	%d3, 0
	lea	%a15, 127
.LVL33:
.L38:
	.loc 1 131 0 is_stmt 0 discriminator 3
	addi	%d15, %d2, 256
	addsc.a	%a2, %a3, %d15, 2
	.loc 1 130 0 is_stmt 1 discriminator 3
	add	%d2, 1
.LVL34:
	.loc 1 131 0 discriminator 3
	st.w	[%a2]0, %d3
	.loc 1 130 0 discriminator 3
	loop	%a15, .L38
.LBE14:
	.loc 1 133 0
	ret
.LFE586:
	.size	clearBuffer, .-clearBuffer
.section .text.clearBuffer_RIGHT,"ax",@progbits
	.align 1
	.global	clearBuffer_RIGHT
	.type	clearBuffer_RIGHT, @function
clearBuffer_RIGHT:
.LFB587:
	.loc 1 135 0
.LVL35:
	movh.a	%a3, hi:IR_LineScan
.LBB15:
	.loc 1 136 0
	mov	%d2, 0
	lea	%a3, [%a3] lo:IR_LineScan
	.loc 1 137 0
	mov	%d3, 0
	lea	%a15, 127
.LVL36:
.L41:
	.loc 1 137 0 is_stmt 0 discriminator 3
	addi	%d15, %d2, 384
	addsc.a	%a2, %a3, %d15, 2
	.loc 1 136 0 is_stmt 1 discriminator 3
	add	%d2, 1
.LVL37:
	.loc 1 137 0 discriminator 3
	st.w	[%a2]0, %d3
	.loc 1 136 0 discriminator 3
	loop	%a15, .L41
.LBE15:
	.loc 1 139 0
	ret
.LFE587:
	.size	clearBuffer_RIGHT, .-clearBuffer_RIGHT
.section .text.median_filter,"ax",@progbits
	.align 1
	.global	median_filter
	.type	median_filter, @function
median_filter:
.LFB588:
	.loc 1 141 0
.LVL38:
	ret
.LFE588:
	.size	median_filter, .-median_filter
.section .text.median_filter_RIGHT,"ax",@progbits
	.align 1
	.global	median_filter_RIGHT
	.type	median_filter_RIGHT, @function
median_filter_RIGHT:
.LFB589:
	.loc 1 161 0
.LVL39:
	ret
.LFE589:
	.size	median_filter_RIGHT, .-median_filter_RIGHT
.section .text.is_THRESHOLD,"ax",@progbits
	.align 1
	.global	is_THRESHOLD
	.type	is_THRESHOLD, @function
is_THRESHOLD:
.LFB590:
	.loc 1 181 0
.LVL40:
	movh.a	%a3, hi:IR_LineScan
	.loc 1 185 0
	mov	%d15, 4
	lea	%a3, [%a3] lo:IR_LineScan
	.loc 1 186 0
	movh	%d3, 17402
	lea	%a15, 119
.LVL41:
.L47:
	addsc.a	%a2, %a3, %d15, 2
	ld.w	%d2, [%a2]0
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L48
	.loc 1 185 0 discriminator 2
	add	%d15, 1
.LVL42:
	loop	%a15, .L47
	.loc 1 190 0
	mov	%d2, 0
	ret
.L48:
	.loc 1 187 0
	mov	%d2, 1
	.loc 1 191 0
	ret
.LFE590:
	.size	is_THRESHOLD, .-is_THRESHOLD
.section .text.is_THRESHOLD_MIDDLE,"ax",@progbits
	.align 1
	.global	is_THRESHOLD_MIDDLE
	.type	is_THRESHOLD_MIDDLE, @function
is_THRESHOLD_MIDDLE:
.LFB591:
	.loc 1 192 0
.LVL43:
	movh.a	%a3, hi:IR_LineScan
	.loc 1 196 0
	mov	%d15, 4
	lea	%a3, [%a3] lo:IR_LineScan
	.loc 1 197 0
	movh	%d3, 17402
	lea	%a15, 59
.LVL44:
.L52:
	addsc.a	%a2, %a3, %d15, 2
	ld.w	%d2, [%a2] 1024
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L53
	.loc 1 196 0 discriminator 2
	add	%d15, 1
.LVL45:
	loop	%a15, .L52
	.loc 1 201 0
	mov	%d2, 0
	ret
.L53:
	.loc 1 198 0
	mov	%d2, 1
	.loc 1 202 0
	ret
.LFE591:
	.size	is_THRESHOLD_MIDDLE, .-is_THRESHOLD_MIDDLE
.section .text.is_THRESHOLD_RIGHT,"ax",@progbits
	.align 1
	.global	is_THRESHOLD_RIGHT
	.type	is_THRESHOLD_RIGHT, @function
is_THRESHOLD_RIGHT:
.LFB592:
	.loc 1 204 0
.LVL46:
	movh.a	%a3, hi:IR_LineScan
	.loc 1 209 0
	movh	%d3, 17596
	.loc 1 208 0
	mov	%d15, 4
	lea	%a3, [%a3] lo:IR_LineScan
	.loc 1 209 0
	addi	%d3, %d3, -32768
	lea	%a15, 119
.LVL47:
.L57:
	addsc.a	%a2, %a3, %d15, 2
	ld.w	%d2, [%a2] 512
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L58
	.loc 1 208 0 discriminator 2
	add	%d15, 1
.LVL48:
	loop	%a15, .L57
	.loc 1 213 0
	mov	%d2, 0
	ret
.L58:
	.loc 1 210 0
	mov	%d2, 1
	.loc 1 214 0
	ret
.LFE592:
	.size	is_THRESHOLD_RIGHT, .-is_THRESHOLD_RIGHT
.section .text.get_Dash,"ax",@progbits
	.align 1
	.global	get_Dash
	.type	get_Dash, @function
get_Dash:
.LFB593:
	.loc 1 217 0
.LVL49:
	movh.a	%a2, hi:IR_LineScan
.LBB16:
.LBB17:
	.loc 1 185 0
	mov	%d15, 4
	lea	%a2, [%a2] lo:IR_LineScan
	.loc 1 186 0
	movh	%d3, 17402
	lea	%a15, 119
.LVL50:
.L62:
	addsc.a	%a3, %a2, %d15, 2
	ld.w	%d2, [%a3]0
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L61
	.loc 1 185 0
	add	%d15, 1
.LVL51:
	loop	%a15, .L62
	movh.a	%a4, hi:IR_LineData
	lea	%a4, [%a4] lo:IR_LineData
	j	.L65
.L61:
.LBE17:
.LBE16:
	.loc 1 219 0
	movh.a	%a4, hi:IR_LineData
	lea	%a4, [%a4] lo:IR_LineData
	ld.w	%d15, [%a4] 576
.LVL52:
	add	%d15, 1
	st.w	[%a4] 576, %d15
.L65:
.LVL53:
.LBB18:
.LBB19:
	.loc 1 209 0
	movh	%d3, 17596
	.loc 1 208 0
	mov	%d15, 4
	.loc 1 209 0
	addi	%d3, %d3, -32768
	lea	%a15, 119
.LVL54:
.L64:
	addsc.a	%a3, %a2, %d15, 2
	ld.w	%d2, [%a3] 512
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L63
	.loc 1 208 0
	add	%d15, 1
.LVL55:
	loop	%a15, .L64
.LBE19:
.LBE18:
	.loc 1 224 0
	mov	%d15, 2
.LVL56:
	.loc 1 236 0
	mov	%d2, 2
	.loc 1 224 0
	st.w	[%a4] 584, %d15
	.loc 1 236 0
	ret
.LVL57:
.L63:
	.loc 1 222 0
	ld.w	%d15, [%a4] 580
.LVL58:
	.loc 1 236 0
	mov	%d2, 2
	.loc 1 222 0
	add	%d15, 1
	st.w	[%a4] 580, %d15
	.loc 1 224 0
	mov	%d15, 2
	st.w	[%a4] 584, %d15
	.loc 1 236 0
	ret
.LFE593:
	.size	get_Dash, .-get_Dash
.section .text.clear_Dash,"ax",@progbits
	.align 1
	.global	clear_Dash
	.type	clear_Dash, @function
clear_Dash:
.LFB594:
	.loc 1 238 0
	.loc 1 239 0
	mov	%d15, 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	st.w	[%a15] 576, %d15
	.loc 1 240 0
	st.w	[%a15] 580, %d15
	ret
.LFE594:
	.size	clear_Dash, .-clear_Dash
.section .text.threshold_LINE,"ax",@progbits
	.align 1
	.global	threshold_LINE
	.type	threshold_LINE, @function
threshold_LINE:
.LFB595:
	.loc 1 243 0
.LVL59:
	.loc 1 248 0
	movh.a	%a4, hi:IR_LineData
	lea	%a4, [%a4] lo:IR_LineData
	ld.bu	%d15, [%a4] 572
	jnz	%d15, .L72
	movh	%d4, 18676
	movh.a	%a2, hi:IR_LineScan
	ld.w	%d5, [%a4] 556
	addi	%d4, %d4, 9216
	mov	%d2, 4
	lea	%a2, [%a2] lo:IR_LineScan
	.loc 1 250 0
	movh	%d6, 17402
	lea	%a15, 119
.LVL60:
.L75:
	addsc.a	%a3, %a2, %d2, 2
	ld.w	%d15, [%a3] 1024
	utof	%d15, %d15
	cmp.f	%d3, %d15, %d6
	jz.t	%d3, 0, .L73
	.loc 1 251 0
	cmp.f	%d3, %d15, %d4
	extr.u	%d3, %d3, 0, 1
	.loc 1 252 0
	seln	%d5, %d3, %d5, %d2
	seln	%d4, %d3, %d4, %d15
.LVL61:
.L73:
	.loc 1 249 0 discriminator 2
	add	%d2, 1
.LVL62:
	loop	%a15, .L75
	.loc 1 257 0
	mov	%d15, 1
	st.w	[%a4] 556, %d5
	st.b	[%a4] 572, %d15
	ret
.LVL63:
.L72:
	.loc 1 248 0
	movh	%d4, 18676
	movh.a	%a2, hi:IR_LineScan
	ld.w	%d5, [%a4] 560
	addi	%d4, %d4, 9216
	mov	%d2, 4
	lea	%a2, [%a2] lo:IR_LineScan
	.loc 1 262 0
	movh	%d6, 17402
	lea	%a15, 119
.LVL64:
.L79:
	addsc.a	%a3, %a2, %d2, 2
	ld.w	%d15, [%a3] 1024
	utof	%d15, %d15
	cmp.f	%d3, %d15, %d6
	jz.t	%d3, 0, .L77
	.loc 1 263 0
	cmp.f	%d3, %d15, %d4
	extr.u	%d3, %d3, 0, 1
	.loc 1 264 0
	seln	%d5, %d3, %d5, %d2
	seln	%d4, %d3, %d4, %d15
.LVL65:
.L77:
	.loc 1 261 0 discriminator 2
	add	%d2, 1
.LVL66:
	loop	%a15, .L79
	.loc 1 269 0
	mov	%d15, 0
	st.w	[%a4] 560, %d5
	st.b	[%a4] 572, %d15
	ret
.LFE595:
	.size	threshold_LINE, .-threshold_LINE
.section .text.threshold_LINE_RIGHT,"ax",@progbits
	.align 1
	.global	threshold_LINE_RIGHT
	.type	threshold_LINE_RIGHT, @function
threshold_LINE_RIGHT:
.LFB596:
	.loc 1 273 0
.LVL67:
	.loc 1 278 0
	movh.a	%a4, hi:IR_LineData
	lea	%a4, [%a4] lo:IR_LineData
	ld.bu	%d15, [%a4] 573
	jnz	%d15, .L87
	movh	%d4, 18676
	movh.a	%a2, hi:IR_LineScan
	.loc 1 280 0
	movh	%d6, 17596
	ld.w	%d5, [%a4] 564
	.loc 1 278 0
	addi	%d4, %d4, 9216
	mov	%d2, 4
	lea	%a2, [%a2] lo:IR_LineScan
	.loc 1 280 0
	addi	%d6, %d6, -32768
	lea	%a15, 119
.LVL68:
.L90:
	addsc.a	%a3, %a2, %d2, 2
	ld.w	%d15, [%a3] 1536
	utof	%d15, %d15
	cmp.f	%d3, %d15, %d6
	jz.t	%d3, 0, .L88
	.loc 1 281 0
	cmp.f	%d3, %d15, %d4
	extr.u	%d3, %d3, 0, 1
	.loc 1 282 0
	seln	%d5, %d3, %d5, %d2
	seln	%d4, %d3, %d4, %d15
.LVL69:
.L88:
	.loc 1 279 0 discriminator 2
	add	%d2, 1
.LVL70:
	loop	%a15, .L90
	.loc 1 287 0
	mov	%d15, 1
	st.w	[%a4] 564, %d5
	st.b	[%a4] 573, %d15
	ret
.LVL71:
.L87:
	.loc 1 278 0
	movh	%d4, 18676
	movh.a	%a2, hi:IR_LineScan
	.loc 1 292 0
	movh	%d6, 17596
	ld.w	%d5, [%a4] 568
	.loc 1 278 0
	addi	%d4, %d4, 9216
	mov	%d2, 4
	lea	%a2, [%a2] lo:IR_LineScan
	.loc 1 292 0
	addi	%d6, %d6, -32768
	lea	%a15, 119
.LVL72:
.L94:
	addsc.a	%a3, %a2, %d2, 2
	ld.w	%d15, [%a3] 1536
	utof	%d15, %d15
	cmp.f	%d3, %d15, %d6
	jz.t	%d3, 0, .L92
	.loc 1 293 0
	cmp.f	%d3, %d15, %d4
	extr.u	%d3, %d3, 0, 1
	.loc 1 294 0
	seln	%d5, %d3, %d5, %d2
	seln	%d4, %d3, %d4, %d15
.LVL73:
.L92:
	.loc 1 291 0 discriminator 2
	add	%d2, 1
.LVL74:
	loop	%a15, .L94
	.loc 1 299 0
	mov	%d15, 0
	st.w	[%a4] 568, %d5
	st.b	[%a4] 573, %d15
	ret
.LFE596:
	.size	threshold_LINE_RIGHT, .-threshold_LINE_RIGHT
.section .text.getLineData,"ax",@progbits
	.align 1
	.global	getLineData
	.type	getLineData, @function
getLineData:
.LFB597:
	.loc 1 304 0
.LVL75:
	.loc 1 308 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 572
	jnz	%d15, .L102
	ld.w	%d4, [%a2] 556
	mov	%d3, 0
	mov	%d15, 4
	lea	%a15, 119
.LVL76:
.L104:
	.loc 1 310 0
	addsc.a	%a3, %a2, %d15, 2
	ld.w	%d2, [%a3]0
	jge	%d3, %d2, .L103
	.loc 1 311 0
	mov	%d4, %d15
	.loc 1 310 0
	mov	%d3, %d2
.LVL77:
.L103:
	.loc 1 309 0 discriminator 2
	add	%d15, 1
.LVL78:
	loop	%a15, .L104
	.loc 1 315 0
	mov	%d15, 1
.LVL79:
	st.w	[%a2] 556, %d4
	st.b	[%a2] 572, %d15
	ret
.LVL80:
.L102:
	ld.w	%d4, [%a2] 560
	.loc 1 308 0
	mov	%d3, 0
	mov	%d15, 4
	lea	%a15, 119
.LVL81:
.L107:
	.loc 1 320 0
	addsc.a	%a3, %a2, %d15, 2
	ld.w	%d2, [%a3]0
	jge	%d3, %d2, .L106
	.loc 1 321 0
	mov	%d4, %d15
	.loc 1 320 0
	mov	%d3, %d2
.LVL82:
.L106:
	.loc 1 319 0 discriminator 2
	add	%d15, 1
.LVL83:
	loop	%a15, .L107
	.loc 1 325 0
	mov	%d15, 0
.LVL84:
	st.w	[%a2] 560, %d4
	st.b	[%a2] 572, %d15
	ret
.LFE597:
	.size	getLineData, .-getLineData
.section .text.getLineData_RIGHT,"ax",@progbits
	.align 1
	.global	getLineData_RIGHT
	.type	getLineData_RIGHT, @function
getLineData_RIGHT:
.LFB598:
	.loc 1 331 0
.LVL85:
	.loc 1 335 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 572
	jnz	%d15, .L111
	ld.w	%d4, [%a2] 564
	mov	%d3, 0
	mov	%d15, 4
	lea	%a15, 119
.LVL86:
.L113:
	.loc 1 337 0
	addsc.a	%a3, %a2, %d15, 2
	ld.w	%d2, [%a3]0
	jge	%d3, %d2, .L112
	.loc 1 338 0
	mov	%d4, %d15
	.loc 1 337 0
	mov	%d3, %d2
.LVL87:
.L112:
	.loc 1 336 0 discriminator 2
	add	%d15, 1
.LVL88:
	loop	%a15, .L113
	.loc 1 342 0
	mov	%d15, 1
.LVL89:
	st.w	[%a2] 564, %d4
	st.b	[%a2] 573, %d15
	ret
.LVL90:
.L111:
	ld.w	%d4, [%a2] 568
	.loc 1 335 0
	mov	%d3, 0
	mov	%d15, 4
	lea	%a15, 119
.LVL91:
.L116:
	.loc 1 347 0
	addsc.a	%a3, %a2, %d15, 2
	ld.w	%d2, [%a3]0
	jge	%d3, %d2, .L115
	.loc 1 348 0
	mov	%d4, %d15
	.loc 1 347 0
	mov	%d3, %d2
.LVL92:
.L115:
	.loc 1 346 0 discriminator 2
	add	%d15, 1
.LVL93:
	loop	%a15, .L116
	.loc 1 352 0
	mov	%d15, 0
.LVL94:
	st.w	[%a2] 568, %d4
	st.b	[%a2] 573, %d15
	ret
.LFE598:
	.size	getLineData_RIGHT, .-getLineData_RIGHT
.section .text.IsInSchoolZone_THRESHOLD,"ax",@progbits
	.align 1
	.global	IsInSchoolZone_THRESHOLD
	.type	IsInSchoolZone_THRESHOLD, @function
IsInSchoolZone_THRESHOLD:
.LFB599:
	.loc 1 358 0
.LVL95:
	movh.a	%a15, hi:IR_LineScan
	.loc 1 366 0
	mov	%d15, 4
	lea	%a15, [%a15] lo:IR_LineScan
	.loc 1 367 0
	movh	%d3, 17402
	lea	%a2, 59
.LVL96:
.L121:
	addsc.a	%a3, %a15, %d15, 2
	ld.w	%d2, [%a3] 1024
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L136
	.loc 1 366 0 discriminator 2
	add	%d15, 1
.LVL97:
	loop	%a2, .L121
	.loc 1 362 0
	mov	%d4, 0
	j	.L120
.L136:
	.loc 1 368 0
	mov	%d4, 1
.L120:
.LVL98:
	.loc 1 373 0
	mov	%d15, 64
	.loc 1 374 0
	movh	%d3, 17402
	lea	%a2, 59
.LVL99:
.L125:
	addsc.a	%a3, %a15, %d15, 2
	ld.w	%d2, [%a3] 1024
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L147
	.loc 1 373 0 discriminator 2
	add	%d15, 1
.LVL100:
	loop	%a2, .L125
.L124:
.LVL101:
	.loc 1 383 0
	movh	%d3, 17596
	.loc 1 382 0
	mov	%d15, 4
	.loc 1 383 0
	addi	%d3, %d3, -32768
	lea	%a2, 59
.LVL102:
.L129:
	addsc.a	%a3, %a15, %d15, 2
	ld.w	%d2, [%a3] 1536
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L148
	.loc 1 382 0 discriminator 2
	add	%d15, 1
.LVL103:
	loop	%a2, .L129
.L128:
.LVL104:
	.loc 1 390 0
	movh	%d3, 17596
	.loc 1 389 0
	mov	%d15, 64
	.loc 1 390 0
	addi	%d3, %d3, -32768
	lea	%a2, 59
.LVL105:
.L133:
	addsc.a	%a3, %a15, %d15, 2
	ld.w	%d2, [%a3] 1536
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L149
	.loc 1 389 0 discriminator 2
	add	%d15, 1
.LVL106:
	loop	%a2, .L133
	.loc 1 396 0
	jge.u	%d4, 3, .L150
.L134:
	.loc 1 400 0
	mov	%d15, 0
.LVL107:
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	st.b	[%a15] 574, %d15
	mov	%d2, 0
	.loc 1 403 0
	ret
.LVL108:
.L149:
	.loc 1 391 0
	add	%d4, 1
.LVL109:
	.loc 1 396 0
	jlt.u	%d4, 3, .L134
.L150:
	.loc 1 397 0
	mov	%d15, 1
.LVL110:
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	st.b	[%a15] 574, %d15
	mov	%d2, 1
	ret
.LVL111:
.L148:
	.loc 1 384 0
	add	%d4, 1
.LVL112:
	.loc 1 385 0
	j	.L128
.LVL113:
.L147:
	.loc 1 375 0
	add	%d4, 1
.LVL114:
	.loc 1 376 0
	j	.L124
.LFE599:
	.size	IsInSchoolZone_THRESHOLD, .-IsInSchoolZone_THRESHOLD
.section .text.IsOutSchoolZone_THRESHOLD,"ax",@progbits
	.align 1
	.global	IsOutSchoolZone_THRESHOLD
	.type	IsOutSchoolZone_THRESHOLD, @function
IsOutSchoolZone_THRESHOLD:
.LFB600:
	.loc 1 405 0
.LVL115:
	movh.a	%a15, hi:IR_LineScan
	.loc 1 413 0
	mov	%d15, 4
	lea	%a15, [%a15] lo:IR_LineScan
	.loc 1 414 0
	movh	%d3, 17402
	lea	%a2, 59
.LVL116:
.L153:
	addsc.a	%a3, %a15, %d15, 2
	ld.w	%d2, [%a3] 1024
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L168
	.loc 1 413 0 discriminator 2
	add	%d15, 1
.LVL117:
	loop	%a2, .L153
	.loc 1 409 0
	mov	%d4, 0
	j	.L152
.L168:
	.loc 1 415 0
	mov	%d4, 1
.L152:
.LVL118:
	.loc 1 420 0
	mov	%d15, 64
	.loc 1 421 0
	movh	%d3, 17402
	lea	%a2, 59
.LVL119:
.L157:
	addsc.a	%a3, %a15, %d15, 2
	ld.w	%d2, [%a3] 1024
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L179
	.loc 1 420 0 discriminator 2
	add	%d15, 1
.LVL120:
	loop	%a2, .L157
.L156:
.LVL121:
	.loc 1 430 0
	movh	%d3, 17596
	.loc 1 429 0
	mov	%d15, 4
	.loc 1 430 0
	addi	%d3, %d3, -32768
	lea	%a2, 59
.LVL122:
.L161:
	addsc.a	%a3, %a15, %d15, 2
	ld.w	%d2, [%a3] 1536
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L180
	.loc 1 429 0 discriminator 2
	add	%d15, 1
.LVL123:
	loop	%a2, .L161
.L160:
.LVL124:
	.loc 1 437 0
	movh	%d3, 17596
	.loc 1 436 0
	mov	%d15, 64
	.loc 1 437 0
	addi	%d3, %d3, -32768
	lea	%a2, 59
.LVL125:
.L165:
	addsc.a	%a3, %a15, %d15, 2
	ld.w	%d2, [%a3] 1536
	utof	%d2, %d2
	cmp.f	%d2, %d2, %d3
	jnz.t	%d2, 0, .L181
	.loc 1 436 0 discriminator 2
	add	%d15, 1
.LVL126:
	loop	%a2, .L165
	.loc 1 443 0
	jge.u	%d4, 3, .L182
.L166:
	.loc 1 447 0
	mov	%d15, 1
.LVL127:
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	st.b	[%a15] 574, %d15
	mov	%d2, 1
	.loc 1 450 0
	ret
.LVL128:
.L181:
	.loc 1 438 0
	add	%d4, 1
.LVL129:
	.loc 1 443 0
	jlt.u	%d4, 3, .L166
.L182:
	.loc 1 444 0
	mov	%d15, 0
.LVL130:
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	st.b	[%a15] 574, %d15
	mov	%d2, 0
	ret
.LVL131:
.L180:
	.loc 1 431 0
	add	%d4, 1
.LVL132:
	.loc 1 432 0
	j	.L160
.LVL133:
.L179:
	.loc 1 422 0
	add	%d4, 1
.LVL134:
	.loc 1 423 0
	j	.L156
.LFE600:
	.size	IsOutSchoolZone_THRESHOLD, .-IsOutSchoolZone_THRESHOLD
.section .text.IsInSchoolZone,"ax",@progbits
	.align 1
	.global	IsInSchoolZone
	.type	IsInSchoolZone, @function
IsInSchoolZone:
.LFB601:
	.loc 1 452 0
.LVL135:
	.loc 1 454 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.w	%d2, [%a2] 560
	addsc.a	%a15, %a2, %d2, 2
	.loc 1 458 0
	add	%d2, 4
	lt.u	%d15, %d2, 124
	.loc 1 454 0
	ld.w	%d4, [%a15]0
.LVL136:
	.loc 1 458 0
	jz	%d15, .L187
	rsub	%d3, %d2, 123
	ld.bu	%d15, [%a2] 574
	mov.a	%a15, %d3
.L186:
	.loc 1 459 0
	addsc.a	%a3, %a2, %d2, 2
	.loc 1 458 0
	add	%d2, 1
.LVL137:
	.loc 1 459 0
	ld.w	%d3, [%a3]0
	.loc 1 460 0
	ge.u	%d3, %d4, %d3
	sel	%d15, %d3, %d15, 1
	.loc 1 458 0
	loop	%a15, .L186
	st.b	[%a2] 574, %d15
.L187:
	.loc 1 464 0
	ld.bu	%d2, [%a2] 574
.LVL138:
	ret
.LFE601:
	.size	IsInSchoolZone, .-IsInSchoolZone
.section .text.IsOutSchoolZone,"ax",@progbits
	.align 1
	.global	IsOutSchoolZone
	.type	IsOutSchoolZone, @function
IsOutSchoolZone:
.LFB602:
	.loc 1 467 0
.LVL139:
	.loc 1 469 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.w	%d2, [%a2] 560
	addsc.a	%a15, %a2, %d2, 2
	.loc 1 473 0
	add	%d2, 4
	lt.u	%d15, %d2, 124
	.loc 1 469 0
	ld.w	%d4, [%a15]0
.LVL140:
	.loc 1 473 0
	jz	%d15, .L195
	rsub	%d3, %d2, 123
	ld.bu	%d15, [%a2] 574
	mov.a	%a15, %d3
.L194:
	.loc 1 474 0
	addsc.a	%a3, %a2, %d2, 2
	.loc 1 473 0
	add	%d2, 1
.LVL141:
	.loc 1 474 0
	ld.w	%d3, [%a3]0
	.loc 1 475 0
	ge.u	%d3, %d4, %d3
	sel	%d15, %d3, %d15, 0
	.loc 1 473 0
	loop	%a15, .L194
	st.b	[%a2] 574, %d15
.L195:
	.loc 1 478 0
	ld.bu	%d2, [%a2] 574
.LVL142:
	ret
.LFE602:
	.size	IsOutSchoolZone, .-IsOutSchoolZone
.section .text.Direction,"ax",@progbits
	.align 1
	.global	Direction
	.type	Direction, @function
Direction:
.LFB603:
	.loc 1 482 0
	.loc 1 483 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d2, [%a15] 560
	ld.w	%d15, [%a15] 556
	sub	%d2, %d15
	.loc 1 485 0
	utof	%d2, %d2
	ret
.LFE603:
	.size	Direction, .-Direction
.section .text.Direction_CENTER,"ax",@progbits
	.align 1
	.global	Direction_CENTER
	.type	Direction_CENTER, @function
Direction_CENTER:
.LFB604:
	.loc 1 487 0
	.loc 1 489 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d2, [%a15] 560
	addi	%d2, %d2, -40
	.loc 1 490 0
	utof	%d2, %d2
	ret
.LFE604:
	.size	Direction_CENTER, .-Direction_CENTER
.section .text.Direction_CENTER_RIGHT,"ax",@progbits
	.align 1
	.global	Direction_CENTER_RIGHT
	.type	Direction_CENTER_RIGHT, @function
Direction_CENTER_RIGHT:
.LFB605:
	.loc 1 492 0
	.loc 1 493 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d15, [%a15] 568
	movh.a	%a15, hi:MIN_INDEX_RIGHT
	utof	%d15, %d15
	ld.w	%d2, [%a15] lo:MIN_INDEX_RIGHT
	.loc 1 494 0
	sub.f	%d2, %d2, %d15
	ret
.LFE605:
	.size	Direction_CENTER_RIGHT, .-Direction_CENTER_RIGHT
.section .text.Boundary,"ax",@progbits
	.align 1
	.global	Boundary
	.type	Boundary, @function
Boundary:
.LFB606:
	.loc 1 496 0
	.loc 1 497 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d2, [%a15] 560
	movh.a	%a15, hi:MAX_INDEX
	utof	%d2, %d2
	ld.w	%d15, [%a15] lo:MAX_INDEX
	movh.a	%a15, hi:MIN_INDEX
	ld.w	%d3, [%a15] lo:MIN_INDEX
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 0, 1
	cmp.f	%d2, %d2, %d3
	.loc 1 498 0
	nand.t	%d2, %d2,2, %d2,2
	.loc 1 501 0
	cmovn	%d2, %d15, 1
	ret
.LFE606:
	.size	Boundary, .-Boundary
.section .text.Boundary_RIGHT,"ax",@progbits
	.align 1
	.global	Boundary_RIGHT
	.type	Boundary_RIGHT, @function
Boundary_RIGHT:
.LFB607:
	.loc 1 504 0
	.loc 1 505 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d2, [%a15] 568
	movh.a	%a15, hi:MAX_INDEX_RIGHT
	utof	%d2, %d2
	ld.w	%d15, [%a15] lo:MAX_INDEX_RIGHT
	movh.a	%a15, hi:MIN_INDEX_RIGHT
	ld.w	%d3, [%a15] lo:MIN_INDEX_RIGHT
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 0, 1
	cmp.f	%d2, %d2, %d3
	.loc 1 506 0
	nand.t	%d2, %d2,2, %d2,2
	.loc 1 509 0
	cmovn	%d2, %d15, 1
	ret
.LFE607:
	.size	Boundary_RIGHT, .-Boundary_RIGHT
.section .text.Over_Boundary,"ax",@progbits
	.align 1
	.global	Over_Boundary
	.type	Over_Boundary, @function
Over_Boundary:
.LFB608:
	.loc 1 512 0
	.loc 1 513 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d2, [%a15] 560
	movh.a	%a15, hi:MIN_INDEX
	utof	%d2, %d2
	ld.w	%d15, [%a15] lo:MIN_INDEX
	cmp.f	%d2, %d2, %d15
	.loc 1 517 0
	and	%d2, %d2, 1
	ret
.LFE608:
	.size	Over_Boundary, .-Over_Boundary
.section .text.isEndOfLEFT,"ax",@progbits
	.align 1
	.global	isEndOfLEFT
	.type	isEndOfLEFT, @function
isEndOfLEFT:
.LFB609:
	.loc 1 519 0
	.loc 1 520 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d2, [%a15] 560
	.loc 1 524 0
	ge.u	%d2, %d2, 116
	ret
.LFE609:
	.size	isEndOfLEFT, .-isEndOfLEFT
.section .text.Over_Boundary_RIGHT,"ax",@progbits
	.align 1
	.global	Over_Boundary_RIGHT
	.type	Over_Boundary_RIGHT, @function
Over_Boundary_RIGHT:
.LFB610:
	.loc 1 526 0
	.loc 1 527 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d2, [%a15] 568
	movh.a	%a15, hi:MIN_INDEX_RIGHT
	utof	%d2, %d2
	ld.w	%d15, [%a15] lo:MIN_INDEX_RIGHT
	cmp.f	%d2, %d2, %d15
	.loc 1 531 0
	and	%d2, %d2, 1
	ret
.LFE610:
	.size	Over_Boundary_RIGHT, .-Over_Boundary_RIGHT
	.global	MAX_INDEX_RIGHT
.section .data.MAX_INDEX_RIGHT,"aw",@progbits
	.align 2
	.type	MAX_INDEX_RIGHT, @object
	.size	MAX_INDEX_RIGHT, 4
MAX_INDEX_RIGHT:
	.word	1119092736
	.global	MIN_INDEX_RIGHT
.section .data.MIN_INDEX_RIGHT,"aw",@progbits
	.align 2
	.type	MIN_INDEX_RIGHT, @object
	.size	MIN_INDEX_RIGHT, 4
MIN_INDEX_RIGHT:
	.word	1116471296
	.global	MAX_INDEX
.section .data.MAX_INDEX,"aw",@progbits
	.align 2
	.type	MAX_INDEX, @object
	.size	MAX_INDEX, 4
MAX_INDEX:
	.word	1112014848
	.global	MIN_INDEX
.section .data.MIN_INDEX,"aw",@progbits
	.align 2
	.type	MIN_INDEX, @object
	.size	MIN_INDEX, 4
MIN_INDEX:
	.word	1106247680
	.global	IR_LineData
.section .bss.IR_LineData,"aw",@nobits
	.align 2
	.type	IR_LineData, @object
	.size	IR_LineData, 592
IR_LineData:
	.zero	592
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
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB588
	.uaword	.LFE588-.LFB588
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB589
	.uaword	.LFE589-.LFB589
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB590
	.uaword	.LFE590-.LFB590
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB591
	.uaword	.LFE591-.LFB591
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB592
	.uaword	.LFE592-.LFB592
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB593
	.uaword	.LFE593-.LFB593
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB594
	.uaword	.LFE594-.LFB594
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB595
	.uaword	.LFE595-.LFB595
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB596
	.uaword	.LFE596-.LFB596
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB597
	.uaword	.LFE597-.LFB597
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB598
	.uaword	.LFE598-.LFB598
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB599
	.uaword	.LFE599-.LFB599
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB600
	.uaword	.LFE600-.LFB600
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB601
	.uaword	.LFE601-.LFB601
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB602
	.uaword	.LFE602-.LFB602
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB603
	.uaword	.LFE603-.LFB603
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB604
	.uaword	.LFE604-.LFB604
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB605
	.uaword	.LFE605-.LFB605
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB606
	.uaword	.LFE606-.LFB606
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB607
	.uaword	.LFE607-.LFB607
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB608
	.uaword	.LFE608-.LFB608
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB609
	.uaword	.LFE609-.LFB609
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB610
	.uaword	.LFE610-.LFB610
	.align 2
.LEFDE66:
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
	.uaword	0xf1e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.c"
	.string	"C:\\\\Users\\\\boldasl\\\\SEUNGHO\\\\Workspace\\\\GitHub\\\\testbench\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x30
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
	.uaword	0x1c1
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1cd
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x257
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
	.uaword	0x1f8
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
	.uaword	0x2b2
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x2d7
	.uleb128 0x7
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x2ac
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x3
	.byte	0x81
	.uaword	0x22c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2b3
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
	.byte	0x32
	.uaword	0x34c
	.uleb128 0x7
	.string	"Ls0Margin"
	.byte	0x4
	.byte	0x33
	.uaword	0x22c
	.byte	0
	.uleb128 0x7
	.string	"Ls1Margin"
	.byte	0x4
	.byte	0x34
	.uaword	0x22c
	.byte	0x4
	.uleb128 0x7
	.string	"basicTest"
	.byte	0x4
	.byte	0x35
	.uaword	0x26a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x4
	.byte	0x36
	.uaword	0x30d
	.uleb128 0x9
	.uahalf	0x250
	.byte	0x4
	.byte	0x38
	.uaword	0x4af
	.uleb128 0x7
	.string	"Result"
	.byte	0x4
	.byte	0x39
	.uaword	0x4af
	.byte	0
	.uleb128 0xa
	.string	"Transfer"
	.byte	0x4
	.byte	0x3a
	.uaword	0x4bf
	.uahalf	0x208
	.uleb128 0xa
	.string	"sample"
	.byte	0x4
	.byte	0x3c
	.uaword	0x4cf
	.uahalf	0x214
	.uleb128 0xa
	.string	"temp"
	.byte	0x4
	.byte	0x3d
	.uaword	0x248
	.uahalf	0x228
	.uleb128 0xa
	.string	"previous"
	.byte	0x4
	.byte	0x3f
	.uaword	0x23a
	.uahalf	0x22c
	.uleb128 0xa
	.string	"present"
	.byte	0x4
	.byte	0x40
	.uaword	0x23a
	.uahalf	0x230
	.uleb128 0xa
	.string	"previous_RIGHT"
	.byte	0x4
	.byte	0x41
	.uaword	0x23a
	.uahalf	0x234
	.uleb128 0xa
	.string	"present_RIGHT"
	.byte	0x4
	.byte	0x42
	.uaword	0x23a
	.uahalf	0x238
	.uleb128 0xa
	.string	"Direction_Determined"
	.byte	0x4
	.byte	0x44
	.uaword	0x26a
	.uahalf	0x23c
	.uleb128 0xa
	.string	"Direction_Determined_RIGHT"
	.byte	0x4
	.byte	0x45
	.uaword	0x26a
	.uahalf	0x23d
	.uleb128 0xa
	.string	"School_Zone_flag"
	.byte	0x4
	.byte	0x46
	.uaword	0x26a
	.uahalf	0x23e
	.uleb128 0xa
	.string	"Dash_Left"
	.byte	0x4
	.byte	0x48
	.uaword	0x23a
	.uahalf	0x240
	.uleb128 0xa
	.string	"Dash_Right"
	.byte	0x4
	.byte	0x49
	.uaword	0x23a
	.uahalf	0x244
	.uleb128 0xa
	.string	"Next_Lane"
	.byte	0x4
	.byte	0x4a
	.uaword	0x23a
	.uahalf	0x248
	.uleb128 0xa
	.string	"SchoolZone_Status"
	.byte	0x4
	.byte	0x4c
	.uaword	0x23a
	.uahalf	0x24c
	.byte	0
	.uleb128 0xb
	.uaword	0x1e2
	.uaword	0x4bf
	.uleb128 0xc
	.uaword	0x301
	.byte	0x81
	.byte	0
	.uleb128 0xb
	.uaword	0x1e2
	.uaword	0x4cf
	.uleb128 0xc
	.uaword	0x301
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.uaword	0x23a
	.uaword	0x4df
	.uleb128 0xc
	.uaword	0x301
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"LineData"
	.byte	0x4
	.byte	0x4d
	.uaword	0x363
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.byte	0x76
	.uaword	0x53f
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
	.uaword	0x56e
	.uleb128 0x7
	.string	"adcResult"
	.byte	0x5
	.byte	0x1c
	.uaword	0x56e
	.byte	0
	.uleb128 0xa
	.string	"adcBuffer"
	.byte	0x5
	.byte	0x1d
	.uaword	0x56e
	.uahalf	0x400
	.byte	0
	.uleb128 0xb
	.uaword	0x23a
	.uaword	0x584
	.uleb128 0xc
	.uaword	0x301
	.byte	0x1
	.uleb128 0xc
	.uaword	0x301
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.string	"IR_LineScan_t"
	.byte	0x5
	.byte	0x1e
	.uaword	0x53f
	.uleb128 0xf
	.byte	0x1
	.string	"is_THRESHOLD"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.uaword	0x26a
	.byte	0x1
	.uaword	0x5cb
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb6
	.uaword	0x23a
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb7
	.uaword	0x248
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"is_THRESHOLD_RIGHT"
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.uaword	0x26a
	.byte	0x1
	.uaword	0x603
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0xcd
	.uaword	0x23a
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0xce
	.uaword	0x248
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.uaword	.LFB577
	.uaword	.LFE577
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"InfineonRacer_detectLane"
	.byte	0x1
	.byte	0x37
	.uaword	.LFB578
	.uaword	.LFE578
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	.LFB579
	.uaword	.LFE579
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"Line_Buffer"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	.LFB580
	.uaword	.LFE580
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6ae
	.uleb128 0x14
	.uaword	.LBB6
	.uaword	.LBE6
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x45
	.uaword	0x23a
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Line_Buffer_RIGHT"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	.LFB581
	.uaword	.LFE581
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6ee
	.uleb128 0x14
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4b
	.uaword	0x23a
	.uaword	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Line_avgerage"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	.LFB582
	.uaword	.LFE582
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x72a
	.uleb128 0x14
	.uaword	.LBB8
	.uaword	.LBE8
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x51
	.uaword	0x23a
	.uaword	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Line_avgerage_RIGHT"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	.LFB583
	.uaword	.LFE583
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x76c
	.uleb128 0x14
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x58
	.uaword	0x23a
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"convolutionOP"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	.LFB584
	.uaword	.LFE584
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7cf
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0x5e
	.uaword	0x23a
	.uaword	.LLST4
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x16
	.string	"kmin"
	.byte	0x1
	.byte	0x61
	.uaword	0x23a
	.uaword	.LLST5
	.uleb128 0x16
	.string	"kmax"
	.byte	0x1
	.byte	0x61
	.uaword	0x23a
	.uaword	.LLST6
	.uleb128 0x16
	.string	"k"
	.byte	0x1
	.byte	0x61
	.uaword	0x23a
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"convolutionOP_RIGHT"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	.LFB585
	.uaword	.LFE585
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x838
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0x70
	.uaword	0x23a
	.uaword	.LLST8
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x16
	.string	"kmin"
	.byte	0x1
	.byte	0x73
	.uaword	0x23a
	.uaword	.LLST9
	.uleb128 0x16
	.string	"kmax"
	.byte	0x1
	.byte	0x73
	.uaword	0x23a
	.uaword	.LLST10
	.uleb128 0x16
	.string	"k"
	.byte	0x1
	.byte	0x73
	.uaword	0x23a
	.uaword	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"clearBuffer"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	.LFB586
	.uaword	.LFE586
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x872
	.uleb128 0x14
	.uaword	.LBB14
	.uaword	.LBE14
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x82
	.uaword	0x23a
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"clearBuffer_RIGHT"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.uaword	.LFB587
	.uaword	.LFE587
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8b2
	.uleb128 0x14
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x88
	.uaword	0x23a
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"median_filter"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.uaword	.LFB588
	.uaword	.LFE588
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"median_filter_RIGHT"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	.LFB589
	.uaword	.LFE589
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x18
	.uaword	0x599
	.uaword	.LFB590
	.uaword	.LFE590
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x91c
	.uleb128 0x19
	.uaword	0x5b4
	.uaword	.LLST14
	.uleb128 0x1a
	.uaword	0x5bf
	.byte	0x4
	.uaword	0x43fa0000
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"is_THRESHOLD_MIDDLE"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB591
	.uaword	.LFE591
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x974
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0xc1
	.uaword	0x23a
	.uaword	.LLST15
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc2
	.uaword	0x248
	.byte	0x4
	.uaword	0x43fa0000
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0xc3
	.uaword	0x23a
	.byte	0x40
	.byte	0
	.uleb128 0x18
	.uaword	0x5cb
	.uaword	.LFB592
	.uaword	.LFE592
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x99c
	.uleb128 0x19
	.uaword	0x5ec
	.uaword	.LLST16
	.uleb128 0x1a
	.uaword	0x5f7
	.byte	0x4
	.uaword	0x44bb8000
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"get_Dash"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.uaword	0x23a
	.uaword	.LFB593
	.uaword	.LFE593
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa1c
	.uleb128 0x1e
	.uaword	0x599
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x1
	.byte	0xda
	.uaword	0x9ee
	.uleb128 0x14
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x19
	.uaword	0x5b4
	.uaword	.LLST17
	.uleb128 0x1a
	.uaword	0x5bf
	.byte	0x4
	.uaword	0x43fa0000
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x5cb
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x1
	.byte	0xdd
	.uleb128 0x14
	.uaword	.LBB19
	.uaword	.LBE19
	.uleb128 0x19
	.uaword	0x5ec
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	0x5f7
	.byte	0x4
	.uaword	0x44bb8000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"clear_Dash"
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.uaword	.LFB594
	.uaword	.LFE594
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"threshold_LINE"
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.uaword	.LFB595
	.uaword	.LFE595
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa8c
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf4
	.uaword	0x23a
	.uaword	.LLST19
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf5
	.uaword	0x248
	.byte	0x4
	.uaword	0x43fa0000
	.uleb128 0x16
	.string	"MinVal"
	.byte	0x1
	.byte	0xf6
	.uaword	0x248
	.uaword	.LLST20
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"threshold_LINE_RIGHT"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	.LFB596
	.uaword	.LFE596
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xaeb
	.uleb128 0x21
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x112
	.uaword	0x23a
	.uaword	.LLST21
	.uleb128 0x22
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x113
	.uaword	0x248
	.byte	0x4
	.uaword	0x44bb8000
	.uleb128 0x23
	.string	"MinVal"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x248
	.uaword	.LLST22
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"getLineData"
	.byte	0x1
	.uahalf	0x130
	.byte	0x1
	.uaword	.LFB597
	.uaword	.LFE597
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb2d
	.uleb128 0x21
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x131
	.uaword	0x23a
	.uaword	.LLST23
	.uleb128 0x21
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x132
	.uaword	0x1e2
	.uaword	.LLST24
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"getLineData_RIGHT"
	.byte	0x1
	.uahalf	0x14b
	.byte	0x1
	.uaword	.LFB598
	.uaword	.LFE598
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb75
	.uleb128 0x21
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x23a
	.uaword	.LLST25
	.uleb128 0x21
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x1e2
	.uaword	.LLST26
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IsInSchoolZone_THRESHOLD"
	.byte	0x1
	.uahalf	0x166
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB599
	.uaword	.LFE599
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbe5
	.uleb128 0x21
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x167
	.uaword	0x23a
	.uaword	.LLST27
	.uleb128 0x25
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x168
	.uaword	0x23a
	.byte	0x40
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x169
	.uaword	0x248
	.uaword	.LLST28
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x16a
	.uaword	0x23a
	.uaword	.LLST29
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IsOutSchoolZone_THRESHOLD"
	.byte	0x1
	.uahalf	0x195
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB600
	.uaword	.LFE600
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc56
	.uleb128 0x21
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x196
	.uaword	0x23a
	.uaword	.LLST30
	.uleb128 0x25
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x197
	.uaword	0x23a
	.byte	0x40
	.uleb128 0x21
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x198
	.uaword	0x248
	.uaword	.LLST31
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x199
	.uaword	0x23a
	.uaword	.LLST32
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IsInSchoolZone"
	.byte	0x1
	.uahalf	0x1c4
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB601
	.uaword	.LFE601
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcab
	.uleb128 0x21
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0x23a
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0x23a
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0x23a
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IsOutSchoolZone"
	.byte	0x1
	.uahalf	0x1d3
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB602
	.uaword	.LFE602
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd01
	.uleb128 0x21
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x23a
	.uaword	.LLST34
	.uleb128 0x26
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x23a
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x23a
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"Direction"
	.byte	0x1
	.uahalf	0x1e2
	.byte	0x1
	.uaword	0x248
	.uaword	.LFB603
	.uaword	.LFE603
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"Direction_CENTER"
	.byte	0x1
	.uahalf	0x1e7
	.byte	0x1
	.uaword	0x248
	.uaword	.LFB604
	.uaword	.LFE604
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"Direction_CENTER_RIGHT"
	.byte	0x1
	.uahalf	0x1ec
	.byte	0x1
	.uaword	0x248
	.uaword	.LFB605
	.uaword	.LFE605
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"Boundary"
	.byte	0x1
	.uahalf	0x1f0
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB606
	.uaword	.LFE606
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"Boundary_RIGHT"
	.byte	0x1
	.uahalf	0x1f8
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB607
	.uaword	.LFE607
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"Over_Boundary"
	.byte	0x1
	.uahalf	0x200
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB608
	.uaword	.LFE608
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"isEndOfLEFT"
	.byte	0x1
	.uahalf	0x207
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB609
	.uaword	.LFE609
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.string	"Over_Boundary_RIGHT"
	.byte	0x1
	.uahalf	0x20e
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB610
	.uaword	.LFE610
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x28
	.string	"IR_Ctrl"
	.byte	0x1
	.byte	0x17
	.uaword	0x34c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Ctrl
	.uleb128 0x28
	.string	"IR_LineData"
	.byte	0x1
	.byte	0x19
	.uaword	0x4df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_LineData
	.uleb128 0xb
	.uaword	0x2d7
	.uaword	0xe61
	.uleb128 0xc
	.uaword	0x301
	.byte	0x2
	.byte	0
	.uleb128 0x29
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0xe7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0xe51
	.uleb128 0x29
	.string	"Assert_verboseLevel"
	.byte	0x7
	.byte	0x79
	.uaword	0x23a
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"IR_LineScan"
	.byte	0x5
	.byte	0x23
	.uaword	0x584
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"MIN_INDEX"
	.byte	0x1
	.byte	0x1c
	.uaword	0x248
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MIN_INDEX
	.uleb128 0x28
	.string	"MAX_INDEX"
	.byte	0x1
	.byte	0x1d
	.uaword	0x248
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAX_INDEX
	.uleb128 0x28
	.string	"MIN_INDEX_RIGHT"
	.byte	0x1
	.byte	0x1f
	.uaword	0x248
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MIN_INDEX_RIGHT
	.uleb128 0x28
	.string	"MAX_INDEX_RIGHT"
	.byte	0x1
	.byte	0x20
	.uaword	0x248
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAX_INDEX_RIGHT
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0x5f
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
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE583
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE584
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LFE584
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LFE584
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL15
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LFE584
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LFE585
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LFE585
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31
	.uaword	.LFE585
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31
	.uaword	.LFE585
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LFE586
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LFE587
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LFE590
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LFE591
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LFE592
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LFE595
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x48f42400
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x48f42400
	.uaword	.LVL64
	.uaword	.LFE595
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LFE596
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x48f42400
	.uaword	.LVL68
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x48f42400
	.uaword	.LVL72
	.uaword	.LFE596
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE597
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE598
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL108
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL111
	.uaword	.LFE599
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL95
	.uaword	.LVL101
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43fa0000
	.uaword	.LVL101
	.uaword	.LVL113
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x44bb8000
	.uaword	.LVL113
	.uaword	.LFE599
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43fa0000
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL95
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LFE599
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL119
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL131
	.uaword	.LFE600
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL115
	.uaword	.LVL121
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43fa0000
	.uaword	.LVL121
	.uaword	.LVL133
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x44bb8000
	.uaword	.LVL133
	.uaword	.LFE600
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x43fa0000
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL115
	.uaword	.LVL118
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LFE600
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x124
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
	.uaword	.LFB588
	.uaword	.LFE588-.LFB588
	.uaword	.LFB589
	.uaword	.LFE589-.LFB589
	.uaword	.LFB590
	.uaword	.LFE590-.LFB590
	.uaword	.LFB591
	.uaword	.LFE591-.LFB591
	.uaword	.LFB592
	.uaword	.LFE592-.LFB592
	.uaword	.LFB593
	.uaword	.LFE593-.LFB593
	.uaword	.LFB594
	.uaword	.LFE594-.LFB594
	.uaword	.LFB595
	.uaword	.LFE595-.LFB595
	.uaword	.LFB596
	.uaword	.LFE596-.LFB596
	.uaword	.LFB597
	.uaword	.LFE597-.LFB597
	.uaword	.LFB598
	.uaword	.LFE598-.LFB598
	.uaword	.LFB599
	.uaword	.LFE599-.LFB599
	.uaword	.LFB600
	.uaword	.LFE600-.LFB600
	.uaword	.LFB601
	.uaword	.LFE601-.LFB601
	.uaword	.LFB602
	.uaword	.LFE602-.LFB602
	.uaword	.LFB603
	.uaword	.LFE603-.LFB603
	.uaword	.LFB604
	.uaword	.LFE604-.LFB604
	.uaword	.LFB605
	.uaword	.LFE605-.LFB605
	.uaword	.LFB606
	.uaword	.LFE606-.LFB606
	.uaword	.LFB607
	.uaword	.LFE607-.LFB607
	.uaword	.LFB608
	.uaword	.LFE608-.LFB608
	.uaword	.LFB609
	.uaword	.LFE609-.LFB609
	.uaword	.LFB610
	.uaword	.LFE610-.LFB610
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0
	.uaword	0
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB13
	.uaword	.LBE13
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
	.uaword	.LFB588
	.uaword	.LFE588
	.uaword	.LFB589
	.uaword	.LFE589
	.uaword	.LFB590
	.uaword	.LFE590
	.uaword	.LFB591
	.uaword	.LFE591
	.uaword	.LFB592
	.uaword	.LFE592
	.uaword	.LFB593
	.uaword	.LFE593
	.uaword	.LFB594
	.uaword	.LFE594
	.uaword	.LFB595
	.uaword	.LFE595
	.uaword	.LFB596
	.uaword	.LFE596
	.uaword	.LFB597
	.uaword	.LFE597
	.uaword	.LFB598
	.uaword	.LFE598
	.uaword	.LFB599
	.uaword	.LFE599
	.uaword	.LFB600
	.uaword	.LFE600
	.uaword	.LFB601
	.uaword	.LFE601
	.uaword	.LFB602
	.uaword	.LFE602
	.uaword	.LFB603
	.uaword	.LFE603
	.uaword	.LFB604
	.uaword	.LFE604
	.uaword	.LFB605
	.uaword	.LFE605
	.uaword	.LFB606
	.uaword	.LFE606
	.uaword	.LFB607
	.uaword	.LFE607
	.uaword	.LFB608
	.uaword	.LFE608
	.uaword	.LFB609
	.uaword	.LFE609
	.uaword	.LFB610
	.uaword	.LFE610
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"half_index"
.LASF0:
	.string	"index"
.LASF3:
	.string	"MaxVal"
.LASF1:
	.string	"threshold"
.LASF5:
	.string	"line_count"
.LASF4:
	.string	"SCHOOLZONE_DETECTION"
	.extern	IR_LineScan,STT_OBJECT,2048
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
