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
	.loc 1 461 0
	.loc 1 462 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 470 0
	mov	%d2, 1000
	.loc 1 462 0
	add	%d15, 1
	.loc 1 470 0
	jne	%d15, %d2, .L13
	.loc 1 471 0
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
	.loc 1 487 0
	.loc 1 488 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 515 0
	mov	%d2, 1000
	.loc 1 488 0
	add	%d15, 1
	.loc 1 515 0
	jne	%d15, %d2, .L17
	.loc 1 516 0
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
	.loc 1 527 0
	.loc 1 528 0
	call	AsclinShellInterface_run
.LVL13:
	.loc 1 534 0
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
	.loc 1 538 0
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
	.loc 1 545 0
.LVL15:
	.loc 1 548 0
	mov	%d15, 0
	cmp.f	%d15, %d4, %d15
	jz.t	%d15, 2, .L25
	.loc 1 549 0
	movh	%d15, 16672
.L26:
	.loc 1 552 0
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
	.loc 1 554 0
	j	IR_setSrvAngle
.LVL22:
.L25:
	.loc 1 552 0
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
	.loc 1 559 0
	.loc 1 560 0
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
	.loc 1 563 0
	.loc 1 564 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L30
	jne	%d15, 2, .L33
	.loc 1 569 0
	movh	%d4, 16256
	j	IR_setSrvAngle
.LVL24:
.L33:
	ret
.L30:
	.loc 1 566 0
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
	movh.a	%a14, hi:Speed_Out_Of_School_Zone
	.loc 1 100 0
	add	%d15, 1
	.loc 1 102 0
	ld.w	%d4, [%a14] lo:Speed_Out_Of_School_Zone
	.loc 1 116 0
	movh.a	%a12, hi:IR_LineData
	lea	%a12, [%a12] lo:IR_LineData
	.loc 1 100 0
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 102 0
	call	IR_setMotor0Vol
.LVL26:
	.loc 1 116 0
	ld.bu	%d15, [%a12] 594
	jnz	%d15, .L108
.L35:
	.loc 1 129 0
	call	BasicVadcBgScan_run
.LVL27:
	.loc 1 131 0
	call	Checking_PSD
.LVL28:
	jz	%d2, .L39
	.loc 1 132 0
	mov	%d15, 1
	movh.a	%a13, hi:Obstacle_flag
	st.w	[%a13] lo:Obstacle_flag, %d15
	.loc 1 133 0
	st.w	[%a12] 608, %d15
	.loc 1 135 0
	ld.bu	%d15, [%a12] 594
	jnz	%d15, .L40
.LBB46:
.LBB47:
	.loc 1 560 0
	movh	%d4, 49024
	call	IR_setMotor0Vol
.LVL29:
.L39:
.LBE47:
.LBE46:
	.loc 1 168 0
	call	BasicLineScan_run
.LVL30:
	.loc 1 170 0
	call	median_filter
.LVL31:
	.loc 1 179 0
	call	threshold_LINE
.LVL32:
	.loc 1 184 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 40
	div	%e2, %d15, %d2
	movh	%d8, hi:task_cnt_10m
	movh.a	%a13, hi:TEMP_REMAIN
	jnz	%d3, .L46
	.loc 1 185 0
	ld.bu	%d15, [%a12] 594
	jnz	%d15, .L47
	.loc 1 186 0
	call	IsInSchoolZone_THRESHOLD
.LVL33:
	.loc 1 187 0
	ld.bu	%d15, [%a12] 594
	jz	%d15, .L107
	.loc 1 188 0
	mov	%d15, 1
	st.b	[%a13] lo:TEMP_REMAIN, %d15
.L49:
	.loc 1 197 0
	ld.w	%d15, [%a14] lo:Speed_Out_Of_School_Zone
	movh.a	%a2, hi:Speed_swap
	st.w	[%a2] lo:Speed_swap, %d15
	.loc 1 198 0
	movh.a	%a2, hi:Speed_In_School_Zone
	ld.w	%d2, [%a2] lo:Speed_In_School_Zone
	st.w	[%a14] lo:Speed_Out_Of_School_Zone, %d2
	.loc 1 199 0
	st.w	[%a2] lo:Speed_In_School_Zone, %d15
.L107:
	mov.a	%a2, %d8
	ld.w	%d15, [%a2] lo:task_cnt_10m
.L46:
	.loc 1 204 0
	mov	%d2, 50
	div	%e2, %d15, %d2
	jnz	%d3, .L50
	.loc 1 205 0
	st.b	[%a13] lo:TEMP_REMAIN, %d3
.L51:
	.loc 1 212 0
	movh.a	%a13, hi:Obstacle_flag
	ld.w	%d2, [%a13] lo:Obstacle_flag
	jz	%d2, .L109
	.loc 1 298 0
	jeq	%d2, 3, .L110
	.loc 1 325 0
	jeq	%d2, 4, .L111
.L52:
	.loc 1 357 0
	call	clearBuffer
.LVL34:
	.loc 1 358 0
	call	clearBuffer_RIGHT
.LVL35:
	.loc 1 435 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jeq	%d15, %d2, .L112
.L79:
	.loc 1 439 0
	jz.t	%d15, 0, .L80
	ret
.L47:
	.loc 1 195 0
	call	IsOutSchoolZone_THRESHOLD
.LVL36:
	.loc 1 196 0
	ld.bu	%d15, [%a12] 594
	jnz	%d15, .L107
	j	.L49
.L40:
	.loc 1 141 0
	call	Avoid
.LVL37:
	.loc 1 144 0
	movh.a	%a2, hi:WHICH_LANE
	ld.w	%d15, [%a2] lo:WHICH_LANE
	jeq	%d15, 1, .L41
	jne	%d15, 2, .L39
	.loc 1 153 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d15, [%a2] 4
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L39
.L45:
	.loc 1 147 0
	mov	%d15, 3
	st.w	[%a13] lo:Obstacle_flag, %d15
	.loc 1 148 0
	st.w	[%a12] 608, %d15
	j	.L39
.L50:
	.loc 1 208 0
	ld.bu	%d2, [%a13] lo:TEMP_REMAIN
	jz	%d2, .L51
.L57:
.LVL38:
.LBB48:
.LBB49:
	.loc 1 554 0
	movh	%d4, 16128
	call	IR_setSrvAngle
.LVL39:
.LBE49:
.LBE48:
	.loc 1 357 0
	call	clearBuffer
.LVL40:
	.loc 1 358 0
	call	clearBuffer_RIGHT
.LVL41:
	.loc 1 435 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jne	%d15, %d2, .L79
.LVL42:
.L112:
	.loc 1 436 0
	mov	%d15, 0
	movh.a	%a15, hi:task_cnt_10m
	st.w	[%a15] lo:task_cnt_10m, %d15
.L80:
	.loc 1 442 0
	movh.a	%a15, hi:IR_Srv
	.loc 1 441 0
	call	BasicGtmTom_run
.LVL43:
	.loc 1 442 0
	ld.w	%d15, [%a15] lo:IR_Srv
	.loc 1 446 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 442 0
	st.w	[%a12] 612, %d15
	.loc 1 443 0
	call	BasicPort_run
.LVL44:
	.loc 1 446 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L113
	.loc 1 455 0
	j	AsclinShellInterface_runLineScan
.LVL45:
.L108:
	.loc 1 118 0
	call	get_Dash
.LVL46:
	jeq	%d2, 1, .L36
	jne	%d2, 2, .L35
	.loc 1 124 0
	mov	%d15, 1
	movh.a	%a2, hi:WHICH_LANE
	st.w	[%a2] lo:WHICH_LANE, %d15
	.loc 1 125 0
	j	.L35
.L109:
	.loc 1 213 0
	call	left_FIRST
.LVL47:
	jz	%d2, .L54
	.loc 1 214 0
	call	is_THRESHOLD
.LVL48:
	jnz	%d2, .L55
	.loc 1 215 0
	call	is_THRESHOLD_RIGHT
.LVL49:
	jz	%d2, .L56
	.loc 1 216 0
	call	Boundary_RIGHT
.LVL50:
	jz	%d2, .L57
	.loc 1 217 0
	call	Over_Boundary_RIGHT
.LVL51:
	jnz	%d2, .L56
	.loc 1 222 0
	call	isEndOfRIGHT
.LVL52:
	jz	%d2, .L59
.LVL53:
.LBB50:
.LBB51:
	.loc 1 554 0
	movh	%d4, 16512
	call	IR_setSrvAngle
.LVL54:
	j	.L52
.LVL55:
.L113:
.LBE51:
.LBE50:
	.loc 1 448 0
	call	InfineonRacer_control
.LVL56:
	.loc 1 455 0
	j	AsclinShellInterface_runLineScan
.LVL57:
.L54:
	.loc 1 255 0
	call	is_THRESHOLD_RIGHT
.LVL58:
	jnz	%d2, .L52
	.loc 1 256 0
	call	is_THRESHOLD
.LVL59:
	jz	%d2, .L63
	.loc 1 257 0
	call	Boundary
.LVL60:
	jz	%d2, .L64
	.loc 1 258 0
	call	Over_Boundary
.LVL61:
	jnz	%d2, .L64
	.loc 1 263 0
	call	isEndOfLEFT
.LVL62:
	jnz	%d2, .L66
.LVL63:
.LBB52:
.LBB53:
	.loc 1 554 0
	movh	%d4, 16051
	addi	%d4, %d4, 13107
	call	IR_setSrvAngle
.LVL64:
	j	.L52
.LVL65:
.L36:
.LBE53:
.LBE52:
	.loc 1 121 0
	mov	%d15, 2
	movh.a	%a2, hi:WHICH_LANE
	st.w	[%a2] lo:WHICH_LANE, %d15
	.loc 1 122 0
	j	.L35
.L41:
	.loc 1 146 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d15, [%a2] 8
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L39
	j	.L45
.L110:
.LVL66:
.LBB54:
.LBB55:
	.loc 1 554 0
	movh	%d4, 16128
	call	IR_setSrvAngle
.LVL67:
.LBE55:
.LBE54:
	.loc 1 302 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 15
	div	%e2, %d15, %d2
	jnz	%d3, .L52
	.loc 1 304 0
	movh.a	%a2, hi:WHICH_LANE
	ld.w	%d15, [%a2] lo:WHICH_LANE
	jeq	%d15, 1, .L70
	jne	%d15, 2, .L52
	.loc 1 314 0
	movh.a	%a3, hi:IR_AdcResult
	lea	%a3, [%a3] lo:IR_AdcResult
	ld.w	%d15, [%a3] 8
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L52
	.loc 1 315 0
	mov	%d15, 4
	st.w	[%a13] lo:Obstacle_flag, %d15
	.loc 1 316 0
	st.w	[%a12] 608, %d15
	.loc 1 317 0
	mov	%d15, 1
	st.w	[%a2] lo:WHICH_LANE, %d15
	j	.L52
.LVL68:
.L111:
	.loc 1 327 0
	movh.a	%a14, hi:WHICH_LANE
	ld.w	%d2, [%a14] lo:WHICH_LANE
	jeq	%d2, 1, .L75
	jeq	%d2, 2, .L76
.L74:
	.loc 1 337 0
	mov	%d2, 15
	div	%e2, %d15, %d2
	jnz	%d3, .L52
	.loc 1 338 0
	ld.w	%d2, [%a14] lo:WHICH_LANE
	jeq	%d2, 1, .L77
	jne	%d2, 2, .L52
	.loc 1 349 0
	mov	%d15, 1
	movh.a	%a2, hi:WHICH_LANE
	.loc 1 347 0
	st.w	[%a13] lo:Obstacle_flag, %d3
	.loc 1 348 0
	st.w	[%a12] 608, %d3
	.loc 1 349 0
	st.w	[%a2] lo:WHICH_LANE, %d15
	.loc 1 350 0
	call	resetPSD
.LVL69:
	.loc 1 351 0
	call	clear_Dash
.LVL70:
	.loc 1 352 0
	j	.L52
.L55:
	.loc 1 238 0
	call	Boundary
.LVL71:
	jz	%d2, .L57
	.loc 1 239 0
	call	Over_Boundary
.LVL72:
	jnz	%d2, .L66
	.loc 1 242 0
	call	Over_Boundary2
.LVL73:
	jz	%d2, .L61
.LVL74:
.LBB56:
.LBB57:
	.loc 1 554 0
	movh	%d4, 16448
	call	IR_setSrvAngle
.LVL75:
	j	.L52
.LVL76:
.L76:
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	mov	%d4, 0
	call	IR_setSrvAngle
.LVL77:
	ld.w	%d15, [%a15] lo:task_cnt_10m
	j	.L74
.LVL78:
.L56:
.LBE59:
.LBE58:
.LBB60:
.LBB61:
	movh	%d4, 16560
	call	IR_setSrvAngle
.LVL79:
	j	.L52
.LVL80:
.L77:
.LBE61:
.LBE60:
	.loc 1 340 0
	st.w	[%a13] lo:Obstacle_flag, %d3
	.loc 1 341 0
	st.w	[%a12] 608, %d3
	.loc 1 342 0
	call	resetPSD
.LVL81:
	.loc 1 343 0
	call	clear_Dash
.LVL82:
	.loc 1 344 0
	j	.L52
.L75:
.LVL83:
.LBB62:
.LBB63:
	.loc 1 554 0
	movh	%d4, 16560
	call	IR_setSrvAngle
.LVL84:
	ld.w	%d15, [%a15] lo:task_cnt_10m
	j	.L74
.LVL85:
.L63:
.LBE63:
.LBE62:
	.loc 1 275 0
	call	Boundary_RIGHT
.LVL86:
	jz	%d2, .L57
	.loc 1 276 0
	call	Over_Boundary_RIGHT
.LVL87:
	jz	%d2, .L67
.LVL88:
.LBB64:
.LBB65:
	.loc 1 554 0
	movh	%d4, 15821
	addi	%d4, %d4, -13108
	call	IR_setSrvAngle
.LVL89:
	j	.L52
.LVL90:
.L66:
.LBE65:
.LBE64:
.LBB66:
.LBB67:
	movh	%d4, 16000
	call	IR_setSrvAngle
.LVL91:
	j	.L52
.LVL92:
.L70:
.LBE67:
.LBE66:
	.loc 1 306 0
	movh.a	%a3, hi:IR_AdcResult
	lea	%a3, [%a3] lo:IR_AdcResult
	ld.w	%d15, [%a3] 4
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L52
	.loc 1 307 0
	mov	%d15, 4
	st.w	[%a13] lo:Obstacle_flag, %d15
	.loc 1 308 0
	st.w	[%a12] 608, %d15
	.loc 1 309 0
	mov	%d15, 2
	st.w	[%a2] lo:WHICH_LANE, %d15
	j	.L52
.LVL93:
.L64:
.LBB68:
.LBB69:
	.loc 1 554 0
	mov	%d4, 0
	call	IR_setSrvAngle
.LVL94:
	j	.L52
.LVL95:
.L61:
.LBE69:
.LBE68:
	.loc 1 246 0
	call	Direction_CENTER
.LVL96:
	mov	%d4, %d2
	call	SrvControl
.LVL97:
	j	.L52
.L67:
.LBB70:
	.loc 1 279 0
	call	Over_Boundary_RIGHT2
.LVL98:
	jnz	%d2, .L56
	.loc 1 283 0
	call	Direction_CENTER_RIGHT
.LVL99:
	mov	%d4, %d2
	call	SrvControl
.LVL100:
	j	.L52
.L59:
.LVL101:
.LBE70:
.LBB71:
.LBB72:
	.loc 1 554 0
	movh	%d4, 16384
	call	IR_setSrvAngle
.LVL102:
	j	.L52
.LBE72:
.LBE71:
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
	.word	-1093874483
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
	.uaword	0x1bba
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
	.uahalf	0x22f
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
	.uaword	0x1776
	.uleb128 0x16
	.uaword	.LVL1
	.uaword	0x178f
	.uleb128 0x16
	.uaword	.LVL2
	.uaword	0x17a4
	.uleb128 0x16
	.uaword	.LVL3
	.uaword	0x17bb
	.uleb128 0x16
	.uaword	.LVL4
	.uaword	0x17d6
	.uleb128 0x16
	.uaword	.LVL5
	.uaword	0x17ef
	.uleb128 0x16
	.uaword	.LVL6
	.uaword	0x180f
	.uleb128 0x17
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x181e
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
	.uaword	0x1837
	.uleb128 0x17
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x184f
	.uleb128 0x16
	.uaword	.LVL10
	.uaword	0x1862
	.uleb128 0x16
	.uaword	.LVL11
	.uaword	0x1837
	.uleb128 0x17
	.uaword	.LVL12
	.byte	0x1
	.uaword	0x184f
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
	.uahalf	0x1cc
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
	.uahalf	0x1e6
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
	.uahalf	0x20f
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
	.uahalf	0x216
	.uaword	0x1e1
	.byte	0x1
	.uaword	0xdaf
	.uleb128 0x19
	.byte	0
	.uleb128 0x16
	.uaword	.LVL13
	.uaword	0x1887
	.uleb128 0x17
	.uaword	.LVL14
	.byte	0x1
	.uaword	0x18a6
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.uahalf	0x21a
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
	.uahalf	0x221
	.byte	0x1
	.byte	0x1
	.uaword	0xe14
	.uleb128 0x1f
	.string	"diff"
	.byte	0x1
	.uahalf	0x221
	.uaword	0x255
	.uleb128 0x20
	.string	"result"
	.byte	0x1
	.uahalf	0x223
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
	.uaword	0x18ba
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
	.uaword	0x18d9
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
	.uahalf	0x233
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
	.uaword	0x18ba
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
	.uaword	0x18ba
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
	.uaword	0x13f3
	.uleb128 0x28
	.uaword	0xc15
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.byte	0x88
	.uaword	0xf0c
	.uleb128 0x29
	.uaword	.LVL29
	.uaword	0x18d9
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
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.byte	0xd1
	.uaword	0xf52
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST2
	.uleb128 0x2a
	.uaword	.LBB49
	.uaword	.LBE49
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST3
	.uleb128 0x29
	.uaword	.LVL39
	.uaword	0x18ba
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
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0xdf
	.uaword	0xf98
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST4
	.uleb128 0x2a
	.uaword	.LBB51
	.uaword	.LBE51
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST5
	.uleb128 0x29
	.uaword	.LVL54
	.uaword	0x18ba
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x40800000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xde1
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.uahalf	0x10b
	.uaword	0xfd2
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST6
	.uleb128 0x2a
	.uaword	.LBB53
	.uaword	.LBE53
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST7
	.uleb128 0x16
	.uaword	.LVL64
	.uaword	0x18ba
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xde1
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x1019
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST8
	.uleb128 0x2a
	.uaword	.LBB55
	.uaword	.LBE55
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST9
	.uleb128 0x29
	.uaword	.LVL67
	.uaword	0x18ba
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
	.byte	0xf3
	.uaword	0x105f
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST10
	.uleb128 0x2a
	.uaword	.LBB57
	.uaword	.LBE57
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST11
	.uleb128 0x29
	.uaword	.LVL75
	.uaword	0x18ba
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
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x10a6
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST12
	.uleb128 0x2a
	.uaword	.LBB59
	.uaword	.LBE59
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST13
	.uleb128 0x29
	.uaword	.LVL77
	.uaword	0x18ba
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
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.byte	0xdb
	.uaword	0x10ec
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST14
	.uleb128 0x2a
	.uaword	.LBB61
	.uaword	.LBE61
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST15
	.uleb128 0x29
	.uaword	.LVL79
	.uaword	0x18ba
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
	.uleb128 0x2b
	.uaword	0xde1
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.uahalf	0x149
	.uaword	0x1133
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST16
	.uleb128 0x2a
	.uaword	.LBB63
	.uaword	.LBE63
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST17
	.uleb128 0x29
	.uaword	.LVL84
	.uaword	0x18ba
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
	.uleb128 0x2b
	.uaword	0xde1
	.uaword	.LBB64
	.uaword	.LBE64
	.byte	0x1
	.uahalf	0x115
	.uaword	0x116d
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST18
	.uleb128 0x2a
	.uaword	.LBB65
	.uaword	.LBE65
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST19
	.uleb128 0x16
	.uaword	.LVL89
	.uaword	0x18ba
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0xde1
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x1
	.byte	0xf0
	.uaword	0x11b3
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST20
	.uleb128 0x2a
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST21
	.uleb128 0x29
	.uaword	.LVL91
	.uaword	0x18ba
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
	.uleb128 0x2b
	.uaword	0xde1
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.uahalf	0x104
	.uaword	0x11fa
	.uleb128 0x22
	.uaword	0xdf7
	.uaword	.LLST22
	.uleb128 0x2a
	.uaword	.LBB69
	.uaword	.LBE69
	.uleb128 0x23
	.uaword	0xe04
	.uaword	.LLST23
	.uleb128 0x29
	.uaword	.LVL94
	.uaword	0x18ba
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
	.uleb128 0x2c
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	0x1237
	.uleb128 0x1d
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x117
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x121b
	.uleb128 0x19
	.byte	0
	.uleb128 0x16
	.uaword	.LVL98
	.uaword	0x18f9
	.uleb128 0x16
	.uaword	.LVL99
	.uaword	0x190d
	.uleb128 0x16
	.uaword	.LVL100
	.uaword	0xde1
	.byte	0
	.uleb128 0x28
	.uaword	0xde1
	.uaword	.LBB71
	.uaword	.LBE71
	.byte	0x1
	.byte	0xe2
	.uaword	0x127f
	.uleb128 0x2d
	.uaword	0xdf7
	.byte	0x4
	.uaword	0x41f00000
	.uleb128 0x2a
	.uaword	.LBB72
	.uaword	.LBE72
	.uleb128 0x2e
	.uaword	0xe04
	.byte	0x4
	.uaword	0x40000000
	.uleb128 0x29
	.uaword	.LVL102
	.uaword	0x18ba
	.uleb128 0x26
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x40000000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	.LVL26
	.uaword	0x18d9
	.uleb128 0x16
	.uaword	.LVL27
	.uaword	0x192e
	.uleb128 0x16
	.uaword	.LVL28
	.uaword	0x1948
	.uleb128 0x16
	.uaword	.LVL30
	.uaword	0x195f
	.uleb128 0x16
	.uaword	.LVL31
	.uaword	0x1977
	.uleb128 0x16
	.uaword	.LVL32
	.uaword	0x198b
	.uleb128 0x16
	.uaword	.LVL33
	.uaword	0x19a0
	.uleb128 0x16
	.uaword	.LVL34
	.uaword	0x19c3
	.uleb128 0x16
	.uaword	.LVL35
	.uaword	0x19d5
	.uleb128 0x16
	.uaword	.LVL36
	.uaword	0x19ed
	.uleb128 0x16
	.uaword	.LVL37
	.uaword	0xe71
	.uleb128 0x16
	.uaword	.LVL40
	.uaword	0x19c3
	.uleb128 0x16
	.uaword	.LVL41
	.uaword	0x19d5
	.uleb128 0x16
	.uaword	.LVL43
	.uaword	0x1a11
	.uleb128 0x16
	.uaword	.LVL44
	.uaword	0x1a27
	.uleb128 0x17
	.uaword	.LVL45
	.byte	0x1
	.uaword	0x1a3b
	.uleb128 0x16
	.uaword	.LVL46
	.uaword	0x1a62
	.uleb128 0x16
	.uaword	.LVL47
	.uaword	0x1a75
	.uleb128 0x16
	.uaword	.LVL48
	.uaword	0x1a8a
	.uleb128 0x16
	.uaword	.LVL49
	.uaword	0x1aa1
	.uleb128 0x16
	.uaword	.LVL50
	.uaword	0x1abe
	.uleb128 0x16
	.uaword	.LVL51
	.uaword	0x1ad7
	.uleb128 0x16
	.uaword	.LVL52
	.uaword	0x1af5
	.uleb128 0x16
	.uaword	.LVL56
	.uaword	0x1b0c
	.uleb128 0x17
	.uaword	.LVL57
	.byte	0x1
	.uaword	0x1a3b
	.uleb128 0x16
	.uaword	.LVL58
	.uaword	0x1aa1
	.uleb128 0x16
	.uaword	.LVL59
	.uaword	0x1a8a
	.uleb128 0x16
	.uaword	.LVL60
	.uaword	0x1b28
	.uleb128 0x16
	.uaword	.LVL61
	.uaword	0x1b3b
	.uleb128 0x16
	.uaword	.LVL62
	.uaword	0x1b53
	.uleb128 0x16
	.uaword	.LVL69
	.uaword	0x1b69
	.uleb128 0x16
	.uaword	.LVL70
	.uaword	0x1b78
	.uleb128 0x16
	.uaword	.LVL71
	.uaword	0x1b28
	.uleb128 0x16
	.uaword	.LVL72
	.uaword	0x1b3b
	.uleb128 0x16
	.uaword	.LVL73
	.uaword	0x1b89
	.uleb128 0x16
	.uaword	.LVL81
	.uaword	0x1b69
	.uleb128 0x16
	.uaword	.LVL82
	.uaword	0x1b78
	.uleb128 0x16
	.uaword	.LVL86
	.uaword	0x1abe
	.uleb128 0x16
	.uaword	.LVL87
	.uaword	0x1ad7
	.uleb128 0x16
	.uaword	.LVL96
	.uaword	0x1ba2
	.uleb128 0x16
	.uaword	.LVL97
	.uaword	0xde1
	.byte	0
	.uleb128 0x2f
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x2f
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x30
	.string	"task_cnt_10_3m"
	.byte	0x1
	.byte	0x5
	.uaword	0x239
	.byte	0
	.uleb128 0x30
	.string	"task_cnt_10_5m"
	.byte	0x1
	.byte	0x6
	.uaword	0x239
	.byte	0
	.uleb128 0x2f
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x9
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x2f
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0xa
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x12
	.uaword	0x312
	.uaword	0x149b
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x2
	.byte	0
	.uleb128 0x31
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x7
	.byte	0x96
	.uaword	0x14b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.uaword	0x148b
	.uleb128 0x31
	.string	"Assert_verboseLevel"
	.byte	0xc
	.byte	0x79
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"IR_Srv"
	.byte	0x6
	.byte	0x70
	.uaword	0x8c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x255
	.uaword	0x14f5
	.uleb128 0x33
	.byte	0
	.uleb128 0x31
	.string	"IR_AdcResult"
	.byte	0xd
	.byte	0x29
	.uaword	0x14ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"IR_Encoder"
	.byte	0x9
	.byte	0x2d
	.uaword	0x9ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"Ifx_g_console"
	.byte	0xa
	.byte	0x2c
	.uaword	0x9f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"IR_Ctrl"
	.byte	0xb
	.byte	0x54
	.uaword	0xa44
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.string	"IR_LineData"
	.byte	0xb
	.byte	0x55
	.uaword	0xc05
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0xc
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x34
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0xd
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x34
	.string	"task_flag_10_3m"
	.byte	0x1
	.byte	0xe
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10_3m
	.uleb128 0x34
	.string	"task_flag_10_5m"
	.byte	0x1
	.byte	0xf
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10_5m
	.uleb128 0x34
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0x11
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x34
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0x12
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x34
	.string	"testVol"
	.byte	0x1
	.byte	0x14
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testVol
	.uleb128 0x34
	.string	"testSrv"
	.byte	0x1
	.byte	0x15
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSrv
	.uleb128 0x34
	.string	"signORunsign"
	.byte	0x1
	.byte	0x16
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	signORunsign
	.uleb128 0x34
	.string	"Obstacle_flag"
	.byte	0x1
	.byte	0x17
	.uaword	0x247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Obstacle_flag
	.uleb128 0x34
	.string	"Speed_Out_Of_School_Zone"
	.byte	0x1
	.byte	0x18
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_Out_Of_School_Zone
	.uleb128 0x34
	.string	"Speed_In_School_Zone"
	.byte	0x1
	.byte	0x18
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_In_School_Zone
	.uleb128 0x34
	.string	"Speed_swap"
	.byte	0x1
	.byte	0x18
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_swap
	.uleb128 0x34
	.string	"P"
	.byte	0x1
	.byte	0x19
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	P
	.uleb128 0x34
	.string	"I"
	.byte	0x1
	.byte	0x19
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	I
	.uleb128 0x34
	.string	"D"
	.byte	0x1
	.byte	0x19
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	D
	.uleb128 0x34
	.string	"time"
	.byte	0x1
	.byte	0x1a
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	time
	.uleb128 0x34
	.string	"speed_min"
	.byte	0x1
	.byte	0x1b
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_min
	.uleb128 0x34
	.string	"speed_max"
	.byte	0x1
	.byte	0x1b
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_max
	.uleb128 0x34
	.string	"WHICH_LANE"
	.byte	0x1
	.byte	0x1c
	.uaword	0x247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WHICH_LANE
	.uleb128 0x34
	.string	"TEMP_REMAIN"
	.byte	0x1
	.byte	0x1d
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TEMP_REMAIN
	.uleb128 0x35
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xe
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xf
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0x6
	.byte	0x7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xd
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0x9
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
	.byte	0xb
	.byte	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
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
	.uaword	0x1862
	.uleb128 0x19
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"BasicGpt12Enc_IR_Encoder_reset"
	.byte	0x9
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
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
	.uahalf	0x216
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x18ba
	.uleb128 0x19
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0x6
	.byte	0x78
	.byte	0x1
	.byte	0x1
	.uaword	0x18d9
	.uleb128 0xe
	.uaword	0x255
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0x6
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x18f9
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
	.uaword	0x190d
	.uleb128 0x19
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Direction_CENTER_RIGHT"
	.byte	0xb
	.byte	0x97
	.byte	0x1
	.uaword	0x255
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xd
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Checking_PSD"
	.byte	0xd
	.byte	0x32
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xe
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"median_filter"
	.byte	0xb
	.byte	0x64
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"threshold_LINE"
	.byte	0xb
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"IsInSchoolZone_THRESHOLD"
	.byte	0xb
	.byte	0x85
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"clearBuffer"
	.byte	0xb
	.byte	0x7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"clearBuffer_RIGHT"
	.byte	0xb
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"IsOutSchoolZone_THRESHOLD"
	.byte	0xb
	.byte	0x84
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0x6
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xf
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
	.uleb128 0x37
	.byte	0x1
	.string	"get_Dash"
	.byte	0xb
	.byte	0x76
	.byte	0x1
	.uaword	0x247
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"left_FIRST"
	.byte	0xb
	.byte	0x73
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"is_THRESHOLD"
	.byte	0xb
	.byte	0x70
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"is_THRESHOLD_RIGHT"
	.byte	0xb
	.byte	0x72
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Boundary_RIGHT"
	.byte	0xb
	.byte	0x8d
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Over_Boundary_RIGHT"
	.byte	0xb
	.byte	0x92
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"isEndOfRIGHT"
	.byte	0xb
	.byte	0x8a
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0xb
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Boundary"
	.byte	0xb
	.byte	0x88
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Over_Boundary"
	.byte	0xb
	.byte	0x8f
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"isEndOfLEFT"
	.byte	0xb
	.byte	0x89
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"resetPSD"
	.byte	0xd
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"clear_Dash"
	.byte	0xb
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Over_Boundary2"
	.byte	0xb
	.byte	0x90
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"Direction_CENTER"
	.byte	0xb
	.byte	0x96
	.byte	0x1
	.uaword	0x255
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x37
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
	.uaword	.LVL38
	.uaword	.LVL42
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL38
	.uaword	.LVL42
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x428c0000
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40800000
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc1f00000
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3eb33333
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42480000
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40400000
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL78
	.uaword	.LVL80
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL78
	.uaword	.LVL80
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40b00000
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40b00000
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2a00000
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3dcccccc
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2480000
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3e800000
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
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
	.extern	Direction_CENTER,STT_FUNC,0
	.extern	Over_Boundary2,STT_FUNC,0
	.extern	clear_Dash,STT_FUNC,0
	.extern	resetPSD,STT_FUNC,0
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
	.extern	IsOutSchoolZone_THRESHOLD,STT_FUNC,0
	.extern	clearBuffer_RIGHT,STT_FUNC,0
	.extern	clearBuffer,STT_FUNC,0
	.extern	IsInSchoolZone_THRESHOLD,STT_FUNC,0
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
