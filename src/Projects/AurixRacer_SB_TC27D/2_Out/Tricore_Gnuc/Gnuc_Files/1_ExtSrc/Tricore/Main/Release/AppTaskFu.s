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
	.loc 1 31 0
	.loc 1 45 0
	mov	%d15, 0
	movh.a	%a15, hi:IR_Encoder
	.loc 1 32 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 45 0
	lea	%a15, [%a15] lo:IR_Encoder
	.loc 1 33 0
	call	BasicPort_init
.LVL1:
	.loc 1 34 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 35 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 36 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 37 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 38 0
	call	PID_init
.LVL6:
	.loc 1 45 0
	st.w	[%a15] 16, %d15
	.loc 1 55 0
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
	.loc 1 64 0
	.loc 1 65 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 69 0
	mov	%d2, 1000
	.loc 1 65 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1m, %d15
	.loc 1 69 0
	jeq	%d15, %d2, .L7
	.loc 1 75 0
	mov	%d2, 100
	div	%e2, %d15, %d2
	jz	%d3, .L4
	.loc 1 80 0
	call	BasicGpt12Enc_run
.LVL8:
	.loc 1 85 0
	j	Speed_Buff
.LVL9:
.L7:
	.loc 1 71 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1m, %d15
.L4:
	.loc 1 76 0
	call	BasicGpt12Enc_IR_Encoder_reset
.LVL10:
	.loc 1 80 0
	call	BasicGpt12Enc_run
.LVL11:
	.loc 1 85 0
	j	Speed_Buff
.LVL12:
.LFE725:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
.section .text.appTaskfu_10_3ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10_3ms
	.type	appTaskfu_10_3ms, @function
appTaskfu_10_3ms:
.LFB726:
	.loc 1 92 0
	ret
.LFE726:
	.size	appTaskfu_10_3ms, .-appTaskfu_10_3ms
.section .text.appTaskfu_10_5ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10_5ms
	.type	appTaskfu_10_5ms, @function
appTaskfu_10_5ms:
.LFB727:
	.loc 1 93 0
	ret
.LFE727:
	.size	appTaskfu_10_5ms, .-appTaskfu_10_5ms
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB729:
	.loc 1 476 0
	.loc 1 477 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 485 0
	mov	%d2, 1000
	.loc 1 477 0
	add	%d15, 1
	.loc 1 485 0
	jne	%d15, %d2, .L13
	.loc 1 486 0
	mov	%d15, 0
.L13:
	st.w	[%a15] lo:task_cnt_100m, %d15
	ret
.LFE729:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB730:
	.loc 1 502 0
	.loc 1 503 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 530 0
	mov	%d2, 1000
	.loc 1 503 0
	add	%d15, 1
	.loc 1 530 0
	jne	%d15, %d2, .L17
	.loc 1 531 0
	mov	%d15, 0
.L17:
	st.w	[%a15] lo:task_cnt_1000m, %d15
	ret
.LFE730:
	.size	appTaskfu_1000ms, .-appTaskfu_1000ms
.section .text.appTaskfu_idle,"ax",@progbits
	.align 1
	.global	appTaskfu_idle
	.type	appTaskfu_idle, @function
appTaskfu_idle:
.LFB731:
	.loc 1 542 0
	.loc 1 543 0
	call	AsclinShellInterface_run
.LVL13:
	.loc 1 549 0
	j	BasicGpt12Enc_IR_Encoder_turn
.LVL14:
.LFE731:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB732:
	.loc 1 553 0
	ret
.LFE732:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
	.global	__extendsfdf2
	.global	__muldf3
	.global	__adddf3
	.global	__truncdfsf2
.section .text.SrvControl,"ax",@progbits
	.align 1
	.global	SrvControl
	.type	SrvControl, @function
SrvControl:
.LFB733:
	.loc 1 560 0
.LVL15:
	.loc 1 563 0
	mov	%d15, 0
	cmp.f	%d15, %d4, %d15
	jz.t	%d15, 2, .L25
	.loc 1 564 0
	movh	%d15, 16672
.L26:
	.loc 1 567 0
	div.f	%d4, %d4, %d15
.LVL16:
	call	__extendsfdf2
.LVL17:
	mov	%e4, %d3, %d2
	imask	%e6, 0, 21, 9
	call	__muldf3
.LVL18:
	mov	%e4, %d3, %d2
	imask	%e6, 0, 21, 9
	call	__adddf3
.LVL19:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL20:
	mov	%d4, %d2
.LVL21:
	.loc 1 569 0
	j	IR_setSrvAngle
.LVL22:
.L25:
	.loc 1 567 0
	movh	%d15, 17096
	j	.L26
.LFE733:
	.size	SrvControl, .-SrvControl
.section .text.AEB,"ax",@progbits
	.align 1
	.global	AEB
	.type	AEB, @function
AEB:
.LFB734:
	.loc 1 574 0
	.loc 1 575 0
	movh	%d4, 49024
	j	IR_setMotor0Vol
.LVL23:
.LFE734:
	.size	AEB, .-AEB
.section .text.Avoid,"ax",@progbits
	.align 1
	.global	Avoid
	.type	Avoid, @function
Avoid:
.LFB735:
	.loc 1 578 0
	.loc 1 579 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L30
	jne	%d15, 2, .L33
	.loc 1 584 0
	movh	%d4, 16256
	j	IR_setSrvAngle
.LVL24:
.L33:
	ret
.L30:
	.loc 1 581 0
	mov	%d4, 0
	j	IR_setSrvAngle
.LVL25:
.LFE735:
	.size	Avoid, .-Avoid
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB728:
	.loc 1 99 0
	.loc 1 100 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	.loc 1 102 0
	movh.a	%a2, hi:Speed_Out_Of_School_Zone
	.loc 1 100 0
	add	%d15, 1
	.loc 1 102 0
	ld.w	%d4, [%a2] lo:Speed_Out_Of_School_Zone
	movh.a	%a12, hi:IR_LineData
	.loc 1 100 0
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 102 0
	call	IR_setMotor0Vol
.LVL26:
	.loc 1 117 0
	call	BasicVadcBgScan_run
.LVL27:
	.loc 1 119 0
	call	Checking_PSD
.LVL28:
	lea	%a12, [%a12] lo:IR_LineData
	jz	%d2, .L36
	.loc 1 120 0
	mov	%d15, 1
	.loc 1 121 0
	movh.a	%a12, hi:IR_LineData
	lea	%a12, [%a12] lo:IR_LineData
	.loc 1 120 0
	movh.a	%a13, hi:Obstacle_flag
	st.w	[%a13] lo:Obstacle_flag, %d15
	.loc 1 121 0
	st.w	[%a12] 608, %d15
	.loc 1 123 0
	ld.bu	%d15, [%a12] 594
	jnz	%d15, .L37
.LBB52:
.LBB53:
	.loc 1 575 0
	movh	%d4, 49024
	call	IR_setMotor0Vol
.LVL29:
.L36:
.LBE53:
.LBE52:
	.loc 1 156 0
	call	BasicLineScan_run
.LVL30:
	.loc 1 158 0
	call	median_filter
.LVL31:
	.loc 1 167 0
	call	threshold_LINE
.LVL32:
	.loc 1 170 0
	ld.bu	%d15, [%a12] 594
	jnz	%d15, .L110
.L43:
	.loc 1 204 0
	ld.w	%d4, [%a15] lo:task_cnt_10m
	mov	%d2, 50
	div	%e2, %d4, %d2
	.loc 1 205 0
	movh.a	%a2, hi:TEMP_REMAIN
	.loc 1 204 0
	jnz	%d3, .L46
	.loc 1 205 0
	st.b	[%a2] lo:TEMP_REMAIN, %d3
.L47:
	.loc 1 211 0
	movh.a	%a13, hi:Obstacle_flag
	ld.w	%d15, [%a13] lo:Obstacle_flag
	jz	%d15, .L111
	.loc 1 313 0
	jeq	%d15, 3, .L112
	.loc 1 340 0
	jeq	%d15, 4, .L113
.L48:
	.loc 1 372 0
	call	clearBuffer
.LVL33:
	.loc 1 373 0
	call	clearBuffer_RIGHT
.LVL34:
	.loc 1 450 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jeq	%d15, %d2, .L114
.L73:
	.loc 1 454 0
	jz.t	%d15, 0, .L74
	ret
.L37:
	.loc 1 129 0
	call	Avoid
.LVL35:
	.loc 1 132 0
	movh.a	%a2, hi:WHICH_LANE
	ld.w	%d15, [%a2] lo:WHICH_LANE
	jeq	%d15, 1, .L38
	jne	%d15, 2, .L36
	.loc 1 141 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d15, [%a2] 4
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L36
.L42:
	.loc 1 135 0
	mov	%d15, 3
	st.w	[%a13] lo:Obstacle_flag, %d15
	.loc 1 136 0
	st.w	[%a12] 608, %d15
	j	.L36
.L46:
	.loc 1 208 0
	ld.bu	%d15, [%a2] lo:TEMP_REMAIN
	jz	%d15, .L47
.L53:
.LVL36:
.LBB54:
.LBB55:
	.loc 1 569 0
	movh	%d4, 16128
	call	IR_setSrvAngle
.LVL37:
.LBE55:
.LBE54:
	.loc 1 372 0
	call	clearBuffer
.LVL38:
	.loc 1 373 0
	call	clearBuffer_RIGHT
.LVL39:
	.loc 1 450 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jne	%d15, %d2, .L73
.LVL40:
.L114:
	.loc 1 451 0
	mov	%d15, 0
	movh.a	%a15, hi:task_cnt_10m
	st.w	[%a15] lo:task_cnt_10m, %d15
.L74:
	.loc 1 457 0
	movh.a	%a15, hi:IR_Srv
	.loc 1 456 0
	call	BasicGtmTom_run
.LVL41:
	.loc 1 457 0
	ld.w	%d15, [%a15] lo:IR_Srv
	.loc 1 461 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 457 0
	st.w	[%a12] 612, %d15
	.loc 1 458 0
	call	BasicPort_run
.LVL42:
	.loc 1 461 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L115
	.loc 1 470 0
	j	AsclinShellInterface_runLineScan
.LVL43:
.L110:
	.loc 1 172 0
	call	get_Dash
.LVL44:
	jeq	%d2, 1, .L44
	jne	%d2, 2, .L43
	.loc 1 178 0
	mov	%d15, 1
	movh.a	%a2, hi:WHICH_LANE
	st.w	[%a2] lo:WHICH_LANE, %d15
	.loc 1 179 0
	j	.L43
.L111:
	.loc 1 212 0
	call	left_FIRST
.LVL45:
	jz	%d2, .L50
	.loc 1 213 0
	call	is_THRESHOLD
.LVL46:
	jnz	%d2, .L51
	.loc 1 214 0
	call	is_THRESHOLD_RIGHT
.LVL47:
	jz	%d2, .L52
.L109:
	.loc 1 215 0
	call	Boundary_RIGHT
.LVL48:
	jz	%d2, .L53
	.loc 1 216 0
	call	Over_Boundary_RIGHT
.LVL49:
	jnz	%d2, .L52
	.loc 1 221 0
	call	isEndOfRIGHT
.LVL50:
	jz	%d2, .L55
.L59:
.LVL51:
.LBB56:
.LBB57:
	.loc 1 569 0
	mov	%d4, 0
	call	IR_setSrvAngle
.LVL52:
	j	.L48
.LVL53:
.L115:
.LBE57:
.LBE56:
	.loc 1 463 0
	call	InfineonRacer_control
.LVL54:
	.loc 1 470 0
	j	AsclinShellInterface_runLineScan
.LVL55:
.L50:
	.loc 1 255 0
	call	is_THRESHOLD_RIGHT
.LVL56:
	jnz	%d2, .L109
	.loc 1 256 0
	call	is_THRESHOLD
.LVL57:
	jz	%d2, .L58
	.loc 1 257 0
	call	Boundary
.LVL58:
	jz	%d2, .L59
	.loc 1 258 0
	call	Over_Boundary
.LVL59:
	jnz	%d2, .L55
	.loc 1 263 0
	call	isEndOfLEFT
.LVL60:
	jnz	%d2, .L60
.L106:
	.loc 1 267 0
	call	Direction_CENTER
.LVL61:
	mov	%d4, %d2
	call	SrvControl
.LVL62:
	j	.L48
.L44:
	.loc 1 175 0
	mov	%d15, 2
	movh.a	%a2, hi:WHICH_LANE
	st.w	[%a2] lo:WHICH_LANE, %d15
	.loc 1 176 0
	j	.L43
.L38:
	.loc 1 134 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d15, [%a2] 8
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L36
	j	.L42
.L112:
.LVL63:
.LBB58:
.LBB59:
	.loc 1 569 0
	movh	%d4, 16128
	call	IR_setSrvAngle
.LVL64:
.LBE59:
.LBE58:
	.loc 1 317 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 15
	div	%e2, %d15, %d2
	jnz	%d3, .L48
	.loc 1 319 0
	movh.a	%a2, hi:WHICH_LANE
	ld.w	%d15, [%a2] lo:WHICH_LANE
	jeq	%d15, 1, .L63
	jne	%d15, 2, .L48
	.loc 1 329 0
	movh.a	%a3, hi:IR_AdcResult
	lea	%a3, [%a3] lo:IR_AdcResult
	ld.w	%d15, [%a3] 8
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L48
	.loc 1 330 0
	mov	%d15, 4
	st.w	[%a13] lo:Obstacle_flag, %d15
	.loc 1 331 0
	st.w	[%a12] 608, %d15
	.loc 1 332 0
	mov	%d15, 1
	st.w	[%a2] lo:WHICH_LANE, %d15
	j	.L48
.LVL65:
.L113:
	.loc 1 342 0
	movh.a	%a14, hi:WHICH_LANE
	ld.w	%d15, [%a14] lo:WHICH_LANE
	jeq	%d15, 1, .L69
	jeq	%d15, 2, .L70
.L68:
	.loc 1 352 0
	mov	%d15, 15
	div	%e4, %d4, %d15
	jnz	%d5, .L48
	.loc 1 353 0
	ld.w	%d2, [%a14] lo:WHICH_LANE
	jeq	%d2, 1, .L71
	jne	%d2, 2, .L48
	.loc 1 364 0
	mov	%d15, 1
	movh.a	%a2, hi:WHICH_LANE
	.loc 1 362 0
	st.w	[%a13] lo:Obstacle_flag, %d5
	.loc 1 363 0
	st.w	[%a12] 608, %d5
	.loc 1 364 0
	st.w	[%a2] lo:WHICH_LANE, %d15
	.loc 1 365 0
	call	resetPSD
.LVL66:
	.loc 1 366 0
	call	clear_Dash
.LVL67:
	.loc 1 367 0
	j	.L48
.L51:
	.loc 1 238 0
	call	Boundary
.LVL68:
	jz	%d2, .L53
	.loc 1 239 0
	call	Over_Boundary
.LVL69:
	jnz	%d2, .L55
	.loc 1 242 0
	call	Over_Boundary2
.LVL70:
	jz	%d2, .L106
.L60:
.LVL71:
.LBB60:
.LBB61:
	.loc 1 569 0
	movh	%d4, 16448
	call	IR_setSrvAngle
.LVL72:
	j	.L48
.LVL73:
.L70:
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	mov	%d4, 0
	call	IR_setSrvAngle
.LVL74:
	ld.w	%d4, [%a15] lo:task_cnt_10m
	j	.L68
.LVL75:
.L52:
.LBE63:
.LBE62:
.LBB64:
.LBB65:
	movh	%d4, 16560
	call	IR_setSrvAngle
.LVL76:
	j	.L48
.LVL77:
.L58:
.LBE65:
.LBE64:
	.loc 1 275 0
	call	Boundary_RIGHT
.LVL78:
	jz	%d2, .L53
	.loc 1 276 0
	call	Over_Boundary_RIGHT
.LVL79:
	jnz	%d2, .L60
.LBB66:
	.loc 1 279 0
	call	Over_Boundary_RIGHT2
.LVL80:
	jnz	%d2, .L55
	.loc 1 283 0
	call	Direction_CENTER_RIGHT
.LVL81:
	mov	%d4, %d2
	call	SrvControl
.LVL82:
	j	.L48
.L71:
.LBE66:
	.loc 1 355 0
	st.w	[%a13] lo:Obstacle_flag, %d5
	.loc 1 356 0
	st.w	[%a12] 608, %d5
	.loc 1 357 0
	call	resetPSD
.LVL83:
	.loc 1 358 0
	call	clear_Dash
.LVL84:
	.loc 1 359 0
	j	.L48
.L69:
.LVL85:
.LBB67:
.LBB68:
	.loc 1 569 0
	movh	%d4, 16560
	call	IR_setSrvAngle
.LVL86:
	ld.w	%d4, [%a15] lo:task_cnt_10m
	j	.L68
.LVL87:
.L55:
.LBE68:
.LBE67:
.LBB69:
.LBB70:
	movh	%d4, 16000
	call	IR_setSrvAngle
.LVL88:
	j	.L48
.LVL89:
.L63:
.LBE70:
.LBE69:
	.loc 1 321 0
	movh.a	%a3, hi:IR_AdcResult
	lea	%a3, [%a3] lo:IR_AdcResult
	ld.w	%d15, [%a3] 4
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L48
	.loc 1 322 0
	mov	%d15, 4
	st.w	[%a13] lo:Obstacle_flag, %d15
	.loc 1 323 0
	st.w	[%a12] 608, %d15
	.loc 1 324 0
	mov	%d15, 2
	st.w	[%a2] lo:WHICH_LANE, %d15
	j	.L48
.LFE728:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
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
	.global	Speed_swap
.section .bss.Speed_swap,"aw",@nobits
	.align 2
	.type	Speed_swap, @object
	.size	Speed_swap, 4
Speed_swap:
	.zero	4
	.global	Speed_In_School_Zone
.section .data.Speed_In_School_Zone,"aw",@progbits
	.align 2
	.type	Speed_In_School_Zone, @object
	.size	Speed_In_School_Zone, 4
Speed_In_School_Zone:
	.word	-1087163597
	.global	Speed_Out_Of_School_Zone
.section .data.Speed_Out_Of_School_Zone,"aw",@progbits
	.align 2
	.type	Speed_Out_Of_School_Zone, @object
	.size	Speed_Out_Of_School_Zone, 4
Speed_Out_Of_School_Zone:
	.word	-1087163597
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
	.global	task_flag_10_5m
.section .bss.task_flag_10_5m,"aw",@nobits
	.type	task_flag_10_5m, @object
	.size	task_flag_10_5m, 1
task_flag_10_5m:
	.zero	1
	.global	task_flag_10_3m
.section .bss.task_flag_10_3m,"aw",@nobits
	.type	task_flag_10_3m, @object
	.size	task_flag_10_3m, 1
task_flag_10_3m:
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
	.uaword	.LFB728
	.uaword	.LFE728-.LFB728
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.file 6 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
	.file 9 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGpt12Enc.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 11 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 12 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicVadcBgScan.h"
	.file 14 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 15 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicPort.h"
	.file 16 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/AsclinShellInterface.h"
	.file 17 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/PID.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1a5e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"C:\\\\Users\\\\boldasl\\\\SEUNGHO\\\\Workspace\\\\GitHub\\\\testbench\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
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
	.uaword	0x216
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
	.uaword	0x1c0
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1cc
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x1b7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1f7
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
	.uaword	0x208
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
	.uaword	0x239
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
	.byte	0x7
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
	.uaword	0x239
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
	.uaword	0x247
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
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0x68
	.uaword	0x8c8
	.uleb128 0x8
	.string	"Angle"
	.byte	0x6
	.byte	0x69
	.uaword	0x255
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IR_Srv_t"
	.byte	0x6
	.byte	0x6a
	.uaword	0x8b1
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x4c
	.uaword	0x933
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
	.byte	0x8
	.byte	0x50
	.uaword	0x8d8
	.uleb128 0x7
	.byte	0x18
	.byte	0x9
	.byte	0x21
	.uaword	0x9ae
	.uleb128 0x8
	.string	"speed"
	.byte	0x9
	.byte	0x22
	.uaword	0x255
	.byte	0
	.uleb128 0x8
	.string	"rawPosition"
	.byte	0x9
	.byte	0x23
	.uaword	0x255
	.byte	0x4
	.uleb128 0x8
	.string	"direction"
	.byte	0x9
	.byte	0x24
	.uaword	0x933
	.byte	0x8
	.uleb128 0x8
	.string	"turn"
	.byte	0x9
	.byte	0x25
	.uaword	0x239
	.byte	0xc
	.uleb128 0x8
	.string	"buff"
	.byte	0x9
	.byte	0x26
	.uaword	0x255
	.byte	0x10
	.uleb128 0x8
	.string	"avg"
	.byte	0x9
	.byte	0x27
	.uaword	0x255
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"IR_Encoder_t"
	.byte	0x9
	.byte	0x28
	.uaword	0x94b
	.uleb128 0x7
	.byte	0x8
	.byte	0xa
	.byte	0x26
	.uaword	0x9ec
	.uleb128 0x8
	.string	"standardIo"
	.byte	0xa
	.byte	0x28
	.uaword	0x9ec
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0xa
	.byte	0x29
	.uaword	0x208
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3b8
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0xa
	.byte	0x2a
	.uaword	0x9c2
	.uleb128 0x7
	.byte	0xc
	.byte	0xb
	.byte	0x32
	.uaword	0xa44
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0xb
	.byte	0x33
	.uaword	0x239
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0xb
	.byte	0x34
	.uaword	0x239
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0xb
	.byte	0x35
	.uaword	0x26e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0xb
	.byte	0x36
	.uaword	0xa05
	.uleb128 0x10
	.uahalf	0x268
	.byte	0xb
	.byte	0x38
	.uaword	0xbd5
	.uleb128 0x8
	.string	"Result"
	.byte	0xb
	.byte	0x39
	.uaword	0xbd5
	.byte	0
	.uleb128 0x11
	.string	"Transfer"
	.byte	0xb
	.byte	0x3a
	.uaword	0xbe5
	.uahalf	0x208
	.uleb128 0x11
	.string	"sample"
	.byte	0xb
	.byte	0x3c
	.uaword	0xbf5
	.uahalf	0x214
	.uleb128 0x11
	.string	"sample_RIGHT"
	.byte	0xb
	.byte	0x3d
	.uaword	0xbf5
	.uahalf	0x228
	.uleb128 0x11
	.string	"temp"
	.byte	0xb
	.byte	0x3e
	.uaword	0x255
	.uahalf	0x23c
	.uleb128 0x11
	.string	"previous"
	.byte	0xb
	.byte	0x40
	.uaword	0x247
	.uahalf	0x240
	.uleb128 0x11
	.string	"present"
	.byte	0xb
	.byte	0x41
	.uaword	0x247
	.uahalf	0x244
	.uleb128 0x11
	.string	"previous_RIGHT"
	.byte	0xb
	.byte	0x42
	.uaword	0x247
	.uahalf	0x248
	.uleb128 0x11
	.string	"present_RIGHT"
	.byte	0xb
	.byte	0x43
	.uaword	0x247
	.uahalf	0x24c
	.uleb128 0x11
	.string	"Direction_Determined"
	.byte	0xb
	.byte	0x45
	.uaword	0x26e
	.uahalf	0x250
	.uleb128 0x11
	.string	"Direction_Determined_RIGHT"
	.byte	0xb
	.byte	0x46
	.uaword	0x26e
	.uahalf	0x251
	.uleb128 0x11
	.string	"School_Zone_flag"
	.byte	0xb
	.byte	0x47
	.uaword	0x26e
	.uahalf	0x252
	.uleb128 0x11
	.string	"Dash_Left"
	.byte	0xb
	.byte	0x49
	.uaword	0x247
	.uahalf	0x254
	.uleb128 0x11
	.string	"Dash_Right"
	.byte	0xb
	.byte	0x4a
	.uaword	0x247
	.uahalf	0x258
	.uleb128 0x11
	.string	"Next_Lane"
	.byte	0xb
	.byte	0x4b
	.uaword	0x247
	.uahalf	0x25c
	.uleb128 0x11
	.string	"SchoolZone_Status"
	.byte	0xb
	.byte	0x4d
	.uaword	0x247
	.uahalf	0x260
	.uleb128 0x11
	.string	"previous_Servo"
	.byte	0xb
	.byte	0x4e
	.uaword	0x255
	.uahalf	0x264
	.byte	0
	.uleb128 0x12
	.uaword	0x1e1
	.uaword	0xbe5
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x81
	.byte	0
	.uleb128 0x12
	.uaword	0x1e1
	.uaword	0xbf5
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uaword	0x247
	.uaword	0xc05
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"LineData"
	.byte	0xb
	.byte	0x4f
	.uaword	0xa5b
	.uleb128 0x14
	.byte	0x1
	.string	"AEB"
	.byte	0x1
	.uahalf	0x23e
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	.LFB724
	.uaword	.LFE724
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc8d
	.uleb128 0x16
	.uaword	.LVL0
	.uaword	0x1661
	.uleb128 0x16
	.uaword	.LVL1
	.uaword	0x167a
	.uleb128 0x16
	.uaword	.LVL2
	.uaword	0x168f
	.uleb128 0x16
	.uaword	.LVL3
	.uaword	0x16a6
	.uleb128 0x16
	.uaword	.LVL4
	.uaword	0x16c1
	.uleb128 0x16
	.uaword	.LVL5
	.uaword	0x16da
	.uleb128 0x16
	.uaword	.LVL6
	.uaword	0x16fa
	.uleb128 0x17
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x1709
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	.LFB725
	.uaword	.LFE725
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcf2
	.uleb128 0x18
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x55
	.uaword	0x1e1
	.byte	0x1
	.uaword	0xcc2
	.uleb128 0x19
	.byte	0
	.uleb128 0x16
	.uaword	.LVL8
	.uaword	0x1722
	.uleb128 0x17
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x173a
	.uleb128 0x16
	.uaword	.LVL10
	.uaword	0x174d
	.uleb128 0x16
	.uaword	.LVL11
	.uaword	0x1722
	.uleb128 0x17
	.uaword	.LVL12
	.byte	0x1
	.uaword	0x173a
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"appTaskfu_10_3ms"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"appTaskfu_10_5ms"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.uahalf	0x1db
	.byte	0x1
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.uahalf	0x1f5
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.uahalf	0x21e
	.byte	0x1
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdc3
	.uleb128 0x1d
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x225
	.uaword	0x1e1
	.byte	0x1
	.uaword	0xdaf
	.uleb128 0x19
	.byte	0
	.uleb128 0x16
	.uaword	.LVL13
	.uaword	0x1772
	.uleb128 0x17
	.uaword	.LVL14
	.byte	0x1
	.uaword	0x1791
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.uahalf	0x229
	.byte	0x1
	.uaword	.LFB732
	.uaword	.LFE732
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"SrvControl"
	.byte	0x1
	.uahalf	0x230
	.byte	0x1
	.byte	0x1
	.uaword	0xe14
	.uleb128 0x1f
	.string	"diff"
	.byte	0x1
	.uahalf	0x230
	.uaword	0x255
	.uleb128 0x20
	.string	"result"
	.byte	0x1
	.uahalf	0x232
	.uaword	0x255
	.byte	0
	.uleb128 0x21
	.uaword	0xde1
	.uaword	.LFB733
	.uaword	.LFE733
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe45
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST0
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST1
	.uleb128 0x17
	.uaword	.LVL22
	.byte	0x1
	.uaword	0x17a5
	.byte	0
	.uleb128 0x24
	.uaword	0xc15
	.uaword	.LFB734
	.uaword	.LFE734
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe71
	.uleb128 0x25
	.uaword	.LVL23
	.byte	0x1
	.uaword	0x17c4
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Avoid"
	.byte	0x1
	.uahalf	0x242
	.byte	0x1
	.uaword	.LFB735
	.uaword	.LFE735
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xebf
	.uleb128 0x27
	.uaword	.LVL24
	.byte	0x1
	.uaword	0x17a5
	.uaword	0xea7
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f800000
	.byte	0
	.uleb128 0x25
	.uaword	.LVL25
	.byte	0x1
	.uaword	0x17a5
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x12de
	.uleb128 0x28
	.uaword	0xc15
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.byte	0x7c
	.uaword	0xf0c
	.uleb128 0x29
	.uaword	.LVL29
	.uaword	0x17c4
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0xde1
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0xd1
	.uaword	0xf52
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST2
	.uleb128 0x2a
	.uaword	.LBB55
	.uaword	.LBE55
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST3
	.uleb128 0x29
	.uaword	.LVL37
	.uaword	0x17a5
	.uleb128 0x26
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
	.uaword	0xde1
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0xde
	.uaword	0xf98
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST4
	.uleb128 0x2a
	.uaword	.LBB57
	.uaword	.LBE57
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST5
	.uleb128 0x29
	.uaword	.LVL52
	.uaword	0x17a5
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xde1
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x13a
	.uaword	0xfdf
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST6
	.uleb128 0x2a
	.uaword	.LBB59
	.uaword	.LBE59
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST7
	.uleb128 0x29
	.uaword	.LVL64
	.uaword	0x17a5
	.uleb128 0x26
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
	.uaword	0xde1
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.byte	0xf3
	.uaword	0x1025
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST8
	.uleb128 0x2a
	.uaword	.LBB61
	.uaword	.LBE61
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST9
	.uleb128 0x29
	.uaword	.LVL72
	.uaword	0x17a5
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x40400000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xde1
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x106c
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST10
	.uleb128 0x2a
	.uaword	.LBB63
	.uaword	.LBE63
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST11
	.uleb128 0x29
	.uaword	.LVL74
	.uaword	0x17a5
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0xde1
	.uaword	.LBB64
	.uaword	.LBE64
	.byte	0x1
	.byte	0xda
	.uaword	0x10b2
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST12
	.uleb128 0x2a
	.uaword	.LBB65
	.uaword	.LBE65
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST13
	.uleb128 0x29
	.uaword	.LVL76
	.uaword	0x17a5
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x40b00000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	0x10ef
	.uleb128 0x1d
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x117
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x10d3
	.uleb128 0x19
	.byte	0
	.uleb128 0x16
	.uaword	.LVL80
	.uaword	0x17e4
	.uleb128 0x16
	.uaword	.LVL81
	.uaword	0x17f8
	.uleb128 0x16
	.uaword	.LVL82
	.uaword	0xde1
	.byte	0
	.uleb128 0x2b
	.uaword	0xde1
	.uaword	.LBB67
	.uaword	.LBE67
	.byte	0x1
	.uahalf	0x158
	.uaword	0x1136
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST14
	.uleb128 0x2a
	.uaword	.LBB68
	.uaword	.LBE68
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST15
	.uleb128 0x29
	.uaword	.LVL86
	.uaword	0x17a5
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x40b00000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0xde1
	.uaword	.LBB69
	.uaword	.LBE69
	.byte	0x1
	.byte	0xe1
	.uaword	0x117c
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST16
	.uleb128 0x2a
	.uaword	.LBB70
	.uaword	.LBE70
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST17
	.uleb128 0x29
	.uaword	.LVL88
	.uaword	0x17a5
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3e800000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL26
	.uaword	0x17c4
	.uleb128 0x16
	.uaword	.LVL27
	.uaword	0x1819
	.uleb128 0x16
	.uaword	.LVL28
	.uaword	0x1833
	.uleb128 0x16
	.uaword	.LVL30
	.uaword	0x184a
	.uleb128 0x16
	.uaword	.LVL31
	.uaword	0x1862
	.uleb128 0x16
	.uaword	.LVL32
	.uaword	0x1876
	.uleb128 0x16
	.uaword	.LVL33
	.uaword	0x188b
	.uleb128 0x16
	.uaword	.LVL34
	.uaword	0x189d
	.uleb128 0x16
	.uaword	.LVL35
	.uaword	0xe71
	.uleb128 0x16
	.uaword	.LVL38
	.uaword	0x188b
	.uleb128 0x16
	.uaword	.LVL39
	.uaword	0x189d
	.uleb128 0x16
	.uaword	.LVL41
	.uaword	0x18b5
	.uleb128 0x16
	.uaword	.LVL42
	.uaword	0x18cb
	.uleb128 0x17
	.uaword	.LVL43
	.byte	0x1
	.uaword	0x18df
	.uleb128 0x16
	.uaword	.LVL44
	.uaword	0x1906
	.uleb128 0x16
	.uaword	.LVL45
	.uaword	0x1919
	.uleb128 0x16
	.uaword	.LVL46
	.uaword	0x192e
	.uleb128 0x16
	.uaword	.LVL47
	.uaword	0x1945
	.uleb128 0x16
	.uaword	.LVL48
	.uaword	0x1962
	.uleb128 0x16
	.uaword	.LVL49
	.uaword	0x197b
	.uleb128 0x16
	.uaword	.LVL50
	.uaword	0x1999
	.uleb128 0x16
	.uaword	.LVL54
	.uaword	0x19b0
	.uleb128 0x17
	.uaword	.LVL55
	.byte	0x1
	.uaword	0x18df
	.uleb128 0x16
	.uaword	.LVL56
	.uaword	0x1945
	.uleb128 0x16
	.uaword	.LVL57
	.uaword	0x192e
	.uleb128 0x16
	.uaword	.LVL58
	.uaword	0x19cc
	.uleb128 0x16
	.uaword	.LVL59
	.uaword	0x19df
	.uleb128 0x16
	.uaword	.LVL60
	.uaword	0x19f7
	.uleb128 0x16
	.uaword	.LVL61
	.uaword	0x1a0d
	.uleb128 0x16
	.uaword	.LVL62
	.uaword	0xde1
	.uleb128 0x16
	.uaword	.LVL66
	.uaword	0x1a28
	.uleb128 0x16
	.uaword	.LVL67
	.uaword	0x1a37
	.uleb128 0x16
	.uaword	.LVL68
	.uaword	0x19cc
	.uleb128 0x16
	.uaword	.LVL69
	.uaword	0x19df
	.uleb128 0x16
	.uaword	.LVL70
	.uaword	0x1a48
	.uleb128 0x16
	.uaword	.LVL78
	.uaword	0x1962
	.uleb128 0x16
	.uaword	.LVL79
	.uaword	0x197b
	.uleb128 0x16
	.uaword	.LVL83
	.uaword	0x1a28
	.uleb128 0x16
	.uaword	.LVL84
	.uaword	0x1a37
	.byte	0
	.uleb128 0x2d
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x2d
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x2e
	.string	"task_cnt_10_3m"
	.byte	0x1
	.byte	0x5
	.uaword	0x239
	.byte	0
	.uleb128 0x2e
	.string	"task_cnt_10_5m"
	.byte	0x1
	.byte	0x6
	.uaword	0x239
	.byte	0
	.uleb128 0x2d
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x9
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x2d
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0xa
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x12
	.uaword	0x312
	.uaword	0x1386
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x2
	.byte	0
	.uleb128 0x2f
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x7
	.byte	0x96
	.uaword	0x13a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.uaword	0x1376
	.uleb128 0x2f
	.string	"Assert_verboseLevel"
	.byte	0xc
	.byte	0x79
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"IR_Srv"
	.byte	0x6
	.byte	0x70
	.uaword	0x8c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x255
	.uaword	0x13e0
	.uleb128 0x31
	.byte	0
	.uleb128 0x2f
	.string	"IR_AdcResult"
	.byte	0xd
	.byte	0x29
	.uaword	0x13d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"IR_Encoder"
	.byte	0x9
	.byte	0x2d
	.uaword	0x9ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"Ifx_g_console"
	.byte	0xa
	.byte	0x2c
	.uaword	0x9f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"IR_Ctrl"
	.byte	0xb
	.byte	0x54
	.uaword	0xa44
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"IR_LineData"
	.byte	0xb
	.byte	0x55
	.uaword	0xc05
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0xc
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x32
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0xd
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x32
	.string	"task_flag_10_3m"
	.byte	0x1
	.byte	0xe
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10_3m
	.uleb128 0x32
	.string	"task_flag_10_5m"
	.byte	0x1
	.byte	0xf
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10_5m
	.uleb128 0x32
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0x11
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x32
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0x12
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x32
	.string	"testVol"
	.byte	0x1
	.byte	0x14
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testVol
	.uleb128 0x32
	.string	"testSrv"
	.byte	0x1
	.byte	0x15
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSrv
	.uleb128 0x32
	.string	"signORunsign"
	.byte	0x1
	.byte	0x16
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	signORunsign
	.uleb128 0x32
	.string	"Obstacle_flag"
	.byte	0x1
	.byte	0x17
	.uaword	0x247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Obstacle_flag
	.uleb128 0x32
	.string	"Speed_Out_Of_School_Zone"
	.byte	0x1
	.byte	0x18
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_Out_Of_School_Zone
	.uleb128 0x32
	.string	"Speed_In_School_Zone"
	.byte	0x1
	.byte	0x18
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_In_School_Zone
	.uleb128 0x32
	.string	"Speed_swap"
	.byte	0x1
	.byte	0x18
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_swap
	.uleb128 0x32
	.string	"P"
	.byte	0x1
	.byte	0x19
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	P
	.uleb128 0x32
	.string	"I"
	.byte	0x1
	.byte	0x19
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	I
	.uleb128 0x32
	.string	"D"
	.byte	0x1
	.byte	0x19
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	D
	.uleb128 0x32
	.string	"time"
	.byte	0x1
	.byte	0x1a
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	time
	.uleb128 0x32
	.string	"speed_min"
	.byte	0x1
	.byte	0x1b
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_min
	.uleb128 0x32
	.string	"speed_max"
	.byte	0x1
	.byte	0x1b
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_max
	.uleb128 0x32
	.string	"WHICH_LANE"
	.byte	0x1
	.byte	0x1c
	.uaword	0x247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WHICH_LANE
	.uleb128 0x32
	.string	"TEMP_REMAIN"
	.byte	0x1
	.byte	0x1d
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TEMP_REMAIN
	.uleb128 0x33
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xe
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xf
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0x6
	.byte	0x7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xd
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0x9
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0x10
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"PID_init"
	.byte	0x11
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0xb
	.byte	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"BasicGpt12Enc_run"
	.byte	0x9
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x55
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x174d
	.uleb128 0x19
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"BasicGpt12Enc_IR_Encoder_reset"
	.byte	0x9
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0x10
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x225
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x17a5
	.uleb128 0x19
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0x6
	.byte	0x78
	.byte	0x1
	.byte	0x1
	.uaword	0x17c4
	.uleb128 0xe
	.uaword	0x255
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0x6
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x17e4
	.uleb128 0xe
	.uaword	0x255
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x117
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x17f8
	.uleb128 0x19
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Direction_CENTER_RIGHT"
	.byte	0xb
	.byte	0x97
	.byte	0x1
	.uaword	0x255
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xd
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"Checking_PSD"
	.byte	0xd
	.byte	0x32
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xe
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"median_filter"
	.byte	0xb
	.byte	0x64
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"threshold_LINE"
	.byte	0xb
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"clearBuffer"
	.byte	0xb
	.byte	0x7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"clearBuffer_RIGHT"
	.byte	0xb
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0x6
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xf
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"AsclinShellInterface_runLineScan"
	.byte	0x10
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"get_Dash"
	.byte	0xb
	.byte	0x76
	.byte	0x1
	.uaword	0x247
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"left_FIRST"
	.byte	0xb
	.byte	0x73
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"is_THRESHOLD"
	.byte	0xb
	.byte	0x70
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"is_THRESHOLD_RIGHT"
	.byte	0xb
	.byte	0x72
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"Boundary_RIGHT"
	.byte	0xb
	.byte	0x8d
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"Over_Boundary_RIGHT"
	.byte	0xb
	.byte	0x92
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"isEndOfRIGHT"
	.byte	0xb
	.byte	0x8a
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0xb
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"Boundary"
	.byte	0xb
	.byte	0x88
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"Over_Boundary"
	.byte	0xb
	.byte	0x8f
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"isEndOfLEFT"
	.byte	0xb
	.byte	0x89
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"Direction_CENTER"
	.byte	0xb
	.byte	0x96
	.byte	0x1
	.uaword	0x255
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"resetPSD"
	.byte	0xd
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"clear_Dash"
	.byte	0xb
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"Over_Boundary2"
	.byte	0xb
	.byte	0x90
	.byte	0x1
	.uaword	0x26e
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LVL22
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE733
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL89
	.uaword	.LFE728
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	.LVL89
	.uaword	.LFE728
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42480000
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40400000
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40b00000
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40b00000
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2480000
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3e800000
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
	.uaword	.LFB728
	.uaword	.LFE728-.LFB728
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
	.uaword	.LFB728
	.uaword	.LFE728
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"BasicGpt12Enc_IR_Encoder_turn"
.LASF0:
	.string	"Speed_Buff"
.LASF2:
	.string	"Over_Boundary_RIGHT2"
	.extern	Direction_CENTER_RIGHT,STT_FUNC,0
	.extern	Over_Boundary_RIGHT2,STT_FUNC,0
	.extern	Over_Boundary2,STT_FUNC,0
	.extern	clear_Dash,STT_FUNC,0
	.extern	resetPSD,STT_FUNC,0
	.extern	Direction_CENTER,STT_FUNC,0
	.extern	isEndOfLEFT,STT_FUNC,0
	.extern	Over_Boundary,STT_FUNC,0
	.extern	Boundary,STT_FUNC,0
	.extern	InfineonRacer_control,STT_FUNC,0
	.extern	isEndOfRIGHT,STT_FUNC,0
	.extern	Over_Boundary_RIGHT,STT_FUNC,0
	.extern	Boundary_RIGHT,STT_FUNC,0
	.extern	is_THRESHOLD_RIGHT,STT_FUNC,0
	.extern	is_THRESHOLD,STT_FUNC,0
	.extern	left_FIRST,STT_FUNC,0
	.extern	get_Dash,STT_FUNC,0
	.extern	AsclinShellInterface_runLineScan,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	IR_Srv,STT_OBJECT,4
	.extern	IR_AdcResult,STT_OBJECT,-1
	.extern	clearBuffer_RIGHT,STT_FUNC,0
	.extern	clearBuffer,STT_FUNC,0
	.extern	threshold_LINE,STT_FUNC,0
	.extern	median_filter,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	Checking_PSD,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	IR_LineData,STT_OBJECT,616
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	BasicGpt12Enc_IR_Encoder_turn,STT_FUNC,0
	.extern	AsclinShellInterface_run,STT_FUNC,0
	.extern	BasicGpt12Enc_IR_Encoder_reset,STT_FUNC,0
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
