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
.section .text.School_Zone_Schedule,"ax",@progbits
	.align 1
	.global	School_Zone_Schedule
	.type	School_Zone_Schedule, @function
School_Zone_Schedule:
.LFB726:
	.loc 1 112 0
	.loc 1 115 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	ld.bu	%d15, [%a15] 594
	jnz	%d15, .L3
	.loc 1 116 0
	call	IsInSchoolZone_THRESHOLD
.LVL8:
	.loc 1 117 0
	ld.bu	%d15, [%a15] 594
	movh.a	%a15, hi:TEMP_REMAIN
	jnz	%d15, .L4
.L5:
	.loc 1 137 0
	movh.a	%a15, hi:TEMP_REMAIN
	ld.bu	%d15, [%a15] lo:TEMP_REMAIN
	jnz	%d15, .L4
.L2:
	ret
.L4:
	.loc 1 138 0
	mov	%d15, 0
	st.b	[%a15] lo:TEMP_REMAIN, %d15
	ret
.L3:
	.loc 1 123 0
	call	IsOutSchoolZone_THRESHOLD
.LVL9:
	.loc 1 125 0
	call	get_Dash
.LVL10:
	jeq	%d2, 1, .L6
	jne	%d2, 2, .L5
	.loc 1 131 0
	mov	%d15, 1
	movh.a	%a15, hi:WHICH_LANE
	st.w	[%a15] lo:WHICH_LANE, %d15
	.loc 1 137 0
	movh.a	%a15, hi:TEMP_REMAIN
	ld.bu	%d15, [%a15] lo:TEMP_REMAIN
	jz	%d15, .L2
	j	.L4
.L6:
	.loc 1 128 0
	mov	%d15, 2
	movh.a	%a15, hi:WHICH_LANE
	st.w	[%a15] lo:WHICH_LANE, %d15
	.loc 1 137 0
	movh.a	%a15, hi:TEMP_REMAIN
	ld.bu	%d15, [%a15] lo:TEMP_REMAIN
	jz	%d15, .L2
	j	.L4
.LFE726:
	.size	School_Zone_Schedule, .-School_Zone_Schedule
.section .rodata,"a",@progbits
.LC0:
	.string	"case1"
.LC1:
	.string	"case2"
.LC2:
	.string	"case3"
.LC3:
	.string	"case4"
.LC4:
	.string	"case6"
.LC5:
	.string	"case7"
.LC6:
	.string	"case8"
.LC7:
	.string	"case9"
.section .text.Lane_Direction_Out_School_Zone,"ax",@progbits
	.align 1
	.global	Lane_Direction_Out_School_Zone
	.type	Lane_Direction_Out_School_Zone, @function
Lane_Direction_Out_School_Zone:
.LFB728:
	.loc 1 176 0
	.loc 1 177 0
	movh.a	%a15, hi:TEMP_REMAIN
	ld.bu	%d15, [%a15] lo:TEMP_REMAIN
	jnz	%d15, .L29
	.loc 1 181 0
	movh.a	%a15, hi:Obstacle_flag
	ld.w	%d15, [%a15] lo:Obstacle_flag
	jz	%d15, .L30
.L14:
	ret
.L30:
.LBB98:
.LBB99:
	.loc 1 182 0
	call	is_THRESHOLD
.LVL11:
	jnz	%d2, .L18
	.loc 1 183 0
	call	is_THRESHOLD_RIGHT
.LVL12:
	jz	%d2, .L14
	.loc 1 184 0
	call	Boundary_RIGHT
.LVL13:
	jz	%d2, .L20
	.loc 1 185 0
	call	Over_Boundary_RIGHT
.LVL14:
	jz	%d2, .L31
	.loc 1 191 0
	call	isEndOfRIGHT
.LVL15:
	jz	%d2, .L22
	.loc 1 192 0
	movh.a	%a4, hi:.LC1
	lea	%a4, [%a4] lo:.LC1
	call	puts
.LVL16:
.LBB100:
.LBB101:
	.loc 1 481 0
	movh	%d4, 48896
	j	IR_setSrvAngle
.LVL17:
.L29:
.LBE101:
.LBE100:
.LBE99:
.LBE98:
	.loc 1 178 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
.LBB117:
.LBB118:
	.loc 1 480 0
	ld.w	%d4, [%a15] 608
	movh	%d15, 17096
	div.f	%d4, %d4, %d15
	.loc 1 481 0
	movh	%d15, 16128
	add.f	%d4, %d4, %d15
	j	IR_setSrvAngle
.LVL18:
.L18:
.LBE118:
.LBE117:
.LBB119:
.LBB116:
	.loc 1 210 0
	call	Boundary
.LVL19:
	jz	%d2, .L23
	.loc 1 211 0
	call	Over_Boundary2
.LVL20:
	jnz	%d2, .L32
	.loc 1 216 0
	call	Over_Boundary
.LVL21:
	jz	%d2, .L25
.LVL22:
.LBB102:
.LBB103:
	.loc 1 481 0
	movh	%d4, 48896
	call	IR_setSrvAngle
.LVL23:
.LBE103:
.LBE102:
	.loc 1 218 0
	movh.a	%a4, hi:.LC5
	lea	%a4, [%a4] lo:.LC5
	j	puts
.LVL24:
.L23:
.LBB104:
.LBB105:
	.loc 1 481 0
	movh	%d4, 16128
	call	IR_setSrvAngle
.LVL25:
.LBE105:
.LBE104:
	.loc 1 228 0
	movh.a	%a4, hi:.LC7
	lea	%a4, [%a4] lo:.LC7
	j	puts
.LVL26:
.L32:
.LBB106:
.LBB107:
	.loc 1 481 0
	movh	%d4, 16320
	call	IR_setSrvAngle
.LVL27:
.LBE107:
.LBE106:
	.loc 1 213 0
	movh.a	%a4, hi:.LC4
	lea	%a4, [%a4] lo:.LC4
	j	puts
.LVL28:
.L20:
.LBB108:
.LBB109:
	.loc 1 481 0
	movh	%d4, 16128
	call	IR_setSrvAngle
.LVL29:
.LBE109:
.LBE108:
	.loc 1 203 0
	movh.a	%a4, hi:.LC3
	lea	%a4, [%a4] lo:.LC3
	j	puts
.LVL30:
.L25:
	.loc 1 221 0
	call	Direction_CENTER
.LVL31:
.LBB110:
.LBB111:
	.loc 1 480 0
	movh	%d15, 17096
	div.f	%d2, %d2, %d15
.LVL32:
	.loc 1 481 0
	movh	%d4, 16128
	add.f	%d4, %d2, %d4
.LVL33:
	call	IR_setSrvAngle
.LVL34:
.LBE111:
.LBE110:
	.loc 1 222 0
	movh.a	%a4, hi:.LC6
	lea	%a4, [%a4] lo:.LC6
	j	puts
.LVL35:
.L31:
	.loc 1 186 0
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	call	puts
.LVL36:
.LBB112:
.LBB113:
	.loc 1 481 0
	movh	%d4, 48896
	j	IR_setSrvAngle
.LVL37:
.L22:
.LBE113:
.LBE112:
	.loc 1 196 0
	movh.a	%a4, hi:.LC2
	lea	%a4, [%a4] lo:.LC2
	call	puts
.LVL38:
	.loc 1 197 0
	call	Direction_CENTER_RIGHT
.LVL39:
.LBB114:
.LBB115:
	.loc 1 480 0
	movh	%d15, 17096
	div.f	%d2, %d2, %d15
.LVL40:
	.loc 1 481 0
	movh	%d4, 16128
	add.f	%d4, %d2, %d4
.LVL41:
	j	IR_setSrvAngle
.LVL42:
.LBE115:
.LBE114:
.LBE116:
.LBE119:
.LFE728:
	.size	Lane_Direction_Out_School_Zone, .-Lane_Direction_Out_School_Zone
	.global	__extendsfdf2
	.global	__ltdf2
.section .text.Lane_Direction_In_School_Zone,"ax",@progbits
	.align 1
	.global	Lane_Direction_In_School_Zone
	.type	Lane_Direction_In_School_Zone, @function
Lane_Direction_In_School_Zone:
.LFB729:
	.loc 1 237 0
	.loc 1 238 0
	movh.a	%a15, hi:TEMP_REMAIN
	ld.bu	%d15, [%a15] lo:TEMP_REMAIN
	jnz	%d15, .L68
	.loc 1 242 0
	movh.a	%a12, hi:Obstacle_flag
	ld.w	%d15, [%a12] lo:Obstacle_flag
	jnz	%d15, .L35
	.loc 1 244 0
	movh.a	%a2, hi:WHICH_LANE
	ld.w	%d15, [%a2] lo:WHICH_LANE
	jeq	%d15, 1, .L37
	jne	%d15, 2, .L69
	.loc 1 275 0
	call	is_THRESHOLD_RIGHT
.LVL43:
	jz	%d2, .L44
	.loc 1 276 0
	call	Boundary_RIGHT
.LVL44:
	jz	%d2, .L43
	.loc 1 277 0
	call	Over_Boundary_RIGHT
.LVL45:
	jz	%d2, .L42
	.loc 1 282 0
	call	isEndOfRIGHT
.LVL46:
	jnz	%d2, .L42
	.loc 1 286 0
	call	Direction_CENTER_RIGHT
.LVL47:
.L67:
.LBB120:
.LBB121:
	.loc 1 480 0
	movh	%d15, 17096
	div.f	%d2, %d2, %d15
.LVL48:
	.loc 1 481 0
	movh	%d4, 16128
	add.f	%d4, %d2, %d4
.LVL49:
	j	IR_setSrvAngle
.LVL50:
.L35:
.LBE121:
.LBE120:
	.loc 1 308 0
	jeq	%d15, 3, .L70
	.loc 1 331 0
	jeq	%d15, 4, .L71
.L33:
	ret
.L68:
.LVL51:
	.loc 1 239 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
.LBB122:
.LBB123:
	.loc 1 480 0
	ld.w	%d4, [%a15] 608
	movh	%d15, 17096
	div.f	%d4, %d4, %d15
	.loc 1 481 0
	movh	%d15, 16128
	add.f	%d4, %d4, %d15
	j	IR_setSrvAngle
.LVL52:
.L69:
	ret
.L71:
.LBE123:
.LBE122:
	.loc 1 332 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L51
	jeq	%d15, 2, .L52
.L50:
	.loc 1 342 0
	movh.a	%a2, hi:task_cnt_10m
	ld.w	%d2, [%a2] lo:task_cnt_10m
	mov	%d15, 20
	div	%e2, %d2, %d15
	jnz	%d3, .L33
	.loc 1 343 0
	ld.w	%d2, [%a15] lo:WHICH_LANE
	movh.a	%a2, hi:WHICH_LANE
	jeq	%d2, 1, .L53
	jne	%d2, 2, .L72
	.loc 1 355 0
	mov	%d15, 1
	.loc 1 354 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	.loc 1 353 0
	st.w	[%a12] lo:Obstacle_flag, %d3
	.loc 1 354 0
	st.w	[%a15] 612, %d3
	.loc 1 355 0
	st.w	[%a2] lo:WHICH_LANE, %d15
	.loc 1 356 0
	call	resetPSD
.LVL53:
	.loc 1 357 0
	j	clear_Dash
.LVL54:
.L44:
	.loc 1 294 0
	call	is_WIDE_LANE_RIGHT
.LVL55:
	jnz	%d2, .L73
.L43:
.LVL56:
.LBB124:
.LBB125:
	.loc 1 481 0
	movh	%d4, 16128
	j	IR_setSrvAngle
.LVL57:
.L37:
.LBE125:
.LBE124:
	.loc 1 246 0
	call	is_THRESHOLD
.LVL58:
	jz	%d2, .L42
	.loc 1 251 0
	call	Boundary
.LVL59:
	jz	%d2, .L40
	.loc 1 252 0
	call	Over_Boundary2
.LVL60:
	jnz	%d2, .L74
	.loc 1 255 0
	call	Over_Boundary
.LVL61:
	jnz	%d2, .L42
	.loc 1 256 0
	call	Direction_CENTER
.LVL62:
	j	.L67
.L42:
.LVL63:
.LBB126:
.LBB127:
	.loc 1 481 0
	movh	%d4, 48896
	j	IR_setSrvAngle
.LVL64:
.L70:
.LBE127:
.LBE126:
	.loc 1 310 0
	mov	%d15, 0
	movh.a	%a13, hi:IR_LineData
.LBB128:
.LBB129:
	.loc 1 481 0
	movh	%d4, 16128
.LBE129:
.LBE128:
	.loc 1 310 0
	lea	%a13, [%a13] lo:IR_LineData
.LBB131:
.LBB130:
	.loc 1 481 0
	call	IR_setSrvAngle
.LVL65:
.LBE130:
.LBE131:
	.loc 1 310 0
	st.w	[%a13] 608, %d15
	.loc 1 311 0
	mov	%d15, 1
	st.b	[%a15] lo:TEMP_REMAIN, %d15
	.loc 1 313 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L46
	jeq	%d15, 2, .L47
	ret
.LVL66:
.L52:
.LBB132:
.LBB133:
	.loc 1 481 0
	movh	%d4, 16320
	call	IR_setSrvAngle
.LVL67:
	j	.L50
.LVL68:
.L40:
.LBE133:
.LBE132:
	.loc 1 263 0
	call	is_WIDE_LANE
.LVL69:
	jz	%d2, .L43
.LVL70:
.LBB134:
.LBB135:
	.loc 1 481 0
	movh	%d4, 16320
	call	IR_setSrvAngle
.LVL71:
.LBE135:
.LBE134:
	.loc 1 265 0
	movh	%d2, 17096
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	st.w	[%a2] 608, %d2
	.loc 1 266 0
	st.b	[%a15] lo:TEMP_REMAIN, %d15
	ret
.LVL72:
.L73:
.LBB136:
.LBB137:
	.loc 1 481 0
	movh	%d4, 48896
	call	IR_setSrvAngle
.LVL73:
.LBE137:
.LBE136:
	.loc 1 296 0
	movh	%d15, 49864
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	st.w	[%a2] 608, %d15
	.loc 1 297 0
	mov	%d15, 1
	st.b	[%a15] lo:TEMP_REMAIN, %d15
	ret
.LVL74:
.L72:
	ret
.LVL75:
.L46:
	.loc 1 315 0
	movh.a	%a15, hi:IR_AdcResult
	lea	%a15, [%a15] lo:IR_AdcResult
	ld.w	%d4, [%a15] 4
	call	__extendsfdf2
.LVL76:
	movh	%d7, 16323
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62320
	call	__ltdf2
.LVL77:
	jgez	%d2, .L33
.L48:
	.loc 1 316 0
	mov	%d15, 4
	st.w	[%a12] lo:Obstacle_flag, %d15
	.loc 1 317 0
	st.w	[%a13] 612, %d15
	ret
.LVL78:
.L51:
.LBB138:
.LBB139:
	.loc 1 481 0
	movh	%d4, 48896
	call	IR_setSrvAngle
.LVL79:
	j	.L50
.LVL80:
.L53:
.LBE139:
.LBE138:
	.loc 1 347 0
	mov	%d15, 2
	.loc 1 346 0
	movh.a	%a15, hi:IR_LineData
	lea	%a15, [%a15] lo:IR_LineData
	.loc 1 345 0
	st.w	[%a12] lo:Obstacle_flag, %d3
	.loc 1 346 0
	st.w	[%a15] 612, %d3
	.loc 1 347 0
	st.w	[%a2] lo:WHICH_LANE, %d15
	.loc 1 348 0
	call	resetPSD
.LVL81:
	.loc 1 349 0
	j	clear_Dash
.LVL82:
.L47:
	.loc 1 322 0
	movh.a	%a15, hi:IR_AdcResult
	lea	%a15, [%a15] lo:IR_AdcResult
	ld.w	%d4, [%a15] 8
	call	__extendsfdf2
.LVL83:
	movh	%d7, 16323
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62320
	call	__ltdf2
.LVL84:
	jltz	%d2, .L48
	ret
.LVL85:
.L74:
.LBB140:
.LBB141:
	.loc 1 481 0
	movh	%d4, 16320
	j	IR_setSrvAngle
.LVL86:
.LBE141:
.LBE140:
.LFE729:
	.size	Lane_Direction_In_School_Zone, .-Lane_Direction_In_School_Zone
.section .text.Lane_Scanning,"ax",@progbits
	.align 1
	.global	Lane_Scanning
	.type	Lane_Scanning, @function
Lane_Scanning:
.LFB730:
	.loc 1 364 0
	.loc 1 366 0
	call	BasicLineScan_run
.LVL87:
	.loc 1 368 0
	call	median_filter
.LVL88:
	.loc 1 371 0
	j	threshold_LINE
.LVL89:
.LFE730:
	.size	Lane_Scanning, .-Lane_Scanning
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB731:
	.loc 1 376 0
	.loc 1 377 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_10m, %d15
.LBB142:
.LBB143:
	.loc 1 366 0
	call	BasicLineScan_run
.LVL90:
	.loc 1 368 0
	call	median_filter
.LVL91:
	.loc 1 371 0
	call	threshold_LINE
.LVL92:
.LBE143:
.LBE142:
	.loc 1 382 0
	movh.a	%a2, hi:IR_LineData
	lea	%a2, [%a2] lo:IR_LineData
	ld.bu	%d15, [%a2] 594
	jnz	%d15, .L77
	.loc 1 383 0
	call	Lane_Direction_Out_School_Zone
.LVL93:
.L78:
	.loc 1 389 0
	movh	%d4, 48922
	addi	%d4, %d4, -26214
	call	IR_setMotor0Vol
.LVL94:
	.loc 1 392 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	mov	%d2, 1000
	jeq	%d15, %d2, .L83
	.loc 1 396 0
	jz.t	%d15, 0, .L80
	ret
.L77:
	.loc 1 386 0
	call	Lane_Direction_In_School_Zone
.LVL95:
	j	.L78
.L83:
	.loc 1 393 0
	mov	%d15, 0
	movh.a	%a15, hi:task_cnt_10m
	st.w	[%a15] lo:task_cnt_10m, %d15
.L80:
	.loc 1 405 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 399 0
	call	BasicPort_run
.LVL96:
	.loc 1 400 0
	call	School_Zone_Schedule
.LVL97:
	.loc 1 405 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L84
	.loc 1 414 0
	j	AsclinShellInterface_runLineScan
.LVL98:
.L84:
	.loc 1 407 0
	call	InfineonRacer_control
.LVL99:
	.loc 1 414 0
	j	AsclinShellInterface_runLineScan
.LVL100:
.LFE731:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB732:
	.loc 1 420 0
	.loc 1 421 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 425 0
	mov	%d2, 1000
	.loc 1 421 0
	add	%d15, 1
	.loc 1 425 0
	jne	%d15, %d2, .L88
	.loc 1 426 0
	mov	%d15, 0
.L88:
	st.w	[%a15] lo:task_cnt_100m, %d15
	ret
.LFE732:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB733:
	.loc 1 442 0
	.loc 1 443 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 452 0
	mov	%d2, 1000
	.loc 1 443 0
	add	%d15, 1
	.loc 1 452 0
	jne	%d15, %d2, .L92
	.loc 1 453 0
	mov	%d15, 0
.L92:
	st.w	[%a15] lo:task_cnt_1000m, %d15
	ret
.LFE733:
	.size	appTaskfu_1000ms, .-appTaskfu_1000ms
.section .text.appTaskfu_idle,"ax",@progbits
	.align 1
	.global	appTaskfu_idle
	.type	appTaskfu_idle, @function
appTaskfu_idle:
.LFB734:
	.loc 1 461 0
	.loc 1 462 0
	call	AsclinShellInterface_run
.LVL101:
	.loc 1 468 0
	j	BasicGpt12Enc_IR_Encoder_turn
.LVL102:
.LFE734:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB735:
	.loc 1 472 0
	ret
.LFE735:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
.section .text.SrvControl,"ax",@progbits
	.align 1
	.global	SrvControl
	.type	SrvControl, @function
SrvControl:
.LFB736:
	.loc 1 479 0
.LVL103:
	.loc 1 480 0
	movh	%d15, 17096
	div.f	%d4, %d4, %d15
.LVL104:
	.loc 1 481 0
	movh	%d15, 16128
	add.f	%d4, %d4, %d15
.LVL105:
	j	IR_setSrvAngle
.LVL106:
.LFE736:
	.size	SrvControl, .-SrvControl
.section .text.AEB,"ax",@progbits
	.align 1
	.global	AEB
	.type	AEB, @function
AEB:
.LFB737:
	.loc 1 484 0
	.loc 1 485 0
	movh	%d4, 49024
	j	IR_setMotor0Vol
.LVL107:
.LFE737:
	.size	AEB, .-AEB
.section .text.Avoid,"ax",@progbits
	.align 1
	.global	Avoid
	.type	Avoid, @function
Avoid:
.LFB738:
	.loc 1 488 0
	.loc 1 489 0
	movh.a	%a15, hi:WHICH_LANE
	ld.w	%d15, [%a15] lo:WHICH_LANE
	jeq	%d15, 1, .L99
	jne	%d15, 2, .L102
	.loc 1 494 0
	mov	%d4, 0
	j	IR_setSrvAngle
.LVL108:
.L102:
	ret
.L99:
	.loc 1 491 0
	movh	%d4, 16256
	j	IR_setSrvAngle
.LVL109:
.LFE738:
	.size	Avoid, .-Avoid
.section .text.appTaskfu_5ms,"ax",@progbits
	.align 1
	.global	appTaskfu_5ms
	.type	appTaskfu_5ms, @function
appTaskfu_5ms:
.LFB727:
	.loc 1 142 0
	.loc 1 144 0
	movh.a	%a15, hi:Obstacle_flag
	ld.w	%d15, [%a15] lo:Obstacle_flag
	jz	%d15, .L103
	.loc 1 146 0
	movh.a	%a12, hi:IR_LineData
	lea	%a12, [%a12] lo:IR_LineData
	ld.bu	%d15, [%a12] 594
	jz	%d15, .L113
	.loc 1 152 0
	call	Avoid
.LVL110:
	.loc 1 155 0
	movh.a	%a2, hi:WHICH_LANE
	ld.w	%d15, [%a2] lo:WHICH_LANE
	jeq	%d15, 1, .L107
	jne	%d15, 2, .L114
	.loc 1 164 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d4, [%a2] 4
.L112:
.LBB150:
.LBB151:
	.loc 1 157 0
	call	__extendsfdf2
.LVL111:
	movh	%d7, 16323
	addi	%d7, %d7, 13107
	mov	%e4, %d3, %d2
	addih	%d6, %d7, 62320
	call	__ltdf2
.LVL112:
	jgez	%d2, .L103
	.loc 1 158 0
	mov	%d15, 3
	st.w	[%a15] lo:Obstacle_flag, %d15
	.loc 1 159 0
	st.w	[%a12] 612, %d15
	ret
.L103:
	ret
.L113:
.LBE151:
.LBE150:
.LBB153:
.LBB154:
	.loc 1 485 0
	movh	%d4, 49024
	j	IR_setMotor0Vol
.LVL113:
.L114:
	ret
.L107:
.LBE154:
.LBE153:
.LBB155:
.LBB152:
	.loc 1 157 0
	movh.a	%a2, hi:IR_AdcResult
	lea	%a2, [%a2] lo:IR_AdcResult
	ld.w	%d4, [%a2] 8
	j	.L112
.LBE152:
.LBE155:
.LFE727:
	.size	appTaskfu_5ms, .-appTaskfu_5ms
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
	jeq	%d15, %d2, .L126
	.loc 1 68 0
	mov	%d2, 100
	div	%e2, %d15, %d2
	jz	%d3, .L117
.L118:
	.loc 1 73 0
	call	BasicGpt12Enc_run
.LVL114:
	.loc 1 74 0
	call	Speed_Buff
.LVL115:
	.loc 1 76 0
	ld.w	%d15, [%a15] lo:task_cnt_1m
	mov	%d2, 50
	div	%e2, %d15, %d2
	jz	%d3, .L127
.L119:
	.loc 1 88 0
	call	BasicVadcBgScan_run
.LVL116:
	.loc 1 89 0
	call	Checking_PSD
.LVL117:
	jz	%d2, .L120
	.loc 1 90 0
	mov	%d15, 1
	movh.a	%a2, hi:Obstacle_flag
	st.w	[%a2] lo:Obstacle_flag, %d15
.L120:
	.loc 1 93 0
	ld.w	%d15, [%a15] lo:task_cnt_1m
	mov	%d4, 5
	div	%e4, %d15, %d4
	jz	%d5, .L128
.L121:
	.loc 1 98 0
	mov	%d2, 10
	div	%e2, %d15, %d2
	jz	%d3, .L129
.LBB156:
	.loc 1 104 0
	j	GtmTomPwmHl_run
.LVL118:
.L129:
.LBE156:
.LBB157:
	.loc 1 99 0
	call	GtmTomSrv_run
.LVL119:
	.loc 1 100 0
	j	GtmTomSrvScan_run
.LVL120:
.L128:
	movh.a	%a15, hi:task_cnt_1m
.LBE157:
	.loc 1 94 0
	call	appTaskfu_5ms
.LVL121:
	ld.w	%d15, [%a15] lo:task_cnt_1m
	j	.L121
.L127:
	.loc 1 77 0
	call	Speed_Avg
.LVL122:
	.loc 1 78 0
	call	SpeedCalculation
.LVL123:
	mov	%d4, %d2
	call	get_Speed
.LVL124:
	.loc 1 80 0
	movh	%d4, 48896
	call	IR_setMotor0Vol
.LVL125:
	j	.L119
.L126:
	.loc 1 64 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1m, %d15
.L117:
	.loc 1 69 0
	call	BasicGpt12Enc_IR_Encoder_reset
.LVL126:
	j	.L118
.LFE725:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
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
	.global	Speed_In_School_Zone
.section .data.Speed_In_School_Zone,"aw",@progbits
	.align 2
	.type	Speed_In_School_Zone, @object
	.size	Speed_In_School_Zone, 4
Speed_In_School_Zone:
	.word	-1088841318
	.global	Speed_Out_Of_School_Zone
.section .data.Speed_Out_Of_School_Zone,"aw",@progbits
	.align 2
	.type	Speed_Out_Of_School_Zone, @object
	.size	Speed_Out_Of_School_Zone, 4
Speed_Out_Of_School_Zone:
	.word	-1097229926
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
	.uaword	.LFB726
	.uaword	.LFE726-.LFB726
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB728
	.uaword	.LFE728-.LFB728
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB729
	.uaword	.LFE729-.LFB729
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB730
	.uaword	.LFE730-.LFB730
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB731
	.uaword	.LFE731-.LFB731
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB732
	.uaword	.LFE732-.LFB732
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB733
	.uaword	.LFE733-.LFB733
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB734
	.uaword	.LFE734-.LFB734
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB735
	.uaword	.LFE735-.LFB735
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB736
	.uaword	.LFE736-.LFB736
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB737
	.uaword	.LFE737-.LFB737
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB738
	.uaword	.LFE738-.LFB738
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
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB725
	.uaword	.LFE725-.LFB725
	.align 2
.LEFDE28:
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
	.file 18 "<built-in>"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1f47
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
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2bc
	.uleb128 0x5
	.uaword	0x2c1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d1
	.uleb128 0x7
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
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x31d
	.uleb128 0x9
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x2cb
	.byte	0
	.uleb128 0x9
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
	.uaword	0x2f7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.byte	0x76
	.uaword	0x3a3
	.uleb128 0xb
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xb
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xb
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xb
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x4
	.byte	0x62
	.uaword	0x2c9
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3d9
	.uleb128 0xc
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x558
	.uleb128 0x9
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x3a3
	.byte	0
	.uleb128 0x9
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x26e
	.byte	0x4
	.uleb128 0x9
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x5a4
	.byte	0x8
	.uleb128 0x9
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5eb
	.byte	0xc
	.uleb128 0x9
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x606
	.byte	0x10
	.uleb128 0x9
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x63f
	.byte	0x14
	.uleb128 0x9
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6ec
	.byte	0x18
	.uleb128 0x9
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x710
	.byte	0x1c
	.uleb128 0x9
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x74a
	.byte	0x20
	.uleb128 0x9
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x78d
	.byte	0x24
	.uleb128 0x9
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x7b1
	.byte	0x28
	.uleb128 0x9
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x81a
	.byte	0x2c
	.uleb128 0x9
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7ea
	.byte	0x30
	.uleb128 0x9
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x838
	.byte	0x34
	.uleb128 0x9
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x858
	.byte	0x38
	.uleb128 0x9
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x879
	.byte	0x3c
	.uleb128 0x9
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x678
	.byte	0x40
	.uleb128 0x9
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x6b1
	.byte	0x44
	.uleb128 0x9
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x897
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x579
	.uleb128 0x4
	.byte	0x4
	.uaword	0x57f
	.uleb128 0xd
	.uaword	0x26e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x579
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x5c0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5c6
	.uleb128 0xe
	.byte	0x1
	.uaword	0x26e
	.uaword	0x5e5
	.uleb128 0xf
	.uaword	0x3a3
	.uleb128 0xf
	.uaword	0x2c9
	.uleb128 0xf
	.uaword	0x5e5
	.uleb128 0xf
	.uaword	0x2d2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2e6
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x5c0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x629
	.uleb128 0x4
	.byte	0x4
	.uaword	0x62f
	.uleb128 0xe
	.byte	0x1
	.uaword	0x239
	.uaword	0x63f
	.uleb128 0xf
	.uaword	0x3a3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x662
	.uleb128 0x4
	.byte	0x4
	.uaword	0x668
	.uleb128 0xe
	.byte	0x1
	.uaword	0x584
	.uaword	0x678
	.uleb128 0xf
	.uaword	0x3a3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x69b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6a1
	.uleb128 0xe
	.byte	0x1
	.uaword	0x247
	.uaword	0x6b1
	.uleb128 0xf
	.uaword	0x3a3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6d6
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6dc
	.uleb128 0xe
	.byte	0x1
	.uaword	0x2d2
	.uaword	0x6ec
	.uleb128 0xf
	.uaword	0x3a3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x629
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x734
	.uleb128 0x4
	.byte	0x4
	.uaword	0x73a
	.uleb128 0xe
	.byte	0x1
	.uaword	0x558
	.uaword	0x74a
	.uleb128 0xf
	.uaword	0x3a3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x76d
	.uleb128 0x4
	.byte	0x4
	.uaword	0x773
	.uleb128 0xe
	.byte	0x1
	.uaword	0x26e
	.uaword	0x78d
	.uleb128 0xf
	.uaword	0x3a3
	.uleb128 0xf
	.uaword	0x2e6
	.uleb128 0xf
	.uaword	0x2d2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x76d
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x7cf
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7d5
	.uleb128 0xe
	.byte	0x1
	.uaword	0x26e
	.uaword	0x7ea
	.uleb128 0xf
	.uaword	0x3a3
	.uleb128 0xf
	.uaword	0x2d2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x808
	.uleb128 0x4
	.byte	0x4
	.uaword	0x80e
	.uleb128 0x10
	.byte	0x1
	.uaword	0x81a
	.uleb128 0xf
	.uaword	0x3a3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x808
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x808
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x808
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x808
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x808
	.uleb128 0xa
	.byte	0x1
	.byte	0x7
	.byte	0x4c
	.uaword	0x917
	.uleb128 0xb
	.string	"IfxStdIf_Pos_Dir_forward"
	.sleb128 0
	.uleb128 0xb
	.string	"IfxStdIf_Pos_Dir_backward"
	.sleb128 1
	.uleb128 0xb
	.string	"IfxStdIf_Pos_Dir_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Dir"
	.byte	0x7
	.byte	0x50
	.uaword	0x8bc
	.uleb128 0x8
	.byte	0x18
	.byte	0x8
	.byte	0x21
	.uaword	0x992
	.uleb128 0x9
	.string	"speed"
	.byte	0x8
	.byte	0x22
	.uaword	0x255
	.byte	0
	.uleb128 0x9
	.string	"rawPosition"
	.byte	0x8
	.byte	0x23
	.uaword	0x255
	.byte	0x4
	.uleb128 0x9
	.string	"direction"
	.byte	0x8
	.byte	0x24
	.uaword	0x917
	.byte	0x8
	.uleb128 0x9
	.string	"turn"
	.byte	0x8
	.byte	0x25
	.uaword	0x239
	.byte	0xc
	.uleb128 0x9
	.string	"buff"
	.byte	0x8
	.byte	0x26
	.uaword	0x255
	.byte	0x10
	.uleb128 0x9
	.string	"avg"
	.byte	0x8
	.byte	0x27
	.uaword	0x255
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"IR_Encoder_t"
	.byte	0x8
	.byte	0x28
	.uaword	0x92f
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0x26
	.uaword	0x9d0
	.uleb128 0x9
	.string	"standardIo"
	.byte	0x9
	.byte	0x28
	.uaword	0x9d0
	.byte	0
	.uleb128 0x9
	.string	"align"
	.byte	0x9
	.byte	0x29
	.uaword	0x208
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3c3
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x9
	.byte	0x2a
	.uaword	0x9a6
	.uleb128 0x8
	.byte	0xc
	.byte	0xa
	.byte	0x32
	.uaword	0xa28
	.uleb128 0x9
	.string	"Ls0Margin"
	.byte	0xa
	.byte	0x33
	.uaword	0x239
	.byte	0
	.uleb128 0x9
	.string	"Ls1Margin"
	.byte	0xa
	.byte	0x34
	.uaword	0x239
	.byte	0x4
	.uleb128 0x9
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
	.uaword	0x9e9
	.uleb128 0x11
	.uahalf	0x268
	.byte	0xa
	.byte	0x38
	.uaword	0xbb9
	.uleb128 0x9
	.string	"Result"
	.byte	0xa
	.byte	0x39
	.uaword	0xbb9
	.byte	0
	.uleb128 0x12
	.string	"Transfer"
	.byte	0xa
	.byte	0x3a
	.uaword	0xbc9
	.uahalf	0x208
	.uleb128 0x12
	.string	"sample"
	.byte	0xa
	.byte	0x3c
	.uaword	0xbd9
	.uahalf	0x214
	.uleb128 0x12
	.string	"sample_RIGHT"
	.byte	0xa
	.byte	0x3d
	.uaword	0xbd9
	.uahalf	0x228
	.uleb128 0x12
	.string	"temp"
	.byte	0xa
	.byte	0x3e
	.uaword	0x255
	.uahalf	0x23c
	.uleb128 0x12
	.string	"previous"
	.byte	0xa
	.byte	0x40
	.uaword	0x247
	.uahalf	0x240
	.uleb128 0x12
	.string	"present"
	.byte	0xa
	.byte	0x41
	.uaword	0x247
	.uahalf	0x244
	.uleb128 0x12
	.string	"previous_RIGHT"
	.byte	0xa
	.byte	0x42
	.uaword	0x247
	.uahalf	0x248
	.uleb128 0x12
	.string	"present_RIGHT"
	.byte	0xa
	.byte	0x43
	.uaword	0x247
	.uahalf	0x24c
	.uleb128 0x12
	.string	"Direction_Determined"
	.byte	0xa
	.byte	0x45
	.uaword	0x26e
	.uahalf	0x250
	.uleb128 0x12
	.string	"Direction_Determined_RIGHT"
	.byte	0xa
	.byte	0x46
	.uaword	0x26e
	.uahalf	0x251
	.uleb128 0x12
	.string	"School_Zone_flag"
	.byte	0xa
	.byte	0x47
	.uaword	0x26e
	.uahalf	0x252
	.uleb128 0x12
	.string	"Dash_Left"
	.byte	0xa
	.byte	0x49
	.uaword	0x247
	.uahalf	0x254
	.uleb128 0x12
	.string	"Dash_Right"
	.byte	0xa
	.byte	0x4a
	.uaword	0x247
	.uahalf	0x258
	.uleb128 0x12
	.string	"Next_Lane"
	.byte	0xa
	.byte	0x4b
	.uaword	0x247
	.uahalf	0x25c
	.uleb128 0x12
	.string	"previous_servo"
	.byte	0xa
	.byte	0x4d
	.uaword	0x255
	.uahalf	0x260
	.uleb128 0x12
	.string	"SchoolZone_Status"
	.byte	0xa
	.byte	0x4f
	.uaword	0x247
	.uahalf	0x264
	.byte	0
	.uleb128 0x13
	.uaword	0x1e1
	.uaword	0xbc9
	.uleb128 0x14
	.uaword	0x347
	.byte	0x81
	.byte	0
	.uleb128 0x13
	.uaword	0x1e1
	.uaword	0xbd9
	.uleb128 0x14
	.uaword	0x347
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uaword	0x247
	.uaword	0xbe9
	.uleb128 0x14
	.uaword	0x347
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"LineData"
	.byte	0xa
	.byte	0x50
	.uaword	0xa3f
	.uleb128 0x15
	.byte	0x1
	.string	"SrvControl"
	.byte	0x1
	.uahalf	0x1df
	.byte	0x1
	.byte	0x1
	.uaword	0xc2c
	.uleb128 0x16
	.string	"diff"
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x255
	.uleb128 0x17
	.string	"result"
	.byte	0x1
	.uahalf	0x1e0
	.uaword	0x255
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Lane_Direction_Out_School_Zone"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"Lane_Scanning"
	.byte	0x1
	.uahalf	0x16c
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.string	"AEB"
	.byte	0x1
	.uahalf	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"appTaskfu_5ms"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
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
	.uaword	0xcf2
	.uleb128 0x1b
	.uaword	.LVL0
	.uaword	0x1aa8
	.uleb128 0x1b
	.uaword	.LVL1
	.uaword	0x1ac1
	.uleb128 0x1b
	.uaword	.LVL2
	.uaword	0x1ad6
	.uleb128 0x1b
	.uaword	.LVL3
	.uaword	0x1aed
	.uleb128 0x1b
	.uaword	.LVL4
	.uaword	0x1b08
	.uleb128 0x1b
	.uaword	.LVL5
	.uaword	0x1b21
	.uleb128 0x1b
	.uaword	.LVL6
	.uaword	0x1b41
	.uleb128 0x1c
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x1b50
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"School_Zone_Schedule"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	.LFB726
	.uaword	.LFE726
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd37
	.uleb128 0x1b
	.uaword	.LVL8
	.uaword	0x1b69
	.uleb128 0x1b
	.uaword	.LVL9
	.uaword	0x1b8c
	.uleb128 0x1b
	.uaword	.LVL10
	.uaword	0x1bb0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc2c
	.uaword	.LFB728
	.uaword	.LFE728
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10ae
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.byte	0xc1
	.uaword	0xd92
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST0
	.uleb128 0x20
	.uaword	.LBB101
	.uaword	.LBE101
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST1
	.uleb128 0x22
	.uaword	.LVL17
	.byte	0x1
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf000000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.byte	0xd9
	.uaword	0xdd8
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST2
	.uleb128 0x20
	.uaword	.LBB103
	.uaword	.LBE103
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST3
	.uleb128 0x24
	.uaword	.LVL23
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf000000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB104
	.uaword	.LBE104
	.byte	0x1
	.byte	0xe3
	.uaword	0xe1e
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST4
	.uleb128 0x20
	.uaword	.LBB105
	.uaword	.LBE105
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST5
	.uleb128 0x24
	.uaword	.LVL25
	.uaword	0x1bc3
	.uleb128 0x23
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
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB106
	.uaword	.LBE106
	.byte	0x1
	.byte	0xd4
	.uaword	0xe64
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST6
	.uleb128 0x20
	.uaword	.LBB107
	.uaword	.LBE107
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST7
	.uleb128 0x24
	.uaword	.LVL27
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3fc00000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.byte	0xca
	.uaword	0xeaa
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST8
	.uleb128 0x20
	.uaword	.LBB109
	.uaword	.LBE109
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST9
	.uleb128 0x24
	.uaword	.LVL29
	.uaword	0x1bc3
	.uleb128 0x23
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
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0xdd
	.uaword	0xee3
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	.LBB111
	.uaword	.LBE111
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST11
	.uleb128 0x1b
	.uaword	.LVL34
	.uaword	0x1bc3
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0xbc
	.uaword	0xf2a
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST12
	.uleb128 0x20
	.uaword	.LBB113
	.uaword	.LBE113
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST13
	.uleb128 0x22
	.uaword	.LVL37
	.byte	0x1
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf000000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.byte	0xc5
	.uaword	0xf64
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST14
	.uleb128 0x20
	.uaword	.LBB115
	.uaword	.LBE115
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST15
	.uleb128 0x1c
	.uaword	.LVL42
	.byte	0x1
	.uaword	0x1bc3
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB117
	.uaword	.LBE117
	.byte	0x1
	.byte	0xb2
	.uaword	0xf96
	.uleb128 0x25
	.uaword	0xc0f
	.uleb128 0x20
	.uaword	.LBB118
	.uaword	.LBE118
	.uleb128 0x26
	.uaword	0xc1c
	.uleb128 0x1c
	.uaword	.LVL18
	.byte	0x1
	.uaword	0x1bc3
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL11
	.uaword	0x1be2
	.uleb128 0x1b
	.uaword	.LVL12
	.uaword	0x1bf9
	.uleb128 0x1b
	.uaword	.LVL13
	.uaword	0x1c16
	.uleb128 0x1b
	.uaword	.LVL14
	.uaword	0x1c2f
	.uleb128 0x1b
	.uaword	.LVL15
	.uaword	0x1c4d
	.uleb128 0x27
	.uaword	.LVL16
	.uaword	0x1c64
	.uaword	0xfda
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL19
	.uaword	0x1c8c
	.uleb128 0x1b
	.uaword	.LVL20
	.uaword	0x1c9f
	.uleb128 0x1b
	.uaword	.LVL21
	.uaword	0x1cb8
	.uleb128 0x28
	.uaword	.LVL24
	.byte	0x1
	.uaword	0x1c64
	.uaword	0x100d
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.byte	0
	.uleb128 0x28
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x1c64
	.uaword	0x1025
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC7
	.byte	0
	.uleb128 0x28
	.uaword	.LVL28
	.byte	0x1
	.uaword	0x1c64
	.uaword	0x103d
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.byte	0
	.uleb128 0x28
	.uaword	.LVL30
	.byte	0x1
	.uaword	0x1c64
	.uaword	0x1055
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL31
	.uaword	0x1cd0
	.uleb128 0x28
	.uaword	.LVL35
	.byte	0x1
	.uaword	0x1c64
	.uaword	0x1076
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.byte	0
	.uleb128 0x27
	.uaword	.LVL36
	.uaword	0x1c64
	.uaword	0x108d
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL38
	.uaword	0x1c64
	.uaword	0x10a4
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL39
	.uaword	0x1ceb
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Lane_Direction_In_School_Zone"
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.uaword	.LFB729
	.uaword	.LFE729
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1417
	.uleb128 0x2a
	.uaword	0xbf9
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x111b
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST16
	.uleb128 0x20
	.uaword	.LBB121
	.uaword	.LBE121
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST17
	.uleb128 0x1c
	.uaword	.LVL50
	.byte	0x1
	.uaword	0x1bc3
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x1
	.byte	0xef
	.uaword	0x114d
	.uleb128 0x25
	.uaword	0xc0f
	.uleb128 0x20
	.uaword	.LBB123
	.uaword	.LBE123
	.uleb128 0x26
	.uaword	0xc1c
	.uleb128 0x1c
	.uaword	.LVL52
	.byte	0x1
	.uaword	0x1bc3
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xbf9
	.uaword	.LBB124
	.uaword	.LBE124
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x1195
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST18
	.uleb128 0x20
	.uaword	.LBB125
	.uaword	.LBE125
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST19
	.uleb128 0x22
	.uaword	.LVL57
	.byte	0x1
	.uaword	0x1bc3
	.uleb128 0x23
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
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB126
	.uaword	.LBE126
	.byte	0x1
	.byte	0xf7
	.uaword	0x11dc
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST20
	.uleb128 0x20
	.uaword	.LBB127
	.uaword	.LBE127
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST21
	.uleb128 0x22
	.uaword	.LVL64
	.byte	0x1
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf000000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	0xbf9
	.uaword	.LBB128
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x135
	.uaword	0x121f
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST22
	.uleb128 0x2c
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST23
	.uleb128 0x24
	.uaword	.LVL65
	.uaword	0x1bc3
	.uleb128 0x23
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
	.uleb128 0x2a
	.uaword	0xbf9
	.uaword	.LBB132
	.uaword	.LBE132
	.byte	0x1
	.uahalf	0x152
	.uaword	0x1266
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST24
	.uleb128 0x20
	.uaword	.LBB133
	.uaword	.LBE133
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST25
	.uleb128 0x24
	.uaword	.LVL67
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3fc00000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xbf9
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.uahalf	0x108
	.uaword	0x12ad
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST26
	.uleb128 0x20
	.uaword	.LBB135
	.uaword	.LBE135
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST27
	.uleb128 0x24
	.uaword	.LVL71
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3fc00000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xbf9
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.uahalf	0x127
	.uaword	0x12f4
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST28
	.uleb128 0x20
	.uaword	.LBB137
	.uaword	.LBE137
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST29
	.uleb128 0x24
	.uaword	.LVL73
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf000000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xbf9
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x133b
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST30
	.uleb128 0x20
	.uaword	.LBB139
	.uaword	.LBE139
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST31
	.uleb128 0x24
	.uaword	.LVL79
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf000000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0xbf9
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x1
	.byte	0xfd
	.uaword	0x1384
	.uleb128 0x2d
	.uaword	0xc0f
	.byte	0x4
	.uaword	0x42c80000
	.uleb128 0x20
	.uaword	.LBB141
	.uaword	.LBE141
	.uleb128 0x2e
	.uaword	0xc1c
	.byte	0x4
	.uaword	0x3fc00000
	.uleb128 0x22
	.uaword	.LVL86
	.byte	0x1
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3fc00000
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL43
	.uaword	0x1bf9
	.uleb128 0x1b
	.uaword	.LVL44
	.uaword	0x1c16
	.uleb128 0x1b
	.uaword	.LVL45
	.uaword	0x1c2f
	.uleb128 0x1b
	.uaword	.LVL46
	.uaword	0x1c4d
	.uleb128 0x1b
	.uaword	.LVL47
	.uaword	0x1ceb
	.uleb128 0x1b
	.uaword	.LVL53
	.uaword	0x1d0c
	.uleb128 0x1c
	.uaword	.LVL54
	.byte	0x1
	.uaword	0x1d1b
	.uleb128 0x1b
	.uaword	.LVL55
	.uaword	0x1d2c
	.uleb128 0x1b
	.uaword	.LVL58
	.uaword	0x1be2
	.uleb128 0x1b
	.uaword	.LVL59
	.uaword	0x1c8c
	.uleb128 0x1b
	.uaword	.LVL60
	.uaword	0x1c9f
	.uleb128 0x1b
	.uaword	.LVL61
	.uaword	0x1cb8
	.uleb128 0x1b
	.uaword	.LVL62
	.uaword	0x1cd0
	.uleb128 0x1b
	.uaword	.LVL69
	.uaword	0x1d49
	.uleb128 0x1b
	.uaword	.LVL81
	.uaword	0x1d0c
	.uleb128 0x1c
	.uaword	.LVL82
	.byte	0x1
	.uaword	0x1d1b
	.byte	0
	.uleb128 0x1d
	.uaword	0xc51
	.uaword	.LFB730
	.uaword	.LFE730
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1448
	.uleb128 0x1b
	.uaword	.LVL87
	.uaword	0x1d60
	.uleb128 0x1b
	.uaword	.LVL88
	.uaword	0x1d78
	.uleb128 0x1c
	.uaword	.LVL89
	.byte	0x1
	.uaword	0x1d8c
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.uahalf	0x177
	.byte	0x1
	.uaword	.LFB731
	.uaword	.LFE731
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x14e7
	.uleb128 0x2a
	.uaword	0xc51
	.uaword	.LBB142
	.uaword	.LBE142
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x149c
	.uleb128 0x1b
	.uaword	.LVL90
	.uaword	0x1d60
	.uleb128 0x1b
	.uaword	.LVL91
	.uaword	0x1d78
	.uleb128 0x1b
	.uaword	.LVL92
	.uaword	0x1d8c
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL93
	.uaword	0xc2c
	.uleb128 0x1b
	.uaword	.LVL94
	.uaword	0x1da1
	.uleb128 0x1b
	.uaword	.LVL95
	.uaword	0x10ae
	.uleb128 0x1b
	.uaword	.LVL96
	.uaword	0x1dc1
	.uleb128 0x1b
	.uaword	.LVL97
	.uaword	0xcf2
	.uleb128 0x1c
	.uaword	.LVL98
	.byte	0x1
	.uaword	0x1dd5
	.uleb128 0x1b
	.uaword	.LVL99
	.uaword	0x1dfc
	.uleb128 0x1c
	.uaword	.LVL100
	.byte	0x1
	.uaword	0x1dd5
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.uahalf	0x1a3
	.byte	0x1
	.uaword	.LFB732
	.uaword	.LFE732
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.uahalf	0x1b9
	.byte	0x1
	.uaword	.LFB733
	.uaword	.LFE733
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x2f
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.uahalf	0x1cd
	.byte	0x1
	.uaword	.LFB734
	.uaword	.LFE734
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1576
	.uleb128 0x31
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x1562
	.uleb128 0x32
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL101
	.uaword	0x1e18
	.uleb128 0x1c
	.uaword	.LVL102
	.byte	0x1
	.uaword	0x1e37
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.uahalf	0x1d8
	.byte	0x1
	.uaword	.LFB735
	.uaword	.LFE735
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1d
	.uaword	0xbf9
	.uaword	.LFB736
	.uaword	.LFE736
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x15e2
	.uleb128 0x1f
	.uaword	0xc0f
	.uaword	.LLST32
	.uleb128 0x21
	.uaword	0xc1c
	.uaword	.LLST33
	.uleb128 0x22
	.uaword	.LVL106
	.byte	0x1
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x18
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x42c80000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0xc66
	.uaword	.LFB737
	.uaword	.LFE737
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x160e
	.uleb128 0x22
	.uaword	.LVL107
	.byte	0x1
	.uaword	0x1da1
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
	.uleb128 0x2f
	.byte	0x1
	.string	"Avoid"
	.byte	0x1
	.uahalf	0x1e8
	.byte	0x1
	.uaword	.LFB738
	.uaword	.LFE738
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x165c
	.uleb128 0x28
	.uaword	.LVL108
	.byte	0x1
	.uaword	0x1bc3
	.uaword	0x1644
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL109
	.byte	0x1
	.uaword	0x1bc3
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f800000
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0xc71
	.uaword	.LFB727
	.uaword	.LFE727
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x16a5
	.uleb128 0x1e
	.uaword	0xc66
	.uaword	.LBB153
	.uaword	.LBE153
	.byte	0x1
	.byte	0x93
	.uaword	0x169b
	.uleb128 0x22
	.uaword	.LVL113
	.byte	0x1
	.uaword	0x1da1
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
	.uleb128 0x1b
	.uaword	.LVL110
	.uaword	0x160e
	.byte	0
	.uleb128 0x1a
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
	.uaword	0x17b8
	.uleb128 0x34
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4a
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x16da
	.uleb128 0x32
	.byte	0
	.uleb128 0x35
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	0x1705
	.uleb128 0x34
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x68
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x16fa
	.uleb128 0x32
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL118
	.byte	0x1
	.uaword	0x1e4b
	.byte	0
	.uleb128 0x35
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	0x174c
	.uleb128 0x34
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x63
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x1725
	.uleb128 0x32
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.uaword	.LASF4
	.byte	0x1
	.byte	0x64
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x1738
	.uleb128 0x32
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL119
	.uaword	0x1e5e
	.uleb128 0x1c
	.uaword	.LVL120
	.byte	0x1
	.uaword	0x1e71
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL114
	.uaword	0x1e84
	.uleb128 0x1b
	.uaword	.LVL115
	.uaword	0x1e9c
	.uleb128 0x1b
	.uaword	.LVL116
	.uaword	0x1eaf
	.uleb128 0x1b
	.uaword	.LVL117
	.uaword	0x1ec9
	.uleb128 0x1b
	.uaword	.LVL121
	.uaword	0xc71
	.uleb128 0x1b
	.uaword	.LVL122
	.uaword	0x1ee0
	.uleb128 0x1b
	.uaword	.LVL123
	.uaword	0x1ef0
	.uleb128 0x1b
	.uaword	.LVL124
	.uaword	0x1f0b
	.uleb128 0x27
	.uaword	.LVL125
	.uaword	0x1da1
	.uaword	0x17ae
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0xbf000000
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL126
	.uaword	0x1f25
	.byte	0
	.uleb128 0x36
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x36
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x36
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x36
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x239
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x13
	.uaword	0x31d
	.uaword	0x1832
	.uleb128 0x14
	.uaword	0x347
	.byte	0x2
	.byte	0
	.uleb128 0x37
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0x96
	.uaword	0x184f
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x1822
	.uleb128 0x37
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.uaword	0x255
	.uaword	0x187c
	.uleb128 0x38
	.byte	0
	.uleb128 0x37
	.string	"IR_AdcResult"
	.byte	0xc
	.byte	0x29
	.uaword	0x1871
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"IR_Encoder"
	.byte	0x8
	.byte	0x2d
	.uaword	0x992
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"Ifx_g_console"
	.byte	0x9
	.byte	0x2c
	.uaword	0x9d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"IR_Ctrl"
	.byte	0xa
	.byte	0x55
	.uaword	0xa28
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"IR_LineData"
	.byte	0xa
	.byte	0x56
	.uaword	0xbe9
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x39
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x39
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x39
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x39
	.string	"testVol"
	.byte	0x1
	.byte	0xd
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testVol
	.uleb128 0x39
	.string	"testSrv"
	.byte	0x1
	.byte	0xe
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	testSrv
	.uleb128 0x39
	.string	"signORunsign"
	.byte	0x1
	.byte	0xf
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	signORunsign
	.uleb128 0x39
	.string	"Obstacle_flag"
	.byte	0x1
	.byte	0x10
	.uaword	0x247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Obstacle_flag
	.uleb128 0x39
	.string	"Speed_Out_Of_School_Zone"
	.byte	0x1
	.byte	0x11
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_Out_Of_School_Zone
	.uleb128 0x39
	.string	"Speed_In_School_Zone"
	.byte	0x1
	.byte	0x11
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed_In_School_Zone
	.uleb128 0x39
	.string	"P"
	.byte	0x1
	.byte	0x12
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	P
	.uleb128 0x39
	.string	"I"
	.byte	0x1
	.byte	0x12
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	I
	.uleb128 0x39
	.string	"D"
	.byte	0x1
	.byte	0x12
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	D
	.uleb128 0x39
	.string	"time"
	.byte	0x1
	.byte	0x13
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	time
	.uleb128 0x39
	.string	"speed_min"
	.byte	0x1
	.byte	0x14
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_min
	.uleb128 0x39
	.string	"speed_max"
	.byte	0x1
	.byte	0x14
	.uaword	0x255
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	speed_max
	.uleb128 0x39
	.string	"WHICH_LANE"
	.byte	0x1
	.byte	0x15
	.uaword	0x247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	WHICH_LANE
	.uleb128 0x39
	.string	"TEMP_REMAIN"
	.byte	0x1
	.byte	0x16
	.uaword	0x26e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TEMP_REMAIN
	.uleb128 0x3a
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xd
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xe
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0xf
	.byte	0x7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xc
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0x8
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0x10
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"PID_init"
	.byte	0x11
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0xa
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"IsInSchoolZone_THRESHOLD"
	.byte	0xa
	.byte	0x85
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"IsOutSchoolZone_THRESHOLD"
	.byte	0xa
	.byte	0x84
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"get_Dash"
	.byte	0xa
	.byte	0x76
	.byte	0x1
	.uaword	0x247
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0xf
	.byte	0x78
	.byte	0x1
	.byte	0x1
	.uaword	0x1be2
	.uleb128 0xf
	.uaword	0x255
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"is_THRESHOLD"
	.byte	0xa
	.byte	0x71
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"is_THRESHOLD_RIGHT"
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"Boundary_RIGHT"
	.byte	0xa
	.byte	0x8f
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"Over_Boundary_RIGHT"
	.byte	0xa
	.byte	0x94
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"isEndOfRIGHT"
	.byte	0xa
	.byte	0x8a
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3d
	.byte	0x1
	.string	"__builtin_puts"
	.byte	0x12
	.byte	0
	.string	"puts"
	.byte	0x1
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x1c8c
	.uleb128 0xf
	.uaword	0x2b6
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"Boundary"
	.byte	0xa
	.byte	0x88
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"Over_Boundary2"
	.byte	0xa
	.byte	0x92
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"Over_Boundary"
	.byte	0xa
	.byte	0x91
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"Direction_CENTER"
	.byte	0xa
	.byte	0x98
	.byte	0x1
	.uaword	0x255
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"Direction_CENTER_RIGHT"
	.byte	0xa
	.byte	0x99
	.byte	0x1
	.uaword	0x255
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"resetPSD"
	.byte	0xc
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"clear_Dash"
	.byte	0xa
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"is_WIDE_LANE_RIGHT"
	.byte	0xa
	.byte	0x8c
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"is_WIDE_LANE"
	.byte	0xa
	.byte	0x8b
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xd
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"median_filter"
	.byte	0xa
	.byte	0x65
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"threshold_LINE"
	.byte	0xa
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0xf
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x1dc1
	.uleb128 0xf
	.uaword	0x255
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xe
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"AsclinShellInterface_runLineScan"
	.byte	0x10
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0xa
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0x10
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x1e4b
	.uleb128 0x32
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x68
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x1e5e
	.uleb128 0x32
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x63
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x1e71
	.uleb128 0x32
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.uaword	.LASF4
	.byte	0x1
	.byte	0x64
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x1e84
	.uleb128 0x32
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"BasicGpt12Enc_run"
	.byte	0x8
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4a
	.uaword	0x1e1
	.byte	0x1
	.uaword	0x1eaf
	.uleb128 0x32
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xc
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"Checking_PSD"
	.byte	0xc
	.byte	0x32
	.byte	0x1
	.uaword	0x26e
	.byte	0x1
	.uleb128 0x3a
	.byte	0x1
	.string	"Speed_Avg"
	.byte	0x8
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"SpeedCalculation"
	.byte	0x8
	.byte	0x37
	.byte	0x1
	.uaword	0x255
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.string	"get_Speed"
	.byte	0x11
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.uaword	0x1f25
	.uleb128 0xf
	.uaword	0x255
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"BasicGpt12Enc_IR_Encoder_reset"
	.byte	0x8
	.byte	0x34
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x2007
	.uleb128 0x8
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbf000000
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbf000000
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3fc00000
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x17
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b7
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x42c80000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbf000000
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x17
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b7
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x42c80000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x17
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1b7
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x42c80000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbf000000
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3f000000
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3fc00000
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x42c80000
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3fc00000
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbf000000
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL78
	.uaword	.LVL80
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xc2c80000
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL78
	.uaword	.LVL80
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xbf000000
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL104
	.uaword	.LFE736
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x17
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x42c80000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x19
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x42c80000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL106-1
	.uaword	.LFE736
	.uahalf	0x19
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1b7
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x42c80000
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1b7
	.byte	0x4
	.uaword	0x3f000000
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x8c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB724
	.uaword	.LFE724-.LFB724
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
	.uaword	.LFB738
	.uaword	.LFE738-.LFB738
	.uaword	.LFB727
	.uaword	.LFE727-.LFB727
	.uaword	.LFB725
	.uaword	.LFE725-.LFB725
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	0
	.uaword	0
	.uaword	.LFB724
	.uaword	.LFE724
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
	.uaword	.LFB738
	.uaword	.LFE738
	.uaword	.LFB727
	.uaword	.LFE727
	.uaword	.LFB725
	.uaword	.LFE725
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"GtmTomPwmHl_run"
.LASF0:
	.string	"BasicGpt12Enc_IR_Encoder_turn"
.LASF4:
	.string	"GtmTomSrvScan_run"
.LASF3:
	.string	"GtmTomSrv_run"
.LASF1:
	.string	"Speed_Buff"
	.extern	BasicGpt12Enc_IR_Encoder_reset,STT_FUNC,0
	.extern	get_Speed,STT_FUNC,0
	.extern	SpeedCalculation,STT_FUNC,0
	.extern	Speed_Avg,STT_FUNC,0
	.extern	GtmTomSrvScan_run,STT_FUNC,0
	.extern	GtmTomSrv_run,STT_FUNC,0
	.extern	GtmTomPwmHl_run,STT_FUNC,0
	.extern	Checking_PSD,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	Speed_Buff,STT_FUNC,0
	.extern	BasicGpt12Enc_run,STT_FUNC,0
	.extern	BasicGpt12Enc_IR_Encoder_turn,STT_FUNC,0
	.extern	AsclinShellInterface_run,STT_FUNC,0
	.extern	InfineonRacer_control,STT_FUNC,0
	.extern	AsclinShellInterface_runLineScan,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	threshold_LINE,STT_FUNC,0
	.extern	median_filter,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	IR_AdcResult,STT_OBJECT,-1
	.extern	is_WIDE_LANE,STT_FUNC,0
	.extern	is_WIDE_LANE_RIGHT,STT_FUNC,0
	.extern	clear_Dash,STT_FUNC,0
	.extern	resetPSD,STT_FUNC,0
	.extern	Direction_CENTER_RIGHT,STT_FUNC,0
	.extern	Direction_CENTER,STT_FUNC,0
	.extern	Over_Boundary,STT_FUNC,0
	.extern	Over_Boundary2,STT_FUNC,0
	.extern	Boundary,STT_FUNC,0
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	puts,STT_FUNC,0
	.extern	isEndOfRIGHT,STT_FUNC,0
	.extern	Over_Boundary_RIGHT,STT_FUNC,0
	.extern	Boundary_RIGHT,STT_FUNC,0
	.extern	is_THRESHOLD_RIGHT,STT_FUNC,0
	.extern	is_THRESHOLD,STT_FUNC,0
	.extern	get_Dash,STT_FUNC,0
	.extern	IsOutSchoolZone_THRESHOLD,STT_FUNC,0
	.extern	IsInSchoolZone_THRESHOLD,STT_FUNC,0
	.extern	IR_LineData,STT_OBJECT,616
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
