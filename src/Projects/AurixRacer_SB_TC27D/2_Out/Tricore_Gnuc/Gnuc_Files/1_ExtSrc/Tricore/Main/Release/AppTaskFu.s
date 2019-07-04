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
	.loc 1 21 0
	.loc 1 28 0
	mov	%d15, 0
	movh.a	%a15, hi:IR_Encoder
	.loc 1 22 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 28 0
	lea	%a15, [%a15] lo:IR_Encoder
	.loc 1 23 0
	call	BasicPort_init
.LVL1:
	.loc 1 24 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 25 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 26 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 27 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 28 0
	st.w	[%a15] 16, %d15
	.loc 1 38 0
	j	InfineonRacer_init
.LVL6:
.LFE724:
	.size	appTaskfu_init, .-appTaskfu_init
.section .text.appTaskfu_1ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1ms
	.type	appTaskfu_1ms, @function
appTaskfu_1ms:
.LFB725:
	.loc 1 47 0
	.loc 1 48 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 49 0
	mov	%d2, 1000
	.loc 1 48 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1m, %d15
	.loc 1 49 0
	jeq	%d15, %d2, .L7
	.loc 1 54 0
	mov	%d2, 100
	div	%e2, %d15, %d2
	jz	%d3, .L4
	.loc 1 58 0
	call	BasicGpt12Enc_run
.LVL7:
	.loc 1 59 0
	call	SpeedCalculation
.LVL8:
	.loc 1 60 0
	j	Speed_Buff
.LVL9:
.L7:
	.loc 1 50 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1m, %d15
.L4:
	.loc 1 56 0
	call	BasicGpt12Enc_IR_Encoder_reset
.LVL10:
	.loc 1 58 0
	call	BasicGpt12Enc_run
.LVL11:
	.loc 1 59 0
	call	SpeedCalculation
.LVL12:
	.loc 1 60 0
	j	Speed_Buff
.LVL13:
.LFE725:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB727:
	.loc 1 282 0
	.loc 1 283 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 296 0
	mov	%d2, 1000
	.loc 1 283 0
	add	%d15, 1
	.loc 1 296 0
	jne	%d15, %d2, .L11
	.loc 1 297 0
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
	.loc 1 313 0
	.loc 1 314 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 341 0
	mov	%d2, 1000
	.loc 1 314 0
	add	%d15, 1
	.loc 1 341 0
	jne	%d15, %d2, .L15
	.loc 1 342 0
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
	.loc 1 353 0
	.loc 1 354 0
	call	AsclinShellInterface_run
.LVL14:
	.loc 1 360 0
	j	BasicGpt12Enc_IR_Encoder_turn
.LVL15:
.LFE729:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB730:
	.loc 1 364 0
	ret
.LFE730:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
.section .text.PID,"ax",@progbits
	.align 1
	.global	PID
	.type	PID, @function
PID:
.LFB731:
	.loc 1 369 0
	.loc 1 370 0
	movh.a	%a15, hi:IR_Encoder
	ld.w	%d15, [%a15] lo:IR_Encoder
	.loc 1 371 0
	movh.a	%a15, hi:Target_speeed
	ld.w	%d2, [%a15] lo:Target_speeed
	movh.a	%a15, hi:error
	sub.f	%d2, %d2, %d15
	st.w	[%a15] lo:error, %d2
	.loc 1 372 0
	movh.a	%a15, hi:Kp
	ld.w	%d3, [%a15] lo:Kp
	movh.a	%a15, hi:Current_Speed
	mul.f	%d2, %d2, %d3
	add.f	%d15, %d15, %d2
	st.w	[%a15] lo:Current_Speed, %d15
	ret
.LFE731:
	.size	PID, .-PID
.section .text.Speed2Vol,"ax",@progbits
	.align 1
	.global	Speed2Vol
	.type	Speed2Vol, @function
Speed2Vol:
.LFB732:
	.loc 1 375 0
	ret
.LFE732:
	.size	Speed2Vol, .-Speed2Vol
	.global	__extendsfdf2
	.global	__subdf3
	.global	__truncdfsf2
.section .text.SrvControl,"ax",@progbits
	.align 1
	.global	SrvControl
	.type	SrvControl, @function
SrvControl:
.LFB733:
	.loc 1 380 0
.LVL16:
	.loc 1 382 0
	movh	%d15, 17112
	div.f	%d4, %d4, %d15
.LVL17:
	call	__extendsfdf2
.LVL18:
	mov	%e6, %d3, %d2
	movh	%d5, 49114
	movh	%d4, 39322
	addi	%d5, %d5, -26215
	addi	%d4, %d4, -26214
	call	__subdf3
.LVL19:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL20:
	.loc 1 383 0
	mov	%d4, %d2
	j	IR_setSrvAngle
.LVL21:
.LFE733:
	.size	SrvControl, .-SrvControl
.section .text.AEB,"ax",@progbits
	.align 1
	.global	AEB
	.type	AEB, @function
AEB:
.LFB734:
	.loc 1 388 0
	.loc 1 389 0
	movh	%d4, 49024
	j	IR_setMotor0Vol
.LVL22:
.LFE734:
	.size	AEB, .-AEB
.section .text.Avoid,"ax",@progbits
	.align 1
	.global	Avoid
	.type	Avoid, @function
Avoid:
.LFB735:
	.loc 1 392 0
	.loc 1 393 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L24
	jne	%d15, 2, .L27
	.loc 1 398 0
	movh	%d4, 48717
	addi	%d4, %d4, -13107
	j	IR_setSrvAngle
.LVL23:
.L27:
	ret
.L24:
	.loc 1 395 0
	movh	%d4, 49024
	j	IR_setSrvAngle
.LVL24:
.LFE735:
	.size	Avoid, .-Avoid
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB726:
	.loc 1 70 0
	.loc 1 71 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 73 0
	call	Speed_Avg
.LVL25:
	.loc 1 76 0
	call	BasicVadcBgScan_run
.LVL26:
	.loc 1 78 0
	call	Checking_PSD
.LVL27:
	jz	%d2, .L29
	.loc 1 79 0
	mov	%d15, 1
	.loc 1 80 0
	movh.a	%a2, hi:IR_LineData
	.loc 1 79 0
	movh.a	%a12, hi:Obstacle_flag
	.loc 1 80 0
	lea	%a2, [%a2] lo:IR_LineData
	.loc 1 79 0
	st.b	[%a12] lo:Obstacle_flag, %d15
	.loc 1 80 0
	ld.bu	%d15, [%a2] 574
	jz	%d15, .L73
	.loc 1 84 0
	call	Avoid
.LVL28:
	.loc 1 85 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d15, [%a2] 4
	movh	%d2, 16000
	cmp.f	%d15, %d15, %d2
	jnz.t	%d15, 0, .L74
.L31:
	.loc 1 101 0
	call	BasicLineScan_run
.LVL29:
	.loc 1 103 0
	call	median_filter
.LVL30:
	.loc 1 104 0
	call	Line_Buffer
.LVL31:
	.loc 1 107 0
	call	median_filter_RIGHT
.LVL32:
	.loc 1 108 0
	call	Line_Buffer_RIGHT
.LVL33:
	.loc 1 112 0
	call	threshold_LINE
.LVL34:
	.loc 1 113 0
	call	threshold_LINE_RIGHT
.LVL35:
	.loc 1 116 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 50
	div	%e2, %d15, %d2
	jnz	%d3, .L34
	.loc 1 117 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 574
	jnz	%d15, .L35
	.loc 1 118 0
	call	IsInSchoolZone_THRESHOLD
.LVL36:
.L34:
	.loc 1 123 0
	ld.bu	%d15, [%a12] lo:Obstacle_flag
	jnz	%d15, .L37
	.loc 1 124 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 574
	jnz	%d15, .L38
	.loc 1 125 0
	call	is_THRESHOLD
.LVL37:
	jnz	%d2, .L72
	.loc 1 126 0
	call	Boundary_RIGHT
.LVL38:
	jnz	%d2, .L75
.L37:
	.loc 1 176 0
	call	clearBuffer
.LVL39:
	.loc 1 177 0
	call	clearBuffer_RIGHT
.LVL40:
	.loc 1 257 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jeq	%d15, %d2, .L76
	.loc 1 261 0
	jz.t	%d15, 0, .L46
	ret
.L73:
.LBB23:
.LBB24:
	.loc 1 389 0
	movh	%d4, 49024
	call	IR_setMotor0Vol
.LVL41:
	j	.L31
.L38:
.LBE24:
.LBE23:
	.loc 1 155 0
	call	is_THRESHOLD
.LVL42:
	jz	%d2, .L43
.L72:
	.loc 1 160 0
	call	Boundary
.LVL43:
	jz	%d2, .L37
	.loc 1 161 0
	call	Over_Boundary
.LVL44:
	jz	%d2, .L77
	.loc 1 165 0
	call	isEndOfLEFT
.LVL45:
	jz	%d2, .L43
.L41:
.LVL46:
.LBB25:
.LBB26:
	.loc 1 383 0
	movh	%d4, 48841
	addi	%d4, %d4, 485
	call	IR_setSrvAngle
.LVL47:
	j	.L37
.LVL48:
.L76:
.LBE26:
.LBE25:
	.loc 1 258 0
	mov	%d15, 0
	movh.a	%a15, hi:task_cnt_10m
	st.w	[%a15] lo:task_cnt_10m, %d15
.L46:
.LBB27:
	.loc 1 267 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 263 0
	call	BasicGtmTom_run
.LVL49:
	.loc 1 264 0
	call	BasicPort_run
.LVL50:
	.loc 1 267 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L78
	.loc 1 276 0
	j	AsclinShellInterface_runEncScan
.LVL51:
.L29:
.LBE27:
	.loc 1 95 0
	movh.a	%a2, hi:testVol
	ld.w	%d4, [%a2] lo:testVol
	movh.a	%a12, hi:Obstacle_flag
	call	IR_setMotor0Vol
.LVL52:
	j	.L31
.L35:
	.loc 1 120 0
	call	IsOutSchoolZone_THRESHOLD
.LVL53:
	j	.L34
.L43:
.LVL54:
.LBB28:
.LBB29:
	.loc 1 383 0
	movh	%d4, 48844
	addi	%d4, %d4, 21360
	call	IR_setSrvAngle
.LVL55:
	j	.L37
.LVL56:
.L78:
.LBE29:
.LBE28:
.LBB30:
	.loc 1 269 0
	call	InfineonRacer_control
.LVL57:
	.loc 1 276 0
	j	AsclinShellInterface_runEncScan
.LVL58:
.L74:
.LBE30:
	.loc 1 86 0
	call	is_THRESHOLD_RIGHT
.LVL59:
	jz	%d2, .L31
	.loc 1 86 0 is_stmt 0 discriminator 1
	call	is_THRESHOLD
.LVL60:
	jz	%d2, .L31
	.loc 1 88 0 is_stmt 1
	mov	%d15, 0
	.loc 1 87 0
	call	resetPSD
.LVL61:
	.loc 1 88 0
	st.b	[%a12] lo:Obstacle_flag, %d15
	j	.L31
.L75:
	.loc 1 127 0
	call	Over_Boundary_RIGHT
.LVL62:
	jnz	%d2, .L41
	.loc 1 128 0
	call	Direction_CENTER_RIGHT
.LVL63:
.L68:
.LBB31:
.LBB32:
	.loc 1 382 0
	movh	%d4, 17112
	div.f	%d4, %d2, %d4
	call	__extendsfdf2
.LVL64:
	mov	%e6, %d3, %d2
	movh	%d5, 49114
	movh	%d4, 39322
	addi	%d5, %d5, -26215
	addi	%d4, %d4, -26214
	call	__subdf3
.LVL65:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL66:
	.loc 1 383 0
	mov	%d4, %d2
	call	IR_setSrvAngle
.LVL67:
	j	.L37
.L77:
.LBE32:
.LBE31:
	.loc 1 162 0
	call	Direction_CENTER
.LVL68:
	j	.L68
.LFE726:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
	.global	WHICH_LANE
.section .data.WHICH_LANE,"aw",@progbits
	.align 2
	.type	WHICH_LANE, @object
	.size	WHICH_LANE, 4
WHICH_LANE:
	.word	1
	.global	Obstacle_flag
.section .bss.Obstacle_flag,"aw",@nobits
	.type	Obstacle_flag, @object
	.size	Obstacle_flag, 1
Obstacle_flag:
	.zero	1
	.global	signORunsign
.section .bss.signORunsign,"aw",@nobits
	.align 2
	.type	signORunsign, @object
	.size	signORunsign, 4
signORunsign:
	.zero	4
	.global	NextVol
.section .bss.NextVol,"aw",@nobits
	.align 2
	.type	NextVol, @object
	.size	NextVol, 4
NextVol:
	.zero	4
	.global	Current_Speed
.section .bss.Current_Speed,"aw",@nobits
	.align 2
	.type	Current_Speed, @object
	.size	Current_Speed, 4
Current_Speed:
	.zero	4
	.global	Kp
.section .bss.Kp,"aw",@nobits
	.align 2
	.type	Kp, @object
	.size	Kp, 4
Kp:
	.zero	4
	.global	error
.section .bss.error,"aw",@nobits
	.align 2
	.type	error, @object
	.size	error, 4
error:
	.zero	4
	.global	Target_speeed
.section .bss.Target_speeed,"aw",@nobits
	.align 2
	.type	Target_speeed, @object
	.size	Target_speeed, 4
Target_speeed:
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
	.uaword	.LFB726
	.uaword	.LFE726-.LFB726
	.align 2
.LEFDE22:
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
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x16f4
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
	.byte	0x2e
	.uaword	0xa1d
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0xa
	.byte	0x2f
	.uaword	0x243
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0xa
	.byte	0x30
	.uaword	0x243
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0xa
	.byte	0x31
	.uaword	0x26e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0xa
	.byte	0x32
	.uaword	0x9de
	.uleb128 0x10
	.uahalf	0x240
	.byte	0xa
	.byte	0x34
	.uaword	0xb2b
	.uleb128 0x8
	.string	"Result"
	.byte	0xa
	.byte	0x35
	.uaword	0xb2b
	.byte	0
	.uleb128 0x11
	.string	"Transfer"
	.byte	0xa
	.byte	0x36
	.uaword	0xb3b
	.uahalf	0x208
	.uleb128 0x11
	.string	"sample"
	.byte	0xa
	.byte	0x38
	.uaword	0xb4b
	.uahalf	0x214
	.uleb128 0x11
	.string	"temp"
	.byte	0xa
	.byte	0x39
	.uaword	0x25f
	.uahalf	0x228
	.uleb128 0x11
	.string	"previous"
	.byte	0xa
	.byte	0x3b
	.uaword	0x251
	.uahalf	0x22c
	.uleb128 0x11
	.string	"present"
	.byte	0xa
	.byte	0x3c
	.uaword	0x251
	.uahalf	0x230
	.uleb128 0x11
	.string	"previous_RIGHT"
	.byte	0xa
	.byte	0x3d
	.uaword	0x251
	.uahalf	0x234
	.uleb128 0x11
	.string	"present_RIGHT"
	.byte	0xa
	.byte	0x3e
	.uaword	0x251
	.uahalf	0x238
	.uleb128 0x11
	.string	"Direction_Determined"
	.byte	0xa
	.byte	0x40
	.uaword	0x26e
	.uahalf	0x23c
	.uleb128 0x11
	.string	"Direction_Determined_RIGHT"
	.byte	0xa
	.byte	0x41
	.uaword	0x26e
	.uahalf	0x23d
	.uleb128 0x11
	.string	"School_Zone_flag"
	.byte	0xa
	.byte	0x42
	.uaword	0x26e
	.uahalf	0x23e
	.byte	0
	.uleb128 0x12
	.uaword	0x1eb
	.uaword	0xb3b
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x81
	.byte	0
	.uleb128 0x12
	.uaword	0x1eb
	.uaword	0xb4b
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uaword	0x251
	.uaword	0xb5b
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"LineData"
	.byte	0xa
	.byte	0x43
	.uaword	0xa34
	.uleb128 0x14
	.byte	0x1
	.string	"AEB"
	.byte	0x1
	.uahalf	0x184
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"SrvControl"
	.byte	0x1
	.uahalf	0x17c
	.byte	0x1
	.byte	0x1
	.uaword	0xba9
	.uleb128 0x16
	.string	"diff"
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x25f
	.uleb128 0x17
	.string	"result"
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x25f
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.uaword	.LFB724
	.uaword	.LFE724
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc0d
	.uleb128 0x19
	.uaword	.LVL0
	.uaword	0x12c9
	.uleb128 0x19
	.uaword	.LVL1
	.uaword	0x12e2
	.uleb128 0x19
	.uaword	.LVL2
	.uaword	0x12f7
	.uleb128 0x19
	.uaword	.LVL3
	.uaword	0x130e
	.uleb128 0x19
	.uaword	.LVL4
	.uaword	0x1329
	.uleb128 0x19
	.uaword	.LVL5
	.uaword	0x1342
	.uleb128 0x1a
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x1362
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	.LFB725
	.uaword	.LFE725
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc84
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3c
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xc42
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL7
	.uaword	0x137b
	.uleb128 0x19
	.uaword	.LVL8
	.uaword	0x1393
	.uleb128 0x1a
	.uaword	.LVL9
	.byte	0x1
	.uaword	0x13aa
	.uleb128 0x19
	.uaword	.LVL10
	.uaword	0x13bd
	.uleb128 0x19
	.uaword	.LVL11
	.uaword	0x137b
	.uleb128 0x19
	.uaword	.LVL12
	.uaword	0x1393
	.uleb128 0x1a
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x13aa
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.uahalf	0x119
	.byte	0x1
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.uahalf	0x138
	.byte	0x1
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.uahalf	0x161
	.byte	0x1
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd13
	.uleb128 0x1f
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x168
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xcff
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL14
	.uaword	0x13e2
	.uleb128 0x1a
	.uaword	.LVL15
	.byte	0x1
	.uaword	0x1401
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.uahalf	0x16c
	.byte	0x1
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"PID"
	.byte	0x1
	.uahalf	0x171
	.byte	0x1
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"Speed2Vol"
	.byte	0x1
	.uahalf	0x177
	.byte	0x1
	.uaword	.LFB732
	.uaword	.LFE732
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.uaword	0xb76
	.uaword	.LFB733
	.uaword	.LFE733
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd92
	.uleb128 0x21
	.uaword	0xb8c
	.uaword	.LLST0
	.uleb128 0x22
	.uaword	0xb99
	.uaword	.LLST1
	.uleb128 0x1a
	.uaword	.LVL21
	.byte	0x1
	.uaword	0x1415
	.byte	0
	.uleb128 0x23
	.uaword	0xb6b
	.uaword	.LFB734
	.uaword	.LFE734
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdbe
	.uleb128 0x24
	.uaword	.LVL22
	.byte	0x1
	.uaword	0x1434
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Avoid"
	.byte	0x1
	.uahalf	0x188
	.byte	0x1
	.uaword	.LFB735
	.uaword	.LFE735
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xdfb
	.uleb128 0x1a
	.uaword	.LVL23
	.byte	0x1
	.uaword	0x1415
	.uleb128 0x24
	.uaword	.LVL24
	.byte	0x1
	.uaword	0x1415
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x103d
	.uleb128 0x27
	.uaword	0xb6b
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.byte	0x51
	.uaword	0xe48
	.uleb128 0x28
	.uaword	.LVL41
	.uaword	0x1434
	.uleb128 0x25
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xb76
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.byte	0x83
	.uaword	0xe81
	.uleb128 0x21
	.uaword	0xb8c
	.uaword	.LLST2
	.uleb128 0x29
	.uaword	.LBB26
	.uaword	.LBE26
	.uleb128 0x22
	.uaword	0xb99
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LVL47
	.uaword	0x1415
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0
	.uaword	0xece
	.uleb128 0x1f
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x114
	.uaword	0x1eb
	.byte	0x1
	.uaword	0xe9e
	.uleb128 0x1c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL49
	.uaword	0x1454
	.uleb128 0x19
	.uaword	.LVL50
	.uaword	0x146a
	.uleb128 0x1a
	.uaword	.LVL51
	.byte	0x1
	.uaword	0x147e
	.uleb128 0x19
	.uaword	.LVL57
	.uaword	0x1492
	.uleb128 0x1a
	.uaword	.LVL58
	.byte	0x1
	.uaword	0x147e
	.byte	0
	.uleb128 0x27
	.uaword	0xb76
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.byte	0x93
	.uaword	0xf07
	.uleb128 0x21
	.uaword	0xb8c
	.uaword	.LLST4
	.uleb128 0x29
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x22
	.uaword	0xb99
	.uaword	.LLST5
	.uleb128 0x19
	.uaword	.LVL55
	.uaword	0x1415
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xb76
	.uaword	.LBB31
	.uaword	.LBE31
	.byte	0x1
	.byte	0xa2
	.uaword	0xf40
	.uleb128 0x21
	.uaword	0xb8c
	.uaword	.LLST6
	.uleb128 0x29
	.uaword	.LBB32
	.uaword	.LBE32
	.uleb128 0x22
	.uaword	0xb99
	.uaword	.LLST7
	.uleb128 0x19
	.uaword	.LVL67
	.uaword	0x1415
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL25
	.uaword	0x14ae
	.uleb128 0x19
	.uaword	.LVL26
	.uaword	0x14be
	.uleb128 0x19
	.uaword	.LVL27
	.uaword	0x14d8
	.uleb128 0x19
	.uaword	.LVL28
	.uaword	0xdbe
	.uleb128 0x19
	.uaword	.LVL29
	.uaword	0x14ef
	.uleb128 0x19
	.uaword	.LVL30
	.uaword	0x1507
	.uleb128 0x19
	.uaword	.LVL31
	.uaword	0x151b
	.uleb128 0x19
	.uaword	.LVL32
	.uaword	0x152d
	.uleb128 0x19
	.uaword	.LVL33
	.uaword	0x1547
	.uleb128 0x19
	.uaword	.LVL34
	.uaword	0x155f
	.uleb128 0x19
	.uaword	.LVL35
	.uaword	0x1574
	.uleb128 0x19
	.uaword	.LVL36
	.uaword	0x158f
	.uleb128 0x19
	.uaword	.LVL37
	.uaword	0x15b2
	.uleb128 0x19
	.uaword	.LVL38
	.uaword	0x15c9
	.uleb128 0x19
	.uaword	.LVL39
	.uaword	0x15e2
	.uleb128 0x19
	.uaword	.LVL40
	.uaword	0x15f4
	.uleb128 0x19
	.uaword	.LVL42
	.uaword	0x15b2
	.uleb128 0x19
	.uaword	.LVL43
	.uaword	0x160c
	.uleb128 0x19
	.uaword	.LVL44
	.uaword	0x161f
	.uleb128 0x19
	.uaword	.LVL45
	.uaword	0x1637
	.uleb128 0x19
	.uaword	.LVL52
	.uaword	0x1434
	.uleb128 0x19
	.uaword	.LVL53
	.uaword	0x164d
	.uleb128 0x19
	.uaword	.LVL59
	.uaword	0x1671
	.uleb128 0x19
	.uaword	.LVL60
	.uaword	0x15b2
	.uleb128 0x19
	.uaword	.LVL61
	.uaword	0x168e
	.uleb128 0x19
	.uaword	.LVL62
	.uaword	0x169d
	.uleb128 0x19
	.uaword	.LVL63
	.uaword	0x16bb
	.uleb128 0x19
	.uaword	.LVL68
	.uaword	0x16dc
	.byte	0
	.uleb128 0x2b
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x2b
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x2b
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x2b
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x243
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x12
	.uaword	0x312
	.uaword	0x10b7
	.uleb128 0x13
	.uaword	0x33c
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0x10d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x10a7
	.uleb128 0x2c
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x251
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x25f
	.uaword	0x1101
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.string	"IR_AdcResult"
	.byte	0xc
	.byte	0x28
	.uaword	0x10f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"IR_Encoder"
	.byte	0x8
	.byte	0x2d
	.uaword	0x987
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"Ifx_g_console"
	.byte	0x9
	.byte	0x2c
	.uaword	0x9cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"IR_Ctrl"
	.byte	0xa
	.byte	0x48
	.uaword	0xa1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"IR_LineData"
	.byte	0xa
	.byte	0x49
	.uaword	0xb5b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x2f
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x2f
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x2f
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x2f
	.string	"testVol"
	.byte	0x1
	.byte	0xd
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testVol
	.uleb128 0x2f
	.string	"testSrv"
	.byte	0x1
	.byte	0xe
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSrv
	.uleb128 0x2f
	.string	"Target_speeed"
	.byte	0x1
	.byte	0xf
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Target_speeed
	.uleb128 0x2f
	.string	"error"
	.byte	0x1
	.byte	0xf
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	error
	.uleb128 0x2f
	.string	"Kp"
	.byte	0x1
	.byte	0xf
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Kp
	.uleb128 0x2f
	.string	"Current_Speed"
	.byte	0x1
	.byte	0xf
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Current_Speed
	.uleb128 0x2f
	.string	"NextVol"
	.byte	0x1
	.byte	0xf
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NextVol
	.uleb128 0x2f
	.string	"signORunsign"
	.byte	0x1
	.byte	0x10
	.uaword	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	signORunsign
	.uleb128 0x2f
	.string	"Obstacle_flag"
	.byte	0x1
	.byte	0x11
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Obstacle_flag
	.uleb128 0x2f
	.string	"WHICH_LANE"
	.byte	0x1
	.byte	0x13
	.uaword	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WHICH_LANE
	.uleb128 0x30
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xd
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xe
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0xf
	.byte	0x7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xc
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0x8
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0x10
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0xa
	.byte	0x52
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"BasicGpt12Enc_run"
	.byte	0x8
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"SpeedCalculation"
	.byte	0x8
	.byte	0x37
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3c
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x13bd
	.uleb128 0x1c
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"BasicGpt12Enc_IR_Encoder_reset"
	.byte	0x8
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0x10
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x168
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x1415
	.uleb128 0x1c
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0xf
	.byte	0x78
	.byte	0x1
	.byte	0x1
	.uaword	0x1434
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0xf
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x1454
	.uleb128 0xe
	.uaword	0x25f
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0xf
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xe
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x114
	.uaword	0x1eb
	.byte	0x1
	.uaword	0x1492
	.uleb128 0x1c
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0xa
	.byte	0x54
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"Speed_Avg"
	.byte	0x8
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xc
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"Checking_PSD"
	.byte	0xc
	.byte	0x31
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xd
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"median_filter"
	.byte	0xa
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"Line_Buffer"
	.byte	0xa
	.byte	0x57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"median_filter_RIGHT"
	.byte	0xa
	.byte	0x5c
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"Line_Buffer_RIGHT"
	.byte	0xa
	.byte	0x5b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"threshold_LINE"
	.byte	0xa
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"threshold_LINE_RIGHT"
	.byte	0xa
	.byte	0x62
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"IsInSchoolZone_THRESHOLD"
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"is_THRESHOLD"
	.byte	0xa
	.byte	0x64
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"Boundary_RIGHT"
	.byte	0xa
	.byte	0x79
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"clearBuffer"
	.byte	0xa
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"clearBuffer_RIGHT"
	.byte	0xa
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"Boundary"
	.byte	0xa
	.byte	0x76
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"Over_Boundary"
	.byte	0xa
	.byte	0x7b
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"isEndOfLEFT"
	.byte	0xa
	.byte	0x77
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"IsOutSchoolZone_THRESHOLD"
	.byte	0xa
	.byte	0x72
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"is_THRESHOLD_RIGHT"
	.byte	0xa
	.byte	0x65
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"resetPSD"
	.byte	0xc
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"Over_Boundary_RIGHT"
	.byte	0xa
	.byte	0x7c
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"Direction_CENTER_RIGHT"
	.byte	0xa
	.byte	0x81
	.byte	0x1
	.uaword	0x25f
	.byte	0x1
	.uleb128 0x32
	.byte	0x1
	.string	"Direction_CENTER"
	.byte	0xa
	.byte	0x80
	.byte	0x1
	.uaword	0x25f
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LFE733
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
	.uaword	.LVL16
	.uaword	.LVL17
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
	.uaword	.LVL17
	.uaword	.LFE733
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
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbf4ccccd
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbec901e5
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbdcccccd
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbecc5370
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL63
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL63
	.uaword	.LVL64-1
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
	.uaword	.LFB734
	.uaword	.LFE734-.LFB734
	.uaword	.LFB735
	.uaword	.LFE735-.LFB735
	.uaword	.LFB726
	.uaword	.LFE726-.LFB726
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB30
	.uaword	.LBE30
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
	.uaword	.LFB734
	.uaword	.LFE734
	.uaword	.LFB735
	.uaword	.LFE735
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
	.extern	Direction_CENTER,STT_FUNC,0
	.extern	Direction_CENTER_RIGHT,STT_FUNC,0
	.extern	Over_Boundary_RIGHT,STT_FUNC,0
	.extern	resetPSD,STT_FUNC,0
	.extern	is_THRESHOLD_RIGHT,STT_FUNC,0
	.extern	InfineonRacer_control,STT_FUNC,0
	.extern	IsOutSchoolZone_THRESHOLD,STT_FUNC,0
	.extern	AsclinShellInterface_runEncScan,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	isEndOfLEFT,STT_FUNC,0
	.extern	Over_Boundary,STT_FUNC,0
	.extern	Boundary,STT_FUNC,0
	.extern	clearBuffer_RIGHT,STT_FUNC,0
	.extern	clearBuffer,STT_FUNC,0
	.extern	Boundary_RIGHT,STT_FUNC,0
	.extern	is_THRESHOLD,STT_FUNC,0
	.extern	IsInSchoolZone_THRESHOLD,STT_FUNC,0
	.extern	threshold_LINE_RIGHT,STT_FUNC,0
	.extern	threshold_LINE,STT_FUNC,0
	.extern	Line_Buffer_RIGHT,STT_FUNC,0
	.extern	median_filter_RIGHT,STT_FUNC,0
	.extern	Line_Buffer,STT_FUNC,0
	.extern	median_filter,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	IR_AdcResult,STT_OBJECT,-1
	.extern	IR_LineData,STT_OBJECT,576
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
	.extern	AsclinShellInterface_init,STT_FUNC,0
	.extern	BasicGpt12Enc_init,STT_FUNC,0
	.extern	BasicVadcBgScan_init,STT_FUNC,0
	.extern	BasicGtmTom_init,STT_FUNC,0
	.extern	BasicPort_init,STT_FUNC,0
	.extern	BasicLineScan_init,STT_FUNC,0
	.extern	IR_Encoder,STT_OBJECT,24
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
