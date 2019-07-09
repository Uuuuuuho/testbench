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
	.loc 1 24 0
	.loc 1 38 0
	mov	%d15, 0
	movh.a	%a15, hi:IR_Encoder
	.loc 1 25 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 38 0
	lea	%a15, [%a15] lo:IR_Encoder
	.loc 1 26 0
	call	BasicPort_init
.LVL1:
	.loc 1 27 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 28 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 29 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 30 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 31 0
	call	PID_init
.LVL6:
	.loc 1 38 0
	st.w	[%a15] 16, %d15
	.loc 1 48 0
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
	.loc 1 57 0
	.loc 1 58 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 62 0
	mov	%d2, 1000
	.loc 1 58 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1m, %d15
	.loc 1 62 0
	jeq	%d15, %d2, .L12
	.loc 1 68 0
	mov	%d2, 100
	div	%e2, %d15, %d2
	jz	%d3, .L4
	.loc 1 73 0
	call	BasicGpt12Enc_run
.LVL8:
	.loc 1 74 0
	call	Speed_Buff
.LVL9:
	.loc 1 76 0
	ld.w	%d2, [%a15] lo:task_cnt_1m
	mov	%d15, 50
	div	%e2, %d2, %d15
	jz	%d3, .L13
.L6:
	.loc 1 88 0
	call	BasicVadcBgScan_run
.LVL10:
	.loc 1 89 0
	call	Checking_PSD
.LVL11:
	jz	%d2, .L2
	.loc 1 90 0
	mov	%d15, 1
	movh.a	%a15, hi:Obstacle_flag
	st.w	[%a15] lo:Obstacle_flag, %d15
.L2:
	ret
.L12:
	.loc 1 64 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1m, %d15
.L4:
	.loc 1 69 0
	call	BasicGpt12Enc_IR_Encoder_reset
.LVL12:
	.loc 1 73 0
	call	BasicGpt12Enc_run
.LVL13:
	.loc 1 74 0
	call	Speed_Buff
.LVL14:
	.loc 1 76 0
	ld.w	%d2, [%a15] lo:task_cnt_1m
	mov	%d15, 50
	div	%e2, %d2, %d15
	jnz	%d3, .L6
.L13:
	.loc 1 77 0
	call	Speed_Avg
.LVL15:
	.loc 1 78 0
	call	SpeedCalculation
.LVL16:
	mov	%d4, %d2
	call	get_Speed
.LVL17:
	.loc 1 80 0
	movh	%d4, 48896
	call	IR_setMotor0Vol
.LVL18:
	j	.L6
.LFE725:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
.section .text.appTaskfu_20ms,"ax",@progbits
	.align 1
	.global	appTaskfu_20ms
	.type	appTaskfu_20ms, @function
appTaskfu_20ms:
.LFB726:
	.loc 1 101 0
	.loc 1 104 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.bu	%d15, [%a15] 594
	jnz	%d15, .L15
	.loc 1 105 0
	call	IsInSchoolZone_THRESHOLD
.LVL19:
	.loc 1 106 0
	ld.bu	%d15, [%a15] 594
	movh.a	%a15, hi:TEMP_REMAIN
	jnz	%d15, .L16
.L17:
	.loc 1 126 0
	movh.a	%a15, hi:TEMP_REMAIN
	ld.bu	%d15, [%a15] lo:TEMP_REMAIN
	jnz	%d15, .L16
.L14:
	ret
.L16:
	.loc 1 127 0
	mov	%d15, 0
	st.b	[%a15] lo:TEMP_REMAIN, %d15
	ret
.L15:
	.loc 1 112 0
	call	IsOutSchoolZone_THRESHOLD
.LVL20:
	.loc 1 114 0
	call	get_Dash
.LVL21:
	jeq	%d2, 1, .L18
	jne	%d2, 2, .L17
	.loc 1 120 0
	mov	%d15, 1
	movh.a	%a15, hi:WHICH_LANE
	st.w	[%a15] lo:WHICH_LANE, %d15
	.loc 1 126 0
	movh.a	%a15, hi:TEMP_REMAIN
	ld.bu	%d15, [%a15] lo:TEMP_REMAIN
	jz	%d15, .L14
	j	.L16
.L18:
	.loc 1 117 0
	mov	%d15, 2
	movh.a	%a15, hi:WHICH_LANE
	st.w	[%a15] lo:WHICH_LANE, %d15
	.loc 1 126 0
	movh.a	%a15, hi:TEMP_REMAIN
	ld.bu	%d15, [%a15] lo:TEMP_REMAIN
	jz	%d15, .L14
	j	.L16
.LFE726:
	.size	appTaskfu_20ms, .-appTaskfu_20ms
	.global	__extendsfdf2
	.global	__muldf3
	.global	__adddf3
	.global	__truncdfsf2
	.global	__ltdf2
.section .text.Lane_Direction,"ax",@progbits
	.align 1
	.global	Lane_Direction
	.type	Lane_Direction, @function
Lane_Direction:
.LFB728:
	.loc 1 166 0
	.loc 1 167 0
	movh.a	%a15, hi:TEMP_REMAIN
	ld.bu	%d15, [%a15] lo:TEMP_REMAIN
	jnz	%d15, .L60
	.loc 1 171 0
	movh.a	%a12, hi:Obstacle_flag
	ld.w	%d15, [%a12] lo:Obstacle_flag
	jz	%d15, .L61
	.loc 1 225 0
	jeq	%d15, 3, .L62
	.loc 1 262 0
	jeq	%d15, 4, .L63
.L25:
	ret
.L61:
	.loc 1 172 0
	call	is_THRESHOLD
.LVL22:
	jnz	%d2, .L28
	.loc 1 173 0
	call	is_THRESHOLD_RIGHT
.LVL23:
	jz	%d2, .L29
	.loc 1 174 0
	call	Boundary_RIGHT
.LVL24:
	jz	%d2, .L30
	.loc 1 175 0
	call	Over_Boundary_RIGHT
.LVL25:
	jz	%d2, .L32
	.loc 1 180 0
	call	isEndOfRIGHT
.LVL26:
	jnz	%d2, .L32
	.loc 1 184 0
	call	Direction_CENTER_RIGHT
.LVL27:
	j	.L58
.L60:
.LVL28:
	.loc 1 168 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
.LBB34:
.LBB35:
	.loc 1 407 0
	ld.w	%d4, [%a15] 608
	movh	%d15, 17112
	div.f	%d4, %d4, %d15
.LVL29:
.L57:
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	call	__extendsfdf2
.LVL30:
	mov	%e4, %d3, %d2
	movh	%d7, 16330
	movh	%d6, 39322
	addi	%d7, %d7, -26215
	addi	%d6, %d6, -26214
	call	__muldf3
.LVL31:
	mov	%e4, %d3, %d2
	imask	%e6, 0, 21, 9
	call	__adddf3
.LVL32:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL33:
	.loc 1 408 0
	mov	%d4, %d2
	j	IR_setSrvAngle
.LVL34:
.L63:
.LBE37:
.LBE36:
	.loc 1 264 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L44
	jne	%d15, 2, .L43
.LVL35:
.LBB39:
.LBB40:
	.loc 1 408 0
	movh	%d4, 16033
	addi	%d4, %d4, 12136
	call	IR_setSrvAngle
.LVL36:
.L43:
.LBE40:
.LBE39:
	.loc 1 274 0
	movh.a	%a2, hi:task_cnt_10m
	ld.w	%d2, [%a2] lo:task_cnt_10m
	mov	%d15, 20
	div	%e2, %d2, %d15
	jnz	%d3, .L25
	.loc 1 275 0
	ld.w	%d2, [%a15] lo:WHICH_LANE
	movh.a	%a2, hi:WHICH_LANE
	jeq	%d2, 1, .L46
	jne	%d2, 2, .L64
	.loc 1 287 0
	mov	%d15, 1
	.loc 1 286 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	.loc 1 285 0
	st.w	[%a12] lo:Obstacle_flag, %d3
	.loc 1 286 0
	st.w	[%a15] 612, %d3
	.loc 1 287 0
	st.w	[%a2] lo:WHICH_LANE, %d15
	.loc 1 288 0
	call	resetPSD
.LVL37:
	.loc 1 289 0
	j	clear_Dash
.LVL38:
.L28:
	.loc 1 208 0
	call	Boundary
.LVL39:
	jz	%d2, .L30
	.loc 1 209 0
	call	Over_Boundary2
.LVL40:
	jnz	%d2, .L65
	.loc 1 212 0
	call	Over_Boundary
.LVL41:
	jnz	%d2, .L32
	.loc 1 213 0
	call	Direction_CENTER
.LVL42:
.L58:
.LBB41:
.LBB38:
	.loc 1 407 0
	movh	%d4, 17112
	div.f	%d4, %d2, %d4
.LVL43:
	j	.L57
.LVL44:
.L62:
.LBE38:
.LBE41:
.LBB42:
.LBB43:
	.loc 1 408 0
	movh	%d4, 16128
	call	IR_setSrvAngle
.LVL45:
.LBE43:
.LBE42:
	.loc 1 241 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d2, [%a15] lo:task_cnt_10m
	mov	%d15, 20
	div	%e2, %d2, %d15
	jnz	%d3, .L25
	.loc 1 243 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L38
	jeq	%d15, 2, .L39
	ret
.LVL46:
.L30:
.LBB44:
.LBB45:
	.loc 1 408 0
	movh	%d4, 16128
	j	IR_setSrvAngle
.LVL47:
.L44:
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	movh	%d4, 16175
	addi	%d4, %d4, 26700
	call	IR_setSrvAngle
.LVL48:
	j	.L43
.LVL49:
.L29:
.LBE47:
.LBE46:
	.loc 1 192 0
	call	is_WIDE_LANE
.LVL50:
	jnz	%d2, .L66
	.loc 1 197 0
	call	is_WIDE_LANE_RIGHT
.LVL51:
	jz	%d2, .L30
.LVL52:
.LBB48:
.LBB49:
	.loc 1 408 0
	movh	%d4, 16033
	addi	%d4, %d4, 12136
	call	IR_setSrvAngle
.LVL53:
.LBE49:
.LBE48:
	.loc 1 199 0
	movh	%d15, 49864
.LVL54:
.L59:
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	st.w	[%a2] 608, %d15
	.loc 1 200 0
	mov	%d15, 1
	st.b	[%a15] lo:TEMP_REMAIN, %d15
	ret
.L64:
	ret
.L65:
.LVL55:
.LBB50:
.LBB51:
	.loc 1 408 0
	movh	%d4, 16175
	addi	%d4, %d4, 26700
	j	IR_setSrvAngle
.LVL56:
.L66:
.LBE51:
.LBE50:
.LBB52:
.LBB53:
	movh	%d4, 16175
	addi	%d4, %d4, 26700
	call	IR_setSrvAngle
.LVL57:
.LBE53:
.LBE52:
	.loc 1 194 0
	movh	%d15, 17096
	j	.L59
.LVL58:
.L32:
.LBB54:
.LBB55:
	.loc 1 408 0
	movh	%d4, 16033
	addi	%d4, %d4, 12136
	j	IR_setSrvAngle
.LVL59:
.L46:
.LBE55:
.LBE54:
	.loc 1 279 0
	mov	%d15, 2
	.loc 1 278 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	.loc 1 277 0
	st.w	[%a12] lo:Obstacle_flag, %d3
	.loc 1 278 0
	st.w	[%a15] 612, %d3
	.loc 1 279 0
	st.w	[%a2] lo:WHICH_LANE, %d15
	.loc 1 280 0
	call	resetPSD
.LVL60:
	.loc 1 281 0
	j	clear_Dash
.LVL61:
.L39:
	.loc 1 252 0
	movh.a	%a15, hi:IR_AdcResult
	lea	%a15, [%a15] lo:IR_AdcResult
	ld.w	%d4, [%a15] 8
	call	__extendsfdf2
.LVL62:
	movh	%d7, 16323
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62320
	call	__ltdf2
.LVL63:
	jltz	%d2, .L42
	ret
.L38:
	.loc 1 245 0
	movh.a	%a15, hi:IR_AdcResult
	lea	%a15, [%a15] lo:IR_AdcResult
	ld.w	%d4, [%a15] 4
	call	__extendsfdf2
.LVL64:
	movh	%d7, 16323
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62320
	call	__ltdf2
.LVL65:
	jgez	%d2, .L25
.L42:
	.loc 1 246 0
	mov	%d15, 4
	.loc 1 247 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	.loc 1 246 0
	st.w	[%a12] lo:Obstacle_flag, %d15
	.loc 1 247 0
	st.w	[%a15] 612, %d15
	ret
.LFE728:
	.size	Lane_Direction, .-Lane_Direction
.section .text.Lane_Scanning,"ax",@progbits
	.align 1
	.global	Lane_Scanning
	.type	Lane_Scanning, @function
Lane_Scanning:
.LFB729:
	.loc 1 300 0
	.loc 1 302 0
	call	BasicLineScan_run
.LVL66:
	.loc 1 304 0
	call	median_filter
.LVL67:
	.loc 1 307 0
	j	threshold_LINE
.LVL68:
.LFE729:
	.size	Lane_Scanning, .-Lane_Scanning
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB730:
	.loc 1 312 0
	.loc 1 313 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	.loc 1 317 0
	movh	%d4, 48922
	.loc 1 313 0
	add	%d15, 1
	.loc 1 317 0
	addi	%d4, %d4, -26214
	.loc 1 313 0
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 317 0
	call	IR_setMotor0Vol
.LVL69:
	.loc 1 320 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jeq	%d15, %d2, .L73
	.loc 1 324 0
	jz.t	%d15, 0, .L70
	ret
.L73:
	.loc 1 321 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_10m, %d15
.L70:
	.loc 1 332 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 327 0
	call	BasicPort_run
.LVL70:
	.loc 1 332 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L74
	.loc 1 341 0
	j	AsclinShellInterface_runLineScan
.LVL71:
.L74:
	.loc 1 334 0
	call	InfineonRacer_control
.LVL72:
	.loc 1 341 0
	j	AsclinShellInterface_runLineScan
.LVL73:
.LFE730:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB731:
	.loc 1 347 0
	.loc 1 348 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 352 0
	mov	%d2, 1000
	.loc 1 348 0
	add	%d15, 1
	.loc 1 352 0
	jne	%d15, %d2, .L78
	.loc 1 353 0
	mov	%d15, 0
.L78:
	st.w	[%a15] lo:task_cnt_100m, %d15
	ret
.LFE731:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB732:
	.loc 1 369 0
	.loc 1 370 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 379 0
	mov	%d2, 1000
	.loc 1 370 0
	add	%d15, 1
	.loc 1 379 0
	jne	%d15, %d2, .L82
	.loc 1 380 0
	mov	%d15, 0
.L82:
	st.w	[%a15] lo:task_cnt_1000m, %d15
	ret
.LFE732:
	.size	appTaskfu_1000ms, .-appTaskfu_1000ms
.section .text.appTaskfu_idle,"ax",@progbits
	.align 1
	.global	appTaskfu_idle
	.type	appTaskfu_idle, @function
appTaskfu_idle:
.LFB733:
	.loc 1 388 0
	.loc 1 389 0
	call	AsclinShellInterface_run
.LVL74:
	.loc 1 395 0
	j	BasicGpt12Enc_IR_Encoder_turn
.LVL75:
.LFE733:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB734:
	.loc 1 399 0
	ret
.LFE734:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
.section .text.SrvControl,"ax",@progbits
	.align 1
	.global	SrvControl
	.type	SrvControl, @function
SrvControl:
.LFB735:
	.loc 1 406 0
.LVL76:
	.loc 1 407 0
	movh	%d15, 17112
	div.f	%d4, %d4, %d15
.LVL77:
	call	__extendsfdf2
.LVL78:
	mov	%e4, %d3, %d2
	movh	%d7, 16330
	movh	%d6, 39322
	addi	%d7, %d7, -26215
	addi	%d6, %d6, -26214
	call	__muldf3
.LVL79:
	mov	%e4, %d3, %d2
	imask	%e6, 0, 21, 9
	call	__adddf3
.LVL80:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL81:
	.loc 1 408 0
	mov	%d4, %d2
	j	IR_setSrvAngle
.LVL82:
.LFE735:
	.size	SrvControl, .-SrvControl
.section .text.AEB,"ax",@progbits
	.align 1
	.global	AEB
	.type	AEB, @function
AEB:
.LFB736:
	.loc 1 411 0
	.loc 1 412 0
	movh	%d4, 49024
	j	IR_setMotor0Vol
.LVL83:
.LFE736:
	.size	AEB, .-AEB
.section .text.Avoid,"ax",@progbits
	.align 1
	.global	Avoid
	.type	Avoid, @function
Avoid:
.LFB737:
	.loc 1 415 0
	.loc 1 416 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L89
	jne	%d15, 2, .L92
	.loc 1 421 0
	mov	%d4, 0
	j	IR_setSrvAngle
.LVL84:
.L92:
	ret
.L89:
	.loc 1 418 0
	movh	%d4, 16256
	j	IR_setSrvAngle
.LVL85:
.LFE737:
	.size	Avoid, .-Avoid
.section .text.appTaskfu_5ms,"ax",@progbits
	.align 1
	.global	appTaskfu_5ms
	.type	appTaskfu_5ms, @function
appTaskfu_5ms:
.LFB727:
	.loc 1 131 0
	.loc 1 133 0
	movh.a	%a15, hi:Obstacle_flag
	ld.w	%d15, [%a15] lo:Obstacle_flag
	jz	%d15, .L95
	.loc 1 135 0
	movh.a	%a12, hi:IR_LineData
	lea	%a12, [%a12] lo:IR_LineData
	ld.bu	%d15, [%a12] 594
	jz	%d15, .L103
	.loc 1 141 0
	call	Avoid
.LVL86:
	.loc 1 144 0
	movh.a	%a2, hi:WHICH_LANE
	ld.w	%d15, [%a2] lo:WHICH_LANE
	jeq	%d15, 1, .L97
	jne	%d15, 2, .L95
	.loc 1 153 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d4, [%a2] 4
.L102:
	.loc 1 146 0
	call	__extendsfdf2
.LVL87:
	movh	%d7, 16323
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62320
	call	__ltdf2
.LVL88:
	jgez	%d2, .L95
	.loc 1 147 0
	mov	%d15, 3
	st.w	[%a15] lo:Obstacle_flag, %d15
	.loc 1 148 0
	st.w	[%a12] 612, %d15
.L95:
	.loc 1 162 0
	call	GtmTomSrv_run
.LVL89:
	.loc 1 163 0
	j	GtmTomSrvScan_run
.LVL90:
.L103:
.LBB56:
.LBB57:
	.loc 1 412 0
	movh	%d4, 49024
	call	IR_setMotor0Vol
.LVL91:
.LBE57:
.LBE56:
	.loc 1 162 0
	call	GtmTomSrv_run
.LVL92:
	.loc 1 163 0
	j	GtmTomSrvScan_run
.LVL93:
.L97:
	.loc 1 146 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d4, [%a2] 8
	j	.L102
.LFE727:
	.size	appTaskfu_5ms, .-appTaskfu_5ms
	.global	TEMP_REMAIN
.section .bss.TEMP_REMAIN,"aw",@nobits
	.type	TEMP_REMAIN, @object
	.size	TEMP_REMAIN, 1
TEMP_REMAIN:
	.zero	1
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
	.word	1060320051
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
	.uaword	.LFB728
	.uaword	.LFE728-.LFB728
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB729
	.uaword	.LFE729-.LFB729
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB730
	.uaword	.LFE730-.LFB730
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB731
	.uaword	.LFE731-.LFB731
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB732
	.uaword	.LFE732-.LFB732
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB733
	.uaword	.LFE733-.LFB733
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB734
	.uaword	.LFE734-.LFB734
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB735
	.uaword	.LFE735-.LFB735
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB736
	.uaword	.LFE736-.LFB736
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB737
	.uaword	.LFE737-.LFB737
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB727
	.uaword	.LFE727-.LFB727
	.align 2
.LEFDE26:
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
	.file 12 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicVadcBgScan.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 14 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicPort.h"
	.file 15 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 16 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/AsclinShellInterface.h"
	.file 17 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/PID.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1a34
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"C:\\\\Users\\\\boldasl\\\\SEUNGHO\\\\Workspace\\\\GitHub\\\\testbench\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x18
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
	.uahalf	0x268
	.byte	0xa
	.byte	0x38
	.uaword	0xbae
	.uleb128 0x8
	.string	"Result"
	.byte	0xa
	.byte	0x39
	.uaword	0xbae
	.byte	0
	.uleb128 0x11
	.string	"Transfer"
	.byte	0xa
	.byte	0x3a
	.uaword	0xbbe
	.uahalf	0x208
	.uleb128 0x11
	.string	"sample"
	.byte	0xa
	.byte	0x3c
	.uaword	0xbce
	.uahalf	0x214
	.uleb128 0x11
	.string	"sample_RIGHT"
	.byte	0xa
	.byte	0x3d
	.uaword	0xbce
	.uahalf	0x228
	.uleb128 0x11
	.string	"temp"
	.byte	0xa
	.byte	0x3e
	.uaword	0x25f
	.uahalf	0x23c
	.uleb128 0x11
	.string	"previous"
	.byte	0xa
	.byte	0x40
	.uaword	0x251
	.uahalf	0x240
	.uleb128 0x11
	.string	"present"
	.byte	0xa
	.byte	0x41
	.uaword	0x251
	.uahalf	0x244
	.uleb128 0x11
	.string	"previous_RIGHT"
	.byte	0xa
	.byte	0x42
	.uaword	0x251
	.uahalf	0x248
	.uleb128 0x11
	.string	"present_RIGHT"
	.byte	0xa
	.byte	0x43
	.uaword	0x251
	.uahalf	0x24c
	.uleb128 0x11
	.string	"Direction_Determined"
	.byte	0xa
	.byte	0x45
	.uaword	0x26e
	.uahalf	0x250
	.uleb128 0x11
	.string	"Direction_Determined_RIGHT"
	.byte	0xa
	.byte	0x46
	.uaword	0x26e
	.uahalf	0x251
	.uleb128 0x11
	.string	"School_Zone_flag"
	.byte	0xa
	.byte	0x47
	.uaword	0x26e
	.uahalf	0x252
	.uleb128 0x11
	.string	"Dash_Left"
	.byte	0xa
	.byte	0x49
	.uaword	0x251
	.uahalf	0x254
	.uleb128 0x11
	.string	"Dash_Right"
	.byte	0xa
	.byte	0x4a
	.uaword	0x251
	.uahalf	0x258
	.uleb128 0x11
	.string	"Next_Lane"
	.byte	0xa
	.byte	0x4b
	.uaword	0x251
	.uahalf	0x25c
	.uleb128 0x11
	.string	"previous_servo"
	.byte	0xa
	.byte	0x4d
	.uaword	0x25f
	.uahalf	0x260
	.uleb128 0x11
	.string	"SchoolZone_Status"
	.byte	0xa
	.byte	0x4f
	.uaword	0x251
	.uahalf	0x264
	.byte	0
	.uleb128 0x12
	.uaword	0x1eb
	.uaword	0xbbe
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x81
	.byte	0
	.uleb128 0x12
	.uaword	0x1eb
	.uaword	0xbce
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uaword	0x251
	.uaword	0xbde
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"LineData"
	.byte	0xa
	.byte	0x50
	.uaword	0xa34
	.uleb128 0x14
	.byte	0x1
	.string	"SrvControl"
	.byte	0x1
	.uahalf	0x196
	.byte	0x1
	.byte	0x1
	.uaword	0xc21
	.uleb128 0x15
	.string	"diff"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x25f
	.uleb128 0x16
	.string	"result"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x25f
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"AEB"
	.byte	0x1
	.uahalf	0x19b
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.uaword	.LFB724
	.uaword	.LFE724
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc99
	.uleb128 0x19
	.uaword	.LVL0
	.uaword	0x15d4
	.uleb128 0x19
	.uaword	.LVL1
	.uaword	0x15ed
	.uleb128 0x19
	.uaword	.LVL2
	.uaword	0x1602
	.uleb128 0x19
	.uaword	.LVL3
	.uaword	0x1619
	.uleb128 0x19
	.uaword	.LVL4
	.uaword	0x1634
	.uleb128 0x19
	.uaword	.LVL5
	.uaword	0x164d
	.uleb128 0x19
	.uaword	.LVL6
	.uaword	0x166d
	.uleb128 0x1a
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x167c
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB725
	.uaword	.LFE725
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd3f
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4a
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xcce
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL8
	.uaword	0x1695
	.uleb128 0x19
	.uaword	.LVL9
	.uaword	0x16ad
	.uleb128 0x19
	.uaword	.LVL10
	.uaword	0x16c0
	.uleb128 0x19
	.uaword	.LVL11
	.uaword	0x16da
	.uleb128 0x19
	.uaword	.LVL12
	.uaword	0x16f1
	.uleb128 0x19
	.uaword	.LVL13
	.uaword	0x1695
	.uleb128 0x19
	.uaword	.LVL14
	.uaword	0x16ad
	.uleb128 0x19
	.uaword	.LVL15
	.uaword	0x1716
	.uleb128 0x19
	.uaword	.LVL16
	.uaword	0x1726
	.uleb128 0x19
	.uaword	.LVL17
	.uaword	0x1741
	.uleb128 0x1d
	.uaword	.LVL18
	.uaword	0x175b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf000000
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"appTaskfu_20ms"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd7e
	.uleb128 0x19
	.uaword	.LVL19
	.uaword	0x177b
	.uleb128 0x19
	.uaword	.LVL20
	.uaword	0x179e
	.uleb128 0x19
	.uaword	.LVL21
	.uaword	0x17c2
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"Lane_Direction"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1079
	.uleb128 0x20
	.uaword	0xbee
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.byte	0xa8
	.uaword	0xdc9
	.uleb128 0x21
	.uaword	0xc04
	.uleb128 0x22
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0x23
	.uaword	0xc11
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xbee
	.uaword	.LBB36
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb8
	.uaword	0xdff
	.uleb128 0x25
	.uaword	0xc04
	.uaword	.LLST0
	.uleb128 0x26
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x27
	.uaword	0xc11
	.uaword	.LLST1
	.uleb128 0x1a
	.uaword	.LVL34
	.byte	0x1
	.uaword	0x17d5
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0xbee
	.uaword	.LBB39
	.uaword	.LBE39
	.byte	0x1
	.uahalf	0x10e
	.uaword	0xe39
	.uleb128 0x25
	.uaword	0xc04
	.uaword	.LLST2
	.uleb128 0x22
	.uaword	.LBB40
	.uaword	.LBE40
	.uleb128 0x27
	.uaword	0xc11
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LVL36
	.uaword	0x17d5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xbee
	.uaword	.LBB42
	.uaword	.LBE42
	.byte	0x1
	.byte	0xe2
	.uaword	0xe7f
	.uleb128 0x25
	.uaword	0xc04
	.uaword	.LLST4
	.uleb128 0x22
	.uaword	.LBB43
	.uaword	.LBE43
	.uleb128 0x27
	.uaword	0xc11
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	.LVL45
	.uaword	0x17d5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f000000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xbee
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.byte	0xbd
	.uaword	0xec6
	.uleb128 0x25
	.uaword	0xc04
	.uaword	.LLST6
	.uleb128 0x22
	.uaword	.LBB45
	.uaword	.LBE45
	.uleb128 0x27
	.uaword	0xc11
	.uaword	.LLST7
	.uleb128 0x29
	.uaword	.LVL47
	.byte	0x1
	.uaword	0x17d5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f000000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0xbee
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.uahalf	0x10a
	.uaword	0xf00
	.uleb128 0x25
	.uaword	0xc04
	.uaword	.LLST8
	.uleb128 0x22
	.uaword	.LBB47
	.uaword	.LBE47
	.uleb128 0x27
	.uaword	0xc11
	.uaword	.LLST9
	.uleb128 0x19
	.uaword	.LVL48
	.uaword	0x17d5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xbee
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.byte	0xc6
	.uaword	0xf39
	.uleb128 0x25
	.uaword	0xc04
	.uaword	.LLST10
	.uleb128 0x22
	.uaword	.LBB49
	.uaword	.LBE49
	.uleb128 0x27
	.uaword	0xc11
	.uaword	.LLST11
	.uleb128 0x19
	.uaword	.LVL53
	.uaword	0x17d5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xbee
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0xd2
	.uaword	0xf73
	.uleb128 0x25
	.uaword	0xc04
	.uaword	.LLST12
	.uleb128 0x22
	.uaword	.LBB51
	.uaword	.LBE51
	.uleb128 0x27
	.uaword	0xc11
	.uaword	.LLST13
	.uleb128 0x1a
	.uaword	.LVL56
	.byte	0x1
	.uaword	0x17d5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xbee
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.byte	0xc1
	.uaword	0xfac
	.uleb128 0x25
	.uaword	0xc04
	.uaword	.LLST14
	.uleb128 0x22
	.uaword	.LBB53
	.uaword	.LBE53
	.uleb128 0x27
	.uaword	0xc11
	.uaword	.LLST15
	.uleb128 0x19
	.uaword	.LVL57
	.uaword	0x17d5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0xbee
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0xb1
	.uaword	0xfe6
	.uleb128 0x25
	.uaword	0xc04
	.uaword	.LLST16
	.uleb128 0x22
	.uaword	.LBB55
	.uaword	.LBE55
	.uleb128 0x27
	.uaword	0xc11
	.uaword	.LLST17
	.uleb128 0x1a
	.uaword	.LVL59
	.byte	0x1
	.uaword	0x17d5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL22
	.uaword	0x17f4
	.uleb128 0x19
	.uaword	.LVL23
	.uaword	0x180b
	.uleb128 0x19
	.uaword	.LVL24
	.uaword	0x1828
	.uleb128 0x19
	.uaword	.LVL25
	.uaword	0x1841
	.uleb128 0x19
	.uaword	.LVL26
	.uaword	0x185f
	.uleb128 0x19
	.uaword	.LVL27
	.uaword	0x1876
	.uleb128 0x19
	.uaword	.LVL37
	.uaword	0x1897
	.uleb128 0x1a
	.uaword	.LVL38
	.byte	0x1
	.uaword	0x18a6
	.uleb128 0x19
	.uaword	.LVL39
	.uaword	0x18b7
	.uleb128 0x19
	.uaword	.LVL40
	.uaword	0x18ca
	.uleb128 0x19
	.uaword	.LVL41
	.uaword	0x18e3
	.uleb128 0x19
	.uaword	.LVL42
	.uaword	0x18fb
	.uleb128 0x19
	.uaword	.LVL50
	.uaword	0x1916
	.uleb128 0x19
	.uaword	.LVL51
	.uaword	0x192d
	.uleb128 0x19
	.uaword	.LVL60
	.uaword	0x1897
	.uleb128 0x1a
	.uaword	.LVL61
	.byte	0x1
	.uaword	0x18a6
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"Lane_Scanning"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10b9
	.uleb128 0x19
	.uaword	.LVL66
	.uaword	0x194a
	.uleb128 0x19
	.uaword	.LVL67
	.uaword	0x1962
	.uleb128 0x1a
	.uaword	.LVL68
	.byte	0x1
	.uaword	0x1976
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.uahalf	0x137
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x110d
	.uleb128 0x19
	.uaword	.LVL69
	.uaword	0x175b
	.uleb128 0x19
	.uaword	.LVL70
	.uaword	0x198b
	.uleb128 0x1a
	.uaword	.LVL71
	.byte	0x1
	.uaword	0x199f
	.uleb128 0x19
	.uaword	.LVL72
	.uaword	0x19c6
	.uleb128 0x1a
	.uaword	.LVL73
	.byte	0x1
	.uaword	0x199f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.uahalf	0x15a
	.byte	0x1
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.uahalf	0x170
	.byte	0x1
	.uaword	.LFB732
	.uaword	.LFE732
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.uahalf	0x184
	.byte	0x1
	.uaword	.LFB733
	.uaword	.LFE733
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x119c
	.uleb128 0x2c
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x1188
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL74
	.uaword	0x19e2
	.uleb128 0x1a
	.uaword	.LVL75
	.byte	0x1
	.uaword	0x1a01
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.uahalf	0x18f
	.byte	0x1
	.uaword	.LFB734
	.uaword	.LFE734
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2d
	.uaword	0xbee
	.uaword	.LFB735
	.uaword	.LFE735
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x11eb
	.uleb128 0x25
	.uaword	0xc04
	.uaword	.LLST18
	.uleb128 0x27
	.uaword	0xc11
	.uaword	.LLST19
	.uleb128 0x1a
	.uaword	.LVL82
	.byte	0x1
	.uaword	0x17d5
	.byte	0
	.uleb128 0x2e
	.uaword	0xc21
	.uaword	.LFB736
	.uaword	.LFE736
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1217
	.uleb128 0x29
	.uaword	.LVL83
	.byte	0x1
	.uaword	0x175b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"Avoid"
	.byte	0x1
	.uahalf	0x19f
	.byte	0x1
	.uaword	.LFB737
	.uaword	.LFE737
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1265
	.uleb128 0x2f
	.uaword	.LVL84
	.byte	0x1
	.uaword	0x17d5
	.uaword	0x124d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL85
	.byte	0x1
	.uaword	0x17d5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f800000
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"appTaskfu_5ms"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1307
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa2
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x129a
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa3
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x12ad
	.uleb128 0x1c
	.byte	0
	.uleb128 0x20
	.uaword	0xc21
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0x88
	.uaword	0x12d7
	.uleb128 0x1d
	.uaword	.LVL91
	.uaword	0x175b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL86
	.uaword	0x1217
	.uleb128 0x19
	.uaword	.LVL89
	.uaword	0x1a15
	.uleb128 0x1a
	.uaword	.LVL90
	.byte	0x1
	.uaword	0x1a28
	.uleb128 0x19
	.uaword	.LVL92
	.uaword	0x1a15
	.uleb128 0x1a
	.uaword	.LVL93
	.byte	0x1
	.uaword	0x1a28
	.byte	0
	.uleb128 0x30
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x30
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x30
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x30
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x12
	.uaword	0x312
	.uaword	0x1381
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x2
	.byte	0
	.uleb128 0x31
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0x139e
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.uaword	0x1371
	.uleb128 0x31
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x251
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x25f
	.uaword	0x13cb
	.uleb128 0x33
	.byte	0
	.uleb128 0x31
	.string	"IR_AdcResult"
	.byte	0xc
	.byte	0x29
	.uaword	0x13c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"IR_Encoder"
	.byte	0x8
	.byte	0x2d
	.uaword	0x987
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"Ifx_g_console"
	.byte	0x9
	.byte	0x2c
	.uaword	0x9cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"IR_Ctrl"
	.byte	0xa
	.byte	0x55
	.uaword	0xa1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"IR_LineData"
	.byte	0xa
	.byte	0x56
	.uaword	0xbde
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x34
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x34
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x34
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x34
	.string	"testVol"
	.byte	0x1
	.byte	0xd
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testVol
	.uleb128 0x34
	.string	"testSrv"
	.byte	0x1
	.byte	0xe
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSrv
	.uleb128 0x34
	.string	"signORunsign"
	.byte	0x1
	.byte	0xf
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	signORunsign
	.uleb128 0x34
	.string	"Obstacle_flag"
	.byte	0x1
	.byte	0x10
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Obstacle_flag
	.uleb128 0x34
	.string	"Speed_Out_Of_School_Zone"
	.byte	0x1
	.byte	0x11
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_Out_Of_School_Zone
	.uleb128 0x34
	.string	"P"
	.byte	0x1
	.byte	0x12
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	P
	.uleb128 0x34
	.string	"I"
	.byte	0x1
	.byte	0x12
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	I
	.uleb128 0x34
	.string	"D"
	.byte	0x1
	.byte	0x12
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	D
	.uleb128 0x34
	.string	"time"
	.byte	0x1
	.byte	0x13
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	time
	.uleb128 0x34
	.string	"speed_min"
	.byte	0x1
	.byte	0x14
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_min
	.uleb128 0x34
	.string	"speed_max"
	.byte	0x1
	.byte	0x14
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_max
	.uleb128 0x34
	.string	"WHICH_LANE"
	.byte	0x1
	.byte	0x15
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WHICH_LANE
	.uleb128 0x34
	.string	"TEMP_REMAIN"
	.byte	0x1
	.byte	0x16
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TEMP_REMAIN
	.uleb128 0x35
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xd
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xe
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0xf
	.byte	0x7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xc
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0x8
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0x10
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"PID_init"
	.byte	0x11
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0xa
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicGpt12Enc_run"
	.byte	0x8
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4a
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x16c0
	.uleb128 0x1c
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xc
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"Checking_PSD"
	.byte	0xc
	.byte	0x32
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicGpt12Enc_IR_Encoder_reset"
	.byte	0x8
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"Speed_Avg"
	.byte	0x8
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"SpeedCalculation"
	.byte	0x8
	.byte	0x37
	.byte	0x1
	.uaword	0x25f
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"get_Speed"
	.byte	0x11
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.uaword	0x175b
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0xf
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x177b
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IsInSchoolZone_THRESHOLD"
	.byte	0xa
	.byte	0x85
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IsOutSchoolZone_THRESHOLD"
	.byte	0xa
	.byte	0x84
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"get_Dash"
	.byte	0xa
	.byte	0x76
	.byte	0x1
	.uaword	0x251
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0xf
	.byte	0x78
	.byte	0x1
	.byte	0x1
	.uaword	0x17f4
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"is_THRESHOLD"
	.byte	0xa
	.byte	0x71
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"is_THRESHOLD_RIGHT"
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"Boundary_RIGHT"
	.byte	0xa
	.byte	0x8f
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"Over_Boundary_RIGHT"
	.byte	0xa
	.byte	0x94
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"isEndOfRIGHT"
	.byte	0xa
	.byte	0x8a
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"Direction_CENTER_RIGHT"
	.byte	0xa
	.byte	0x99
	.byte	0x1
	.uaword	0x25f
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"resetPSD"
	.byte	0xc
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"clear_Dash"
	.byte	0xa
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"Boundary"
	.byte	0xa
	.byte	0x88
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"Over_Boundary2"
	.byte	0xa
	.byte	0x92
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"Over_Boundary"
	.byte	0xa
	.byte	0x91
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"Direction_CENTER"
	.byte	0xa
	.byte	0x98
	.byte	0x1
	.uaword	0x25f
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"is_WIDE_LANE"
	.byte	0xa
	.byte	0x8b
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"is_WIDE_LANE_RIGHT"
	.byte	0xa
	.byte	0x8c
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xd
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"median_filter"
	.byte	0xa
	.byte	0x65
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"threshold_LINE"
	.byte	0xa
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xe
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"AsclinShellInterface_runLineScan"
	.byte	0x10
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0xa
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0x10
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x1a15
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa2
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x1a28
	.uleb128 0x1c
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa3
	.uaword	0x1eb
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2e
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b7
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x42d80000
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x1c0
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0x3fc99999
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0
	.uaword	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x25
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0xf7
	.uleb128 0x1c0
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0x3fc99999
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0
	.uaword	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3ea12f68
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL61
	.uaword	.LFE728
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	.LVL61
	.uaword	.LFE728
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f2f684c
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3ea12f68
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f2f684c
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f2f684c
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3ea12f68
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LFE735
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x2e
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
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0x3fc99999
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0
	.uaword	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78-1
	.uahalf	0x25
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0xf7
	.uleb128 0x1c0
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0x3fc99999
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0
	.uaword	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	.LVL78-1
	.uaword	.LFE735
	.uahalf	0x30
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
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0x3fc99999
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0
	.uaword	0x3fe00000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x84
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
	.uaword	.LFB736
	.uaword	.LFE736-.LFB736
	.uaword	.LFB737
	.uaword	.LFE737-.LFB737
	.uaword	.LFB727
	.uaword	.LFE727-.LFB727
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0
	.uaword	0
	.uaword	.LFB724
	.uaword	.LFE724
	.uaword	.LFB725
	.uaword	.LFE725
	.uaword	.LFB726
	.uaword	.LFE726
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
	.uaword	.LFB736
	.uaword	.LFE736
	.uaword	.LFB737
	.uaword	.LFE737
	.uaword	.LFB727
	.uaword	.LFE727
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"BasicGpt12Enc_IR_Encoder_turn"
.LASF3:
	.string	"GtmTomSrvScan_run"
.LASF2:
	.string	"GtmTomSrv_run"
.LASF0:
	.string	"Speed_Buff"
	.extern	GtmTomSrvScan_run,STT_FUNC,0
	.extern	GtmTomSrv_run,STT_FUNC,0
	.extern	BasicGpt12Enc_IR_Encoder_turn,STT_FUNC,0
	.extern	AsclinShellInterface_run,STT_FUNC,0
	.extern	InfineonRacer_control,STT_FUNC,0
	.extern	AsclinShellInterface_runLineScan,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	threshold_LINE,STT_FUNC,0
	.extern	median_filter,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	IR_AdcResult,STT_OBJECT,-1
	.extern	is_WIDE_LANE_RIGHT,STT_FUNC,0
	.extern	is_WIDE_LANE,STT_FUNC,0
	.extern	Direction_CENTER,STT_FUNC,0
	.extern	Over_Boundary,STT_FUNC,0
	.extern	Over_Boundary2,STT_FUNC,0
	.extern	Boundary,STT_FUNC,0
	.extern	clear_Dash,STT_FUNC,0
	.extern	resetPSD,STT_FUNC,0
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	Direction_CENTER_RIGHT,STT_FUNC,0
	.extern	isEndOfRIGHT,STT_FUNC,0
	.extern	Over_Boundary_RIGHT,STT_FUNC,0
	.extern	Boundary_RIGHT,STT_FUNC,0
	.extern	is_THRESHOLD_RIGHT,STT_FUNC,0
	.extern	is_THRESHOLD,STT_FUNC,0
	.extern	get_Dash,STT_FUNC,0
	.extern	IsOutSchoolZone_THRESHOLD,STT_FUNC,0
	.extern	IsInSchoolZone_THRESHOLD,STT_FUNC,0
	.extern	IR_LineData,STT_OBJECT,616
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	get_Speed,STT_FUNC,0
	.extern	SpeedCalculation,STT_FUNC,0
	.extern	Speed_Avg,STT_FUNC,0
	.extern	BasicGpt12Enc_IR_Encoder_reset,STT_FUNC,0
	.extern	Checking_PSD,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	Speed_Buff,STT_FUNC,0
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
