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
	.loc 1 23 0
	.loc 1 24 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 33 0
	movh.a	%a15, hi:P
	.loc 1 25 0
	call	BasicPort_init
.LVL1:
	.loc 1 26 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 27 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 28 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 29 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 30 0
	call	PID_init
.LVL6:
	.loc 1 33 0
	ld.w	%d4, [%a15] lo:P
	movh.a	%a15, hi:I
	ld.w	%d5, [%a15] lo:I
	movh.a	%a15, hi:D
	ld.w	%d6, [%a15] lo:D
	.loc 1 34 0
	movh.a	%a15, hi:time
	.loc 1 33 0
	call	set_propotion
.LVL7:
	.loc 1 34 0
	ld.w	%d4, [%a15] lo:time
	.loc 1 35 0
	movh.a	%a15, hi:speed_min
	.loc 1 34 0
	call	set_SamplingTime
.LVL8:
	.loc 1 35 0
	ld.w	%d4, [%a15] lo:speed_min
	movh.a	%a15, hi:speed_max
	ld.w	%d5, [%a15] lo:speed_max
	.loc 1 37 0
	mov	%d15, 0
	movh.a	%a15, hi:IR_Encoder
	.loc 1 35 0
	call	set_Min_Max_Output
.LVL9:
	.loc 1 37 0
	lea	%a15, [%a15] lo:IR_Encoder
	st.w	[%a15] 16, %d15
	.loc 1 47 0
	j	InfineonRacer_init
.LVL10:
.LFE724:
	.size	appTaskfu_init, .-appTaskfu_init
.section .text.appTaskfu_1ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1ms
	.type	appTaskfu_1ms, @function
appTaskfu_1ms:
.LFB725:
	.loc 1 56 0
	.loc 1 57 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 58 0
	mov	%d2, 1000
	.loc 1 57 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1m, %d15
	.loc 1 58 0
	jeq	%d15, %d2, .L7
	.loc 1 63 0
	mov	%d2, 100
	div	%e2, %d15, %d2
	jz	%d3, .L4
	.loc 1 67 0
	call	BasicGpt12Enc_run
.LVL11:
	.loc 1 68 0
	call	SpeedCalculation
.LVL12:
	.loc 1 69 0
	j	Speed_Buff
.LVL13:
.L7:
	.loc 1 59 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1m, %d15
.L4:
	.loc 1 65 0
	call	BasicGpt12Enc_IR_Encoder_reset
.LVL14:
	.loc 1 67 0
	call	BasicGpt12Enc_run
.LVL15:
	.loc 1 68 0
	call	SpeedCalculation
.LVL16:
	.loc 1 69 0
	j	Speed_Buff
.LVL17:
.LFE725:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB727:
	.loc 1 353 0
	.loc 1 354 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 362 0
	mov	%d2, 1000
	.loc 1 354 0
	add	%d15, 1
	.loc 1 362 0
	jne	%d15, %d2, .L11
	.loc 1 363 0
	mov	%d15, 0
.L11:
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
	.loc 1 379 0
	.loc 1 380 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 407 0
	mov	%d2, 1000
	.loc 1 380 0
	add	%d15, 1
	.loc 1 407 0
	jne	%d15, %d2, .L15
	.loc 1 408 0
	mov	%d15, 0
.L15:
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
	.loc 1 419 0
	.loc 1 420 0
	call	AsclinShellInterface_run
.LVL18:
	.loc 1 426 0
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
	.loc 1 430 0
	ret
.LFE730:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
	.global	__extendsfdf2
	.global	__subdf3
	.global	__truncdfsf2
.section .text.SrvControl,"ax",@progbits
	.align 1
	.global	SrvControl
	.type	SrvControl, @function
SrvControl:
.LFB731:
	.loc 1 437 0
.LVL20:
	.loc 1 439 0
	movh	%d15, 17112
	div.f	%d4, %d4, %d15
.LVL21:
	call	__extendsfdf2
.LVL22:
	mov	%e6, %d3, %d2
	movh	%d5, 49114
	movh	%d4, 39322
	addi	%d5, %d5, -26215
	addi	%d4, %d4, -26214
	call	__subdf3
.LVL23:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL24:
	.loc 1 440 0
	mov	%d4, %d2
	j	IR_setSrvAngle
.LVL25:
.LFE731:
	.size	SrvControl, .-SrvControl
.section .text.AEB,"ax",@progbits
	.align 1
	.global	AEB
	.type	AEB, @function
AEB:
.LFB732:
	.loc 1 445 0
	.loc 1 446 0
	movh	%d4, 49024
	j	IR_setMotor0Vol
.LVL26:
.LFE732:
	.size	AEB, .-AEB
.section .text.Avoid,"ax",@progbits
	.align 1
	.global	Avoid
	.type	Avoid, @function
Avoid:
.LFB733:
	.loc 1 449 0
	.loc 1 450 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L22
	jne	%d15, 2, .L25
	.loc 1 455 0
	movh	%d4, 48717
	addi	%d4, %d4, -13107
	j	IR_setSrvAngle
.LVL27:
.L25:
	ret
.L22:
	.loc 1 452 0
	movh	%d4, 49024
	j	IR_setSrvAngle
.LVL28:
.LFE733:
	.size	Avoid, .-Avoid
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB726:
	.loc 1 79 0
	.loc 1 80 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 84 0
	call	Speed_Buff
.LVL29:
	.loc 1 85 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 50
	div	%e2, %d15, %d2
	jz	%d3, .L68
.L27:
	.loc 1 102 0
	call	Speed_Avg
.LVL30:
	.loc 1 105 0
	call	BasicVadcBgScan_run
.LVL31:
	.loc 1 107 0
	call	Checking_PSD
.LVL32:
	.loc 1 108 0
	movh.a	%a12, hi:Obstacle_flag
	.loc 1 107 0
	jz	%d2, .L30
	.loc 1 108 0
	mov	%d15, 1
	.loc 1 109 0
	movh.a	%a13, hi:IR_LineData
	lea	%a13, [%a13] lo:IR_LineData
	.loc 1 111 0
	ld.bu	%d2, [%a13] 574
	.loc 1 108 0
	st.w	[%a12] lo:Obstacle_flag, %d15
	.loc 1 109 0
	st.w	[%a13] 588, %d15
	.loc 1 111 0
	jnz	%d2, .L69
.L30:
	.loc 1 153 0
	call	BasicLineScan_run
.LVL33:
	.loc 1 155 0
	call	median_filter
.LVL34:
	.loc 1 156 0
	call	Line_Buffer
.LVL35:
	.loc 1 159 0
	call	median_filter_RIGHT
.LVL36:
	.loc 1 160 0
	call	Line_Buffer_RIGHT
.LVL37:
	.loc 1 164 0
	call	threshold_LINE
.LVL38:
	.loc 1 165 0
	call	threshold_LINE_RIGHT
.LVL39:
	.loc 1 168 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 50
	div	%e2, %d15, %d2
	jnz	%d3, .L39
	.loc 1 169 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 574
	jnz	%d15, .L40
	.loc 1 170 0
	call	IsInSchoolZone_THRESHOLD
.LVL40:
.L39:
	.loc 1 175 0
	ld.w	%d15, [%a12] lo:Obstacle_flag
	jz	%d15, .L70
.L41:
	.loc 1 211 0
	jeq	%d15, 3, .L71
.L45:
	.loc 1 250 0
	call	clearBuffer
.LVL41:
	.loc 1 251 0
	call	clearBuffer_RIGHT
.LVL42:
	.loc 1 328 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jeq	%d15, %d2, .L72
	.loc 1 332 0
	jz.t	%d15, 0, .L55
	ret
.L40:
	.loc 1 172 0
	call	IsOutSchoolZone_THRESHOLD
.LVL43:
	.loc 1 175 0
	ld.w	%d15, [%a12] lo:Obstacle_flag
	jnz	%d15, .L41
.L70:
	.loc 1 176 0
	call	is_THRESHOLD
.LVL44:
	jnz	%d2, .L42
	.loc 1 177 0
	call	is_THRESHOLD_RIGHT
.LVL45:
	jz	%d2, .L43
	.loc 1 178 0
	call	Boundary_RIGHT
.LVL46:
	jz	%d2, .L45
	.loc 1 179 0
	call	Over_Boundary_RIGHT
.LVL47:
	jz	%d2, .L49
	.loc 1 184 0
	call	Direction_CENTER_RIGHT
.LVL48:
	j	.L67
.L72:
	.loc 1 329 0
	mov	%d15, 0
	movh.a	%a15, hi:task_cnt_10m
	st.w	[%a15] lo:task_cnt_10m, %d15
.L55:
.LBB15:
	.loc 1 338 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 334 0
	call	BasicGtmTom_run
.LVL49:
	.loc 1 335 0
	call	BasicPort_run
.LVL50:
	.loc 1 338 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L73
	.loc 1 347 0
	j	AsclinShellInterface_runEncScan
.LVL51:
.L68:
.LBE15:
	.loc 1 86 0
	call	Speed_Avg
.LVL52:
	.loc 1 87 0
	call	SpeedCalculation
.LVL53:
	mov	%d4, %d2
	call	get_Speed
.LVL54:
	.loc 1 89 0
	call	initial_speed
.LVL55:
	jnz	%d2, .L28
	.loc 1 90 0
	movh	%d4, 48947
	addi	%d4, %d4, 13107
	call	IR_setMotor0Vol
.LVL56:
	j	.L27
.L42:
	.loc 1 195 0
	call	Boundary
.LVL57:
	jz	%d2, .L45
	.loc 1 196 0
	call	Over_Boundary
.LVL58:
	jnz	%d2, .L48
	.loc 1 197 0
	call	Direction_CENTER
.LVL59:
.L67:
.LBB16:
.LBB17:
	.loc 1 439 0
	movh	%d4, 17112
	div.f	%d4, %d2, %d4
	call	__extendsfdf2
.LVL60:
	mov	%e6, %d3, %d2
	movh	%d5, 49114
	movh	%d4, 39322
	addi	%d5, %d5, -26215
	addi	%d4, %d4, -26214
	call	__subdf3
.LVL61:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL62:
	.loc 1 440 0
	mov	%d4, %d2
	call	IR_setSrvAngle
.LVL63:
	j	.L45
.L28:
.LBE17:
.LBE16:
	.loc 1 94 0
	movh.a	%a2, hi:Speed_Out_Of_School_Zone
	ld.w	%d4, [%a2] lo:Speed_Out_Of_School_Zone
	call	set_Speed
.LVL64:
	.loc 1 95 0
	call	PID_control
.LVL65:
	.loc 1 96 0
	call	next_Vol
.LVL66:
	mov	%d4, %d2
	call	IR_setMotor0Vol
.LVL67:
	j	.L27
.L69:
	.loc 1 116 0
	call	get_Dash
.LVL68:
	.loc 1 119 0
	movh.a	%a14, hi:WHICH_LANE
	.loc 1 116 0
	jeq	%d2, 1, .L33
	jeq	%d2, 2, .L34
.L32:
	.loc 1 126 0
	call	Avoid
.LVL69:
	.loc 1 129 0
	ld.w	%d15, [%a14] lo:WHICH_LANE
	jeq	%d15, 1, .L35
	jne	%d15, 2, .L30
	.loc 1 138 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d15, [%a2] 4
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L30
.L38:
	.loc 1 132 0
	mov	%d15, 3
	st.w	[%a12] lo:Obstacle_flag, %d15
	.loc 1 133 0
	st.w	[%a13] 588, %d15
	j	.L30
.L73:
.LBB18:
	.loc 1 340 0
	call	InfineonRacer_control
.LVL70:
	.loc 1 347 0
	j	AsclinShellInterface_runEncScan
.LVL71:
.L71:
.LBE18:
	.loc 1 212 0
	call	Avoid
.LVL72:
	.loc 1 227 0
	movh.a	%a2, hi:WHICH_LANE
	ld.w	%d15, [%a2] lo:WHICH_LANE
	jeq	%d15, 1, .L50
	jne	%d15, 2, .L45
	.loc 1 238 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d15, [%a2] 8
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L45
.L53:
	.loc 1 230 0
	mov	%d15, 0
	.loc 1 231 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	st.w	[%a2] 588, %d15
	.loc 1 230 0
	st.w	[%a12] lo:Obstacle_flag, %d15
	.loc 1 232 0
	call	resetPSD
.LVL73:
	.loc 1 233 0
	call	clear_Dash
.LVL74:
	j	.L45
.L48:
	.loc 1 200 0
	call	isEndOfLEFT
.LVL75:
	jz	%d2, .L49
.L43:
.LVL76:
.LBB19:
.LBB20:
	.loc 1 440 0
	movh	%d4, 49066
	addi	%d4, %d4, -18447
	call	IR_setSrvAngle
.LVL77:
	j	.L45
.LVL78:
.L34:
.LBE20:
.LBE19:
	.loc 1 122 0
	st.w	[%a14] lo:WHICH_LANE, %d15
	.loc 1 123 0
	j	.L32
.L35:
	.loc 1 131 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d15, [%a2] 8
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L30
	j	.L38
.L33:
	.loc 1 119 0
	mov	%d15, 2
	st.w	[%a14] lo:WHICH_LANE, %d15
	.loc 1 120 0
	j	.L32
.L50:
	.loc 1 229 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d15, [%a2] 4
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jz.t	%d15, 0, .L45
	j	.L53
.L49:
.LVL79:
.LBB21:
.LBB22:
	.loc 1 440 0
	movh	%d4, 16135
	addi	%d4, %d4, -23787
	call	IR_setSrvAngle
.LVL80:
	j	.L45
.LBE22:
.LBE21:
.LFE726:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
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
	.word	1092616192
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
	.uaword	.LFB727
	.uaword	.LFE727-.LFB727
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
	.uaword	.LFB726
	.uaword	.LFE726-.LFB726
	.align 2
.LEFDE18:
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
	.uaword	0x18c1
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
	.uahalf	0x250
	.byte	0xa
	.byte	0x38
	.uaword	0xb80
	.uleb128 0x8
	.string	"Result"
	.byte	0xa
	.byte	0x39
	.uaword	0xb80
	.byte	0
	.uleb128 0x11
	.string	"Transfer"
	.byte	0xa
	.byte	0x3a
	.uaword	0xb90
	.uahalf	0x208
	.uleb128 0x11
	.string	"sample"
	.byte	0xa
	.byte	0x3c
	.uaword	0xba0
	.uahalf	0x214
	.uleb128 0x11
	.string	"temp"
	.byte	0xa
	.byte	0x3d
	.uaword	0x25f
	.uahalf	0x228
	.uleb128 0x11
	.string	"previous"
	.byte	0xa
	.byte	0x3f
	.uaword	0x251
	.uahalf	0x22c
	.uleb128 0x11
	.string	"present"
	.byte	0xa
	.byte	0x40
	.uaword	0x251
	.uahalf	0x230
	.uleb128 0x11
	.string	"previous_RIGHT"
	.byte	0xa
	.byte	0x41
	.uaword	0x251
	.uahalf	0x234
	.uleb128 0x11
	.string	"present_RIGHT"
	.byte	0xa
	.byte	0x42
	.uaword	0x251
	.uahalf	0x238
	.uleb128 0x11
	.string	"Direction_Determined"
	.byte	0xa
	.byte	0x44
	.uaword	0x26e
	.uahalf	0x23c
	.uleb128 0x11
	.string	"Direction_Determined_RIGHT"
	.byte	0xa
	.byte	0x45
	.uaword	0x26e
	.uahalf	0x23d
	.uleb128 0x11
	.string	"School_Zone_flag"
	.byte	0xa
	.byte	0x46
	.uaword	0x26e
	.uahalf	0x23e
	.uleb128 0x11
	.string	"Dash_Left"
	.byte	0xa
	.byte	0x48
	.uaword	0x251
	.uahalf	0x240
	.uleb128 0x11
	.string	"Dash_Right"
	.byte	0xa
	.byte	0x49
	.uaword	0x251
	.uahalf	0x244
	.uleb128 0x11
	.string	"Next_Lane"
	.byte	0xa
	.byte	0x4a
	.uaword	0x251
	.uahalf	0x248
	.uleb128 0x11
	.string	"SchoolZone_Status"
	.byte	0xa
	.byte	0x4c
	.uaword	0x251
	.uahalf	0x24c
	.byte	0
	.uleb128 0x12
	.uaword	0x1eb
	.uaword	0xb90
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x81
	.byte	0
	.uleb128 0x12
	.uaword	0x1eb
	.uaword	0xba0
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uaword	0x251
	.uaword	0xbb0
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"LineData"
	.byte	0xa
	.byte	0x4d
	.uaword	0xa34
	.uleb128 0x14
	.byte	0x1
	.string	"SrvControl"
	.byte	0x1
	.uahalf	0x1b5
	.byte	0x1
	.byte	0x1
	.uaword	0xbf3
	.uleb128 0x15
	.string	"diff"
	.byte	0x1
	.uahalf	0x1b5
	.uaword	0x25f
	.uleb128 0x16
	.string	"result"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x25f
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.uaword	.LFB724
	.uaword	.LFE724
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc7b
	.uleb128 0x18
	.uaword	.LVL0
	.uaword	0x1378
	.uleb128 0x18
	.uaword	.LVL1
	.uaword	0x1391
	.uleb128 0x18
	.uaword	.LVL2
	.uaword	0x13a6
	.uleb128 0x18
	.uaword	.LVL3
	.uaword	0x13bd
	.uleb128 0x18
	.uaword	.LVL4
	.uaword	0x13d8
	.uleb128 0x18
	.uaword	.LVL5
	.uaword	0x13f1
	.uleb128 0x18
	.uaword	.LVL6
	.uaword	0x1411
	.uleb128 0x18
	.uaword	.LVL7
	.uaword	0x1420
	.uleb128 0x18
	.uaword	.LVL8
	.uaword	0x1448
	.uleb128 0x18
	.uaword	.LVL9
	.uaword	0x1469
	.uleb128 0x19
	.uaword	.LVL10
	.byte	0x1
	.uaword	0x1491
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	.LFB725
	.uaword	.LFE725
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcf2
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x45
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xcb0
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.uaword	.LVL11
	.uaword	0x14aa
	.uleb128 0x18
	.uaword	.LVL12
	.uaword	0x14c2
	.uleb128 0x19
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x14dd
	.uleb128 0x18
	.uaword	.LVL14
	.uaword	0x14f0
	.uleb128 0x18
	.uaword	.LVL15
	.uaword	0x14aa
	.uleb128 0x18
	.uaword	.LVL16
	.uaword	0x14c2
	.uleb128 0x19
	.uaword	.LVL17
	.byte	0x1
	.uaword	0x14dd
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.uahalf	0x160
	.byte	0x1
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.uahalf	0x17a
	.byte	0x1
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.uahalf	0x1a3
	.byte	0x1
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd81
	.uleb128 0x1e
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xd6d
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.uaword	.LVL18
	.uaword	0x1515
	.uleb128 0x19
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x1534
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.uahalf	0x1ae
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1f
	.uaword	0xbc0
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdd0
	.uleb128 0x20
	.uaword	0xbd6
	.uaword	.LLST0
	.uleb128 0x21
	.uaword	0xbe3
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	.LVL25
	.byte	0x1
	.uaword	0x1548
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"AEB"
	.byte	0x1
	.uahalf	0x1bd
	.byte	0x1
	.uaword	.LFB732
	.uaword	.LFE732
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe01
	.uleb128 0x22
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x1567
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Avoid"
	.byte	0x1
	.uahalf	0x1c1
	.byte	0x1
	.uaword	.LFB733
	.uaword	.LFE733
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe3e
	.uleb128 0x19
	.uaword	.LVL27
	.byte	0x1
	.uaword	0x1548
	.uleb128 0x22
	.uaword	.LVL28
	.byte	0x1
	.uaword	0x1548
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10c5
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x45
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xe74
	.uleb128 0x1b
	.byte	0
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0
	.uaword	0xec1
	.uleb128 0x1e
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xe91
	.uleb128 0x1b
	.byte	0
	.uleb128 0x18
	.uaword	.LVL49
	.uaword	0x1587
	.uleb128 0x18
	.uaword	.LVL50
	.uaword	0x159d
	.uleb128 0x19
	.uaword	.LVL51
	.byte	0x1
	.uaword	0x15b1
	.uleb128 0x18
	.uaword	.LVL70
	.uaword	0x15c5
	.uleb128 0x19
	.uaword	.LVL71
	.byte	0x1
	.uaword	0x15b1
	.byte	0
	.uleb128 0x26
	.uaword	0xbc0
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x1
	.byte	0xc5
	.uaword	0xefa
	.uleb128 0x20
	.uaword	0xbd6
	.uaword	.LLST2
	.uleb128 0x27
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x21
	.uaword	0xbe3
	.uaword	.LLST3
	.uleb128 0x18
	.uaword	.LVL63
	.uaword	0x1548
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0xbc0
	.uaword	.LBB19
	.uaword	.LBE19
	.byte	0x1
	.byte	0xbf
	.uaword	0xf33
	.uleb128 0x20
	.uaword	0xbd6
	.uaword	.LLST4
	.uleb128 0x27
	.uaword	.LBB20
	.uaword	.LBE20
	.uleb128 0x21
	.uaword	0xbe3
	.uaword	.LLST5
	.uleb128 0x18
	.uaword	.LVL77
	.uaword	0x1548
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0xbc0
	.uaword	.LBB21
	.uaword	.LBE21
	.byte	0x1
	.byte	0xb5
	.uaword	0xf6e
	.uleb128 0x28
	.uaword	0xbd6
	.byte	0x4
	.uaword	0xc2c80000
	.uleb128 0x27
	.uaword	.LBB22
	.uaword	.LBE22
	.uleb128 0x29
	.uaword	0xbe3
	.byte	0x4
	.uaword	0x3f06a315
	.uleb128 0x18
	.uaword	.LVL80
	.uaword	0x1548
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	.LVL29
	.uaword	0x14dd
	.uleb128 0x18
	.uaword	.LVL30
	.uaword	0x15e1
	.uleb128 0x18
	.uaword	.LVL31
	.uaword	0x15f1
	.uleb128 0x18
	.uaword	.LVL32
	.uaword	0x160b
	.uleb128 0x18
	.uaword	.LVL33
	.uaword	0x1622
	.uleb128 0x18
	.uaword	.LVL34
	.uaword	0x163a
	.uleb128 0x18
	.uaword	.LVL35
	.uaword	0x164e
	.uleb128 0x18
	.uaword	.LVL36
	.uaword	0x1660
	.uleb128 0x18
	.uaword	.LVL37
	.uaword	0x167a
	.uleb128 0x18
	.uaword	.LVL38
	.uaword	0x1692
	.uleb128 0x18
	.uaword	.LVL39
	.uaword	0x16a7
	.uleb128 0x18
	.uaword	.LVL40
	.uaword	0x16c2
	.uleb128 0x18
	.uaword	.LVL41
	.uaword	0x16e5
	.uleb128 0x18
	.uaword	.LVL42
	.uaword	0x16f7
	.uleb128 0x18
	.uaword	.LVL43
	.uaword	0x170f
	.uleb128 0x18
	.uaword	.LVL44
	.uaword	0x1733
	.uleb128 0x18
	.uaword	.LVL45
	.uaword	0x174a
	.uleb128 0x18
	.uaword	.LVL46
	.uaword	0x1767
	.uleb128 0x18
	.uaword	.LVL47
	.uaword	0x1780
	.uleb128 0x18
	.uaword	.LVL48
	.uaword	0x179e
	.uleb128 0x18
	.uaword	.LVL52
	.uaword	0x15e1
	.uleb128 0x18
	.uaword	.LVL53
	.uaword	0x14c2
	.uleb128 0x18
	.uaword	.LVL54
	.uaword	0x17bf
	.uleb128 0x18
	.uaword	.LVL55
	.uaword	0x17d9
	.uleb128 0x18
	.uaword	.LVL56
	.uaword	0x1567
	.uleb128 0x18
	.uaword	.LVL57
	.uaword	0x17f1
	.uleb128 0x18
	.uaword	.LVL58
	.uaword	0x1804
	.uleb128 0x18
	.uaword	.LVL59
	.uaword	0x181c
	.uleb128 0x18
	.uaword	.LVL64
	.uaword	0x1837
	.uleb128 0x18
	.uaword	.LVL65
	.uaword	0x1851
	.uleb128 0x18
	.uaword	.LVL66
	.uaword	0x1863
	.uleb128 0x18
	.uaword	.LVL67
	.uaword	0x1567
	.uleb128 0x18
	.uaword	.LVL68
	.uaword	0x187b
	.uleb128 0x18
	.uaword	.LVL69
	.uaword	0xe01
	.uleb128 0x18
	.uaword	.LVL72
	.uaword	0xe01
	.uleb128 0x18
	.uaword	.LVL73
	.uaword	0x188e
	.uleb128 0x18
	.uaword	.LVL74
	.uaword	0x189d
	.uleb128 0x18
	.uaword	.LVL75
	.uaword	0x18ae
	.byte	0
	.uleb128 0x2a
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x2a
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x2a
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x2a
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x12
	.uaword	0x312
	.uaword	0x113f
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x2
	.byte	0
	.uleb128 0x2b
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0x115c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.uaword	0x112f
	.uleb128 0x2b
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x251
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x25f
	.uaword	0x1189
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2b
	.string	"IR_AdcResult"
	.byte	0xc
	.byte	0x29
	.uaword	0x117e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"IR_Encoder"
	.byte	0x8
	.byte	0x2d
	.uaword	0x987
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"Ifx_g_console"
	.byte	0x9
	.byte	0x2c
	.uaword	0x9cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"IR_Ctrl"
	.byte	0xa
	.byte	0x52
	.uaword	0xa1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"IR_LineData"
	.byte	0xa
	.byte	0x53
	.uaword	0xbb0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x2e
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x2e
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x2e
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x2e
	.string	"testVol"
	.byte	0x1
	.byte	0xd
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testVol
	.uleb128 0x2e
	.string	"testSrv"
	.byte	0x1
	.byte	0xe
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSrv
	.uleb128 0x2e
	.string	"signORunsign"
	.byte	0x1
	.byte	0xf
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	signORunsign
	.uleb128 0x2e
	.string	"Obstacle_flag"
	.byte	0x1
	.byte	0x10
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Obstacle_flag
	.uleb128 0x2e
	.string	"Speed_Out_Of_School_Zone"
	.byte	0x1
	.byte	0x11
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_Out_Of_School_Zone
	.uleb128 0x2e
	.string	"P"
	.byte	0x1
	.byte	0x12
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	P
	.uleb128 0x2e
	.string	"I"
	.byte	0x1
	.byte	0x12
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	I
	.uleb128 0x2e
	.string	"D"
	.byte	0x1
	.byte	0x12
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	D
	.uleb128 0x2e
	.string	"time"
	.byte	0x1
	.byte	0x13
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	time
	.uleb128 0x2e
	.string	"speed_min"
	.byte	0x1
	.byte	0x14
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_min
	.uleb128 0x2e
	.string	"speed_max"
	.byte	0x1
	.byte	0x14
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_max
	.uleb128 0x2e
	.string	"WHICH_LANE"
	.byte	0x1
	.byte	0x15
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WHICH_LANE
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xd
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xe
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0xf
	.byte	0x7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xc
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0x8
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0x10
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"PID_init"
	.byte	0x11
	.byte	0x39
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"set_propotion"
	.byte	0x11
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.uaword	0x1448
	.uleb128 0xe
	.uaword	0x25f
	.uleb128 0xe
	.uaword	0x25f
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"set_SamplingTime"
	.byte	0x11
	.byte	0x3e
	.byte	0x1
	.byte	0x1
	.uaword	0x1469
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"set_Min_Max_Output"
	.byte	0x11
	.byte	0x3f
	.byte	0x1
	.byte	0x1
	.uaword	0x1491
	.uleb128 0xe
	.uaword	0x25f
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0xa
	.byte	0x5c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicGpt12Enc_run"
	.byte	0x8
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"SpeedCalculation"
	.byte	0x8
	.byte	0x37
	.byte	0x1
	.uaword	0x25f
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x45
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x14f0
	.uleb128 0x1b
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicGpt12Enc_IR_Encoder_reset"
	.byte	0x8
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0x10
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x1548
	.uleb128 0x1b
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0xf
	.byte	0x78
	.byte	0x1
	.byte	0x1
	.uaword	0x1567
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0xf
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x1587
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0xf
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xe
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x15c5
	.uleb128 0x1b
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0xa
	.byte	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"Speed_Avg"
	.byte	0x8
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xc
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Checking_PSD"
	.byte	0xc
	.byte	0x32
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xd
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"median_filter"
	.byte	0xa
	.byte	0x62
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"Line_Buffer"
	.byte	0xa
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"median_filter_RIGHT"
	.byte	0xa
	.byte	0x66
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"Line_Buffer_RIGHT"
	.byte	0xa
	.byte	0x65
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"threshold_LINE"
	.byte	0xa
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"threshold_LINE_RIGHT"
	.byte	0xa
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"IsInSchoolZone_THRESHOLD"
	.byte	0xa
	.byte	0x82
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"clearBuffer"
	.byte	0xa
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"clearBuffer_RIGHT"
	.byte	0xa
	.byte	0x7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"IsOutSchoolZone_THRESHOLD"
	.byte	0xa
	.byte	0x81
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"is_THRESHOLD"
	.byte	0xa
	.byte	0x6e
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"is_THRESHOLD_RIGHT"
	.byte	0xa
	.byte	0x70
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Boundary_RIGHT"
	.byte	0xa
	.byte	0x88
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Over_Boundary_RIGHT"
	.byte	0xa
	.byte	0x8b
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Direction_CENTER_RIGHT"
	.byte	0xa
	.byte	0x90
	.byte	0x1
	.uaword	0x25f
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"get_Speed"
	.byte	0x11
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.uaword	0x17d9
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"initial_speed"
	.byte	0x11
	.byte	0x41
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Boundary"
	.byte	0xa
	.byte	0x85
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Over_Boundary"
	.byte	0xa
	.byte	0x8a
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Direction_CENTER"
	.byte	0xa
	.byte	0x8f
	.byte	0x1
	.uaword	0x25f
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"set_Speed"
	.byte	0x11
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.uaword	0x1851
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"PID_control"
	.byte	0x11
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"next_Vol"
	.byte	0x11
	.byte	0x40
	.uaword	0x25f
	.byte	0x1
	.uaword	0x187b
	.uleb128 0x1b
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"get_Dash"
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.uaword	0x251
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"resetPSD"
	.byte	0xc
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"clear_Dash"
	.byte	0xa
	.byte	0x74
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"isEndOfLEFT"
	.byte	0xa
	.byte	0x86
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LFE731
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x21
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0xbfd99999
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
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE731
	.uahalf	0x23
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0xbfd99999
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
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x21
	.byte	0xf4
	.uleb128 0x1c0
	.byte	0x8
	.uaword	0x9999999a
	.uaword	0xbfd99999
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
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbfa9b7f1
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x64
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
	.uaword	.LFB727
	.uaword	.LFE727-.LFB727
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
	.uaword	.LFB726
	.uaword	.LFE726-.LFB726
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	0
	.uaword	0
	.uaword	.LFB724
	.uaword	.LFE724
	.uaword	.LFB725
	.uaword	.LFE725
	.uaword	.LFB727
	.uaword	.LFE727
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
	.uaword	.LFB726
	.uaword	.LFE726
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"AsclinShellInterface_runEncScan"
.LASF1:
	.string	"BasicGpt12Enc_IR_Encoder_turn"
.LASF0:
	.string	"Speed_Buff"
	.extern	isEndOfLEFT,STT_FUNC,0
	.extern	clear_Dash,STT_FUNC,0
	.extern	resetPSD,STT_FUNC,0
	.extern	InfineonRacer_control,STT_FUNC,0
	.extern	IR_AdcResult,STT_OBJECT,-1
	.extern	get_Dash,STT_FUNC,0
	.extern	next_Vol,STT_FUNC,0
	.extern	PID_control,STT_FUNC,0
	.extern	set_Speed,STT_FUNC,0
	.extern	Direction_CENTER,STT_FUNC,0
	.extern	Over_Boundary,STT_FUNC,0
	.extern	Boundary,STT_FUNC,0
	.extern	initial_speed,STT_FUNC,0
	.extern	get_Speed,STT_FUNC,0
	.extern	AsclinShellInterface_runEncScan,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	Direction_CENTER_RIGHT,STT_FUNC,0
	.extern	Over_Boundary_RIGHT,STT_FUNC,0
	.extern	Boundary_RIGHT,STT_FUNC,0
	.extern	is_THRESHOLD_RIGHT,STT_FUNC,0
	.extern	is_THRESHOLD,STT_FUNC,0
	.extern	IsOutSchoolZone_THRESHOLD,STT_FUNC,0
	.extern	clearBuffer_RIGHT,STT_FUNC,0
	.extern	clearBuffer,STT_FUNC,0
	.extern	IsInSchoolZone_THRESHOLD,STT_FUNC,0
	.extern	threshold_LINE_RIGHT,STT_FUNC,0
	.extern	threshold_LINE,STT_FUNC,0
	.extern	Line_Buffer_RIGHT,STT_FUNC,0
	.extern	median_filter_RIGHT,STT_FUNC,0
	.extern	Line_Buffer,STT_FUNC,0
	.extern	median_filter,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	IR_LineData,STT_OBJECT,592
	.extern	Checking_PSD,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	Speed_Avg,STT_FUNC,0
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	BasicGpt12Enc_IR_Encoder_turn,STT_FUNC,0
	.extern	AsclinShellInterface_run,STT_FUNC,0
	.extern	BasicGpt12Enc_IR_Encoder_reset,STT_FUNC,0
	.extern	Speed_Buff,STT_FUNC,0
	.extern	SpeedCalculation,STT_FUNC,0
	.extern	BasicGpt12Enc_run,STT_FUNC,0
	.extern	InfineonRacer_init,STT_FUNC,0
	.extern	set_Min_Max_Output,STT_FUNC,0
	.extern	IR_Encoder,STT_OBJECT,24
	.extern	set_SamplingTime,STT_FUNC,0
	.extern	set_propotion,STT_FUNC,0
	.extern	PID_init,STT_FUNC,0
	.extern	AsclinShellInterface_init,STT_FUNC,0
	.extern	BasicGpt12Enc_init,STT_FUNC,0
	.extern	BasicVadcBgScan_init,STT_FUNC,0
	.extern	BasicGtmTom_init,STT_FUNC,0
	.extern	BasicPort_init,STT_FUNC,0
	.extern	BasicLineScan_init,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
