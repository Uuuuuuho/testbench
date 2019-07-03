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
	.loc 1 42 0
	.loc 1 43 0
	mov	%d15, 1
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	st.w	[%a15] 520, %d15
	.loc 1 45 0
	mov	%d2, -1
	.loc 1 44 0
	mov	%d15, 0
	.loc 1 45 0
	st.w	[%a15] 528, %d2
	.loc 1 44 0
	st.w	[%a15] 524, %d15
	.loc 1 47 0
	st.b	[%a15] 565, %d15
	.loc 1 48 0
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
	.loc 1 51 0
	ret
.LFE578:
	.size	InfineonRacer_detectLane, .-InfineonRacer_detectLane
.section .text.InfineonRacer_control,"ax",@progbits
	.align 1
	.global	InfineonRacer_control
	.type	InfineonRacer_control, @function
InfineonRacer_control:
.LFB579:
	.loc 1 60 0
	ret
.LFE579:
	.size	InfineonRacer_control, .-InfineonRacer_control
.section .text.Line_Buffer,"ax",@progbits
	.align 1
	.global	Line_Buffer
	.type	Line_Buffer, @function
Line_Buffer:
.LFB580:
	.loc 1 64 0
.LVL0:
	movh.a	%a3, hi:IR_LineScan
.LBB2:
	.loc 1 65 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 127
.LVL1:
.L5:
	.loc 1 66 0 discriminator 3
	addi	%d2, %d15, 256
	addsc.a	%a2, %a3, %d2, 2
	addsc.a	%a4, %a3, %d15, 2
	ld.w	%d3, [%a2]0
	ld.w	%d2, [%a4]0
	.loc 1 65 0 discriminator 3
	add	%d15, 1
.LVL2:
	.loc 1 66 0 discriminator 3
	add	%d2, %d3
	st.w	[%a2]0, %d2
	.loc 1 65 0 discriminator 3
	loop	%a15, .L5
.LBE2:
	.loc 1 68 0
	ret
.LFE580:
	.size	Line_Buffer, .-Line_Buffer
.section .text.Line_Buffer_RIGHT,"ax",@progbits
	.align 1
	.global	Line_Buffer_RIGHT
	.type	Line_Buffer_RIGHT, @function
Line_Buffer_RIGHT:
.LFB581:
	.loc 1 70 0
.LVL3:
	movh.a	%a3, hi:IR_LineScan
.LBB3:
	.loc 1 71 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 127
.LVL4:
.L9:
	.loc 1 72 0 discriminator 3
	addi	%d2, %d15, 384
	addsc.a	%a2, %a3, %d2, 2
	addsc.a	%a4, %a3, %d15, 2
	ld.w	%d3, [%a2]0
	ld.w	%d2, [%a4] 512
	.loc 1 71 0 discriminator 3
	add	%d15, 1
.LVL5:
	.loc 1 72 0 discriminator 3
	add	%d2, %d3
	st.w	[%a2]0, %d2
	.loc 1 71 0 discriminator 3
	loop	%a15, .L9
.LBE3:
	.loc 1 74 0
	ret
.LFE581:
	.size	Line_Buffer_RIGHT, .-Line_Buffer_RIGHT
.section .text.Line_avgerage,"ax",@progbits
	.align 1
	.global	Line_avgerage
	.type	Line_avgerage, @function
Line_avgerage:
.LFB582:
	.loc 1 76 0
.LVL6:
	movh.a	%a3, hi:IR_LineScan
.LBB4:
	.loc 1 77 0
	mov	%d4, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 127
.LVL7:
.L12:
	.loc 1 78 0 discriminator 3
	addi	%d15, %d4, 256
	addsc.a	%a2, %a3, %d15, 2
	movh	%d2, 52429
	ld.w	%d15, [%a2]0
	addi	%d2, %d2, -13107
	mul.u	%e2, %d15, %d2
	.loc 1 77 0 discriminator 3
	add	%d4, 1
.LVL8:
	.loc 1 78 0 discriminator 3
	sh	%d15, %d3, -2
	st.w	[%a2]0, %d15
	.loc 1 77 0 discriminator 3
	loop	%a15, .L12
.LBE4:
	.loc 1 81 0
	ret
.LFE582:
	.size	Line_avgerage, .-Line_avgerage
.section .text.Line_avgerage_RIGHT,"ax",@progbits
	.align 1
	.global	Line_avgerage_RIGHT
	.type	Line_avgerage_RIGHT, @function
Line_avgerage_RIGHT:
.LFB583:
	.loc 1 83 0
.LVL9:
	movh.a	%a3, hi:IR_LineScan
.LBB5:
	.loc 1 84 0
	mov	%d4, 0
	lea	%a3, [%a3] lo:IR_LineScan
	lea	%a15, 127
.LVL10:
.L15:
	.loc 1 85 0 discriminator 3
	addi	%d15, %d4, 384
	addsc.a	%a2, %a3, %d15, 2
	movh	%d2, 52429
	ld.w	%d15, [%a2]0
	addi	%d2, %d2, -13107
	mul.u	%e2, %d15, %d2
	.loc 1 84 0 discriminator 3
	add	%d4, 1
.LVL11:
	.loc 1 85 0 discriminator 3
	sh	%d15, %d3, -2
	st.w	[%a2]0, %d15
	.loc 1 84 0 discriminator 3
	loop	%a15, .L15
.LBE5:
	.loc 1 87 0
	ret
.LFE583:
	.size	Line_avgerage_RIGHT, .-Line_avgerage_RIGHT
.section .text.convolutionOP,"ax",@progbits
	.align 1
	.global	convolutionOP
	.type	convolutionOP, @function
convolutionOP:
.LFB584:
	.loc 1 89 0
.LVL12:
	movh.a	%a3, hi:IR_LineData
	lea	%a3, [%a3] lo:IR_LineData
	movh.a	%a4, hi:IR_LineScan
	.loc 1 91 0
	mov	%d7, 0
.LBB6:
	.loc 1 95 0
	mov	%d1, 0
	lea	%a4, [%a4] lo:IR_LineScan
	.loc 1 102 0
	mov.d	%d8, %a3
	lea	%a5, 129
.LVL13:
.L20:
	.loc 1 95 0
	sh	%d0, %d7, 2
	addsc.a	%a15, %a3, %d0, 0
	st.w	[%a15]0, %d1
	.loc 1 97 0
	jlt.u	%d7, 2, .L18
	.loc 1 97 0 is_stmt 0 discriminator 1
	add	%d15, %d7, -2
.LVL14:
	.loc 1 98 0 is_stmt 1 discriminator 1
	min.u	%d4, %d7, 127
.LVL15:
	.loc 1 100 0 discriminator 1
	jlt.u	%d4, %d15, .L23
.LVL16:
.L19:
	sub	%d3, %d7, %d15
	.loc 1 97 0 discriminator 3
	mov	%d2, 0
.LVL17:
.L22:
	.loc 1 102 0 discriminator 3
	addsc.a	%a2, %a3, %d3, 2
	addsc.a	%a15, %a4, %d15, 2
	ld.w	%d6, [%a2] 520
	ld.w	%d5, [%a15] 1024
	.loc 1 100 0 discriminator 3
	add	%d15, 1
.LVL18:
	.loc 1 102 0 discriminator 3
	madd	%d2, %d2, %d6, %d5
	add	%d3, -1
	.loc 1 100 0 discriminator 3
	jge.u	%d4, %d15, .L22
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d0, 0
	st.w	[%a15]0, %d2
.L23:
.LBE6:
	.loc 1 91 0
	add	%d7, 1
.LVL19:
	loop	%a5, .L20
	ret
.LVL20:
.L18:
.LBB7:
	.loc 1 98 0
	min.u	%d4, %d7, 127
.LVL21:
	.loc 1 97 0
	mov	%d15, 0
	j	.L19
.LBE7:
.LFE584:
	.size	convolutionOP, .-convolutionOP
.section .text.convolutionOP_RIGHT,"ax",@progbits
	.align 1
	.global	convolutionOP_RIGHT
	.type	convolutionOP_RIGHT, @function
convolutionOP_RIGHT:
.LFB585:
	.loc 1 107 0
.LVL22:
	movh.a	%a3, hi:IR_LineData
	lea	%a3, [%a3] lo:IR_LineData
	movh.a	%a4, hi:IR_LineScan
	.loc 1 109 0
	mov	%d7, 0
.LBB8:
	.loc 1 113 0
	mov	%d1, 0
	lea	%a4, [%a4] lo:IR_LineScan
	.loc 1 120 0
	mov.d	%d8, %a3
	lea	%a5, 129
.LVL23:
.L30:
	.loc 1 113 0
	sh	%d0, %d7, 2
	addsc.a	%a15, %a3, %d0, 0
	st.w	[%a15]0, %d1
	.loc 1 115 0
	jlt.u	%d7, 2, .L28
	.loc 1 115 0 is_stmt 0 discriminator 1
	add	%d15, %d7, -2
.LVL24:
	.loc 1 116 0 is_stmt 1 discriminator 1
	min.u	%d4, %d7, 127
.LVL25:
	.loc 1 118 0 discriminator 1
	jlt.u	%d4, %d15, .L33
.LVL26:
.L29:
	sub	%d3, %d7, %d15
	.loc 1 115 0 discriminator 3
	mov	%d2, 0
.LVL27:
.L32:
	.loc 1 120 0 discriminator 3
	addsc.a	%a2, %a3, %d3, 2
	addsc.a	%a15, %a4, %d15, 2
	ld.w	%d6, [%a2] 520
	ld.w	%d5, [%a15] 1536
	.loc 1 118 0 discriminator 3
	add	%d15, 1
.LVL28:
	.loc 1 120 0 discriminator 3
	madd	%d2, %d2, %d6, %d5
	add	%d3, -1
	.loc 1 118 0 discriminator 3
	jge.u	%d4, %d15, .L32
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d0, 0
	st.w	[%a15]0, %d2
.L33:
.LBE8:
	.loc 1 109 0
	add	%d7, 1
.LVL29:
	loop	%a5, .L30
	ret
.LVL30:
.L28:
.LBB9:
	.loc 1 116 0
	min.u	%d4, %d7, 127
.LVL31:
	.loc 1 115 0
	mov	%d15, 0
	j	.L29
.LBE9:
.LFE585:
	.size	convolutionOP_RIGHT, .-convolutionOP_RIGHT
.section .text.clearBuffer,"ax",@progbits
	.align 1
	.global	clearBuffer
	.type	clearBuffer, @function
clearBuffer:
.LFB586:
	.loc 1 125 0
.LVL32:
	movh.a	%a3, hi:IR_LineScan
.LBB10:
	.loc 1 126 0
	mov	%d2, 0
	lea	%a3, [%a3] lo:IR_LineScan
	.loc 1 127 0
	mov	%d3, 0
	lea	%a15, 127
.LVL33:
.L38:
	.loc 1 127 0 is_stmt 0 discriminator 3
	addi	%d15, %d2, 256
	addsc.a	%a2, %a3, %d15, 2
	.loc 1 126 0 is_stmt 1 discriminator 3
	add	%d2, 1
.LVL34:
	.loc 1 127 0 discriminator 3
	st.w	[%a2]0, %d3
	.loc 1 126 0 discriminator 3
	loop	%a15, .L38
.LBE10:
	.loc 1 129 0
	ret
.LFE586:
	.size	clearBuffer, .-clearBuffer
.section .text.clearBuffer_RIGHT,"ax",@progbits
	.align 1
	.global	clearBuffer_RIGHT
	.type	clearBuffer_RIGHT, @function
clearBuffer_RIGHT:
.LFB587:
	.loc 1 131 0
.LVL35:
	movh.a	%a3, hi:IR_LineScan
.LBB11:
	.loc 1 132 0
	mov	%d2, 0
	lea	%a3, [%a3] lo:IR_LineScan
	.loc 1 133 0
	mov	%d3, 0
	lea	%a15, 127
.LVL36:
.L41:
	.loc 1 133 0 is_stmt 0 discriminator 3
	addi	%d15, %d2, 384
	addsc.a	%a2, %a3, %d15, 2
	.loc 1 132 0 is_stmt 1 discriminator 3
	add	%d2, 1
.LVL37:
	.loc 1 133 0 discriminator 3
	st.w	[%a2]0, %d3
	.loc 1 132 0 discriminator 3
	loop	%a15, .L41
.LBE11:
	.loc 1 135 0
	ret
.LFE587:
	.size	clearBuffer_RIGHT, .-clearBuffer_RIGHT
.section .text.median_filter,"ax",@progbits
	.align 1
	.global	median_filter
	.type	median_filter, @function
median_filter:
.LFB588:
	.loc 1 137 0
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
	.loc 1 157 0
.LVL39:
	ret
.LFE589:
	.size	median_filter_RIGHT, .-median_filter_RIGHT
.section .text.getLineData,"ax",@progbits
	.align 1
	.global	getLineData
	.type	getLineData, @function
getLineData:
.LFB590:
	.loc 1 177 0
.LVL40:
	.loc 1 181 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 564
	jnz	%d15, .L46
	ld.w	%d4, [%a2] 556
	mov	%d3, 0
	mov	%d15, 5
	lea	%a15, 117
.LVL41:
.L48:
	.loc 1 183 0
	addsc.a	%a3, %a2, %d15, 2
	ld.w	%d2, [%a3]0
	jge	%d3, %d2, .L47
	.loc 1 184 0
	mov	%d4, %d15
	.loc 1 183 0
	mov	%d3, %d2
.LVL42:
.L47:
	.loc 1 182 0 discriminator 2
	add	%d15, 1
.LVL43:
	loop	%a15, .L48
	.loc 1 188 0
	mov	%d15, 1
.LVL44:
	st.w	[%a2] 556, %d4
	st.b	[%a2] 564, %d15
	ret
.LVL45:
.L46:
	ld.w	%d4, [%a2] 560
	.loc 1 181 0
	mov	%d3, 0
	mov	%d15, 5
	lea	%a15, 117
.LVL46:
.L51:
	.loc 1 193 0
	addsc.a	%a3, %a2, %d15, 2
	ld.w	%d2, [%a3]0
	jge	%d3, %d2, .L50
	.loc 1 194 0
	mov	%d4, %d15
	.loc 1 193 0
	mov	%d3, %d2
.LVL47:
.L50:
	.loc 1 192 0 discriminator 2
	add	%d15, 1
.LVL48:
	loop	%a15, .L51
	.loc 1 198 0
	mov	%d15, 0
.LVL49:
	st.w	[%a2] 560, %d4
	st.b	[%a2] 564, %d15
	ret
.LFE590:
	.size	getLineData, .-getLineData
.section .text.getLineData_RIGHT,"ax",@progbits
	.align 1
	.global	getLineData_RIGHT
	.type	getLineData_RIGHT, @function
getLineData_RIGHT:
.LFB591:
	.loc 1 204 0
.LVL50:
	.loc 1 208 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 564
	jnz	%d15, .L55
	ld.w	%d4, [%a2] 556
	mov	%d3, 0
	mov	%d15, 5
	lea	%a15, 117
.LVL51:
.L57:
	.loc 1 210 0
	addsc.a	%a3, %a2, %d15, 2
	ld.w	%d2, [%a3]0
	jge	%d3, %d2, .L56
	.loc 1 211 0
	mov	%d4, %d15
	.loc 1 210 0
	mov	%d3, %d2
.LVL52:
.L56:
	.loc 1 209 0 discriminator 2
	add	%d15, 1
.LVL53:
	loop	%a15, .L57
	.loc 1 215 0
	mov	%d15, 1
.LVL54:
	st.w	[%a2] 556, %d4
	st.b	[%a2] 564, %d15
	ret
.LVL55:
.L55:
	ld.w	%d4, [%a2] 560
	.loc 1 208 0
	mov	%d3, 0
	mov	%d15, 5
	lea	%a15, 117
.LVL56:
.L60:
	.loc 1 220 0
	addsc.a	%a3, %a2, %d15, 2
	ld.w	%d2, [%a3]0
	jge	%d3, %d2, .L59
	.loc 1 221 0
	mov	%d4, %d15
	.loc 1 220 0
	mov	%d3, %d2
.LVL57:
.L59:
	.loc 1 219 0 discriminator 2
	add	%d15, 1
.LVL58:
	loop	%a15, .L60
	.loc 1 225 0
	mov	%d15, 0
.LVL59:
	st.w	[%a2] 560, %d4
	st.b	[%a2] 564, %d15
	ret
.LFE591:
	.size	getLineData_RIGHT, .-getLineData_RIGHT
.section .text.IsInSchoolZone,"ax",@progbits
	.align 1
	.global	IsInSchoolZone
	.type	IsInSchoolZone, @function
IsInSchoolZone:
.LFB592:
	.loc 1 231 0
.LVL60:
	.loc 1 233 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.w	%d2, [%a2] 560
	addsc.a	%a15, %a2, %d2, 2
	.loc 1 237 0
	add	%d2, 5
	lt.u	%d15, %d2, 123
	.loc 1 233 0
	ld.w	%d4, [%a15]0
.LVL61:
	.loc 1 237 0
	jz	%d15, .L67
	rsub	%d3, %d2, 122
	ld.bu	%d15, [%a2] 565
	mov.a	%a15, %d3
.L66:
	.loc 1 238 0
	addsc.a	%a3, %a2, %d2, 2
	.loc 1 237 0
	add	%d2, 1
.LVL62:
	.loc 1 238 0
	ld.w	%d3, [%a3]0
	.loc 1 239 0
	ge.u	%d3, %d4, %d3
	sel	%d15, %d3, %d15, 1
	.loc 1 237 0
	loop	%a15, .L66
	st.b	[%a2] 565, %d15
.L67:
	.loc 1 243 0
	ld.bu	%d2, [%a2] 565
.LVL63:
	ret
.LFE592:
	.size	IsInSchoolZone, .-IsInSchoolZone
.section .text.IsOutSchoolZone,"ax",@progbits
	.align 1
	.global	IsOutSchoolZone
	.type	IsOutSchoolZone, @function
IsOutSchoolZone:
.LFB593:
	.loc 1 246 0
.LVL64:
	.loc 1 248 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.w	%d2, [%a2] 560
	addsc.a	%a15, %a2, %d2, 2
	.loc 1 252 0
	add	%d2, 5
	lt.u	%d15, %d2, 123
	.loc 1 248 0
	ld.w	%d4, [%a15]0
.LVL65:
	.loc 1 252 0
	jz	%d15, .L75
	rsub	%d3, %d2, 122
	ld.bu	%d15, [%a2] 565
	mov.a	%a15, %d3
.L74:
	.loc 1 253 0
	addsc.a	%a3, %a2, %d2, 2
	.loc 1 252 0
	add	%d2, 1
.LVL66:
	.loc 1 253 0
	ld.w	%d3, [%a3]0
	.loc 1 254 0
	ge.u	%d3, %d4, %d3
	sel	%d15, %d3, %d15, 0
	.loc 1 252 0
	loop	%a15, .L74
	st.b	[%a2] 565, %d15
.L75:
	.loc 1 257 0
	ld.bu	%d2, [%a2] 565
.LVL67:
	ret
.LFE593:
	.size	IsOutSchoolZone, .-IsOutSchoolZone
.section .text.Direction,"ax",@progbits
	.align 1
	.global	Direction
	.type	Direction, @function
Direction:
.LFB594:
	.loc 1 261 0
	.loc 1 262 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d2, [%a15] 560
	ld.w	%d15, [%a15] 556
	sub	%d2, %d15
	.loc 1 264 0
	utof	%d2, %d2
	ret
.LFE594:
	.size	Direction, .-Direction
.section .text.Direction_CENTER,"ax",@progbits
	.align 1
	.global	Direction_CENTER
	.type	Direction_CENTER, @function
Direction_CENTER:
.LFB595:
	.loc 1 266 0
	.loc 1 268 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.w	%d2, [%a15] 560
	addi	%d2, %d2, -60
	.loc 1 269 0
	utof	%d2, %d2
	ret
.LFE595:
	.size	Direction_CENTER, .-Direction_CENTER
.section .text.Boundary,"ax",@progbits
	.align 1
	.global	Boundary
	.type	Boundary, @function
Boundary:
.LFB596:
	.loc 1 271 0
	.loc 1 272 0
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
	.loc 1 273 0
	nand.t	%d2, %d2,2, %d2,2
	.loc 1 276 0
	cmovn	%d2, %d15, 1
	ret
.LFE596:
	.size	Boundary, .-Boundary
	.global	MAX_INDEX
.section .data.MAX_INDEX,"aw",@progbits
	.align 2
	.type	MAX_INDEX, @object
	.size	MAX_INDEX, 4
MAX_INDEX:
	.word	1115815936
	.global	MIN_INDEX
.section .data.MIN_INDEX,"aw",@progbits
	.align 2
	.type	MIN_INDEX, @object
	.size	MIN_INDEX, 4
MIN_INDEX:
	.word	1113325568
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
	.uaword	0xa2d
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
	.byte	0x2e
	.uaword	0x34c
	.uleb128 0x7
	.string	"Ls0Margin"
	.byte	0x4
	.byte	0x2f
	.uaword	0x22c
	.byte	0
	.uleb128 0x7
	.string	"Ls1Margin"
	.byte	0x4
	.byte	0x30
	.uaword	0x22c
	.byte	0x4
	.uleb128 0x7
	.string	"basicTest"
	.byte	0x4
	.byte	0x31
	.uaword	0x26a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x4
	.byte	0x32
	.uaword	0x30d
	.uleb128 0x9
	.uahalf	0x238
	.byte	0x4
	.byte	0x34
	.uaword	0x407
	.uleb128 0x7
	.string	"Result"
	.byte	0x4
	.byte	0x35
	.uaword	0x407
	.byte	0
	.uleb128 0xa
	.string	"Transfer"
	.byte	0x4
	.byte	0x36
	.uaword	0x417
	.uahalf	0x208
	.uleb128 0xa
	.string	"sample"
	.byte	0x4
	.byte	0x38
	.uaword	0x427
	.uahalf	0x214
	.uleb128 0xa
	.string	"temp"
	.byte	0x4
	.byte	0x39
	.uaword	0x248
	.uahalf	0x228
	.uleb128 0xa
	.string	"previous"
	.byte	0x4
	.byte	0x3b
	.uaword	0x23a
	.uahalf	0x22c
	.uleb128 0xa
	.string	"present"
	.byte	0x4
	.byte	0x3c
	.uaword	0x23a
	.uahalf	0x230
	.uleb128 0xa
	.string	"Direction_Determined"
	.byte	0x4
	.byte	0x3e
	.uaword	0x26a
	.uahalf	0x234
	.uleb128 0xa
	.string	"School_Zone_flag"
	.byte	0x4
	.byte	0x3f
	.uaword	0x26a
	.uahalf	0x235
	.byte	0
	.uleb128 0xb
	.uaword	0x1e2
	.uaword	0x417
	.uleb128 0xc
	.uaword	0x301
	.byte	0x81
	.byte	0
	.uleb128 0xb
	.uaword	0x1e2
	.uaword	0x427
	.uleb128 0xc
	.uaword	0x301
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.uaword	0x23a
	.uaword	0x437
	.uleb128 0xc
	.uaword	0x301
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"LineData"
	.byte	0x4
	.byte	0x40
	.uaword	0x363
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.byte	0x76
	.uaword	0x497
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
	.uaword	0x4c6
	.uleb128 0x7
	.string	"adcResult"
	.byte	0x5
	.byte	0x1c
	.uaword	0x4c6
	.byte	0
	.uleb128 0xa
	.string	"adcBuffer"
	.byte	0x5
	.byte	0x1d
	.uaword	0x4c6
	.uahalf	0x400
	.byte	0
	.uleb128 0xb
	.uaword	0x23a
	.uaword	0x4dc
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
	.uaword	0x497
	.uleb128 0xf
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0x1
	.byte	0x2a
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
	.byte	0x33
	.uaword	.LFB578
	.uaword	.LFE578
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0x1
	.byte	0x3c
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
	.byte	0x40
	.byte	0x1
	.uaword	.LFB580
	.uaword	.LFE580
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x59c
	.uleb128 0x12
	.uaword	.LBB2
	.uaword	.LBE2
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x41
	.uaword	0x23a
	.uaword	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Line_Buffer_RIGHT"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB581
	.uaword	.LFE581
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5dc
	.uleb128 0x12
	.uaword	.LBB3
	.uaword	.LBE3
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x47
	.uaword	0x23a
	.uaword	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Line_avgerage"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	.LFB582
	.uaword	.LFE582
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x618
	.uleb128 0x12
	.uaword	.LBB4
	.uaword	.LBE4
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4d
	.uaword	0x23a
	.uaword	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Line_avgerage_RIGHT"
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.uaword	.LFB583
	.uaword	.LFE583
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x65a
	.uleb128 0x12
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x54
	.uaword	0x23a
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"convolutionOP"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.uaword	.LFB584
	.uaword	.LFE584
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6bd
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x5a
	.uaword	0x23a
	.uaword	.LLST4
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x14
	.string	"kmin"
	.byte	0x1
	.byte	0x5d
	.uaword	0x23a
	.uaword	.LLST5
	.uleb128 0x14
	.string	"kmax"
	.byte	0x1
	.byte	0x5d
	.uaword	0x23a
	.uaword	.LLST6
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0x5d
	.uaword	0x23a
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"convolutionOP_RIGHT"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	.LFB585
	.uaword	.LFE585
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x726
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x6c
	.uaword	0x23a
	.uaword	.LLST8
	.uleb128 0x15
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x14
	.string	"kmin"
	.byte	0x1
	.byte	0x6f
	.uaword	0x23a
	.uaword	.LLST9
	.uleb128 0x14
	.string	"kmax"
	.byte	0x1
	.byte	0x6f
	.uaword	0x23a
	.uaword	.LLST10
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0x6f
	.uaword	0x23a
	.uaword	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"clearBuffer"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.uaword	.LFB586
	.uaword	.LFE586
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x760
	.uleb128 0x12
	.uaword	.LBB10
	.uaword	.LBE10
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x7e
	.uaword	0x23a
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"clearBuffer_RIGHT"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	.LFB587
	.uaword	.LFE587
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7a0
	.uleb128 0x12
	.uaword	.LBB11
	.uaword	.LBE11
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x84
	.uaword	0x23a
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"median_filter"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	.LFB588
	.uaword	.LFE588
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"median_filter_RIGHT"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.uaword	.LFB589
	.uaword	.LFE589
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"getLineData"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.uaword	.LFB590
	.uaword	.LFE590
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x821
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb2
	.uaword	0x23a
	.uaword	.LLST14
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb3
	.uaword	0x1e2
	.uaword	.LLST15
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"getLineData_RIGHT"
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.uaword	.LFB591
	.uaword	.LFE591
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x866
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0xcd
	.uaword	0x23a
	.uaword	.LLST16
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.byte	0xce
	.uaword	0x1e2
	.uaword	.LLST17
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"IsInSchoolZone"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB592
	.uaword	.LFE592
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8b7
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0xe8
	.uaword	0x23a
	.uaword	.LLST18
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0xe9
	.uaword	0x23a
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.byte	0xeb
	.uaword	0x23a
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"IsOutSchoolZone"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB593
	.uaword	.LFE593
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x909
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf7
	.uaword	0x23a
	.uaword	.LLST19
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf8
	.uaword	0x23a
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.byte	0xfa
	.uaword	0x23a
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Direction"
	.byte	0x1
	.uahalf	0x105
	.byte	0x1
	.uaword	0x248
	.uaword	.LFB594
	.uaword	.LFE594
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"Direction_CENTER"
	.byte	0x1
	.uahalf	0x10a
	.byte	0x1
	.uaword	0x248
	.uaword	.LFB595
	.uaword	.LFE595
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"Boundary"
	.byte	0x1
	.uahalf	0x10f
	.byte	0x1
	.uaword	0x26a
	.uaword	.LFB596
	.uaword	.LFE596
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x19
	.string	"IR_Ctrl"
	.byte	0x1
	.byte	0x17
	.uaword	0x34c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Ctrl
	.uleb128 0x19
	.string	"IR_LineData"
	.byte	0x1
	.byte	0x19
	.uaword	0x437
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_LineData
	.uleb128 0xb
	.uaword	0x2d7
	.uaword	0x9ac
	.uleb128 0xc
	.uaword	0x301
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0x9c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x99c
	.uleb128 0x1a
	.string	"Assert_verboseLevel"
	.byte	0x7
	.byte	0x79
	.uaword	0x23a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"IR_LineScan"
	.byte	0x5
	.byte	0x23
	.uaword	0x4dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"MIN_INDEX"
	.byte	0x1
	.byte	0x1c
	.uaword	0x248
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MIN_INDEX
	.uleb128 0x19
	.string	"MAX_INDEX"
	.byte	0x1
	.byte	0x1d
	.uaword	0x248
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAX_INDEX
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
	.uleb128 0x19
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
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LFE590
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LFE591
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xb4
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0
	.uaword	0
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB9
	.uaword	.LBE9
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"index"
.LASF1:
	.string	"MaxVal"
.LASF2:
	.string	"SCHOOLZONE_DETECTION"
	.extern	IR_LineScan,STT_OBJECT,2048
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
