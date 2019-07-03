	.file	"IfxEth.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxEth_wakeupReceiver.part.15,"ax",@progbits
	.align 1
	.type	IfxEth_wakeupReceiver.part.15, @function
IfxEth_wakeupReceiver.part.15:
.LFB352:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.c"
	.loc 1 837 0
.LVL0:
	.loc 1 844 0
	ld.w	%d15, [%a4]0
	jz.t	%d15, 7, .L2
	.loc 1 846 0
	mov	%d15, 128
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4076
	st.w	[%a15]0, %d15
.L2:
.LVL1:
.LBB242:
.LBB243:
	.loc 1 801 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
	.loc 1 802 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 4
	st.w	[%a15]0, %d15
	.loc 1 803 0
	mov	%d15, 1
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4088
	st.w	[%a15]0, %d15
	ret
.LBE243:
.LBE242:
.LFE352:
	.size	IfxEth_wakeupReceiver.part.15, .-IfxEth_wakeupReceiver.part.15
.section .text.IfxEth_wakeupTransmitter.part.16,"ax",@progbits
	.align 1
	.type	IfxEth_wakeupTransmitter.part.16, @function
IfxEth_wakeupTransmitter.part.16:
.LFB353:
	.loc 1 854 0
.LVL2:
	.loc 1 861 0
	ld.w	%d15, [%a4]0
	jz.t	%d15, 2, .L8
	.loc 1 864 0
	mov	%d15, 36
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4076
	st.w	[%a15]0, %d15
.L8:
.LVL3:
.LBB244:
.LBB245:
	.loc 1 811 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 812 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 13, 1
	st.w	[%a15]0, %d15
	.loc 1 813 0
	mov	%d15, 1
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4092
	st.w	[%a15]0, %d15
	ret
.LBE245:
.LBE244:
.LFE353:
	.size	IfxEth_wakeupTransmitter.part.16, .-IfxEth_wakeupTransmitter.part.16
.section .text.IfxEth_disableModule,"ax",@progbits
	.align 1
	.global	IfxEth_disableModule
	.type	IfxEth_disableModule, @function
IfxEth_disableModule:
.LFB306:
	.loc 1 48 0
	.loc 1 49 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL4:
	.loc 1 50 0
	mov	%d4, %d2
	.loc 1 51 0
	movh.a	%a15, 61442
	.loc 1 49 0
	mov	%d15, %d2
.LVL5:
	.loc 1 51 0
	lea	%a15, [%a15] -12288
	.loc 1 50 0
	call	IfxScuWdt_clearCpuEndinit
.LVL6:
	.loc 1 51 0
	ld.w	%d2, [%a15]0
	.loc 1 52 0
	mov	%d4, %d15
	.loc 1 51 0
	or	%d2, %d2, 1
	st.w	[%a15]0, %d2
	.loc 1 52 0
	j	IfxScuWdt_setCpuEndinit
.LVL7:
.LFE306:
	.size	IfxEth_disableModule, .-IfxEth_disableModule
.section .text.IfxEth_enableModule,"ax",@progbits
	.align 1
	.global	IfxEth_enableModule
	.type	IfxEth_enableModule, @function
IfxEth_enableModule:
.LFB307:
	.loc 1 57 0
.LBB246:
	.loc 1 59 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL8:
	.loc 1 60 0
	mov	%d4, %d2
	.loc 1 59 0
	mov	%d15, %d2
.LVL9:
	.loc 1 60 0
	call	IfxScuWdt_clearCpuEndinit
.LVL10:
	.loc 1 61 0
	mov	%d2, 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -12288
	st.w	[%a15]0, %d2
	.loc 1 62 0
	mov	%d4, %d15
	j	IfxScuWdt_setCpuEndinit
.LVL11:
.LBE246:
.LFE307:
	.size	IfxEth_enableModule, .-IfxEth_enableModule
.section .text.IfxEth_getReceiveBuffer,"ax",@progbits
	.align 1
	.global	IfxEth_getReceiveBuffer
	.type	IfxEth_getReceiveBuffer, @function
IfxEth_getReceiveBuffer:
.LFB309:
	.loc 1 76 0
.LVL12:
	ld.a	%a15, [%a4] 124
.LVL13:
	.loc 1 77 0
	mov.a	%a12, 0
	.loc 1 80 0
	ld.w	%d15, [%a15]0
	jltz	%d15, .L15
	.loc 1 82 0
	ld.w	%d15, [%a4] 4
	add	%d15, 1
	st.w	[%a4] 4, %d15
.LVL14:
	.loc 1 84 0
	ld.a	%a12, [%a15] 8
.LVL15:
.L15:
.LBB247:
.LBB248:
	.loc 1 839 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4076
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
	.loc 1 842 0
	jz.t	%d15, 19, .L16
	call	IfxEth_wakeupReceiver.part.15
.LVL16:
.L16:
.LBE248:
.LBE247:
	.loc 1 90 0
	mov.aa	%a2, %a12
	ret
.LFE309:
	.size	IfxEth_getReceiveBuffer, .-IfxEth_getReceiveBuffer
.section .text.IfxEth_getTransmitBuffer,"ax",@progbits
	.align 1
	.global	IfxEth_getTransmitBuffer
	.type	IfxEth_getTransmitBuffer, @function
IfxEth_getTransmitBuffer:
.LFB310:
	.loc 1 94 0
.LVL17:
	ld.a	%a15, [%a4] 128
.LVL18:
	.loc 1 95 0
	mov.a	%a2, 0
	.loc 1 99 0
	ld.w	%d15, [%a15]0
	jltz	%d15, .L22
	.loc 1 101 0
	ld.a	%a2, [%a15] 8
.LVL19:
.L22:
	.loc 1 105 0
	ret
.LFE310:
	.size	IfxEth_getTransmitBuffer, .-IfxEth_getTransmitBuffer
.section .text.IfxEth_initConfig,"ax",@progbits
	.align 1
	.global	IfxEth_initConfig
	.type	IfxEth_initConfig, @function
IfxEth_initConfig:
.LFB312:
	.loc 1 247 0
.LVL20:
	.loc 1 279 0
	movh	%d2, hi:defaultConfig.11120
	mov.a	%a2, %d2
	mov.aa	%a3, %a4
	lea	%a15, [%a2] lo:defaultConfig.11120
		# #chunks=10, chunksize=8, remains=0
	lea	%a2, 10-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a3+]8, %e2
	loop	%a2, 0b
	.loc 1 280 0
	st.a	[%a4] 32, %a5
	ret
.LFE312:
	.size	IfxEth_initConfig, .-IfxEth_initConfig
.section .text.IfxEth_initReceiveDescriptors,"ax",@progbits
	.align 1
	.global	IfxEth_initReceiveDescriptors
	.type	IfxEth_initReceiveDescriptors, @function
IfxEth_initReceiveDescriptors:
.LFB313:
	.loc 1 285 0
.LVL21:
	ld.a	%a5, [%a4] 116
.LVL22:
	movh	%d15, hi:IfxEth_rxBuffer
	.loc 1 296 0
	movh	%d6, 32768
	.loc 1 300 0
	mov	%d5, 17920
	addi	%d15, %d15, lo:IfxEth_rxBuffer
.LBB249:
.LBB250:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
	.loc 2 1384 0
	mov.aa	%a15, %a5
.LBE250:
.LBE249:
	.loc 1 290 0
	st.a	[%a4] 124, %a5
.LVL23:
.LBB251:
.LBB252:
	.loc 2 1219 0
	insert	%d3, %d15, 0, 0, 28
	movh	%d4, 53248
.LBE252:
.LBE251:
	.loc 1 296 0
	st.w	[%a15]0, %d6
	.loc 1 300 0
	st.w	[%a15] 4, %d5
.LBB260:
.LBB256:
	.loc 2 1219 0
	movh	%d7, 61440
	mov.a	%a2, 7
.LVL24:
	mov	%d2, %d15
	jeq	%d3, %d4, .L30
.LVL25:
.L26:
.LBE256:
.LBE260:
	.loc 1 307 0
	lea	%a3, [%a15] 16
.LBB261:
.LBB257:
	.loc 2 1219 0
	st.w	[%a15] 8, %d2
.LBE257:
.LBE261:
	.loc 1 307 0
	st.a	[%a15] 12, %a3
.LVL26:
	addi	%d15, %d15, 1536
.LVL27:
	loop	%a2, .L29
.LVL28:
	.loc 1 316 0
	imask	%e2, 1, 15, 1
.LBB262:
.LBB263:
	.loc 2 1593 0
	movh.a	%a15, 61442
.LVL29:
	lea	%a15, [%a15] -12288
.LBE263:
.LBE262:
	.loc 1 316 0
	ldmst	[%a5] 116, %e2
.LVL30:
.LBB265:
.LBB266:
	.loc 2 1384 0
	ld.w	%d15, [%a4] 116
.LVL31:
.LBE266:
.LBE265:
	.loc 1 323 0
	mov	%d2, 0
	.loc 1 319 0
	st.w	[%a4] 124, %d15
	.loc 1 320 0
	st.w	[%a5] 124, %d15
	.loc 1 323 0
	st.w	[%a4] 4, %d2
.LVL32:
.LBB267:
.LBB264:
	.loc 2 1593 0
	st.w	[%a15] 8204, %d15
	ret
.LVL33:
.L29:
.LBE264:
.LBE267:
	mov.aa	%a15, %a3
.LVL34:
.LBB268:
.LBB258:
	.loc 2 1219 0
	insert	%d3, %d15, 0, 0, 28
.LBE258:
.LBE268:
	.loc 1 296 0
	st.w	[%a15]0, %d6
	.loc 1 300 0
	st.w	[%a15] 4, %d5
.LVL35:
.LBB269:
.LBB259:
	.loc 2 1219 0
	mov	%d2, %d15
	jne	%d3, %d4, .L26
.LVL36:
.L30:
.LBB253:
.LBB254:
.LBB255:
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 754 0
#APP
	# 754 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL37:
#NO_APP
.LBE255:
	.loc 3 755 0
	and	%d3, %d2, 7
.LBE254:
.LBE253:
	.loc 2 1219 0
	insert	%d2, %d15, 0, 20, 12
.LVL38:
	insert	%d2, %d2, 15, 28, 3
	madd	%d2, %d2, %d3, %d7
	j	.L26
.LBE259:
.LBE269:
.LFE313:
	.size	IfxEth_initReceiveDescriptors, .-IfxEth_initReceiveDescriptors
.section .rodata,"a",@progbits
.LC0:
	.string	"(config->rxBuffer1Size) % 4 == 0"
.LC1:
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.c"
.LC2:
	.string	"(config->rxBuffer2Size) % 4 == 0"
.section .text.IfxEth_initReceiveDescriptorsRingMode,"ax",@progbits
	.align 1
	.global	IfxEth_initReceiveDescriptorsRingMode
	.type	IfxEth_initReceiveDescriptorsRingMode, @function
IfxEth_initReceiveDescriptorsRingMode:
.LFB314:
	.loc 1 331 0
.LVL39:
	ld.w	%d12, [%a4] 116
.LVL40:
	.loc 1 352 0
	movh	%d9, hi:Assert_verboseLevel
.LBB270:
.LBB271:
	.loc 2 1384 0
	mov.a	%a15, %d12
.LBE271:
.LBE270:
	.loc 1 352 0
	movh	%d14, hi:.LC0
	movh	%d13, hi:.LC1
	.loc 1 331 0
	mov.aa	%a13, %a4
	mov.aa	%a12, %a5
	.loc 1 339 0
	st.w	[%a4] 124, %d12
.LVL41:
	lea	%a14, [%a15] 128
	.loc 1 343 0
	mov	%d8, 0
	.loc 1 345 0
	mov	%d15, 0
	.loc 1 352 0
	addi	%d9, %d9, lo:Assert_verboseLevel
	addi	%d14, %d14, lo:.LC0
	addi	%d13, %d13, lo:.LC1
	j	.L40
.LVL42:
.L53:
	ld.hu	%d3, [%a12] 12
	and	%d2, %d3, 3
	jz	%d2, .L33
	.loc 1 352 0 is_stmt 0 discriminator 1
	mov.a	%a2, %d9
	ld.w	%d2, [%a2]0
	jlt.u	%d2, 2, .L33
	.loc 1 352 0 discriminator 2
	mov.a	%a4, %d14
	mov.a	%a5, %d13
	movh.a	%a6, hi:__func__.11137
	mov	%d4, 2
	mov	%d5, 352
	lea	%a6, [%a6] lo:__func__.11137
	call	Ifx_Assert_doLevel
.LVL43:
	ld.hu	%d3, [%a12] 12
.L33:
	.loc 1 353 0 is_stmt 1
	ld.w	%d2, [%a12] 4
.LBB272:
.LBB273:
	.loc 2 1579 0
	movh	%d5, 53248
.LBE273:
.LBE272:
	.loc 1 353 0
	madd	%d2, %d2, %d3, %d8
.LVL44:
.LBB281:
.LBB279:
	.loc 2 1579 0
	insert	%d4, %d2, 0, 0, 28
	jeq	%d4, %d5, .L50
.LVL45:
.L34:
	st.w	[%a15] 8, %d2
.LVL46:
	.loc 2 1580 0
	ld.w	%d2, [%a15] 4
	insert	%d2, %d2, %d3, 0, 13
	st.w	[%a15] 4, %d2
	ld.bu	%d2, [%a12]0
.LBE279:
.LBE281:
	.loc 1 361 0
	add	%d2, -1
	jlt.u	%d2, 2, .L51
.LVL47:
.L36:
.LBB282:
.LBB283:
	.loc 2 1587 0
	mov	%d10, 0
	movh	%d11, 8191
	.loc 2 1586 0
	st.w	[%a15] 12, %d15
.LBE283:
.LBE282:
	.loc 1 343 0
	add	%d8, 1
.LVL48:
.LBB285:
.LBB284:
	.loc 2 1587 0
	ldmst	[%a15] 4, %e10
.LBE284:
.LBE285:
	.loc 1 372 0
	lea	%a15, [%a15] 16
.LVL49:
	.loc 1 343 0
	jeq.a	%a15, %a14, .L52
.LVL50:
.L40:
	.loc 1 346 0
	movh	%d2, 32768
	.loc 1 348 0
	st.w	[%a15] 4, %d15
	.loc 1 346 0
	st.w	[%a15]0, %d2
	.loc 1 350 0
	ld.bu	%d2, [%a12]0
	and	%d3, %d2, 253
	jz	%d3, .L53
.LVL51:
.LBB286:
.LBB287:
	.loc 2 1579 0
	st.w	[%a15] 8, %d15
	.loc 2 1580 0
	st.w	[%a15] 4, %d15
.LBE287:
.LBE286:
	.loc 1 361 0
	add	%d2, -1
	jge.u	%d2, 2, .L36
.LVL52:
.L51:
	.loc 1 363 0
	ld.hu	%d3, [%a12] 14
	and	%d2, %d3, 3
	jz	%d2, .L37
	.loc 1 363 0 is_stmt 0 discriminator 1
	mov.a	%a2, %d9
	ld.w	%d2, [%a2]0
	jlt.u	%d2, 2, .L37
	.loc 1 363 0 discriminator 2
	movh.a	%a4, hi:.LC2
	mov.a	%a5, %d13
	movh.a	%a6, hi:__func__.11137
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC2
	mov	%d5, 363
	lea	%a6, [%a6] lo:__func__.11137
	call	Ifx_Assert_doLevel
.LVL53:
	ld.hu	%d3, [%a12] 14
.L37:
	.loc 1 364 0 is_stmt 1
	ld.w	%d2, [%a12] 8
.LBB288:
.LBB289:
	.loc 2 1586 0
	movh	%d5, 53248
.LBE289:
.LBE288:
	.loc 1 364 0
	madd	%d2, %d2, %d3, %d8
.LVL54:
.LBB298:
.LBB295:
	.loc 2 1586 0
	insert	%d4, %d2, 0, 0, 28
	jeq	%d4, %d5, .L54
.LVL55:
.L38:
	st.w	[%a15] 12, %d2
.LVL56:
	.loc 2 1587 0
	ld.w	%d2, [%a15] 4
.LBE295:
.LBE298:
	.loc 1 343 0
	add	%d8, 1
.LVL57:
.LBB299:
.LBB296:
	.loc 2 1587 0
	insert	%d2, %d2, %d3, 16, 13
	st.w	[%a15] 4, %d2
.LBE296:
.LBE299:
	.loc 1 372 0
	lea	%a15, [%a15] 16
.LVL58:
	.loc 1 343 0
	jne.a	%a15, %a14, .L40
.LVL59:
.L52:
	.loc 1 380 0
	imask	%e2, 1, 15, 1
	mov.a	%a15, %d12
	ldmst	[%a15] 116, %e2
.LVL60:
	.loc 1 382 0
	ld.w	%d15, [%a13] 116
	st.w	[%a13] 124, %d15
	.loc 1 385 0
	mov	%d15, 0
.LBB300:
.LBB301:
	.loc 2 1593 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -12288
.LBE301:
.LBE300:
	.loc 1 385 0
	st.w	[%a13] 4, %d15
.LVL61:
.LBB303:
.LBB302:
	.loc 2 1593 0
	ld.w	%d15, [%a13] 116
	st.w	[%a15] 8204, %d15
.LVL62:
.LBE302:
.LBE303:
	.loc 1 390 0
	ld.bu	%d15, [%a12]0
.LVL63:
	st.b	[%a13] 138, %d15
.LVL64:
	ret
.LVL65:
.L50:
.LBB304:
.LBB280:
.LBB274:
.LBB275:
.LBB276:
	.loc 3 754 0
#APP
	# 754 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d4, LO:0xFE1C
	# 0 "" 2
.LVL66:
#NO_APP
.LBE276:
.LBE275:
.LBE274:
	.loc 2 1579 0
	insert	%d2, %d2, 0, 20, 12
.LVL67:
.LBB278:
.LBB277:
	.loc 3 755 0
	and	%d4, %d4, 7
.LVL68:
.LBE277:
.LBE278:
	.loc 2 1579 0
	insert	%d2, %d2, 15, 28, 3
	movh	%d5, 61440
	madd	%d2, %d2, %d4, %d5
	j	.L34
.LVL69:
.L54:
.LBE280:
.LBE304:
.LBB305:
.LBB297:
.LBB290:
.LBB291:
.LBB292:
	.loc 3 754 0
#APP
	# 754 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d4, LO:0xFE1C
	# 0 "" 2
.LVL70:
#NO_APP
.LBE292:
.LBE291:
.LBE290:
	.loc 2 1586 0
	insert	%d2, %d2, 0, 20, 12
.LVL71:
.LBB294:
.LBB293:
	.loc 3 755 0
	and	%d4, %d4, 7
.LVL72:
.LBE293:
.LBE294:
	.loc 2 1586 0
	insert	%d2, %d2, 15, 28, 3
	movh	%d5, 61440
	madd	%d2, %d2, %d4, %d5
	j	.L38
.LBE297:
.LBE305:
.LFE314:
	.size	IfxEth_initReceiveDescriptorsRingMode, .-IfxEth_initReceiveDescriptorsRingMode
.section .text.IfxEth_initTransmitDescriptors,"ax",@progbits
	.align 1
	.global	IfxEth_initTransmitDescriptors
	.type	IfxEth_initTransmitDescriptors, @function
IfxEth_initTransmitDescriptors:
.LFB315:
	.loc 1 395 0
.LVL73:
	ld.a	%a5, [%a4] 120
.LVL74:
	movh	%d15, hi:IfxEth_txBuffer
	.loc 1 408 0
	movh	%d5, 28688
	addi	%d15, %d15, lo:IfxEth_txBuffer
.LBB306:
.LBB307:
	.loc 2 1390 0
	mov.aa	%a15, %a5
.LBE307:
.LBE306:
	.loc 1 399 0
	st.a	[%a4] 128, %a5
.LVL75:
.LBB308:
.LBB309:
	.loc 2 1243 0
	insert	%d3, %d15, 0, 0, 28
	movh	%d4, 53248
.LBE309:
.LBE308:
	.loc 1 408 0
	st.w	[%a15]0, %d5
.LBB317:
.LBB313:
	.loc 2 1243 0
	movh	%d6, 61440
	mov.a	%a2, 15
.LVL76:
	mov	%d2, %d15
	jeq	%d3, %d4, .L60
.LVL77:
.L56:
.LBE313:
.LBE317:
	.loc 1 415 0
	lea	%a3, [%a15] 16
.LBB318:
.LBB314:
	.loc 2 1243 0
	st.w	[%a15] 8, %d2
.LBE314:
.LBE318:
	.loc 1 415 0
	st.a	[%a15] 12, %a3
.LVL78:
	addi	%d15, %d15, 1536
.LVL79:
	loop	%a2, .L59
.LVL80:
	.loc 1 424 0
	imask	%e2, 1, 21, 1
.LBB319:
.LBB320:
	.loc 2 1634 0
	movh.a	%a15, 61442
.LVL81:
	lea	%a15, [%a15] -12288
.LBE320:
.LBE319:
	.loc 1 424 0
	ldmst	[%a5] 240, %e2
.LVL82:
.LBB322:
.LBB323:
	.loc 2 1390 0
	ld.w	%d15, [%a4] 120
.LVL83:
.LBE323:
.LBE322:
	.loc 1 431 0
	mov	%d2, 0
	.loc 1 427 0
	st.w	[%a4] 128, %d15
	.loc 1 428 0
	st.w	[%a5] 252, %d15
	.loc 1 431 0
	st.w	[%a4] 8, %d2
.LVL84:
.LBB324:
.LBB321:
	.loc 2 1634 0
	st.w	[%a15] 8208, %d15
	ret
.LVL85:
.L59:
.LBE321:
.LBE324:
	mov.aa	%a15, %a3
.LVL86:
.LBB325:
.LBB315:
	.loc 2 1243 0
	insert	%d3, %d15, 0, 0, 28
.LBE315:
.LBE325:
	.loc 1 408 0
	st.w	[%a15]0, %d5
.LVL87:
.LBB326:
.LBB316:
	.loc 2 1243 0
	mov	%d2, %d15
	jne	%d3, %d4, .L56
.LVL88:
.L60:
.LBB310:
.LBB311:
.LBB312:
	.loc 3 754 0
#APP
	# 754 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL89:
#NO_APP
.LBE312:
	.loc 3 755 0
	and	%d3, %d2, 7
.LBE311:
.LBE310:
	.loc 2 1243 0
	insert	%d2, %d15, 0, 20, 12
.LVL90:
	insert	%d2, %d2, 15, 28, 3
	madd	%d2, %d2, %d3, %d6
	j	.L56
.LBE316:
.LBE326:
.LFE315:
	.size	IfxEth_initTransmitDescriptors, .-IfxEth_initTransmitDescriptors
.section .rodata,"a",@progbits
.LC3:
	.string	"(config->txBuffer1Size) % 4 == 0"
.LC4:
	.string	"(config->txBuffer2Size) % 4 == 0"
.section .text.IfxEth_initTransmitDescriptorsRingMode,"ax",@progbits
	.align 1
	.global	IfxEth_initTransmitDescriptorsRingMode
	.type	IfxEth_initTransmitDescriptorsRingMode, @function
IfxEth_initTransmitDescriptorsRingMode:
.LFB316:
	.loc 1 439 0
.LVL91:
	ld.a	%a2, [%a4] 120
	sub.a	%SP, 8
.LCFI0:
	.loc 1 458 0
	movh	%d14, hi:Assert_verboseLevel
	.loc 1 439 0
	mov.aa	%a14, %a4
	mov.aa	%a12, %a5
	st.a	[%SP] 4, %a2
.LVL92:
.LBB327:
.LBB328:
	.loc 2 1390 0
	mov.aa	%a15, %a2
.LBE328:
.LBE327:
	.loc 1 446 0
	st.a	[%a4] 128, %a2
.LVL93:
	lea	%a13, [%a2] 256
	.loc 1 451 0
	mov	%e8, 0
	.loc 1 458 0
	addi	%d14, %d14, lo:Assert_verboseLevel
	j	.L70
.LVL94:
.L83:
	ld.hu	%d2, [%a12] 12
	and	%d15, %d2, 3
	jz	%d15, .L63
	.loc 1 458 0 is_stmt 0 discriminator 1
	mov.a	%a2, %d14
	ld.w	%d15, [%a2]0
	jlt.u	%d15, 2, .L63
	.loc 1 458 0 discriminator 2
	movh.a	%a4, hi:.LC3
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.11157
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC3
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 458
	lea	%a6, [%a6] lo:__func__.11157
	call	Ifx_Assert_doLevel
.LVL95:
	ld.hu	%d2, [%a12] 12
.L63:
	.loc 1 460 0 is_stmt 1
	ld.w	%d15, [%a12] 4
.LBB329:
.LBB330:
	.loc 2 1620 0
	movh	%d4, 53248
.LBE330:
.LBE329:
	.loc 1 460 0
	madd	%d15, %d15, %d2, %d8
.LVL96:
.LBB338:
.LBB336:
	.loc 2 1620 0
	insert	%d3, %d15, 0, 0, 28
	jeq	%d3, %d4, .L80
.LVL97:
.L64:
	st.w	[%a15] 8, %d15
.LVL98:
	.loc 2 1621 0
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d2, 0, 13
	st.w	[%a15] 4, %d15
	ld.bu	%d2, [%a12]0
.LVL99:
.LBE336:
.LBE338:
	.loc 1 468 0
	add	%d2, -1
	jlt.u	%d2, 2, .L81
.LVL100:
.L66:
.LBB339:
.LBB340:
	.loc 2 1628 0
	mov	%d10, 0
	movh	%d11, 8191
	.loc 2 1627 0
	st.w	[%a15] 12, %d9
.LBE340:
.LBE339:
	.loc 1 449 0
	add	%d8, 1
.LVL101:
.LBB342:
.LBB341:
	.loc 2 1628 0
	ldmst	[%a15] 4, %e10
.LBE341:
.LBE342:
	.loc 1 480 0
	lea	%a15, [%a15] 16
.LVL102:
	.loc 1 449 0
	jeq.a	%a15, %a13, .L82
.LVL103:
.L70:
	.loc 1 454 0
	movh	%d15, 28672
	st.w	[%a15]0, %d15
	.loc 1 456 0
	ld.bu	%d2, [%a12]0
	and	%d15, %d2, 253
	jz	%d15, .L83
.LVL104:
.LBB343:
.LBB344:
	.loc 2 1621 0
	mov	%d12, 0
	mov	%d13, 8191
	.loc 2 1620 0
	st.w	[%a15] 8, %d9
.LBE344:
.LBE343:
	.loc 1 468 0
	add	%d2, -1
.LBB346:
.LBB345:
	.loc 2 1621 0
	ldmst	[%a15] 4, %e12
.LBE345:
.LBE346:
	.loc 1 468 0
	jge.u	%d2, 2, .L66
.LVL105:
.L81:
	.loc 1 470 0
	ld.hu	%d2, [%a12] 14
	and	%d15, %d2, 3
	jz	%d15, .L67
	.loc 1 470 0 is_stmt 0 discriminator 1
	mov.a	%a2, %d14
	ld.w	%d15, [%a2]0
	jlt.u	%d15, 2, .L67
	.loc 1 470 0 discriminator 2
	movh.a	%a4, hi:.LC4
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.11157
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC4
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 470
	lea	%a6, [%a6] lo:__func__.11157
	call	Ifx_Assert_doLevel
.LVL106:
	ld.hu	%d2, [%a12] 14
.L67:
	.loc 1 472 0 is_stmt 1
	ld.w	%d15, [%a12] 8
.LBB347:
.LBB348:
	.loc 2 1627 0
	movh	%d4, 53248
.LBE348:
.LBE347:
	.loc 1 472 0
	madd	%d15, %d15, %d2, %d8
.LVL107:
.LBB357:
.LBB354:
	.loc 2 1627 0
	insert	%d3, %d15, 0, 0, 28
	jeq	%d3, %d4, .L84
.LVL108:
.L68:
	st.w	[%a15] 12, %d15
.LVL109:
	.loc 2 1628 0
	ld.w	%d15, [%a15] 4
.LBE354:
.LBE357:
	.loc 1 449 0
	add	%d8, 1
.LVL110:
.LBB358:
.LBB355:
	.loc 2 1628 0
	insert	%d15, %d15, %d2, 16, 13
	st.w	[%a15] 4, %d15
.LBE355:
.LBE358:
	.loc 1 480 0
	lea	%a15, [%a15] 16
.LVL111:
	.loc 1 449 0
	jne.a	%a15, %a13, .L70
.LVL112:
.L82:
	.loc 1 488 0
	imask	%e2, 1, 21, 1
	ld.a	%a15, [%SP] 4
	ldmst	[%a15] 240, %e2
.LVL113:
	.loc 1 490 0
	ld.w	%d15, [%a14] 120
	st.w	[%a14] 128, %d15
	.loc 1 493 0
	mov	%d15, 0
.LBB359:
.LBB360:
	.loc 2 1634 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -12288
.LBE360:
.LBE359:
	.loc 1 493 0
	st.w	[%a14] 8, %d15
.LVL114:
.LBB362:
.LBB361:
	.loc 2 1634 0
	ld.w	%d15, [%a14] 120
	st.w	[%a15] 8208, %d15
.LVL115:
.LBE361:
.LBE362:
	.loc 1 498 0
	ld.bu	%d15, [%a12]0
.LVL116:
	st.b	[%a14] 137, %d15
.LVL117:
	ret
.LVL118:
.L80:
.LBB363:
.LBB337:
.LBB331:
.LBB332:
.LBB333:
	.loc 3 754 0
#APP
	# 754 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d3, LO:0xFE1C
	# 0 "" 2
.LVL119:
#NO_APP
.LBE333:
.LBE332:
.LBE331:
	.loc 2 1620 0
	insert	%d15, %d15, 0, 20, 12
.LVL120:
.LBB335:
.LBB334:
	.loc 3 755 0
	and	%d3, %d3, 7
.LVL121:
.LBE334:
.LBE335:
	.loc 2 1620 0
	insert	%d15, %d15, 15, 28, 3
	movh	%d4, 61440
	madd	%d15, %d15, %d3, %d4
	j	.L64
.LVL122:
.L84:
.LBE337:
.LBE363:
.LBB364:
.LBB356:
.LBB349:
.LBB350:
.LBB351:
	.loc 3 754 0
#APP
	# 754 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d3, LO:0xFE1C
	# 0 "" 2
.LVL123:
#NO_APP
.LBE351:
.LBE350:
.LBE349:
	.loc 2 1627 0
	insert	%d15, %d15, 0, 20, 12
.LVL124:
.LBB353:
.LBB352:
	.loc 3 755 0
	and	%d3, %d3, 7
.LVL125:
.LBE352:
.LBE353:
	.loc 2 1627 0
	insert	%d15, %d15, 15, 28, 3
	movh	%d4, 61440
	madd	%d15, %d15, %d3, %d4
	j	.L68
.LBE356:
.LBE364:
.LFE316:
	.size	IfxEth_initTransmitDescriptorsRingMode, .-IfxEth_initTransmitDescriptorsRingMode
.section .text.IfxEth_readMacAddress,"ax",@progbits
	.align 1
	.global	IfxEth_readMacAddress
	.type	IfxEth_readMacAddress, @function
IfxEth_readMacAddress:
.LFB317:
	.loc 1 503 0
.LVL126:
	.loc 1 505 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8124
	ld.w	%d15, [%a15]0
	.loc 1 506 0
	movh.a	%a15, 61442
	.loc 1 505 0
	st.w	[%a5]0, %d15
	.loc 1 506 0
	lea	%a15, [%a15] -8128
	ld.w	%d15, [%a15]0
	st.h	[%a5] 4, %d15
	ret
.LFE317:
	.size	IfxEth_readMacAddress, .-IfxEth_readMacAddress
.section .text.IfxEth_resetModule,"ax",@progbits
	.align 1
	.global	IfxEth_resetModule
	.type	IfxEth_resetModule, @function
IfxEth_resetModule:
.LFB318:
	.loc 1 511 0
	.loc 1 512 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL127:
	.loc 1 515 0
	movh.a	%a15, 61442
	.loc 1 513 0
	mov	%d4, %d2
	.loc 1 515 0
	lea	%a15, [%a15] -12268
	.loc 1 512 0
	mov	%d8, %d2
.LVL128:
	.loc 1 513 0
	call	IfxScuWdt_clearCpuEndinit
.LVL129:
	.loc 1 515 0
	ld.w	%d15, [%a15]0
	.loc 1 517 0
	mov	%d4, %d8
	.loc 1 515 0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 516 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -12264
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 519 0
	movh.a	%a15, 61442
	.loc 1 517 0
	call	IfxScuWdt_setCpuEndinit
.LVL130:
	.loc 1 519 0
	lea	%a15, [%a15] -12268
.L87:
	.loc 1 519 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L87
	.loc 1 523 0 is_stmt 1
	movh.a	%a15, 61442
	.loc 1 522 0
	mov	%d4, %d8
	.loc 1 523 0
	lea	%a15, [%a15] -12260
	.loc 1 522 0
	call	IfxScuWdt_clearCpuEndinit
.LVL131:
	.loc 1 523 0
	ld.w	%d15, [%a15]0
	.loc 1 525 0
	mov	%d4, %d8
	.loc 1 523 0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	.loc 1 525 0
	j	IfxScuWdt_setCpuEndinit
.LVL132:
.LFE318:
	.size	IfxEth_resetModule, .-IfxEth_resetModule
.section .text.IfxEth_setMacAddress,"ax",@progbits
	.align 1
	.global	IfxEth_setMacAddress
	.type	IfxEth_setMacAddress, @function
IfxEth_setMacAddress:
.LFB322:
	.loc 1 574 0
.LVL133:
	.loc 1 577 0
	ld.bu	%d15, [%a5] 4
	.loc 1 576 0
	movh.a	%a15, 61442
	insert	%d2, %d15, 15, 31, 1
	.loc 1 578 0
	ld.bu	%d15, [%a5] 5
	.loc 1 576 0
	lea	%a15, [%a15] -8128
	.loc 1 578 0
	sh	%d15, %d15, 8
	.loc 1 579 0
	or	%d15, %d2
	.loc 1 576 0
	st.w	[%a15]0, %d15
	.loc 1 583 0
	ld.bu	%d3, [%a5] 1
	.loc 1 584 0
	ld.bu	%d15, [%a5] 2
	.loc 1 583 0
	sh	%d3, %d3, 8
	.loc 1 584 0
	sh	%d15, %d15, 16
	or	%d15, %d3
	.loc 1 582 0
	ld.bu	%d3, [%a5]0
	.loc 1 581 0
	movh.a	%a15, 61442
	.loc 1 584 0
	or	%d3, %d15
	.loc 1 585 0
	ld.bu	%d15, [%a5] 3
	.loc 1 581 0
	lea	%a15, [%a15] -8124
	.loc 1 585 0
	sh	%d2, %d15, 24
	or	%d15, %d3, %d2
	.loc 1 581 0
	st.w	[%a15]0, %d15
	ret
.LFE322:
	.size	IfxEth_setMacAddress, .-IfxEth_setMacAddress
.section .text.IfxEth_setupChecksumEngine,"ax",@progbits
	.align 1
	.global	IfxEth_setupChecksumEngine
	.type	IfxEth_setupChecksumEngine, @function
IfxEth_setupChecksumEngine:
.LFB323:
	.loc 1 591 0
.LVL134:
	.loc 1 594 0
	jz	%d4, .L91
.LBB365:
	.loc 1 596 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	and	%d4, %d4, 3
.LVL135:
	insert	%d15, %d15, 15, 21, 1
	st.w	[%a15]0, %d15
	.loc 1 597 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 26, 1
	st.w	[%a15]0, %d15
	.loc 1 598 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a15]0, %d15
.LVL136:
.LBB366:
.LBB367:
	.loc 2 1390 0
	ld.a	%a2, [%a4] 120
.LVL137:
	mov.a	%a15, 15
.LVL138:
.L93:
.LBE367:
.LBE366:
	.loc 1 604 0 discriminator 3
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, %d4, 22, 2
	st.w	[%a2]0, %d15
	ld.a	%a2, [%a2] 12
.LVL139:
	loop	%a15, .L93
.LVL140:
.L91:
	ret
.LBE365:
.LFE323:
	.size	IfxEth_setupChecksumEngine, .-IfxEth_setupChecksumEngine
.section .text.IfxEth_setupMiiInputPins,"ax",@progbits
	.align 1
	.global	IfxEth_setupMiiInputPins
	.type	IfxEth_setupMiiInputPins, @function
IfxEth_setupMiiInputPins:
.LFB324:
	.loc 1 612 0
.LVL141:
	.loc 1 621 0
	ld.w	%d10, [%a5] 12
	.loc 1 629 0
	movh.a	%a15, 61442
	mov.a	%a2, %d10
	lea	%a15, [%a15] -12280
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a2] 12
	.loc 1 618 0
	ld.w	%d13, [%a5]0
.LVL142:
	.loc 1 629 0
	insert	%d2, %d3, %d2, 2, 2
	.loc 1 630 0
	mov.a	%a2, %d13
	.loc 1 625 0
	ld.a	%a14, [%a5] 28
	.loc 1 626 0
	ld.a	%a13, [%a5] 32
	.loc 1 627 0
	ld.a	%a12, [%a5] 36
	.loc 1 619 0
	ld.w	%d12, [%a5] 4
.LVL143:
	.loc 1 620 0
	ld.w	%d11, [%a5] 8
.LVL144:
	.loc 1 622 0
	ld.w	%d9, [%a5] 16
.LVL145:
	.loc 1 623 0
	ld.w	%d8, [%a5] 20
.LVL146:
	.loc 1 624 0
	ld.w	%d15, [%a5] 24
.LVL147:
	.loc 1 629 0
	st.w	[%a15]0, %d2
	.loc 1 630 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a2] 12
	.loc 1 631 0
	mov.a	%a2, %d12
	.loc 1 630 0
	insert	%d2, %d3, %d2, 4, 2
.LBB368:
.LBB369:
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
	.loc 4 562 0
	mov	%d5, 0
.LBE369:
.LBE368:
	.loc 1 630 0
	st.w	[%a15]0, %d2
	.loc 1 631 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a2] 12
	.loc 1 632 0
	mov.a	%a2, %d9
	.loc 1 631 0
	insert	%d2, %d3, %d2, 6, 2
	st.w	[%a15]0, %d2
	.loc 1 632 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a2] 12
	.loc 1 633 0
	mov.a	%a2, %d8
	.loc 1 632 0
	insert	%d2, %d3, %d2, 8, 2
	st.w	[%a15]0, %d2
	.loc 1 633 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a2] 12
	.loc 1 634 0
	mov.a	%a2, %d15
	.loc 1 633 0
	insert	%d2, %d3, %d2, 10, 2
	st.w	[%a15]0, %d2
	.loc 1 634 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a2] 12
	.loc 1 638 0
	mov.a	%a2, %d11
	.loc 1 634 0
	insert	%d2, %d3, %d2, 12, 2
	st.w	[%a15]0, %d2
	.loc 1 635 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a14] 12
	insert	%d2, %d3, %d2, 14, 2
	st.w	[%a15]0, %d2
	.loc 1 636 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a13] 12
	insert	%d2, %d3, %d2, 16, 2
	st.w	[%a15]0, %d2
	.loc 1 637 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a12] 12
	insert	%d2, %d3, %d2, 18, 2
	st.w	[%a15]0, %d2
	.loc 1 638 0
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a2] 12
	insert	%d2, %d3, %d2, 20, 2
	st.w	[%a15]0, %d2
.LVL148:
.LBB372:
.LBB370:
	.loc 4 562 0
	mov.a	%a15, %d13
	ld.a	%a4, [%a15] 4
.LVL149:
	ld.bu	%d4, [%a15] 8
.LBE370:
.LBE372:
.LBB373:
.LBB374:
	mov.a	%a15, %d11
.LBE374:
.LBE373:
.LBB376:
.LBB371:
	call	IfxPort_setPinMode
.LVL150:
.LBE371:
.LBE376:
.LBB377:
.LBB378:
	mov.a	%a2, %d12
	mov	%d5, 0
	ld.a	%a4, [%a2] 4
	ld.bu	%d4, [%a2] 8
	call	IfxPort_setPinMode
.LVL151:
.LBE378:
.LBE377:
.LBB379:
.LBB375:
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL152:
.LBE375:
.LBE379:
.LBB380:
.LBB381:
	mov.a	%a2, %d10
.LBE381:
.LBE380:
.LBB383:
.LBB384:
	mov.a	%a15, %d9
.LBE384:
.LBE383:
.LBB386:
.LBB382:
	ld.a	%a4, [%a2] 4
	ld.bu	%d4, [%a2] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL153:
.LBE382:
.LBE386:
.LBB387:
.LBB385:
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL154:
.LBE385:
.LBE387:
.LBB388:
.LBB389:
	mov.a	%a2, %d8
.LBE389:
.LBE388:
.LBB391:
.LBB392:
	mov.a	%a15, %d15
.LBE392:
.LBE391:
.LBB394:
.LBB390:
	ld.a	%a4, [%a2] 4
	ld.bu	%d4, [%a2] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL155:
.LBE390:
.LBE394:
.LBB395:
.LBB393:
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL156:
.LBE393:
.LBE395:
.LBB396:
.LBB397:
	ld.a	%a4, [%a14] 4
	ld.bu	%d4, [%a14] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL157:
.LBE397:
.LBE396:
.LBB398:
.LBB399:
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL158:
.LBE399:
.LBE398:
.LBB400:
.LBB401:
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL159:
.LBE401:
.LBE400:
	.loc 1 652 0
	mov.a	%a2, %d13
	.loc 1 653 0
	mov.a	%a15, %d12
	.loc 1 652 0
	ld.a	%a4, [%a2] 4
	ld.bu	%d4, [%a2] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL160:
	.loc 1 653 0
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL161:
	.loc 1 654 0
	mov.a	%a2, %d11
	.loc 1 655 0
	mov.a	%a15, %d10
	.loc 1 654 0
	ld.a	%a4, [%a2] 4
	ld.bu	%d4, [%a2] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL162:
	.loc 1 655 0
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL163:
	.loc 1 656 0
	mov.a	%a2, %d9
	mov	%d5, 0
	ld.a	%a4, [%a2] 4
	ld.bu	%d4, [%a2] 8
	.loc 1 657 0
	mov.a	%a15, %d8
	.loc 1 656 0
	call	IfxPort_setPinPadDriver
.LVL164:
	.loc 1 657 0
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL165:
	.loc 1 658 0
	mov.a	%a2, %d15
	mov	%d5, 0
	ld.a	%a4, [%a2] 4
	ld.bu	%d4, [%a2] 8
	call	IfxPort_setPinPadDriver
.LVL166:
	.loc 1 659 0
	ld.a	%a4, [%a14] 4
	ld.bu	%d4, [%a14] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL167:
	.loc 1 660 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL168:
	.loc 1 661 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	j	IfxPort_setPinPadDriver
.LVL169:
.LFE324:
	.size	IfxEth_setupMiiInputPins, .-IfxEth_setupMiiInputPins
.section .text.IfxEth_setupMiiOutputPins,"ax",@progbits
	.align 1
	.global	IfxEth_setupMiiOutputPins
	.type	IfxEth_setupMiiOutputPins, @function
IfxEth_setupMiiOutputPins:
.LFB325:
	.loc 1 667 0
.LVL170:
	.loc 1 671 0
	ld.w	%d8, [%a5] 40
.LVL171:
	.loc 1 673 0
	ld.a	%a14, [%a5] 48
	.loc 1 680 0
	mov.a	%a2, %d8
	.loc 1 672 0
	ld.w	%d15, [%a5] 44
.LVL172:
	.loc 1 680 0
	ld.a	%a4, [%a2] 4
.LVL173:
	ld.bu	%d4, [%a2] 8
	mov	%d5, 0
	.loc 1 674 0
	ld.a	%a13, [%a5] 52
.LVL174:
	.loc 1 675 0
	ld.a	%a12, [%a5] 56
.LVL175:
	.loc 1 676 0
	ld.a	%a15, [%a5] 60
.LVL176:
	.loc 1 680 0
	call	IfxPort_setPinPadDriver
.LVL177:
	.loc 1 681 0
	mov.a	%a2, %d15
	mov	%d5, 0
	ld.a	%a4, [%a2] 4
	ld.bu	%d4, [%a2] 8
	call	IfxPort_setPinPadDriver
.LVL178:
	.loc 1 682 0
	ld.a	%a4, [%a14] 4
	ld.bu	%d4, [%a14] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL179:
	.loc 1 683 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL180:
	.loc 1 684 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL181:
	.loc 1 685 0
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL182:
.LBB402:
.LBB403:
	.loc 4 568 0
	mov.a	%a2, %d8
	ld.bu	%d5, [%a2] 12
	ld.a	%a4, [%a2] 4
	ld.bu	%d4, [%a2] 8
	insert	%d5, %d5, 1, 7, 25
	call	IfxPort_setPinMode
.LVL183:
.LBE403:
.LBE402:
.LBB404:
.LBB405:
	mov.a	%a2, %d15
	ld.bu	%d5, [%a2] 12
	ld.a	%a4, [%a2] 4
	ld.bu	%d4, [%a2] 8
	insert	%d5, %d5, 1, 7, 25
	call	IfxPort_setPinMode
.LVL184:
.LBE405:
.LBE404:
.LBB406:
.LBB407:
	ld.bu	%d5, [%a14] 12
	ld.a	%a4, [%a14] 4
	ld.bu	%d4, [%a14] 8
	insert	%d5, %d5, 1, 7, 25
	call	IfxPort_setPinMode
.LVL185:
.LBE407:
.LBE406:
.LBB408:
.LBB409:
	ld.bu	%d5, [%a13] 12
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	insert	%d5, %d5, 1, 7, 25
	call	IfxPort_setPinMode
.LVL186:
.LBE409:
.LBE408:
.LBB410:
.LBB411:
	ld.bu	%d5, [%a12] 12
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	insert	%d5, %d5, 1, 7, 25
	call	IfxPort_setPinMode
.LVL187:
.LBE411:
.LBE410:
.LBB412:
.LBB413:
	ld.bu	%d5, [%a15] 12
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	insert	%d5, %d5, 1, 7, 25
	j	IfxPort_setPinMode
.LVL188:
.LBE413:
.LBE412:
.LFE325:
	.size	IfxEth_setupMiiOutputPins, .-IfxEth_setupMiiOutputPins
.section .text.IfxEth_setupRmiiInputPins,"ax",@progbits
	.align 1
	.global	IfxEth_setupRmiiInputPins
	.type	IfxEth_setupRmiiInputPins, @function
IfxEth_setupRmiiInputPins:
.LFB326:
	.loc 1 697 0
.LVL189:
	.loc 1 700 0
	ld.a	%a15, [%a5] 20
.LBB414:
.LBB415:
.LBB416:
	.loc 4 562 0
	mov	%d5, 0
.LBE416:
.LBE415:
.LBE414:
	.loc 1 700 0
	ld.bu	%d15, [%a15] 12
	movh.a	%a15, 61442
	lea	%a15, [%a15] -12280
	ld.w	%d2, [%a15]0
	insert	%d15, %d2, %d15, 0, 2
	st.w	[%a15]0, %d15
	.loc 1 701 0
	ld.a	%a14, [%a5] 4
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a14] 12
	insert	%d15, %d2, %d15, 2, 2
	st.w	[%a15]0, %d15
	.loc 1 702 0
	ld.w	%d15, [%a5]0
	ld.w	%d3, [%a15]0
	mov.a	%a2, %d15
	ld.bu	%d2, [%a2] 12
	insert	%d2, %d3, %d2, 8, 2
	st.w	[%a15]0, %d2
	.loc 1 703 0
	ld.a	%a13, [%a5] 8
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a13] 12
	insert	%d2, %d3, %d2, 12, 2
	st.w	[%a15]0, %d2
	.loc 1 704 0
	ld.a	%a12, [%a5] 12
	ld.w	%d3, [%a15]0
	ld.bu	%d2, [%a12] 12
	insert	%d2, %d3, %d2, 14, 2
	st.w	[%a15]0, %d2
.LVL190:
.LBB427:
.LBB419:
.LBB417:
	.loc 4 562 0
	ld.a	%a4, [%a2] 4
.LVL191:
	ld.bu	%d4, [%a2] 8
.LBE417:
.LBE419:
	.loc 1 720 0
	mov.a	%a15, %d15
.LBB420:
.LBB418:
	.loc 4 562 0
	call	IfxPort_setPinMode
.LVL192:
.LBE418:
.LBE420:
.LBB421:
.LBB422:
	ld.a	%a4, [%a14] 4
	ld.bu	%d4, [%a14] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL193:
.LBE422:
.LBE421:
.LBB423:
.LBB424:
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL194:
.LBE424:
.LBE423:
.LBB425:
.LBB426:
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL195:
.LBE426:
.LBE425:
	.loc 1 720 0
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL196:
	.loc 1 721 0
	ld.a	%a4, [%a14] 4
	ld.bu	%d4, [%a14] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL197:
	.loc 1 722 0
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL198:
	.loc 1 723 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	j	IfxPort_setPinPadDriver
.LVL199:
.LBE427:
.LFE326:
	.size	IfxEth_setupRmiiInputPins, .-IfxEth_setupRmiiInputPins
.section .text.IfxEth_setupRmiiOutputPins,"ax",@progbits
	.align 1
	.global	IfxEth_setupRmiiOutputPins
	.type	IfxEth_setupRmiiOutputPins, @function
IfxEth_setupRmiiOutputPins:
.LFB327:
	.loc 1 729 0
.LVL200:
	.loc 1 735 0
	ld.a	%a13, [%a5] 32
	.loc 1 733 0
	ld.a	%a14, [%a5] 16
.LVL201:
	.loc 1 736 0
	ld.a	%a12, [%a5] 24
	.loc 1 745 0
	ld.a	%a4, [%a13] 4
.LVL202:
	ld.bu	%d4, [%a13] 8
	mov	%d5, 0
	.loc 1 737 0
	ld.a	%a15, [%a5] 28
	.loc 1 734 0
	ld.w	%d15, [%a5] 20
.LVL203:
	.loc 1 745 0
	call	IfxPort_setPinPadDriver
.LVL204:
	.loc 1 746 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL205:
	.loc 1 747 0
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
.LVL206:
.LBB428:
.LBB429:
	.loc 4 568 0
	ld.bu	%d5, [%a14] 12
	ld.a	%a4, [%a14] 4
	ld.bu	%d4, [%a14] 8
	insert	%d5, %d5, 1, 7, 25
	call	IfxPort_setPinMode
.LVL207:
.LBE429:
.LBE428:
.LBB430:
.LBB431:
	ld.bu	%d5, [%a13] 12
	ld.a	%a4, [%a13] 4
	ld.bu	%d4, [%a13] 8
	insert	%d5, %d5, 1, 7, 25
	call	IfxPort_setPinMode
.LVL208:
.LBE431:
.LBE430:
.LBB432:
.LBB433:
	ld.bu	%d5, [%a12] 12
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	insert	%d5, %d5, 1, 7, 25
	call	IfxPort_setPinMode
.LVL209:
.LBE433:
.LBE432:
.LBB434:
.LBB435:
	ld.bu	%d5, [%a15] 12
	ld.a	%a4, [%a15] 4
	ld.bu	%d4, [%a15] 8
	insert	%d5, %d5, 1, 7, 25
.LBE435:
.LBE434:
	.loc 1 755 0
	mov.a	%a15, %d15
.LVL210:
.LBB437:
.LBB436:
	.loc 4 568 0
	call	IfxPort_setPinMode
.LVL211:
.LBE436:
.LBE437:
	.loc 1 755 0
	movh	%d2, 61444
	ld.w	%d3, [%a15] 4
	addi	%d2, %d2, -16128
	jeq	%d3, %d2, .L101
.L99:
	ret
.L101:
	.loc 1 755 0 is_stmt 0 discriminator 1
	ld.bu	%d2, [%a15] 8
	jne	%d2, 1, .L99
.LVL212:
.LBB438:
.LBB439:
	.loc 4 568 0 is_stmt 1
	ld.bu	%d5, [%a15] 13
	movh.a	%a4, 61444
	insert	%d5, %d5, 1, 7, 25
	lea	%a4, [%a4] -16128
	mov	%d4, 1
	j	IfxPort_setPinMode
.LVL213:
.LBE439:
.LBE438:
.LFE327:
	.size	IfxEth_setupRmiiOutputPins, .-IfxEth_setupRmiiOutputPins
.section .text.IfxEth_init,"ax",@progbits
	.align 1
	.global	IfxEth_init
	.type	IfxEth_init, @function
IfxEth_init:
.LFB311:
	.loc 1 109 0
.LVL214:
	.loc 1 110 0
	ld.w	%d15, [%a5] 32
	.loc 1 109 0
	mov.aa	%a15, %a5
	.loc 1 110 0
	st.w	[%a4] 132, %d15
	.loc 1 109 0
	mov.aa	%a12, %a4
	.loc 1 113 0
	call	IfxEth_enableModule
.LVL215:
	.loc 1 115 0
	ld.bu	%d15, [%a15] 16
	jeq	%d15, 1, .L127
	.loc 1 125 0
	ld.a	%a5, [%a15] 24
	jz.a	%a5, .L104
	.loc 1 127 0
	mov.aa	%a4, %a12
	call	IfxEth_setupMiiOutputPins
.LVL216:
	.loc 1 128 0
	ld.a	%a5, [%a15] 24
	mov.aa	%a4, %a12
	call	IfxEth_setupMiiInputPins
.LVL217:
.L104:
	.loc 1 134 0
	call	IfxEth_resetModule
.LVL218:
.LBB440:
.LBB441:
	.loc 2 1573 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -12280
	ld.w	%d2, [%a2]0
	ld.bu	%d15, [%a15] 16
	ins.t	%d15, %d2,24, %d15,0
	st.w	[%a2]0, %d15
.LVL219:
.LBE441:
.LBE440:
.LBB442:
.LBB443:
	.loc 2 1262 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4096
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 1
	st.w	[%a2]0, %d15
.LVL220:
.LBE443:
.LBE442:
.LBB444:
.LBB445:
.LBB446:
	.loc 2 1516 0
	ld.w	%d15, [%a2]0
.LBE446:
.LBE445:
	.loc 1 144 0
	jz.t	%d15, 0, .L105
	mov	%d15, 0
	mov	%d4, 1000
.LVL221:
.L106:
	.loc 1 146 0
	add	%d15, 1
.LVL222:
.LBB448:
.LBB447:
	.loc 2 1516 0
	ld.w	%d3, [%a2]0
.LBE447:
.LBE448:
	.loc 1 144 0
	ne	%d2, %d15, %d4
	and	%d2, %d3
	jnz	%d2, .L106
.LVL223:
.L105:
.LBE444:
.LBB449:
	.loc 1 153 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4096
	ld.w	%d15, [%a2]0
	.loc 1 156 0
	andn	%d15, %d15, ~(-255)
.LVL224:
	.loc 1 158 0
	st.w	[%a2]0, %d15
.LBE449:
.LBB450:
	.loc 1 164 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -8192
	ld.w	%d15, [%a2]0
.LVL225:
	.loc 1 169 0
	andn	%d15, %d15, ~(-20)
.LVL226:
	.loc 1 171 0
	insert	%d15, %d15, 1, 7, 1
.LVL227:
	.loc 1 173 0
	insert	%d15, %d15, 0, 10, 1
.LVL228:
	.loc 1 175 0
	insert	%d15, %d15, 1, 11, 2
.LVL229:
	.loc 1 177 0
	insert	%d15, %d15, 1, 14, 1
	.loc 1 178 0
	insert	%d15, %d15, 1, 15, 1
	.loc 1 180 0
	insert	%d15, %d15, 0, 17, 4
.LVL230:
	.loc 1 182 0
	insert	%d15, %d15, 0, 22, 2
.LVL231:
	.loc 1 183 0
	insert	%d15, %d15, 1, 25, 1
.LVL232:
	.loc 1 184 0
	insert	%d15, %d15, 0, 27, 1
.LVL233:
	.loc 1 186 0
	st.w	[%a2]0, %d15
.LVL234:
.LBE450:
.LBB451:
.LBB452:
	.loc 1 577 0
	ld.bu	%d15, [%a15] 4
.LVL235:
	.loc 1 576 0
	movh.a	%a2, 61442
	insert	%d2, %d15, 15, 31, 1
	.loc 1 578 0
	ld.bu	%d15, [%a15] 5
	.loc 1 576 0
	lea	%a2, [%a2] -8128
	.loc 1 578 0
	sh	%d15, %d15, 8
	.loc 1 579 0
	or	%d15, %d2
	.loc 1 576 0
	st.w	[%a2]0, %d15
	.loc 1 583 0
	ld.bu	%d2, [%a15] 1
	.loc 1 584 0
	ld.bu	%d15, [%a15] 2
	.loc 1 583 0
	sh	%d2, %d2, 8
	.loc 1 584 0
	sh	%d15, %d15, 16
	or	%d15, %d2
	.loc 1 582 0
	ld.bu	%d2, [%a15]0
	.loc 1 581 0
	movh.a	%a2, 61442
	.loc 1 584 0
	or	%d2, %d15
	.loc 1 585 0
	ld.bu	%d15, [%a15] 3
	.loc 1 581 0
	lea	%a2, [%a2] -8124
	.loc 1 585 0
	sh	%d15, %d15, 24
	or	%d15, %d2
	.loc 1 581 0
	st.w	[%a2]0, %d15
.LBE452:
.LBE451:
	.loc 1 192 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -7936
	ld.w	%d15, [%a2]0
	or	%d15, %d15, 8
	st.w	[%a2]0, %d15
	.loc 1 195 0
	movh	%d15, 2
	addi	%d15, %d15, -6145
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4076
	st.w	[%a2]0, %d15
	.loc 1 196 0
	mov	%d15, 16
	movh.a	%a2, 61442
	lea	%a2, [%a2] -8188
	st.w	[%a2]0, %d15
	.loc 1 198 0
	movh	%d15, 1
	addi	%d15, %d15, 65
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4068
	st.w	[%a2]0, %d15
	.loc 1 202 0
	ld.hu	%d15, [%a15] 28
	jz	%d15, .L107
.LBB453:
.LBB454:
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
	.loc 5 256 0
	movh.a	%a2, 61444
	lea	%a2, [%a2] -30480
	ld.w	%d2, [%a2]0
	and	%d15, 255
	andn	%d2, %d2, ~(-256)
	or	%d2, %d15
.LBE454:
.LBE453:
	.loc 1 204 0
	ld.bu	%d3, [%a15] 30
.LVL236:
.LBB458:
.LBB457:
	.loc 5 256 0
	st.w	[%a2]0, %d2
.LVL237:
	.loc 5 257 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, %d3, 11, 2
	st.w	[%a2]0, %d15
.LVL238:
.LBB455:
.LBB456:
	.loc 5 232 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 25, 1
	st.w	[%a2]0, %d15
.LVL239:
.LBE456:
.LBE455:
.LBE457:
.LBE458:
.LBB459:
.LBB460:
	.loc 5 250 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a2]0, %d15
.LVL240:
.L107:
.LBE460:
.LBE459:
	.loc 1 208 0
	ld.a	%a2, [%a15] 8
	jz.a	%a2, .L108
	.loc 1 210 0
	calli	%a2
.LVL241:
.L108:
	.loc 1 216 0
	mov	%d15, 0
	.loc 1 215 0
	lea	%a2, [%a12] 36
	mov.aa	%a3, %a15
		# #chunks=10, chunksize=8, remains=0
	lea	%a4, 10-1
	0:
	ld.d	%e2, [%a3+]8
	st.d	[%a2+]8, %e2
	loop	%a4, 0b
.LBB461:
.LBB462:
	.loc 1 831 0
	movh.a	%a2, 61442
.LBE462:
.LBE461:
	.loc 1 217 0
	st.w	[%a12]0, %d15
	.loc 1 216 0
	st.w	[%a12] 12, %d15
	.loc 1 218 0
	st.w	[%a12] 4, %d15
	.loc 1 219 0
	st.w	[%a12] 8, %d15
.LVL242:
.LBB464:
.LBB463:
	.loc 1 831 0
	lea	%a2, [%a2] -4092
	st.w	[%a2]0, %d15
	.loc 1 832 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4072
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 0, 13, 1
	st.w	[%a2]0, %d15
	.loc 1 833 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -8192
	ld.w	%d15, [%a2]0
	andn	%d15, %d15, ~(-9)
	st.w	[%a2]0, %d15
.LBE463:
.LBE464:
	.loc 1 226 0
	ld.w	%d15, [%a15] 36
	st.w	[%a12] 116, %d15
	.loc 1 227 0
	ld.w	%d15, [%a15] 40
	st.w	[%a12] 120, %d15
	.loc 1 229 0
	ld.bu	%d15, [%a15] 44
	st.b	[%a12] 136, %d15
	.loc 1 231 0
	jz	%d15, .L128
	.loc 1 236 0
	jeq	%d15, 1, .L129
	ret
.LVL243:
.L127:
	.loc 1 117 0
	ld.a	%a5, [%a15] 20
	jz.a	%a5, .L104
	.loc 1 119 0
	mov.aa	%a4, %a12
	call	IfxEth_setupRmiiOutputPins
.LVL244:
	.loc 1 120 0
	ld.a	%a5, [%a15] 20
	mov.aa	%a4, %a12
	call	IfxEth_setupRmiiInputPins
.LVL245:
	j	.L104
.LVL246:
.L128:
	.loc 1 233 0
	mov.aa	%a4, %a12
	call	IfxEth_initReceiveDescriptors
.LVL247:
	.loc 1 234 0
	mov.aa	%a4, %a12
	j	IfxEth_initTransmitDescriptors
.LVL248:
.L129:
	.loc 1 238 0
	mov.aa	%a4, %a12
	lea	%a5, [%a15] 64
	call	IfxEth_initReceiveDescriptorsRingMode
.LVL249:
	.loc 1 239 0
	mov.aa	%a4, %a12
	lea	%a5, [%a15] 48
	j	IfxEth_initTransmitDescriptorsRingMode
.LVL250:
.LFE311:
	.size	IfxEth_init, .-IfxEth_init
.section .text.IfxEth_shuffleRxDescriptor,"ax",@progbits
	.align 1
	.global	IfxEth_shuffleRxDescriptor
	.type	IfxEth_shuffleRxDescriptor, @function
IfxEth_shuffleRxDescriptor:
.LFB328:
	.loc 1 763 0
.LVL251:
	.loc 1 764 0
	ld.bu	%d15, [%a4] 136
	jz	%d15, .L134
	.loc 1 768 0
	jeq	%d15, 1, .L135
.L133:
.LVL252:
	.loc 1 774 0
	ld.w	%d15, [%a4] 116
	st.w	[%a4] 124, %d15
	ret
.LVL253:
.L134:
	ld.a	%a15, [%a4] 124
	.loc 1 766 0
	ld.w	%d15, [%a15] 12
	st.w	[%a4] 124, %d15
.LVL254:
	ret
.LVL255:
.L135:
	.loc 1 768 0 discriminator 1
	ld.a	%a15, [%a4] 124
	ld.w	%d15, [%a15] 4
	jnz.t	%d15, 15, .L133
	.loc 1 770 0
	lea	%a15, [%a15] 16
	st.a	[%a4] 124, %a15
	ret
.LFE328:
	.size	IfxEth_shuffleRxDescriptor, .-IfxEth_shuffleRxDescriptor
.section .text.IfxEth_freeReceiveBuffer,"ax",@progbits
	.align 1
	.global	IfxEth_freeReceiveBuffer
	.type	IfxEth_freeReceiveBuffer, @function
IfxEth_freeReceiveBuffer:
.LFB308:
	.loc 1 68 0
.LVL256:
.LBB465:
.LBB466:
	.loc 2 1213 0
	imask	%e2, 1, 31, 1
	ld.a	%a15, [%a4] 124
	ldmst	[%a15]0, %e2
.LBE466:
.LBE465:
	.loc 1 71 0
	j	IfxEth_shuffleRxDescriptor
.LVL257:
.LFE308:
	.size	IfxEth_freeReceiveBuffer, .-IfxEth_freeReceiveBuffer
.section .text.IfxEth_shuffleTxDescriptor,"ax",@progbits
	.align 1
	.global	IfxEth_shuffleTxDescriptor
	.type	IfxEth_shuffleTxDescriptor, @function
IfxEth_shuffleTxDescriptor:
.LFB329:
	.loc 1 780 0
.LVL258:
	.loc 1 781 0
	ld.bu	%d15, [%a4] 136
	jz	%d15, .L141
	.loc 1 785 0
	jeq	%d15, 1, .L142
.L140:
.LVL259:
	.loc 1 791 0
	ld.w	%d15, [%a4] 120
	st.w	[%a4] 128, %d15
	ret
.LVL260:
.L141:
	ld.a	%a15, [%a4] 128
	.loc 1 783 0
	ld.w	%d15, [%a15] 12
	st.w	[%a4] 128, %d15
.LVL261:
	ret
.LVL262:
.L142:
	.loc 1 785 0 discriminator 1
	ld.a	%a15, [%a4] 128
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 21, .L140
	.loc 1 787 0
	lea	%a15, [%a15] 16
	st.a	[%a4] 128, %a15
	ret
.LFE329:
	.size	IfxEth_shuffleTxDescriptor, .-IfxEth_shuffleTxDescriptor
.section .text.IfxEth_sendTransmitBuffer,"ax",@progbits
	.align 1
	.global	IfxEth_sendTransmitBuffer
	.type	IfxEth_sendTransmitBuffer, @function
IfxEth_sendTransmitBuffer:
.LFB319:
	.loc 1 530 0
.LVL263:
	.loc 1 534 0
	imask	%e2, 1, 31, 1
	ld.a	%a2, [%a4] 128
.LVL264:
	.loc 1 530 0
	mov.aa	%a15, %a4
	.loc 1 534 0
	ldmst	[%a2]0, %e2
.LVL265:
	.loc 1 533 0
	st.w	[%a2] 4, %d4
.LBB467:
.LBB468:
	.loc 1 856 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4076
	ld.w	%d15, [%a2]0
	.loc 1 859 0
	movh	%d2, 96
	.loc 1 856 0
	st.w	[%a4]0, %d15
	.loc 1 859 0
	and	%d15, %d2
	jz	%d15, .L144
	call	IfxEth_wakeupTransmitter.part.16
.LVL266:
.L144:
.LBE468:
.LBE467:
	.loc 1 537 0
	mov.aa	%a4, %a15
	call	IfxEth_shuffleTxDescriptor
.LVL267:
	.loc 1 539 0
	ld.w	%d15, [%a15] 8
	add	%d15, 1
	st.w	[%a15] 8, %d15
	ret
.LFE319:
	.size	IfxEth_sendTransmitBuffer, .-IfxEth_sendTransmitBuffer
.section .text.IfxEth_setAndSendTransmitBuffer,"ax",@progbits
	.align 1
	.global	IfxEth_setAndSendTransmitBuffer
	.type	IfxEth_setAndSendTransmitBuffer, @function
IfxEth_setAndSendTransmitBuffer:
.LFB321:
	.loc 1 567 0
.LVL268:
	.loc 1 567 0
	mov.d	%d15, %a5
.LBB469:
.LBB470:
	.loc 2 1243 0
	insert	%d2, %d15, 0, 0, 28
	movh	%d3, 53248
	ld.a	%a15, [%a4] 128
.LVL269:
	jne	%d2, %d3, .L149
.LBB471:
.LBB472:
.LBB473:
	.loc 3 754 0
#APP
	# 754 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL270:
#NO_APP
.LBE473:
.LBE472:
.LBE471:
	.loc 2 1243 0
	insert	%d15, %d15, 0, 20, 12
.LBB475:
.LBB474:
	.loc 3 755 0
	and	%d2, %d2, 7
.LVL271:
.LBE474:
.LBE475:
	.loc 2 1243 0
	insert	%d15, %d15, 15, 28, 3
	movh	%d3, 61440
	madd	%d15, %d15, %d2, %d3
.L149:
	st.w	[%a15] 8, %d15
.LBE470:
.LBE469:
	.loc 1 569 0
	j	IfxEth_sendTransmitBuffer
.LVL272:
.LFE321:
	.size	IfxEth_setAndSendTransmitBuffer, .-IfxEth_setAndSendTransmitBuffer
.section .text.IfxEth_sendTransmitBuffersRingMode,"ax",@progbits
	.align 1
	.global	IfxEth_sendTransmitBuffersRingMode
	.type	IfxEth_sendTransmitBuffersRingMode, @function
IfxEth_sendTransmitBuffersRingMode:
.LFB320:
	.loc 1 544 0
.LVL273:
	.loc 1 547 0
	ld.bu	%d15, [%a4] 137
	.loc 1 544 0
	mov.aa	%a15, %a4
	.loc 1 547 0
	and	%d2, %d15, 253
	ld.a	%a2, [%a4] 128
.LVL274:
	jnz	%d2, .L152
	.loc 1 549 0
	ld.w	%d15, [%a2] 4
	insert	%d15, %d15, %d4, 0, 13
	st.w	[%a2] 4, %d15
	ld.bu	%d15, [%a4] 137
.L152:
	.loc 1 552 0
	add	%d15, -1
	jlt.u	%d15, 2, .L158
.L153:
	.loc 1 557 0
	imask	%e2, 1, 31, 1
	ldmst	[%a2]0, %e2
.LVL275:
.LBB476:
.LBB477:
	.loc 1 856 0
	movh.a	%a2, 61442
	lea	%a2, [%a2] -4076
	ld.w	%d15, [%a2]0
	.loc 1 859 0
	movh	%d2, 96
	.loc 1 856 0
	st.w	[%a15]0, %d15
	.loc 1 859 0
	and	%d15, %d2
	jz	%d15, .L154
	mov.aa	%a4, %a15
.LVL276:
	call	IfxEth_wakeupTransmitter.part.16
.LVL277:
.L154:
.LBE477:
.LBE476:
	.loc 1 560 0
	mov.aa	%a4, %a15
	call	IfxEth_shuffleTxDescriptor
.LVL278:
	.loc 1 562 0
	ld.w	%d15, [%a15] 8
	add	%d15, 1
	st.w	[%a15] 8, %d15
	ret
.LVL279:
.L158:
	.loc 1 554 0
	ld.w	%d15, [%a2] 4
	insert	%d15, %d15, %d5, 16, 13
	st.w	[%a2] 4, %d15
	j	.L153
.LFE320:
	.size	IfxEth_sendTransmitBuffersRingMode, .-IfxEth_sendTransmitBuffersRingMode
.section .text.IfxEth_startReceiver,"ax",@progbits
	.align 1
	.global	IfxEth_startReceiver
	.type	IfxEth_startReceiver, @function
IfxEth_startReceiver:
.LFB330:
	.loc 1 797 0
.LVL280:
	.loc 1 801 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 2
	st.w	[%a15]0, %d15
	.loc 1 802 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 4
	st.w	[%a15]0, %d15
	.loc 1 803 0
	mov	%d15, 1
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4088
	st.w	[%a15]0, %d15
	ret
.LFE330:
	.size	IfxEth_startReceiver, .-IfxEth_startReceiver
.section .text.IfxEth_startTransmitter,"ax",@progbits
	.align 1
	.global	IfxEth_startTransmitter
	.type	IfxEth_startTransmitter, @function
IfxEth_startTransmitter:
.LFB331:
	.loc 1 808 0
.LVL281:
	.loc 1 811 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 812 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 13, 1
	st.w	[%a15]0, %d15
	.loc 1 813 0
	mov	%d15, 1
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4092
	st.w	[%a15]0, %d15
	ret
.LFE331:
	.size	IfxEth_startTransmitter, .-IfxEth_startTransmitter
.section .text.IfxEth_stopReceiver,"ax",@progbits
	.align 1
	.global	IfxEth_stopReceiver
	.type	IfxEth_stopReceiver, @function
IfxEth_stopReceiver:
.LFB332:
	.loc 1 818 0
.LVL282:
	.loc 1 821 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.w	[%a15]0, %d15
	.loc 1 822 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-5)
	st.w	[%a15]0, %d15
	.loc 1 823 0
	mov	%d15, 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4088
	st.w	[%a15]0, %d15
	ret
.LFE332:
	.size	IfxEth_stopReceiver, .-IfxEth_stopReceiver
.section .text.IfxEth_stopTransmitter,"ax",@progbits
	.align 1
	.global	IfxEth_stopTransmitter
	.type	IfxEth_stopTransmitter, @function
IfxEth_stopTransmitter:
.LFB333:
	.loc 1 828 0
.LVL283:
	.loc 1 831 0
	mov	%d15, 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4092
	st.w	[%a15]0, %d15
	.loc 1 832 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4072
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 13, 1
	st.w	[%a15]0, %d15
	.loc 1 833 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8192
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15]0, %d15
	ret
.LFE333:
	.size	IfxEth_stopTransmitter, .-IfxEth_stopTransmitter
.section .text.IfxEth_wakeupReceiver,"ax",@progbits
	.align 1
	.global	IfxEth_wakeupReceiver
	.type	IfxEth_wakeupReceiver, @function
IfxEth_wakeupReceiver:
.LFB334:
	.loc 1 838 0
.LVL284:
	.loc 1 839 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4076
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
	.loc 1 842 0
	jz.t	%d15, 19, .L163
	j	IfxEth_wakeupReceiver.part.15
.LVL285:
.L163:
	ret
.LFE334:
	.size	IfxEth_wakeupReceiver, .-IfxEth_wakeupReceiver
.section .text.IfxEth_wakeupTransmitter,"ax",@progbits
	.align 1
	.global	IfxEth_wakeupTransmitter
	.type	IfxEth_wakeupTransmitter, @function
IfxEth_wakeupTransmitter:
.LFB335:
	.loc 1 855 0
.LVL286:
	.loc 1 856 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -4076
	ld.w	%d15, [%a15]0
	.loc 1 859 0
	movh	%d2, 96
	.loc 1 856 0
	st.w	[%a4]0, %d15
	.loc 1 859 0
	and	%d15, %d2
	jz	%d15, .L165
	j	IfxEth_wakeupTransmitter.part.16
.LVL287:
.L165:
	ret
.LFE335:
	.size	IfxEth_wakeupTransmitter, .-IfxEth_wakeupTransmitter
.section .text.IfxEth_writeHeader,"ax",@progbits
	.align 1
	.global	IfxEth_writeHeader
	.type	IfxEth_writeHeader, @function
IfxEth_writeHeader:
.LFB336:
	.loc 1 874 0
.LVL288:
	lea	%a2, [%a5] 6
	.loc 1 874 0
	mov.aa	%a3, %a5
	mov.a	%a15, 5
.LVL289:
.L168:
	.loc 1 881 0 discriminator 3
	ld.bu	%d15, [%a6]0
	st.b	[%a3]0, %d15
.LVL290:
	add.a	%a6, 1
.LVL291:
	add.a	%a3, 1
.LVL292:
	loop	%a15, .L168
	sub.a	%a15, %a5, %a2
	lea	%a15, [%a15] 11
.LVL293:
.L169:
	.loc 1 887 0 discriminator 3
	ld.bu	%d15, [%a7]0
	st.b	[%a2]0, %d15
.LVL294:
	add.a	%a7, 1
.LVL295:
	add.a	%a2, 1
.LVL296:
	loop	%a15, .L169
.LVL297:
	.loc 1 891 0
	sh	%d15, %d4, -8
	.loc 1 892 0
	st.b	[%a5] 13, %d4
	.loc 1 891 0
	st.b	[%a5] 12, %d15
	.loc 1 892 0
	ret
.LFE336:
	.size	IfxEth_writeHeader, .-IfxEth_writeHeader
.section .rodata.__func__.11157,"a",@progbits
	.type	__func__.11157, @object
	.size	__func__.11157, 39
__func__.11157:
	.string	"IfxEth_initTransmitDescriptorsRingMode"
.section .rodata.__func__.11137,"a",@progbits
	.type	__func__.11137, @object
	.size	__func__.11137, 38
__func__.11137:
	.string	"IfxEth_initReceiveDescriptorsRingMode"
.section .rodata.defaultConfig.11120,"a",@progbits
	.align 2
	.type	defaultConfig.11120, @object
	.size	defaultConfig.11120, 80
defaultConfig.11120:
	.byte	0
	.byte	17
	.byte	34
	.byte	51
	.byte	68
	.byte	85
	.zero	2
	.word	0
	.word	0
	.byte	1
	.zero	3
	.word	0
	.word	0
	.short	0
	.byte	0
	.zero	1
	.word	0
	.word	IfxEth_rxDescr
	.word	IfxEth_txDescr
	.byte	0
	.zero	3
	.byte	0
	.zero	3
	.word	0
	.word	0
	.short	1536
	.short	0
	.byte	0
	.zero	3
	.word	0
	.word	0
	.short	1536
	.short	0
	.global	IfxEth_txDescr
.section .bss.IfxEth_txDescr,"aw",@nobits
	.align 2
	.type	IfxEth_txDescr, @object
	.size	IfxEth_txDescr, 256
IfxEth_txDescr:
	.zero	256
	.global	IfxEth_txBuffer
.section .bss.IfxEth_txBuffer,"aw",@nobits
	.type	IfxEth_txBuffer, @object
	.size	IfxEth_txBuffer, 24576
IfxEth_txBuffer:
	.zero	24576
	.global	IfxEth_rxDescr
.section .bss.IfxEth_rxDescr,"aw",@nobits
	.align 2
	.type	IfxEth_rxDescr, @object
	.size	IfxEth_rxDescr, 128
IfxEth_rxDescr:
	.zero	128
	.global	IfxEth_rxBuffer
.section .bss.IfxEth_rxBuffer,"aw",@nobits
	.type	IfxEth_rxBuffer, @object
	.size	IfxEth_rxBuffer, 12288
IfxEth_rxBuffer:
	.zero	12288
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
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB306
	.uaword	.LFE306-.LFB306
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB307
	.uaword	.LFE307-.LFB307
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB309
	.uaword	.LFE309-.LFB309
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB310
	.uaword	.LFE310-.LFB310
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB312
	.uaword	.LFE312-.LFB312
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB313
	.uaword	.LFE313-.LFB313
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB314
	.uaword	.LFE314-.LFB314
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB315
	.uaword	.LFE315-.LFB315
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB316
	.uaword	.LFE316-.LFB316
	.byte	0x4
	.uaword	.LCFI0-.LFB316
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB317
	.uaword	.LFE317-.LFB317
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB318
	.uaword	.LFE318-.LFB318
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB322
	.uaword	.LFE322-.LFB322
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB323
	.uaword	.LFE323-.LFB323
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB324
	.uaword	.LFE324-.LFB324
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB327
	.uaword	.LFE327-.LFB327
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB311
	.uaword	.LFE311-.LFB311
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB328
	.uaword	.LFE328-.LFB328
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB308
	.uaword	.LFE308-.LFB308
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB329
	.uaword	.LFE329-.LFB329
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB319
	.uaword	.LFE319-.LFB319
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB321
	.uaword	.LFE321-.LFB321
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB320
	.uaword	.LFE320-.LFB320
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB330
	.uaword	.LFE330-.LFB330
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB331
	.uaword	.LFE331-.LFB331
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB332
	.uaword	.LFE332-.LFB332
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB333
	.uaword	.LFE333-.LFB333
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.align 2
.LEFDE64:
.section .text,"ax",@progbits
.Letext0:
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_regdef.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxPort_regdef.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxEth_PinMap.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxSrc_cfg.h"
	.file 12 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_regdef.h"
	.file 13 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxCpu_regdef.h"
	.file 14 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 15 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 16 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x10b22
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.c"
	.string	"C:\\\\Users\\\\Jimmy\\\\Documents\\\\Github\\\\testbench\\\\src\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x340
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x6
	.byte	0x59
	.uaword	0x1ff
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x6
	.byte	0x5b
	.uaword	0x22b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x6
	.byte	0x5c
	.uaword	0x1bb
	.uleb128 0x3
	.string	"uint32"
	.byte	0x6
	.byte	0x5d
	.uaword	0x1c7
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
	.byte	0x6
	.byte	0x68
	.uaword	0x1ff
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"pchar"
	.byte	0x7
	.byte	0x27
	.uaword	0x2b7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2bd
	.uleb128 0x5
	.uaword	0x2c2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d2
	.uleb128 0x7
	.uleb128 0x3
	.string	"Ifx_Priority"
	.byte	0x7
	.byte	0x56
	.uaword	0x21d
	.uleb128 0x8
	.byte	0x1
	.byte	0x7
	.byte	0x72
	.uaword	0x360
	.uleb128 0x9
	.string	"Ifx_RxSel_a"
	.sleb128 0
	.uleb128 0x9
	.string	"Ifx_RxSel_b"
	.sleb128 1
	.uleb128 0x9
	.string	"Ifx_RxSel_c"
	.sleb128 2
	.uleb128 0x9
	.string	"Ifx_RxSel_d"
	.sleb128 3
	.uleb128 0x9
	.string	"Ifx_RxSel_e"
	.sleb128 4
	.uleb128 0x9
	.string	"Ifx_RxSel_f"
	.sleb128 5
	.uleb128 0x9
	.string	"Ifx_RxSel_g"
	.sleb128 6
	.uleb128 0x9
	.string	"Ifx_RxSel_h"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_RxSel"
	.byte	0x7
	.byte	0x7b
	.uaword	0x2e7
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0x7e
	.uaword	0x394
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x7
	.byte	0x80
	.uaword	0x2cc
	.byte	0
	.uleb128 0xc
	.string	"index"
	.byte	0x7
	.byte	0x81
	.uaword	0x241
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x7
	.byte	0x82
	.uaword	0x371
	.uleb128 0xd
	.string	"_Ifx_ETH_ACCEN0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x5c2
	.uleb128 0xe
	.string	"EN0"
	.byte	0x8
	.byte	0x2f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x8
	.byte	0x30
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x8
	.byte	0x31
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x8
	.byte	0x32
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x8
	.byte	0x33
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x8
	.byte	0x34
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x8
	.byte	0x35
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x8
	.byte	0x36
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x8
	.byte	0x37
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x8
	.byte	0x38
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x8
	.byte	0x39
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x8
	.byte	0x3a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x8
	.byte	0x3b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x8
	.byte	0x3c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x8
	.byte	0x3d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x8
	.byte	0x3e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EN16"
	.byte	0x8
	.byte	0x3f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"EN17"
	.byte	0x8
	.byte	0x40
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"EN18"
	.byte	0x8
	.byte	0x41
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"EN19"
	.byte	0x8
	.byte	0x42
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"EN20"
	.byte	0x8
	.byte	0x43
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"EN21"
	.byte	0x8
	.byte	0x44
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"EN22"
	.byte	0x8
	.byte	0x45
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"EN23"
	.byte	0x8
	.byte	0x46
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EN24"
	.byte	0x8
	.byte	0x47
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EN25"
	.byte	0x8
	.byte	0x48
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"EN26"
	.byte	0x8
	.byte	0x49
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"EN27"
	.byte	0x8
	.byte	0x4a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EN28"
	.byte	0x8
	.byte	0x4b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"EN29"
	.byte	0x8
	.byte	0x4c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"EN30"
	.byte	0x8
	.byte	0x4d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"EN31"
	.byte	0x8
	.byte	0x4e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"Ifx_ETH_ACCEN0_Bits"
	.byte	0x8
	.byte	0x4f
	.uaword	0x3ae
	.uleb128 0xd
	.string	"_Ifx_ETH_ACCEN1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x52
	.uaword	0x61a
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x8
	.byte	0x54
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_ACCEN1_Bits"
	.byte	0x8
	.byte	0x55
	.uaword	0x5ed
	.uleb128 0xd
	.string	"_Ifx_ETH_AHB_OR_AXI_STATUS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x58
	.uaword	0x694
	.uleb128 0xe
	.string	"AXWHSTS"
	.byte	0x8
	.byte	0x5a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"AXIRDSTS"
	.byte	0x8
	.byte	0x5b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x8
	.byte	0x5c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_AHB_OR_AXI_STATUS_Bits"
	.byte	0x8
	.byte	0x5d
	.uaword	0x635
	.uleb128 0xd
	.string	"_Ifx_ETH_BUS_MODE_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x60
	.uaword	0x7bd
	.uleb128 0xe
	.string	"SWR"
	.byte	0x8
	.byte	0x62
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"DA"
	.byte	0x8
	.byte	0x63
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"DSL"
	.byte	0x8
	.byte	0x64
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"ATDS"
	.byte	0x8
	.byte	0x65
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"PBL"
	.byte	0x8
	.byte	0x66
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"PR"
	.byte	0x8
	.byte	0x67
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"FB"
	.byte	0x8
	.byte	0x68
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"RPBL"
	.byte	0x8
	.byte	0x69
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"USP"
	.byte	0x8
	.byte	0x6a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"PBLx8"
	.byte	0x8
	.byte	0x6b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"AAL"
	.byte	0x8
	.byte	0x6c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"MB"
	.byte	0x8
	.byte	0x6d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"TXPR"
	.byte	0x8
	.byte	0x6e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PRWG"
	.byte	0x8
	.byte	0x6f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x8
	.byte	0x70
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_BUS_MODE_Bits"
	.byte	0x8
	.byte	0x71
	.uaword	0x6ba
	.uleb128 0xd
	.string	"_Ifx_ETH_CLC_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x74
	.uaword	0x824
	.uleb128 0xe
	.string	"DISR"
	.byte	0x8
	.byte	0x76
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"DISS"
	.byte	0x8
	.byte	0x77
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x8
	.byte	0x78
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_CLC_Bits"
	.byte	0x8
	.byte	0x79
	.uaword	0x7da
	.uleb128 0xd
	.string	"_Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x7c
	.uaword	0x88e
	.uleb128 0xe
	.string	"CURRBUFAPTR"
	.byte	0x8
	.byte	0x7e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits"
	.byte	0x8
	.byte	0x7f
	.uaword	0x83c
	.uleb128 0xd
	.string	"_Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x82
	.uaword	0x914
	.uleb128 0xe
	.string	"CURRDESAPTR"
	.byte	0x8
	.byte	0x84
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits"
	.byte	0x8
	.byte	0x85
	.uaword	0x8c6
	.uleb128 0xd
	.string	"_Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x88
	.uaword	0x99b
	.uleb128 0xe
	.string	"CURTBUFAPTR"
	.byte	0x8
	.byte	0x8a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits"
	.byte	0x8
	.byte	0x8b
	.uaword	0x948
	.uleb128 0xd
	.string	"_Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x8e
	.uaword	0xa23
	.uleb128 0xe
	.string	"CURTDESAPTR"
	.byte	0x8
	.byte	0x90
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits"
	.byte	0x8
	.byte	0x91
	.uaword	0x9d4
	.uleb128 0xd
	.string	"_Ifx_ETH_DEBUG_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x94
	.uaword	0xb9f
	.uleb128 0xe
	.string	"RPESTS"
	.byte	0x8
	.byte	0x96
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"RFCFCSTS"
	.byte	0x8
	.byte	0x97
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x8
	.byte	0x98
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"RWCSTS"
	.byte	0x8
	.byte	0x99
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"RRCSTS"
	.byte	0x8
	.byte	0x9a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x8
	.byte	0x9b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"RXFSTS"
	.byte	0x8
	.byte	0x9c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x8
	.byte	0x9d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"TPESTS"
	.byte	0x8
	.byte	0x9e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"TFCSTS"
	.byte	0x8
	.byte	0x9f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"TXPAUSED"
	.byte	0x8
	.byte	0xa0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"TRCSTS"
	.byte	0x8
	.byte	0xa1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"TWCSTS"
	.byte	0x8
	.byte	0xa2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0x8
	.byte	0xa3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"TXFSTS"
	.byte	0x8
	.byte	0xa4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"TXSTSFSTS"
	.byte	0x8
	.byte	0xa5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x8
	.byte	0xa6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_DEBUG_Bits"
	.byte	0x8
	.byte	0xa7
	.uaword	0xa58
	.uleb128 0xd
	.string	"_Ifx_ETH_FLOW_CONTROL_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xaa
	.uaword	0xc67
	.uleb128 0xe
	.string	"FCA_BPA"
	.byte	0x8
	.byte	0xac
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"TFE"
	.byte	0x8
	.byte	0xad
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"RFE"
	.byte	0x8
	.byte	0xae
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"UP"
	.byte	0x8
	.byte	0xaf
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"PLT"
	.byte	0x8
	.byte	0xb0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.uaword	.LASF9
	.byte	0x8
	.byte	0xb1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"DZPQ"
	.byte	0x8
	.byte	0xb2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0x8
	.byte	0xb3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PT"
	.byte	0x8
	.byte	0xb4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_FLOW_CONTROL_Bits"
	.byte	0x8
	.byte	0xb5
	.uaword	0xbb9
	.uleb128 0xd
	.string	"_Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xb8
	.uaword	0xd01
	.uleb128 0xe
	.string	"GB"
	.byte	0x8
	.byte	0xba
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"GW"
	.byte	0x8
	.byte	0xbb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"CR"
	.byte	0x8
	.byte	0xbc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"GR"
	.byte	0x8
	.byte	0xbd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PA"
	.byte	0x8
	.byte	0xbe
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x8
	.byte	0xbf
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x8
	.byte	0xc0
	.uaword	0xc88
	.uleb128 0xd
	.string	"_Ifx_ETH_GMII_DATA_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xc3
	.uaword	0xd60
	.uleb128 0xe
	.string	"GD"
	.byte	0x8
	.byte	0xc5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x8
	.byte	0xc6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_DATA_Bits"
	.byte	0x8
	.byte	0xc7
	.uaword	0xd22
	.uleb128 0xd
	.string	"_Ifx_ETH_GPCTL_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xca
	.uaword	0xe93
	.uleb128 0xe
	.string	"ALTI0"
	.byte	0x8
	.byte	0xcc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ALTI1"
	.byte	0x8
	.byte	0xcd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"ALTI2"
	.byte	0x8
	.byte	0xce
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"ALTI3"
	.byte	0x8
	.byte	0xcf
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"ALTI4"
	.byte	0x8
	.byte	0xd0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"ALTI5"
	.byte	0x8
	.byte	0xd1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"ALTI6"
	.byte	0x8
	.byte	0xd2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"ALTI7"
	.byte	0x8
	.byte	0xd3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"ALTI8"
	.byte	0x8
	.byte	0xd4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"ALTI9"
	.byte	0x8
	.byte	0xd5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"ALTI10"
	.byte	0x8
	.byte	0xd6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.uaword	.LASF12
	.byte	0x8
	.byte	0xd7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EPR"
	.byte	0x8
	.byte	0xd8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"DIV"
	.byte	0x8
	.byte	0xd9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x8
	.byte	0xda
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GPCTL_Bits"
	.byte	0x8
	.byte	0xdb
	.uaword	0xd7e
	.uleb128 0xd
	.string	"_Ifx_ETH_HASH_TABLE_HIGH_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xde
	.uaword	0xee3
	.uleb128 0xe
	.string	"HTH"
	.byte	0x8
	.byte	0xe0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_HASH_TABLE_HIGH_Bits"
	.byte	0x8
	.byte	0xe1
	.uaword	0xead
	.uleb128 0xd
	.string	"_Ifx_ETH_HASH_TABLE_LOW_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xe4
	.uaword	0xf3c
	.uleb128 0xe
	.string	"HTL"
	.byte	0x8
	.byte	0xe6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_HASH_TABLE_LOW_Bits"
	.byte	0x8
	.byte	0xe7
	.uaword	0xf07
	.uleb128 0xd
	.string	"_Ifx_ETH_HW_FEATURE_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xea
	.uaword	0x11ac
	.uleb128 0xe
	.string	"MIISEL"
	.byte	0x8
	.byte	0xec
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"GMIISEL"
	.byte	0x8
	.byte	0xed
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"HDSEL"
	.byte	0x8
	.byte	0xee
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EXTHASHEN"
	.byte	0x8
	.byte	0xef
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"HASHSEL"
	.byte	0x8
	.byte	0xf0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"ADDMACADRSEL"
	.byte	0x8
	.byte	0xf1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"PCSSEL"
	.byte	0x8
	.byte	0xf2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"L3L4FLTREN"
	.byte	0x8
	.byte	0xf3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"SMASEL"
	.byte	0x8
	.byte	0xf4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"RWKSEL"
	.byte	0x8
	.byte	0xf5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"MGKSEL"
	.byte	0x8
	.byte	0xf6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"MMCSEL"
	.byte	0x8
	.byte	0xf7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"TSVER1SEL"
	.byte	0x8
	.byte	0xf8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"TSVER2SEL"
	.byte	0x8
	.byte	0xf9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EEESEL"
	.byte	0x8
	.byte	0xfa
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"AVSEL"
	.byte	0x8
	.byte	0xfb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"TXCOESEL"
	.byte	0x8
	.byte	0xfc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"RXTYP1COE"
	.byte	0x8
	.byte	0xfd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"RXTYP2COE"
	.byte	0x8
	.byte	0xfe
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"RXFIFOSIZE"
	.byte	0x8
	.byte	0xff
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"RXCHCNT"
	.byte	0x8
	.uahalf	0x100
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"TXCHCNT"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"ENHDESSEL"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"INTTSEN"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"FLEXIPPSEN"
	.byte	0x8
	.uahalf	0x104
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"SAVLANINS"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"ACTPHYIF"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x107
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_HW_FEATURE_Bits"
	.byte	0x8
	.uahalf	0x108
	.uaword	0xf5f
	.uleb128 0x13
	.string	"_Ifx_ETH_ID_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x121e
	.uleb128 0x10
	.string	"MODREV"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"MODTYPE"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_ID_Bits"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x11cc
	.uleb128 0x13
	.string	"_Ifx_ETH_INTERRUPT_ENABLE_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x113
	.uaword	0x136f
	.uleb128 0x10
	.string	"TIE"
	.byte	0x8
	.uahalf	0x115
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"TSE"
	.byte	0x8
	.uahalf	0x116
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TUE"
	.byte	0x8
	.uahalf	0x117
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"TJE"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"OVE"
	.byte	0x8
	.uahalf	0x119
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"UNE"
	.byte	0x8
	.uahalf	0x11a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"RIE"
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"RUE"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"RSE"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"RWE"
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"ETE"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x120
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"FBE"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"ERE"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"AIE"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"NIE"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x125
	.uaword	0x5c2
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_INTERRUPT_ENABLE_Bits"
	.byte	0x8
	.uahalf	0x126
	.uaword	0x1236
	.uleb128 0x13
	.string	"_Ifx_ETH_INTERRUPT_MASK_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x129
	.uaword	0x1451
	.uleb128 0x10
	.string	"RGSMIIIM"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PCSLCHGIM"
	.byte	0x8
	.uahalf	0x12c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PCSANCIM"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PMTIM"
	.byte	0x8
	.uahalf	0x12e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"TSIM"
	.byte	0x8
	.uahalf	0x130
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"LPIIM"
	.byte	0x8
	.uahalf	0x131
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x132
	.uaword	0x5c2
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_INTERRUPT_MASK_Bits"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x1395
	.uleb128 0x13
	.string	"_Ifx_ETH_INTERRUPT_STATUS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x136
	.uaword	0x1583
	.uleb128 0x10
	.string	"RGSMIIIS"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PCSLCHGIS"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PCSANCIS"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PMTIS"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"MMCIS"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"MMCRXIS"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"MMCTXIS"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"MMCRXIPIS"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x140
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"TSIS"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"LPIIS"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x143
	.uaword	0x5c2
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_INTERRUPT_STATUS_Bits"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x1475
	.uleb128 0x13
	.string	"_Ifx_ETH_KRST0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x147
	.uaword	0x15fb
	.uleb128 0x10
	.string	"RST"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"RSTSTAT"
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x14b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_KRST0_Bits"
	.byte	0x8
	.uahalf	0x14c
	.uaword	0x15a9
	.uleb128 0x13
	.string	"_Ifx_ETH_KRST1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x14f
	.uaword	0x1654
	.uleb128 0x10
	.string	"RST"
	.byte	0x8
	.uahalf	0x151
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0x8
	.uahalf	0x152
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_KRST1_Bits"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x1616
	.uleb128 0x13
	.string	"_Ifx_ETH_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x156
	.uaword	0x16af
	.uleb128 0x10
	.string	"CLR"
	.byte	0x8
	.uahalf	0x158
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.uaword	.LASF18
	.byte	0x8
	.uahalf	0x159
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_KRSTCLR_Bits"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x166f
	.uleb128 0x13
	.string	"_Ifx_ETH_MAC_ADDRESS_HIGH_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x1746
	.uleb128 0x10
	.string	"ADDRHI"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x160
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"MBC"
	.byte	0x8
	.uahalf	0x161
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"SA"
	.byte	0x8
	.uahalf	0x162
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"AE"
	.byte	0x8
	.uahalf	0x163
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MAC_ADDRESS_HIGH_Bits"
	.byte	0x8
	.uahalf	0x164
	.uaword	0x16cc
	.uleb128 0x13
	.string	"_Ifx_ETH_MAC_ADDRESS_LOW_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x167
	.uaword	0x17a7
	.uleb128 0x10
	.string	"ADDRLO"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MAC_ADDRESS_LOW_Bits"
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x176c
	.uleb128 0x13
	.string	"_Ifx_ETH_MAC_CONFIGURATION_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x1993
	.uleb128 0x10
	.string	"PRELEN"
	.byte	0x8
	.uahalf	0x16f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"RE"
	.byte	0x8
	.uahalf	0x170
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"TE"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"DC"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"BL"
	.byte	0x8
	.uahalf	0x173
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"ACS"
	.byte	0x8
	.uahalf	0x174
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"LUD"
	.byte	0x8
	.uahalf	0x175
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"DR"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"IPC"
	.byte	0x8
	.uahalf	0x177
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"DM"
	.byte	0x8
	.uahalf	0x178
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"LM"
	.byte	0x8
	.uahalf	0x179
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"DO"
	.byte	0x8
	.uahalf	0x17a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"FES"
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"DCRS"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"IFG"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"JE"
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"BE"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"JD"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"WD"
	.byte	0x8
	.uahalf	0x182
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"TC"
	.byte	0x8
	.uahalf	0x183
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"CST"
	.byte	0x8
	.uahalf	0x184
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"SFTERR"
	.byte	0x8
	.uahalf	0x185
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"TWOKPE"
	.byte	0x8
	.uahalf	0x186
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"SARC"
	.byte	0x8
	.uahalf	0x187
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x188
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MAC_CONFIGURATION_Bits"
	.byte	0x8
	.uahalf	0x189
	.uaword	0x17cc
	.uleb128 0x13
	.string	"_Ifx_ETH_MAC_FRAME_FILTER_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x1af5
	.uleb128 0x10
	.string	"PR"
	.byte	0x8
	.uahalf	0x18e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"HUC"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"HMC"
	.byte	0x8
	.uahalf	0x190
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"DAIF"
	.byte	0x8
	.uahalf	0x191
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PM"
	.byte	0x8
	.uahalf	0x192
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"DBF"
	.byte	0x8
	.uahalf	0x193
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PCF"
	.byte	0x8
	.uahalf	0x194
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"SAIF"
	.byte	0x8
	.uahalf	0x195
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"SAF"
	.byte	0x8
	.uahalf	0x196
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"HPF"
	.byte	0x8
	.uahalf	0x197
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x198
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"VTFE"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x19a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"IPFE"
	.byte	0x8
	.uahalf	0x19b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"DNTU"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x19d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x9
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"RA"
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MAC_FRAME_FILTER_Bits"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x19ba
	.uleb128 0x13
	.string	"_Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x1bc4
	.uleb128 0x10
	.string	"MISFRMCNT"
	.byte	0x8
	.uahalf	0x1a4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"MISCNTOVF"
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"OVFFRMCNT"
	.byte	0x8
	.uahalf	0x1a6
	.uaword	0x5c2
	.byte	0x4
	.byte	0xb
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"OVFCNTOVF"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits"
	.byte	0x8
	.uahalf	0x1a9
	.uaword	0x1b1b
	.uleb128 0x13
	.string	"_Ifx_ETH_MMC_CONTROL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1ac
	.uaword	0x1cdc
	.uleb128 0x10
	.string	"CNTRST"
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"CNTSTOPRO"
	.byte	0x8
	.uahalf	0x1af
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"RSTONRD"
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"CNTFREEZ"
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"CNTPRST"
	.byte	0x8
	.uahalf	0x1b2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"CNTPRSTLVL"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"UCDBC"
	.byte	0x8
	.uahalf	0x1b5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"reserved_9"
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_CONTROL_Bits"
	.byte	0x8
	.uahalf	0x1b7
	.uaword	0x1c02
	.uleb128 0x13
	.string	"_Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x1ff7
	.uleb128 0x10
	.string	"RXIPV4GFIS"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4HERFIS"
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4NOPAYFIS"
	.byte	0x8
	.uahalf	0x1be
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4FRAGFIS"
	.byte	0x8
	.uahalf	0x1bf
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4UDSBLFIS"
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6GFIS"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6HERFIS"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6NOPAYFIS"
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"RXUDPGFIS"
	.byte	0x8
	.uahalf	0x1c4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"RXUDPERFIS"
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"RXTCPGFIS"
	.byte	0x8
	.uahalf	0x1c6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"RXTCPERFIS"
	.byte	0x8
	.uahalf	0x1c7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"RXICMPGFIS"
	.byte	0x8
	.uahalf	0x1c8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"RXICMPERFIS"
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x1ca
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4GOIS"
	.byte	0x8
	.uahalf	0x1cb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4HEROIS"
	.byte	0x8
	.uahalf	0x1cc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4NOPAYOIS"
	.byte	0x8
	.uahalf	0x1cd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4FRAGOIS"
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4UDSBLOIS"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6GOIS"
	.byte	0x8
	.uahalf	0x1d0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6HEROIS"
	.byte	0x8
	.uahalf	0x1d1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6NOPAYOIS"
	.byte	0x8
	.uahalf	0x1d2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"RXUDPGOIS"
	.byte	0x8
	.uahalf	0x1d3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"RXUDPEROIS"
	.byte	0x8
	.uahalf	0x1d4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"RXTCPGOIS"
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"RXTCPEROIS"
	.byte	0x8
	.uahalf	0x1d6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"RXICMPGOIS"
	.byte	0x8
	.uahalf	0x1d7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"RXICMPEROIS"
	.byte	0x8
	.uahalf	0x1d8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x1d9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits"
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x1cfd
	.uleb128 0x13
	.string	"_Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x2325
	.uleb128 0x10
	.string	"RXIPV4GFIM"
	.byte	0x8
	.uahalf	0x1df
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4HERFIM"
	.byte	0x8
	.uahalf	0x1e0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4NOPAYFIM"
	.byte	0x8
	.uahalf	0x1e1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4FRAGFIM"
	.byte	0x8
	.uahalf	0x1e2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4UDSBLFIM"
	.byte	0x8
	.uahalf	0x1e3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6GFIM"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6HERFIM"
	.byte	0x8
	.uahalf	0x1e5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6NOPAYFIM"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"RXUDPGFIM"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"RXUDPERFIM"
	.byte	0x8
	.uahalf	0x1e8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"RXTCPGFIM"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"RXTCPERFIM"
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"RXICMPGFIM"
	.byte	0x8
	.uahalf	0x1eb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"RXICMPERFIM"
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4GOIM"
	.byte	0x8
	.uahalf	0x1ee
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4HEROIM"
	.byte	0x8
	.uahalf	0x1ef
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4NOPAYOIM"
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4FRAGOIM"
	.byte	0x8
	.uahalf	0x1f1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"RXIPV4UDSBLOIM"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6GOIM"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6HEROIM"
	.byte	0x8
	.uahalf	0x1f4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"RXIPV6NOPAYOIM"
	.byte	0x8
	.uahalf	0x1f5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"RXUDPGOIM"
	.byte	0x8
	.uahalf	0x1f6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"RXUDPEROIM"
	.byte	0x8
	.uahalf	0x1f7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"RXTCPGOIM"
	.byte	0x8
	.uahalf	0x1f8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"RXTCPEROIM"
	.byte	0x8
	.uahalf	0x1f9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"RXICMPGOIM"
	.byte	0x8
	.uahalf	0x1fa
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"RXICMPEROIM"
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x1fc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits"
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x2026
	.uleb128 0x13
	.string	"_Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x200
	.uaword	0x2609
	.uleb128 0x10
	.string	"RXGBFRMIS"
	.byte	0x8
	.uahalf	0x202
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"RXGBOCTIS"
	.byte	0x8
	.uahalf	0x203
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"RXGOCTIS"
	.byte	0x8
	.uahalf	0x204
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"RXBCGFIS"
	.byte	0x8
	.uahalf	0x205
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"RXMCGFIS"
	.byte	0x8
	.uahalf	0x206
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"RXCRCERFIS"
	.byte	0x8
	.uahalf	0x207
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"RXALGNERFIS"
	.byte	0x8
	.uahalf	0x208
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"RXRUNTFIS"
	.byte	0x8
	.uahalf	0x209
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"RXJABERFIS"
	.byte	0x8
	.uahalf	0x20a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"RXUSIZEGFIS"
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"RXOSIZEGFIS"
	.byte	0x8
	.uahalf	0x20c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"RX64OCTGBFIS"
	.byte	0x8
	.uahalf	0x20d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"RX65T127OCTGBFIS"
	.byte	0x8
	.uahalf	0x20e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"RX128T255OCTGBFIS"
	.byte	0x8
	.uahalf	0x20f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"RX256T511OCTGBFIS"
	.byte	0x8
	.uahalf	0x210
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"RX512T1023OCTGBFIS"
	.byte	0x8
	.uahalf	0x211
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"RX1024TMAXOCTGBFIS"
	.byte	0x8
	.uahalf	0x212
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"RXUCGFIS"
	.byte	0x8
	.uahalf	0x213
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"RXLENERFIS"
	.byte	0x8
	.uahalf	0x214
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"RXORANGEFIS"
	.byte	0x8
	.uahalf	0x215
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"RXPAUSFIS"
	.byte	0x8
	.uahalf	0x216
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"RXFOVFIS"
	.byte	0x8
	.uahalf	0x217
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"RXVLANGBFIS"
	.byte	0x8
	.uahalf	0x218
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"RXWDOGFIS"
	.byte	0x8
	.uahalf	0x219
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"RXRCVERRFIS"
	.byte	0x8
	.uahalf	0x21a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"RXCTRLFIS"
	.byte	0x8
	.uahalf	0x21b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x21c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits"
	.byte	0x8
	.uahalf	0x21d
	.uaword	0x2359
	.uleb128 0x13
	.string	"_Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x220
	.uaword	0x28e9
	.uleb128 0x10
	.string	"RXGBFRMIM"
	.byte	0x8
	.uahalf	0x222
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"RXGBOCTIM"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"RXGOCTIM"
	.byte	0x8
	.uahalf	0x224
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"RXBCGFIM"
	.byte	0x8
	.uahalf	0x225
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"RXMCGFIM"
	.byte	0x8
	.uahalf	0x226
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"RXCRCERFIM"
	.byte	0x8
	.uahalf	0x227
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"RXALGNERFIM"
	.byte	0x8
	.uahalf	0x228
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"RXRUNTFIM"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"RXJABERFIM"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"RXUSIZEGFIM"
	.byte	0x8
	.uahalf	0x22b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"RXOSIZEGFIM"
	.byte	0x8
	.uahalf	0x22c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"RX64OCTGBFIM"
	.byte	0x8
	.uahalf	0x22d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"RX65T127OCTGBFIM"
	.byte	0x8
	.uahalf	0x22e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"RX128T255OCTGBFIM"
	.byte	0x8
	.uahalf	0x22f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"RX256T511OCTGBFIM"
	.byte	0x8
	.uahalf	0x230
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"RX512T1023OCTGBFIM"
	.byte	0x8
	.uahalf	0x231
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"RX1024TMAXOCTGBFIM"
	.byte	0x8
	.uahalf	0x232
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"RXUCGFIM"
	.byte	0x8
	.uahalf	0x233
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"RXLENERFIM"
	.byte	0x8
	.uahalf	0x234
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"RXORANGEFIM"
	.byte	0x8
	.uahalf	0x235
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"RXPAUSFIM"
	.byte	0x8
	.uahalf	0x236
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"RXFOVFIM"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"RXVLANGBFIM"
	.byte	0x8
	.uahalf	0x238
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"RXWDOGFIM"
	.byte	0x8
	.uahalf	0x239
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"RXRCVERRFIM"
	.byte	0x8
	.uahalf	0x23a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"RXCTRLFIM"
	.byte	0x8
	.uahalf	0x23b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x23c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x2634
	.uleb128 0x13
	.string	"_Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x240
	.uaword	0x2bc8
	.uleb128 0x10
	.string	"TXGBOCTIS"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"TXGBFRMIS"
	.byte	0x8
	.uahalf	0x243
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TXBCGFIS"
	.byte	0x8
	.uahalf	0x244
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"TXMCGFIS"
	.byte	0x8
	.uahalf	0x245
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"TX64OCTGBFIS"
	.byte	0x8
	.uahalf	0x246
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"TX65T127OCTGBFIS"
	.byte	0x8
	.uahalf	0x247
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"TX128T255OCTGBFIS"
	.byte	0x8
	.uahalf	0x248
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"TX256T511OCTGBFIS"
	.byte	0x8
	.uahalf	0x249
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"TX512T1023OCTGBFIS"
	.byte	0x8
	.uahalf	0x24a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"TX1024TMAXOCTGBFIS"
	.byte	0x8
	.uahalf	0x24b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"TXUCGBFIS"
	.byte	0x8
	.uahalf	0x24c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"TXMCGBFIS"
	.byte	0x8
	.uahalf	0x24d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"TXBCGBFIS"
	.byte	0x8
	.uahalf	0x24e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"TXUFLOWERFIS"
	.byte	0x8
	.uahalf	0x24f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"TXSCOLGFIS"
	.byte	0x8
	.uahalf	0x250
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"TXMCOLGFIS"
	.byte	0x8
	.uahalf	0x251
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"TXDEFFIS"
	.byte	0x8
	.uahalf	0x252
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"TXLATCOLFIS"
	.byte	0x8
	.uahalf	0x253
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"TXEXCOLFIS"
	.byte	0x8
	.uahalf	0x254
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"TXCARERFIS"
	.byte	0x8
	.uahalf	0x255
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"TXGOCTIS"
	.byte	0x8
	.uahalf	0x256
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"TXGFRMIS"
	.byte	0x8
	.uahalf	0x257
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"TXEXDEFFIS"
	.byte	0x8
	.uahalf	0x258
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"TXPAUSFIS"
	.byte	0x8
	.uahalf	0x259
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"TXVLANGFIS"
	.byte	0x8
	.uahalf	0x25a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"TXOSIZEGFIS"
	.byte	0x8
	.uahalf	0x25b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x25c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits"
	.byte	0x8
	.uahalf	0x25d
	.uaword	0x2919
	.uleb128 0x13
	.string	"_Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x260
	.uaword	0x2ea8
	.uleb128 0x10
	.string	"TXGBOCTIM"
	.byte	0x8
	.uahalf	0x262
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"TXGBFRMIM"
	.byte	0x8
	.uahalf	0x263
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TXBCGFIM"
	.byte	0x8
	.uahalf	0x264
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"TXMCGFIM"
	.byte	0x8
	.uahalf	0x265
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"TX64OCTGBFIM"
	.byte	0x8
	.uahalf	0x266
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"TX65T127OCTGBFIM"
	.byte	0x8
	.uahalf	0x267
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"TX128T255OCTGBFIM"
	.byte	0x8
	.uahalf	0x268
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"TX256T511OCTGBFIM"
	.byte	0x8
	.uahalf	0x269
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"TX512T1023OCTGBFIM"
	.byte	0x8
	.uahalf	0x26a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"TX1024TMAXOCTGBFIM"
	.byte	0x8
	.uahalf	0x26b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"TXUCGBFIM"
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"TXMCGBFIM"
	.byte	0x8
	.uahalf	0x26d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"TXBCGBFIM"
	.byte	0x8
	.uahalf	0x26e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"TXUFLOWERFIM"
	.byte	0x8
	.uahalf	0x26f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"TXSCOLGFIM"
	.byte	0x8
	.uahalf	0x270
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"TXMCOLGFIM"
	.byte	0x8
	.uahalf	0x271
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"TXDEFFIM"
	.byte	0x8
	.uahalf	0x272
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"TXLATCOLFIM"
	.byte	0x8
	.uahalf	0x273
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"TXEXCOLFIM"
	.byte	0x8
	.uahalf	0x274
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"TXCARERFIM"
	.byte	0x8
	.uahalf	0x275
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"TXGOCTIM"
	.byte	0x8
	.uahalf	0x276
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"TXGFRMIM"
	.byte	0x8
	.uahalf	0x277
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"TXEXDEFFIM"
	.byte	0x8
	.uahalf	0x278
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"TXPAUSFIM"
	.byte	0x8
	.uahalf	0x279
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"TXVLANGFIM"
	.byte	0x8
	.uahalf	0x27a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"TXOSIZEGFIM"
	.byte	0x8
	.uahalf	0x27b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x27c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits"
	.byte	0x8
	.uahalf	0x27d
	.uaword	0x2bf4
	.uleb128 0x13
	.string	"_Ifx_ETH_OPERATION_MODE_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x280
	.uaword	0x3058
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x282
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SR"
	.byte	0x8
	.uahalf	0x283
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"OSF"
	.byte	0x8
	.uahalf	0x284
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"RTC"
	.byte	0x8
	.uahalf	0x285
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"reserved_5"
	.byte	0x8
	.uahalf	0x286
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"FUF"
	.byte	0x8
	.uahalf	0x287
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"FEF"
	.byte	0x8
	.uahalf	0x288
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"EFC"
	.byte	0x8
	.uahalf	0x289
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"RFA"
	.byte	0x8
	.uahalf	0x28a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"RFD"
	.byte	0x8
	.uahalf	0x28b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"ST"
	.byte	0x8
	.uahalf	0x28c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"TTC"
	.byte	0x8
	.uahalf	0x28d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x28e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"FTF"
	.byte	0x8
	.uahalf	0x28f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"TSF"
	.byte	0x8
	.uahalf	0x290
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"RFD_2"
	.byte	0x8
	.uahalf	0x291
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"RFA_2"
	.byte	0x8
	.uahalf	0x292
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"DFF"
	.byte	0x8
	.uahalf	0x293
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"RSF"
	.byte	0x8
	.uahalf	0x294
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"DT"
	.byte	0x8
	.uahalf	0x295
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x296
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_OPERATION_MODE_Bits"
	.byte	0x8
	.uahalf	0x297
	.uaword	0x2ed9
	.uleb128 0x13
	.string	"_Ifx_ETH_PMT_CONTROL_STATUS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x29a
	.uaword	0x316b
	.uleb128 0x10
	.string	"PWRDWN"
	.byte	0x8
	.uahalf	0x29c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"MGKPKTEN"
	.byte	0x8
	.uahalf	0x29d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"RWKPKTEN"
	.byte	0x8
	.uahalf	0x29e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x29f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"MGKPRCVD"
	.byte	0x8
	.uahalf	0x2a0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"RWKPRCVD"
	.byte	0x8
	.uahalf	0x2a1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x2a2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"GLBLUCAST"
	.byte	0x8
	.uahalf	0x2a3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x2a4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x15
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"RWKFILTRST"
	.byte	0x8
	.uahalf	0x2a5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_PMT_CONTROL_STATUS_Bits"
	.byte	0x8
	.uahalf	0x2a6
	.uaword	0x307c
	.uleb128 0x13
	.string	"_Ifx_ETH_PPS_CONTROL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2a9
	.uaword	0x32f9
	.uleb128 0x10
	.string	"PPSCTRL_PPSCMD"
	.byte	0x8
	.uahalf	0x2ab
	.uaword	0x5c2
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PPSEN0"
	.byte	0x8
	.uahalf	0x2ac
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"TRGTMODSEL0"
	.byte	0x8
	.uahalf	0x2ad
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x2ae
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PPSCMD1"
	.byte	0x8
	.uahalf	0x2af
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x2b0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"TRGTMODSEL1"
	.byte	0x8
	.uahalf	0x2b1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"reserved_15"
	.byte	0x8
	.uahalf	0x2b2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PPSCMD2"
	.byte	0x8
	.uahalf	0x2b3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x2b4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"TRGTMODSEL2"
	.byte	0x8
	.uahalf	0x2b5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x2b6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PPSCMD3"
	.byte	0x8
	.uahalf	0x2b7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x2b8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"TRGTMODSEL3"
	.byte	0x8
	.uahalf	0x2b9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x2ba
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_PPS_CONTROL_Bits"
	.byte	0x8
	.uahalf	0x2bb
	.uaword	0x3193
	.uleb128 0x13
	.string	"_Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2be
	.uaword	0x3375
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x2c0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"RDESLA"
	.byte	0x8
	.uahalf	0x2c1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits"
	.byte	0x8
	.uahalf	0x2c2
	.uaword	0x331a
	.uleb128 0x13
	.string	"_Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2c5
	.uaword	0x3404
	.uleb128 0x10
	.string	"RIWT"
	.byte	0x8
	.uahalf	0x2c7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x2c8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits"
	.byte	0x8
	.uahalf	0x2c9
	.uaword	0x33aa
	.uleb128 0x13
	.string	"_Ifx_ETH_RECEIVE_POLL_DEMAND_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2cc
	.uaword	0x3476
	.uleb128 0x10
	.string	"RPD"
	.byte	0x8
	.uahalf	0x2ce
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RECEIVE_POLL_DEMAND_Bits"
	.byte	0x8
	.uahalf	0x2cf
	.uaword	0x343a
	.uleb128 0x13
	.string	"_Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2d2
	.uaword	0x34ea
	.uleb128 0x10
	.string	"WKUPFRMFTR"
	.byte	0x8
	.uahalf	0x2d4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits"
	.byte	0x8
	.uahalf	0x2d5
	.uaword	0x349f
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x3572
	.uleb128 0x10
	.string	"RX1024_MAXOCTGB"
	.byte	0x8
	.uahalf	0x2db
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2dc
	.uaword	0x351b
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2e0
	.uaword	0x35ff
	.uleb128 0x10
	.string	"RX128_255OCTGB"
	.byte	0x8
	.uahalf	0x2e2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2e3
	.uaword	0x35aa
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2e7
	.uaword	0x368b
	.uleb128 0x10
	.string	"RX256_511OCTGB"
	.byte	0x8
	.uahalf	0x2e9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2ea
	.uaword	0x3636
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ee
	.uaword	0x3719
	.uleb128 0x10
	.string	"RX512_1023OCTGB"
	.byte	0x8
	.uahalf	0x2f0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2f1
	.uaword	0x36c2
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2f4
	.uaword	0x379b
	.uleb128 0x10
	.string	"RX64OCTGB"
	.byte	0x8
	.uahalf	0x2f6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2f7
	.uaword	0x3751
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2fb
	.uaword	0x381f
	.uleb128 0x10
	.string	"RX65_127OCTGB"
	.byte	0x8
	.uahalf	0x2fd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x2fe
	.uaword	0x37cc
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x301
	.uaword	0x389d
	.uleb128 0x10
	.string	"RXALGNERR"
	.byte	0x8
	.uahalf	0x303
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x304
	.uaword	0x3855
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x307
	.uaword	0x3912
	.uleb128 0x10
	.string	"RXBCASTG"
	.byte	0x8
	.uahalf	0x309
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x30a
	.uaword	0x38cc
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x30d
	.uaword	0x3983
	.uleb128 0x10
	.string	"RXCTRLG"
	.byte	0x8
	.uahalf	0x30f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x310
	.uaword	0x3940
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x313
	.uaword	0x39f0
	.uleb128 0x10
	.string	"RXCRCERR"
	.byte	0x8
	.uahalf	0x315
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x316
	.uaword	0x39af
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x319
	.uaword	0x3a60
	.uleb128 0x10
	.string	"RXFIFOOVFL"
	.byte	0x8
	.uahalf	0x31b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x31c
	.uaword	0x3a19
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x31f
	.uaword	0x3ad2
	.uleb128 0x10
	.string	"RXFRMGB"
	.byte	0x8
	.uahalf	0x321
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x322
	.uaword	0x3a8d
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x325
	.uaword	0x3b44
	.uleb128 0x10
	.string	"RXJABERR"
	.byte	0x8
	.uahalf	0x327
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x328
	.uaword	0x3b00
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x32b
	.uaword	0x3bb4
	.uleb128 0x10
	.string	"RXLENERR"
	.byte	0x8
	.uahalf	0x32d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x32e
	.uaword	0x3b70
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x331
	.uaword	0x3c26
	.uleb128 0x10
	.string	"RXMCASTG"
	.byte	0x8
	.uahalf	0x333
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x334
	.uaword	0x3be0
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x337
	.uaword	0x3c98
	.uleb128 0x10
	.string	"RXOCTGB"
	.byte	0x8
	.uahalf	0x339
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x33a
	.uaword	0x3c54
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x33d
	.uaword	0x3d04
	.uleb128 0x10
	.string	"RXOCTG"
	.byte	0x8
	.uahalf	0x33f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits"
	.byte	0x8
	.uahalf	0x340
	.uaword	0x3cc5
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x343
	.uaword	0x3d78
	.uleb128 0x10
	.string	"RXOUTOFRNG"
	.byte	0x8
	.uahalf	0x345
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x346
	.uaword	0x3d2d
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x349
	.uaword	0x3def
	.uleb128 0x10
	.string	"RXOVERSZG"
	.byte	0x8
	.uahalf	0x34b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x34c
	.uaword	0x3da9
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_PAUSE_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x34f
	.uaword	0x3e5b
	.uleb128 0x10
	.string	"RXPAUSEFRM"
	.byte	0x8
	.uahalf	0x351
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_PAUSE_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x352
	.uaword	0x3e1c
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x355
	.uaword	0x3ec5
	.uleb128 0x10
	.string	"RXRCVERR"
	.byte	0x8
	.uahalf	0x357
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x358
	.uaword	0x3e80
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x35b
	.uaword	0x3f35
	.uleb128 0x10
	.string	"RXRUNTERR"
	.byte	0x8
	.uahalf	0x35d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x35e
	.uaword	0x3ef2
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x361
	.uaword	0x3fa7
	.uleb128 0x10
	.string	"RXUNDERSZG"
	.byte	0x8
	.uahalf	0x363
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x364
	.uaword	0x3f5f
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x367
	.uaword	0x4019
	.uleb128 0x10
	.string	"RXUCASTG"
	.byte	0x8
	.uahalf	0x369
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x36a
	.uaword	0x3fd5
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x36d
	.uaword	0x408c
	.uleb128 0x10
	.string	"RXVLANFRGB"
	.byte	0x8
	.uahalf	0x36f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x370
	.uaword	0x4045
	.uleb128 0x13
	.string	"_Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x373
	.uaword	0x40ff
	.uleb128 0x10
	.string	"RXWDGERR"
	.byte	0x8
	.uahalf	0x375
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x376
	.uaword	0x40b9
	.uleb128 0x13
	.string	"_Ifx_ETH_RXICMP_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x379
	.uaword	0x4172
	.uleb128 0x10
	.string	"RXICMPERRFRM"
	.byte	0x8
	.uahalf	0x37b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXICMP_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x37c
	.uaword	0x412d
	.uleb128 0x13
	.string	"_Ifx_ETH_RXICMP_ERROR_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x37f
	.uaword	0x41e0
	.uleb128 0x10
	.string	"RXICMPERROCT"
	.byte	0x8
	.uahalf	0x381
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXICMP_ERROR_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x382
	.uaword	0x419b
	.uleb128 0x13
	.string	"_Ifx_ETH_RXICMP_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x385
	.uaword	0x424c
	.uleb128 0x10
	.string	"RXICMPGDFRM"
	.byte	0x8
	.uahalf	0x387
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXICMP_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x388
	.uaword	0x4209
	.uleb128 0x13
	.string	"_Ifx_ETH_RXICMP_GOOD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x38b
	.uaword	0x42b7
	.uleb128 0x10
	.string	"RXICMPGDOCT"
	.byte	0x8
	.uahalf	0x38d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXICMP_GOOD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x38e
	.uaword	0x4274
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x391
	.uaword	0x432a
	.uleb128 0x10
	.string	"RXIPV4FRAGFRM"
	.byte	0x8
	.uahalf	0x393
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x394
	.uaword	0x42df
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x397
	.uaword	0x43a3
	.uleb128 0x10
	.string	"RXIPV4FRAGOCT"
	.byte	0x8
	.uahalf	0x399
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x39a
	.uaword	0x4358
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x39d
	.uaword	0x4414
	.uleb128 0x10
	.string	"RXIPV4GDFRM"
	.byte	0x8
	.uahalf	0x39f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3a0
	.uaword	0x43d1
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3a3
	.uaword	0x447f
	.uleb128 0x10
	.string	"RXIPV4GDOCT"
	.byte	0x8
	.uahalf	0x3a5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3a6
	.uaword	0x443c
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3a9
	.uaword	0x44f6
	.uleb128 0x10
	.string	"RXIPV4HDRERRFRM"
	.byte	0x8
	.uahalf	0x3ab
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3ac
	.uaword	0x44a7
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3af
	.uaword	0x4575
	.uleb128 0x10
	.string	"RXIPV4HDRERROCT"
	.byte	0x8
	.uahalf	0x3b1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3b2
	.uaword	0x4526
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3b5
	.uaword	0x45f1
	.uleb128 0x10
	.string	"RXIPV4NOPAYFRM"
	.byte	0x8
	.uahalf	0x3b7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3b8
	.uaword	0x45a5
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3bb
	.uaword	0x466b
	.uleb128 0x10
	.string	"RXIPV4NOPAYOCT"
	.byte	0x8
	.uahalf	0x3bd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3be
	.uaword	0x461f
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3c1
	.uaword	0x46ef
	.uleb128 0x10
	.string	"RXIPV4UDSBLOCT"
	.byte	0x8
	.uahalf	0x3c3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3c4
	.uaword	0x4699
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3c8
	.uaword	0x477e
	.uleb128 0x10
	.string	"RXIPV4UDSBLFRM"
	.byte	0x8
	.uahalf	0x3ca
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3cb
	.uaword	0x4727
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3ce
	.uaword	0x47fa
	.uleb128 0x10
	.string	"RXIPV6GDFRM"
	.byte	0x8
	.uahalf	0x3d0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3d1
	.uaword	0x47b7
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3d4
	.uaword	0x4865
	.uleb128 0x10
	.string	"RXIPV6GDOCT"
	.byte	0x8
	.uahalf	0x3d6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3d7
	.uaword	0x4822
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3da
	.uaword	0x48dc
	.uleb128 0x10
	.string	"RXIPV6HDRERRFRM"
	.byte	0x8
	.uahalf	0x3dc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3dd
	.uaword	0x488d
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3e0
	.uaword	0x495b
	.uleb128 0x10
	.string	"RXIPV6HDRERROCT"
	.byte	0x8
	.uahalf	0x3e2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3e3
	.uaword	0x490c
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3e6
	.uaword	0x49d7
	.uleb128 0x10
	.string	"RXIPV6NOPAYFRM"
	.byte	0x8
	.uahalf	0x3e8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3e9
	.uaword	0x498b
	.uleb128 0x13
	.string	"_Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3ec
	.uaword	0x4a51
	.uleb128 0x10
	.string	"RXIPV6NOPAYOCT"
	.byte	0x8
	.uahalf	0x3ee
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3ef
	.uaword	0x4a05
	.uleb128 0x13
	.string	"_Ifx_ETH_RXTCP_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3f2
	.uaword	0x4ac2
	.uleb128 0x10
	.string	"RXTCPERRFRM"
	.byte	0x8
	.uahalf	0x3f4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXTCP_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x3f5
	.uaword	0x4a7f
	.uleb128 0x13
	.string	"_Ifx_ETH_RXTCP_ERROR_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3f8
	.uaword	0x4b2d
	.uleb128 0x10
	.string	"RXTCPERROCT"
	.byte	0x8
	.uahalf	0x3fa
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXTCP_ERROR_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x3fb
	.uaword	0x4aea
	.uleb128 0x13
	.string	"_Ifx_ETH_RXTCP_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3fe
	.uaword	0x4b96
	.uleb128 0x10
	.string	"RXTCPGDFRM"
	.byte	0x8
	.uahalf	0x400
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXTCP_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x401
	.uaword	0x4b55
	.uleb128 0x13
	.string	"_Ifx_ETH_RXTCP_GOOD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x404
	.uaword	0x4bfe
	.uleb128 0x10
	.string	"RXTCPGDOCT"
	.byte	0x8
	.uahalf	0x406
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXTCP_GOOD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x407
	.uaword	0x4bbd
	.uleb128 0x13
	.string	"_Ifx_ETH_RXUDP_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x40a
	.uaword	0x4c68
	.uleb128 0x10
	.string	"RXUDPERRFRM"
	.byte	0x8
	.uahalf	0x40c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXUDP_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x40d
	.uaword	0x4c25
	.uleb128 0x13
	.string	"_Ifx_ETH_RXUDP_ERROR_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x410
	.uaword	0x4cd3
	.uleb128 0x10
	.string	"RXUDPERROCT"
	.byte	0x8
	.uahalf	0x412
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXUDP_ERROR_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x413
	.uaword	0x4c90
	.uleb128 0x13
	.string	"_Ifx_ETH_RXUDP_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x416
	.uaword	0x4d3c
	.uleb128 0x10
	.string	"RXUDPGDFRM"
	.byte	0x8
	.uahalf	0x418
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXUDP_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x419
	.uaword	0x4cfb
	.uleb128 0x13
	.string	"_Ifx_ETH_RXUDP_GOOD_OCTETS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x41c
	.uaword	0x4da4
	.uleb128 0x10
	.string	"RXUDPGDOCT"
	.byte	0x8
	.uahalf	0x41e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXUDP_GOOD_OCTETS_Bits"
	.byte	0x8
	.uahalf	0x41f
	.uaword	0x4d63
	.uleb128 0x13
	.string	"_Ifx_ETH_STATUS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x422
	.uaword	0x4f75
	.uleb128 0x10
	.string	"TI"
	.byte	0x8
	.uahalf	0x424
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"TPS"
	.byte	0x8
	.uahalf	0x425
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TU"
	.byte	0x8
	.uahalf	0x426
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"TJT"
	.byte	0x8
	.uahalf	0x427
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"OVF"
	.byte	0x8
	.uahalf	0x428
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"UNF"
	.byte	0x8
	.uahalf	0x429
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"RI"
	.byte	0x8
	.uahalf	0x42a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"RU"
	.byte	0x8
	.uahalf	0x42b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"RPS"
	.byte	0x8
	.uahalf	0x42c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"RWT"
	.byte	0x8
	.uahalf	0x42d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"ETI"
	.byte	0x8
	.uahalf	0x42e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x42f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"FBI"
	.byte	0x8
	.uahalf	0x430
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"ERI"
	.byte	0x8
	.uahalf	0x431
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"AIS"
	.byte	0x8
	.uahalf	0x432
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"NIS"
	.byte	0x8
	.uahalf	0x433
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"RS"
	.byte	0x8
	.uahalf	0x434
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"TS"
	.byte	0x8
	.uahalf	0x435
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"EB"
	.byte	0x8
	.uahalf	0x436
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"GLI"
	.byte	0x8
	.uahalf	0x437
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"GMI"
	.byte	0x8
	.uahalf	0x438
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"GPI"
	.byte	0x8
	.uahalf	0x439
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"TTI"
	.byte	0x8
	.uahalf	0x43a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"GLPII"
	.byte	0x8
	.uahalf	0x43b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x43c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_STATUS_Bits"
	.byte	0x8
	.uahalf	0x43d
	.uaword	0x4dcb
	.uleb128 0x13
	.string	"_Ifx_ETH_SUB_SECOND_INCREMENT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x440
	.uaword	0x4fe0
	.uleb128 0x10
	.string	"SSINC"
	.byte	0x8
	.uahalf	0x442
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x443
	.uaword	0x5c2
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SUB_SECOND_INCREMENT_Bits"
	.byte	0x8
	.uahalf	0x444
	.uaword	0x4f91
	.uleb128 0x13
	.string	"_Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x447
	.uaword	0x5064
	.uleb128 0x10
	.string	"TSHWR"
	.byte	0x8
	.uahalf	0x449
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x44a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits"
	.byte	0x8
	.uahalf	0x44b
	.uaword	0x500a
	.uleb128 0x13
	.string	"_Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x44e
	.uaword	0x50ea
	.uleb128 0x10
	.string	"TSSS"
	.byte	0x8
	.uahalf	0x450
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x451
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits"
	.byte	0x8
	.uahalf	0x452
	.uaword	0x5099
	.uleb128 0x13
	.string	"_Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x455
	.uaword	0x5172
	.uleb128 0x10
	.string	"TSSS"
	.byte	0x8
	.uahalf	0x457
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"ADDSUB"
	.byte	0x8
	.uahalf	0x458
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits"
	.byte	0x8
	.uahalf	0x459
	.uaword	0x5117
	.uleb128 0x13
	.string	"_Ifx_ETH_SYSTEM_TIME_SECONDS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x45c
	.uaword	0x51e2
	.uleb128 0x10
	.string	"TSS"
	.byte	0x8
	.uahalf	0x45e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SYSTEM_TIME_SECONDS_Bits"
	.byte	0x8
	.uahalf	0x45f
	.uaword	0x51a6
	.uleb128 0x13
	.string	"_Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x462
	.uaword	0x524e
	.uleb128 0x10
	.string	"TSS"
	.byte	0x8
	.uahalf	0x464
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits"
	.byte	0x8
	.uahalf	0x465
	.uaword	0x520b
	.uleb128 0x13
	.string	"_Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x468
	.uaword	0x52d5
	.uleb128 0x10
	.string	"TTSLO"
	.byte	0x8
	.uahalf	0x46a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"TRGTBUSY"
	.byte	0x8
	.uahalf	0x46b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits"
	.byte	0x8
	.uahalf	0x46c
	.uaword	0x527e
	.uleb128 0x13
	.string	"_Ifx_ETH_TARGET_TIME_SECONDS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x46f
	.uaword	0x533f
	.uleb128 0x10
	.string	"TSTR"
	.byte	0x8
	.uahalf	0x471
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TARGET_TIME_SECONDS_Bits"
	.byte	0x8
	.uahalf	0x472
	.uaword	0x5302
	.uleb128 0x13
	.string	"_Ifx_ETH_TIMESTAMP_ADDEND_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x475
	.uaword	0x53a2
	.uleb128 0x10
	.string	"TSAR"
	.byte	0x8
	.uahalf	0x477
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TIMESTAMP_ADDEND_Bits"
	.byte	0x8
	.uahalf	0x478
	.uaword	0x5368
	.uleb128 0x13
	.string	"_Ifx_ETH_TIMESTAMP_CONTROL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x47b
	.uaword	0x55d0
	.uleb128 0x10
	.string	"TSENA"
	.byte	0x8
	.uahalf	0x47d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"TSCFUPDT"
	.byte	0x8
	.uahalf	0x47e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TSINIT"
	.byte	0x8
	.uahalf	0x47f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"TSUPDT"
	.byte	0x8
	.uahalf	0x480
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"TSTRIG"
	.byte	0x8
	.uahalf	0x481
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"TSADDREG"
	.byte	0x8
	.uahalf	0x482
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x483
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"TSENALL"
	.byte	0x8
	.uahalf	0x484
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"TSCTRLSSR"
	.byte	0x8
	.uahalf	0x485
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"TSVER2ENA"
	.byte	0x8
	.uahalf	0x486
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"TSIPENA"
	.byte	0x8
	.uahalf	0x487
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"TSIPV6ENA"
	.byte	0x8
	.uahalf	0x488
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"TSIPV4ENA"
	.byte	0x8
	.uahalf	0x489
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"TSEVNTENA"
	.byte	0x8
	.uahalf	0x48a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"TSMSTRENA"
	.byte	0x8
	.uahalf	0x48b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"SNAPTYPSEL"
	.byte	0x8
	.uahalf	0x48c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"TSENMACADDR"
	.byte	0x8
	.uahalf	0x48d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x48e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"ATSFC"
	.byte	0x8
	.uahalf	0x48f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"ATSEN0"
	.byte	0x8
	.uahalf	0x490
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"ATSEN1"
	.byte	0x8
	.uahalf	0x491
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"ATSEN2"
	.byte	0x8
	.uahalf	0x492
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"ATSEN3"
	.byte	0x8
	.uahalf	0x493
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.uaword	.LASF19
	.byte	0x8
	.uahalf	0x494
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TIMESTAMP_CONTROL_Bits"
	.byte	0x8
	.uahalf	0x495
	.uaword	0x53c8
	.uleb128 0x13
	.string	"_Ifx_ETH_TIMESTAMP_STATUS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x498
	.uaword	0x575f
	.uleb128 0x10
	.string	"TSSOVF"
	.byte	0x8
	.uahalf	0x49a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"TSTARGT"
	.byte	0x8
	.uahalf	0x49b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"AUXTSTRIG"
	.byte	0x8
	.uahalf	0x49c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"TSTRGTERR"
	.byte	0x8
	.uahalf	0x49d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"TSTARGT1"
	.byte	0x8
	.uahalf	0x49e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"TSTRGTERR1"
	.byte	0x8
	.uahalf	0x49f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"TSTARGT2"
	.byte	0x8
	.uahalf	0x4a0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"TSTRGTERR2"
	.byte	0x8
	.uahalf	0x4a1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"TSTARGT3"
	.byte	0x8
	.uahalf	0x4a2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"TSTRGTERR3"
	.byte	0x8
	.uahalf	0x4a3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x4a4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"ATSSTN"
	.byte	0x8
	.uahalf	0x4a5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x4a6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"ATSSTM"
	.byte	0x8
	.uahalf	0x4a7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"ATSNS"
	.byte	0x8
	.uahalf	0x4a8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x4a9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TIMESTAMP_STATUS_Bits"
	.byte	0x8
	.uahalf	0x4aa
	.uaword	0x55f7
	.uleb128 0x13
	.string	"_Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4ad
	.uaword	0x57e1
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4af
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"TDESLA"
	.byte	0x8
	.uahalf	0x4b0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits"
	.byte	0x8
	.uahalf	0x4b1
	.uaword	0x5785
	.uleb128 0x13
	.string	"_Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4b4
	.uaword	0x5854
	.uleb128 0x10
	.string	"TPD"
	.byte	0x8
	.uahalf	0x4b6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits"
	.byte	0x8
	.uahalf	0x4b7
	.uaword	0x5817
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4bb
	.uaword	0x58d5
	.uleb128 0x10
	.string	"TX1024_MAXOCTGB"
	.byte	0x8
	.uahalf	0x4bd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4be
	.uaword	0x587e
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4c2
	.uaword	0x5962
	.uleb128 0x10
	.string	"TX128_255OCTGB"
	.byte	0x8
	.uahalf	0x4c4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4c5
	.uaword	0x590d
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4c9
	.uaword	0x59ee
	.uleb128 0x10
	.string	"TX256_511OCTGB"
	.byte	0x8
	.uahalf	0x4cb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4cc
	.uaword	0x5999
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4d0
	.uaword	0x5a7c
	.uleb128 0x10
	.string	"TX512_1023OCTGB"
	.byte	0x8
	.uahalf	0x4d2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4d3
	.uaword	0x5a25
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4d6
	.uaword	0x5afe
	.uleb128 0x10
	.string	"TX64OCTGB"
	.byte	0x8
	.uahalf	0x4d8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4d9
	.uaword	0x5ab4
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4dd
	.uaword	0x5b82
	.uleb128 0x10
	.string	"TX65_127OCTGB"
	.byte	0x8
	.uahalf	0x4df
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4e0
	.uaword	0x5b2f
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4e3
	.uaword	0x5c03
	.uleb128 0x10
	.string	"TXBCASTGB"
	.byte	0x8
	.uahalf	0x4e5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x4e6
	.uaword	0x5bb8
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4e9
	.uaword	0x5c7b
	.uleb128 0x10
	.string	"TXBCASTG"
	.byte	0x8
	.uahalf	0x4eb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x4ec
	.uaword	0x5c35
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4ef
	.uaword	0x5cec
	.uleb128 0x10
	.string	"TXCARR"
	.byte	0x8
	.uahalf	0x4f1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x4f2
	.uaword	0x5ca9
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_DEFERRED_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4f5
	.uaword	0x5d58
	.uleb128 0x10
	.string	"TXDEFRD"
	.byte	0x8
	.uahalf	0x4f7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_DEFERRED_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x4f8
	.uaword	0x5d19
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4fc
	.uaword	0x5dcb
	.uleb128 0x10
	.string	"TXEXSCOL"
	.byte	0x8
	.uahalf	0x4fe
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x4ff
	.uaword	0x5d80
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x503
	.uaword	0x5e47
	.uleb128 0x10
	.string	"TXEXSDEF"
	.byte	0x8
	.uahalf	0x505
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits"
	.byte	0x8
	.uahalf	0x506
	.uaword	0x5dfe
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x509
	.uaword	0x5ebc
	.uleb128 0x10
	.string	"TXFRMGB"
	.byte	0x8
	.uahalf	0x50b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x50c
	.uaword	0x5e78
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x50f
	.uaword	0x5f28
	.uleb128 0x10
	.string	"TXFRMG"
	.byte	0x8
	.uahalf	0x511
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits"
	.byte	0x8
	.uahalf	0x512
	.uaword	0x5ee9
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x515
	.uaword	0x5f98
	.uleb128 0x10
	.string	"TXLATECOL"
	.byte	0x8
	.uahalf	0x517
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x518
	.uaword	0x5f51
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x51b
	.uaword	0x6011
	.uleb128 0x10
	.string	"TXMCASTGB"
	.byte	0x8
	.uahalf	0x51d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x51e
	.uaword	0x5fc6
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x521
	.uaword	0x6089
	.uleb128 0x10
	.string	"TXMCASTG"
	.byte	0x8
	.uahalf	0x523
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x524
	.uaword	0x6043
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x528
	.uaword	0x6108
	.uleb128 0x10
	.string	"TXMULTCOLG"
	.byte	0x8
	.uahalf	0x52a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x52b
	.uaword	0x60b7
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x52e
	.uaword	0x6183
	.uleb128 0x10
	.string	"TXOCTGB"
	.byte	0x8
	.uahalf	0x530
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x531
	.uaword	0x613f
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x534
	.uaword	0x61ef
	.uleb128 0x10
	.string	"TXOCTG"
	.byte	0x8
	.uahalf	0x536
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits"
	.byte	0x8
	.uahalf	0x537
	.uaword	0x61b0
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x53a
	.uaword	0x6259
	.uleb128 0x10
	.string	"TXOSIZG"
	.byte	0x8
	.uahalf	0x53c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x53d
	.uaword	0x6218
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_PAUSE_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x540
	.uaword	0x62bf
	.uleb128 0x10
	.string	"TXPAUSE"
	.byte	0x8
	.uahalf	0x542
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_PAUSE_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x543
	.uaword	0x6283
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x547
	.uaword	0x6333
	.uleb128 0x10
	.string	"TXSNGLCOLG"
	.byte	0x8
	.uahalf	0x549
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x54a
	.uaword	0x62e4
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x54d
	.uaword	0x63b0
	.uleb128 0x10
	.string	"TXUNDRFLW"
	.byte	0x8
	.uahalf	0x54f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits"
	.byte	0x8
	.uahalf	0x550
	.uaword	0x6368
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x553
	.uaword	0x6428
	.uleb128 0x10
	.string	"TXUCASTGB"
	.byte	0x8
	.uahalf	0x555
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits"
	.byte	0x8
	.uahalf	0x556
	.uaword	0x63df
	.uleb128 0x13
	.string	"_Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x559
	.uaword	0x6498
	.uleb128 0x10
	.string	"TXVLANG"
	.byte	0x8
	.uahalf	0x55b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits"
	.byte	0x8
	.uahalf	0x55c
	.uaword	0x6458
	.uleb128 0x13
	.string	"_Ifx_ETH_VERSION_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x55f
	.uaword	0x6519
	.uleb128 0x10
	.string	"SNPSVER"
	.byte	0x8
	.uahalf	0x561
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"USERVER"
	.byte	0x8
	.uahalf	0x562
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x563
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_VERSION_Bits"
	.byte	0x8
	.uahalf	0x564
	.uaword	0x64c1
	.uleb128 0x13
	.string	"_Ifx_ETH_VLAN_TAG_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x567
	.uaword	0x65b9
	.uleb128 0x10
	.string	"VL"
	.byte	0x8
	.uahalf	0x569
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"ETV"
	.byte	0x8
	.uahalf	0x56a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"VTIM"
	.byte	0x8
	.uahalf	0x56b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"ESVL"
	.byte	0x8
	.uahalf	0x56c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"VTHM"
	.byte	0x8
	.uahalf	0x56d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x56e
	.uaword	0x5c2
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_VLAN_TAG_Bits"
	.byte	0x8
	.uahalf	0x56f
	.uaword	0x6536
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x577
	.uaword	0x65ff
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x579
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x57a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x57b
	.uaword	0x5d2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_ACCEN0"
	.byte	0x8
	.uahalf	0x57c
	.uaword	0x65d7
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x57f
	.uaword	0x663e
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x581
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x582
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x583
	.uaword	0x61a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_ACCEN1"
	.byte	0x8
	.uahalf	0x584
	.uaword	0x6616
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x587
	.uaword	0x667d
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x589
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x58a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x58b
	.uaword	0x694
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_AHB_OR_AXI_STATUS"
	.byte	0x8
	.uahalf	0x58c
	.uaword	0x6655
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x58f
	.uaword	0x66c7
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x591
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x592
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x593
	.uaword	0x7bd
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_BUS_MODE"
	.byte	0x8
	.uahalf	0x594
	.uaword	0x669f
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x597
	.uaword	0x6708
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x599
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x59a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x59b
	.uaword	0x824
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_CLC"
	.byte	0x8
	.uahalf	0x59c
	.uaword	0x66e0
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x59f
	.uaword	0x6744
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5a1
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5a2
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5a3
	.uaword	0x88e
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS"
	.byte	0x8
	.uahalf	0x5a4
	.uaword	0x671c
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5a7
	.uaword	0x67a0
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5a9
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5aa
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5ab
	.uaword	0x914
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR"
	.byte	0x8
	.uahalf	0x5ac
	.uaword	0x6778
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5af
	.uaword	0x67f8
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5b1
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5b2
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5b3
	.uaword	0x99b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS"
	.byte	0x8
	.uahalf	0x5b4
	.uaword	0x67d0
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5b7
	.uaword	0x6855
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5b9
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5ba
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5bb
	.uaword	0xa23
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR"
	.byte	0x8
	.uahalf	0x5bc
	.uaword	0x682d
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5bf
	.uaword	0x68ae
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5c1
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5c2
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5c3
	.uaword	0xb9f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_DEBUG"
	.byte	0x8
	.uahalf	0x5c4
	.uaword	0x6886
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5c7
	.uaword	0x68ec
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5c9
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5ca
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5cb
	.uaword	0xc67
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_FLOW_CONTROL"
	.byte	0x8
	.uahalf	0x5cc
	.uaword	0x68c4
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5cf
	.uaword	0x6931
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5d1
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5d2
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5d3
	.uaword	0xd01
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_GMII_ADDRESS"
	.byte	0x8
	.uahalf	0x5d4
	.uaword	0x6909
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5d7
	.uaword	0x6976
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5d9
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5da
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5db
	.uaword	0xd60
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_GMII_DATA"
	.byte	0x8
	.uahalf	0x5dc
	.uaword	0x694e
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5df
	.uaword	0x69b8
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5e1
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5e2
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5e3
	.uaword	0xe93
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_GPCTL"
	.byte	0x8
	.uahalf	0x5e4
	.uaword	0x6990
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5e7
	.uaword	0x69f6
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5e9
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5ea
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5eb
	.uaword	0xee3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_HASH_TABLE_HIGH"
	.byte	0x8
	.uahalf	0x5ec
	.uaword	0x69ce
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5ef
	.uaword	0x6a3e
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5f1
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5f2
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5f3
	.uaword	0xf3c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_HASH_TABLE_LOW"
	.byte	0x8
	.uahalf	0x5f4
	.uaword	0x6a16
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5f7
	.uaword	0x6a85
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x5f9
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x5fa
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x5fb
	.uaword	0x11ac
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_HW_FEATURE"
	.byte	0x8
	.uahalf	0x5fc
	.uaword	0x6a5d
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x5ff
	.uaword	0x6ac8
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x601
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x602
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x603
	.uaword	0x121e
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_ID"
	.byte	0x8
	.uahalf	0x604
	.uaword	0x6aa0
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x607
	.uaword	0x6b03
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x609
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x60a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x60b
	.uaword	0x136f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_INTERRUPT_ENABLE"
	.byte	0x8
	.uahalf	0x60c
	.uaword	0x6adb
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x60f
	.uaword	0x6b4c
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x611
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x612
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x613
	.uaword	0x1451
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0x614
	.uaword	0x6b24
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x617
	.uaword	0x6b93
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x619
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x61a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x61b
	.uaword	0x1583
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_INTERRUPT_STATUS"
	.byte	0x8
	.uahalf	0x61c
	.uaword	0x6b6b
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x61f
	.uaword	0x6bdc
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x621
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x622
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x623
	.uaword	0x15fb
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_KRST0"
	.byte	0x8
	.uahalf	0x624
	.uaword	0x6bb4
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x627
	.uaword	0x6c1a
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x629
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x62a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x62b
	.uaword	0x1654
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_KRST1"
	.byte	0x8
	.uahalf	0x62c
	.uaword	0x6bf2
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x62f
	.uaword	0x6c58
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x631
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x632
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x633
	.uaword	0x16af
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_KRSTCLR"
	.byte	0x8
	.uahalf	0x634
	.uaword	0x6c30
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x637
	.uaword	0x6c98
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x639
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x63a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x63b
	.uaword	0x1746
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MAC_ADDRESS_HIGH"
	.byte	0x8
	.uahalf	0x63c
	.uaword	0x6c70
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x63f
	.uaword	0x6ce1
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x641
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x642
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x643
	.uaword	0x17a7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MAC_ADDRESS_LOW"
	.byte	0x8
	.uahalf	0x644
	.uaword	0x6cb9
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x647
	.uaword	0x6d29
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x649
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x64a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x64b
	.uaword	0x1993
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MAC_CONFIGURATION"
	.byte	0x8
	.uahalf	0x64c
	.uaword	0x6d01
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x64f
	.uaword	0x6d73
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x651
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x652
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x653
	.uaword	0x1af5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MAC_FRAME_FILTER"
	.byte	0x8
	.uahalf	0x654
	.uaword	0x6d4b
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x657
	.uaword	0x6dbc
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x659
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x65a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x65b
	.uaword	0x1bc4
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER"
	.byte	0x8
	.uahalf	0x65c
	.uaword	0x6d94
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x65f
	.uaword	0x6e1d
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x661
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x662
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x663
	.uaword	0x1cdc
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_CONTROL"
	.byte	0x8
	.uahalf	0x664
	.uaword	0x6df5
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x667
	.uaword	0x6e61
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x669
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x66a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x66b
	.uaword	0x1ff7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT"
	.byte	0x8
	.uahalf	0x66c
	.uaword	0x6e39
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x66f
	.uaword	0x6eb3
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x671
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x672
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x673
	.uaword	0x2325
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0x674
	.uaword	0x6e8b
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x677
	.uaword	0x6f0a
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x679
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x67a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x67b
	.uaword	0x2609
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_RECEIVE_INTERRUPT"
	.byte	0x8
	.uahalf	0x67c
	.uaword	0x6ee2
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x67f
	.uaword	0x6f58
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x681
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x682
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x683
	.uaword	0x28e9
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0x684
	.uaword	0x6f30
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x687
	.uaword	0x6fab
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x689
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x68a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x68b
	.uaword	0x2bc8
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_TRANSMIT_INTERRUPT"
	.byte	0x8
	.uahalf	0x68c
	.uaword	0x6f83
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x68f
	.uaword	0x6ffa
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x691
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x692
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x693
	.uaword	0x2ea8
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0x694
	.uaword	0x6fd2
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x697
	.uaword	0x704e
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x699
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x69a
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x69b
	.uaword	0x3058
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_OPERATION_MODE"
	.byte	0x8
	.uahalf	0x69c
	.uaword	0x7026
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x69f
	.uaword	0x7095
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6a1
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6a2
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6a3
	.uaword	0x316b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_PMT_CONTROL_STATUS"
	.byte	0x8
	.uahalf	0x6a4
	.uaword	0x706d
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6a7
	.uaword	0x70e0
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6a9
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6aa
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6ab
	.uaword	0x32f9
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_PPS_CONTROL"
	.byte	0x8
	.uahalf	0x6ac
	.uaword	0x70b8
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6af
	.uaword	0x7124
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6b1
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6b2
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6b3
	.uaword	0x3375
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS"
	.byte	0x8
	.uahalf	0x6b4
	.uaword	0x70fc
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6b7
	.uaword	0x717c
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6b9
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6ba
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6bb
	.uaword	0x3404
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER"
	.byte	0x8
	.uahalf	0x6bc
	.uaword	0x7154
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6bf
	.uaword	0x71d5
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6c1
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6c2
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6c3
	.uaword	0x3476
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RECEIVE_POLL_DEMAND"
	.byte	0x8
	.uahalf	0x6c4
	.uaword	0x71ad
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6c7
	.uaword	0x7221
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6c9
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6ca
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6cb
	.uaword	0x34ea
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER"
	.byte	0x8
	.uahalf	0x6cc
	.uaword	0x71f9
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6d0
	.uaword	0x7275
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6d2
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6d3
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6d4
	.uaword	0x3572
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x6d5
	.uaword	0x724d
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6d9
	.uaword	0x72d0
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6db
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6dc
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6dd
	.uaword	0x35ff
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x6de
	.uaword	0x72a8
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6e2
	.uaword	0x732a
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6e4
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6e5
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6e6
	.uaword	0x368b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x6e7
	.uaword	0x7302
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6eb
	.uaword	0x7384
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6ed
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6ee
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6ef
	.uaword	0x3719
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x6f0
	.uaword	0x735c
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6f3
	.uaword	0x73df
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6f5
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6f6
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x6f7
	.uaword	0x379b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x6f8
	.uaword	0x73b7
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x6fc
	.uaword	0x7433
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x6fe
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x6ff
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x700
	.uaword	0x381f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x701
	.uaword	0x740b
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x704
	.uaword	0x748c
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x706
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x707
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x708
	.uaword	0x389d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x709
	.uaword	0x7464
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x70c
	.uaword	0x74de
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x70e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x70f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x710
	.uaword	0x3912
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_BROADCAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x711
	.uaword	0x74b6
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x714
	.uaword	0x752f
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x716
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x717
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x718
	.uaword	0x3983
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_CONTROL_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x719
	.uaword	0x7507
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x71c
	.uaword	0x757e
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x71e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x71f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x720
	.uaword	0x39f0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_CRC_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x721
	.uaword	0x7556
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x724
	.uaword	0x75ca
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x726
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x727
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x728
	.uaword	0x3a60
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES"
	.byte	0x8
	.uahalf	0x729
	.uaword	0x75a2
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x72c
	.uaword	0x761a
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x72e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x72f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x730
	.uaword	0x3ad2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0x731
	.uaword	0x75f2
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x734
	.uaword	0x766b
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x736
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x737
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x738
	.uaword	0x3b44
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_JABBER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x739
	.uaword	0x7643
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x73c
	.uaword	0x76ba
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x73e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x73f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x740
	.uaword	0x3bb4
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_LENGTH_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x741
	.uaword	0x7692
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x744
	.uaword	0x7709
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x746
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x747
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x748
	.uaword	0x3c26
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_MULTICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x749
	.uaword	0x76e1
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x74c
	.uaword	0x775a
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x74e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x74f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x750
	.uaword	0x3d04
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_OCTET_COUNT_GOOD"
	.byte	0x8
	.uahalf	0x751
	.uaword	0x7732
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x754
	.uaword	0x77a6
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x756
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x757
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x758
	.uaword	0x3c98
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0x759
	.uaword	0x777e
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x75c
	.uaword	0x77f6
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x75e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x75f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x760
	.uaword	0x3d78
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES"
	.byte	0x8
	.uahalf	0x761
	.uaword	0x77ce
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x764
	.uaword	0x784a
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x766
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x767
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x768
	.uaword	0x3def
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x769
	.uaword	0x7822
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x76c
	.uaword	0x789a
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x76e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x76f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x770
	.uaword	0x3e5b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_PAUSE_FRAMES"
	.byte	0x8
	.uahalf	0x771
	.uaword	0x7872
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x774
	.uaword	0x78e2
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x776
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x777
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x778
	.uaword	0x3ec5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_RECEIVE_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x779
	.uaword	0x78ba
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x77c
	.uaword	0x7932
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x77e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x77f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x780
	.uaword	0x3f35
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_RUNT_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x781
	.uaword	0x790a
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x784
	.uaword	0x797f
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x786
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x787
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x788
	.uaword	0x3fa7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x789
	.uaword	0x7957
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x78c
	.uaword	0x79d0
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x78e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x78f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x790
	.uaword	0x4019
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_UNICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x791
	.uaword	0x79a8
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x794
	.uaword	0x7a1f
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x796
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x797
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x798
	.uaword	0x408c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x799
	.uaword	0x79f7
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x79c
	.uaword	0x7a6f
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x79e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x79f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7a0
	.uaword	0x40ff
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x7a1
	.uaword	0x7a47
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7a4
	.uaword	0x7ac0
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7a6
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7a7
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7a8
	.uaword	0x4172
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXICMP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x7a9
	.uaword	0x7a98
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7ac
	.uaword	0x7b0c
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7ae
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7af
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7b0
	.uaword	0x41e0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXICMP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0x7b1
	.uaword	0x7ae4
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7b4
	.uaword	0x7b58
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7b6
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7b7
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7b8
	.uaword	0x424c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXICMP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x7b9
	.uaword	0x7b30
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7bc
	.uaword	0x7ba3
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7be
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7bf
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7c0
	.uaword	0x42b7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXICMP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0x7c1
	.uaword	0x7b7b
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7c4
	.uaword	0x7bee
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7c6
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7c7
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7c8
	.uaword	0x432a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES"
	.byte	0x8
	.uahalf	0x7c9
	.uaword	0x7bc6
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7cc
	.uaword	0x7c3f
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7ce
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7cf
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7d0
	.uaword	0x43a3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS"
	.byte	0x8
	.uahalf	0x7d1
	.uaword	0x7c17
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7d4
	.uaword	0x7c90
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7d6
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7d7
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7d8
	.uaword	0x4414
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x7d9
	.uaword	0x7c68
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7dc
	.uaword	0x7cdb
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7de
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7df
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7e0
	.uaword	0x447f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0x7e1
	.uaword	0x7cb3
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7e4
	.uaword	0x7d26
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7e6
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7e7
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7e8
	.uaword	0x44f6
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x7e9
	.uaword	0x7cfe
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7ec
	.uaword	0x7d79
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7ee
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7ef
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7f0
	.uaword	0x4575
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0x7f1
	.uaword	0x7d51
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7f4
	.uaword	0x7dcc
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7f6
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7f7
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x7f8
	.uaword	0x45f1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES"
	.byte	0x8
	.uahalf	0x7f9
	.uaword	0x7da4
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x7fc
	.uaword	0x7e1d
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x7fe
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x7ff
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x800
	.uaword	0x466b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS"
	.byte	0x8
	.uahalf	0x801
	.uaword	0x7df5
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x804
	.uaword	0x7e6e
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x806
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x807
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x808
	.uaword	0x46ef
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS"
	.byte	0x8
	.uahalf	0x809
	.uaword	0x7e46
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x80d
	.uaword	0x7ec9
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x80f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x810
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x811
	.uaword	0x477e
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES"
	.byte	0x8
	.uahalf	0x812
	.uaword	0x7ea1
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x815
	.uaword	0x7f25
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x817
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x818
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x819
	.uaword	0x47fa
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x81a
	.uaword	0x7efd
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x81d
	.uaword	0x7f70
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x81f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x820
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x821
	.uaword	0x4865
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0x822
	.uaword	0x7f48
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x825
	.uaword	0x7fbb
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x827
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x828
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x829
	.uaword	0x48dc
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x82a
	.uaword	0x7f93
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x82d
	.uaword	0x800e
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x82f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x830
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x831
	.uaword	0x495b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0x832
	.uaword	0x7fe6
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x835
	.uaword	0x8061
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x837
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x838
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x839
	.uaword	0x49d7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES"
	.byte	0x8
	.uahalf	0x83a
	.uaword	0x8039
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x83d
	.uaword	0x80b2
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x83f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x840
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x841
	.uaword	0x4a51
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS"
	.byte	0x8
	.uahalf	0x842
	.uaword	0x808a
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x845
	.uaword	0x8103
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x847
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x848
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x849
	.uaword	0x4ac2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXTCP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x84a
	.uaword	0x80db
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x84d
	.uaword	0x814e
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x84f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x850
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x851
	.uaword	0x4b2d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXTCP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0x852
	.uaword	0x8126
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x855
	.uaword	0x8199
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x857
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x858
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x859
	.uaword	0x4b96
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXTCP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x85a
	.uaword	0x8171
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x85d
	.uaword	0x81e3
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x85f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x860
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x861
	.uaword	0x4bfe
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXTCP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0x862
	.uaword	0x81bb
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x865
	.uaword	0x822d
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x867
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x868
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x869
	.uaword	0x4c68
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXUDP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x86a
	.uaword	0x8205
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x86d
	.uaword	0x8278
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x86f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x870
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x871
	.uaword	0x4cd3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXUDP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0x872
	.uaword	0x8250
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x875
	.uaword	0x82c3
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x877
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x878
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x879
	.uaword	0x4d3c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXUDP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x87a
	.uaword	0x829b
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x87d
	.uaword	0x830d
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x87f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x880
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x881
	.uaword	0x4da4
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_RXUDP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0x882
	.uaword	0x82e5
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x885
	.uaword	0x8357
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x887
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x888
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x889
	.uaword	0x4f75
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_STATUS"
	.byte	0x8
	.uahalf	0x88a
	.uaword	0x832f
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x88d
	.uaword	0x8396
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x88f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x890
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x891
	.uaword	0x4fe0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SUB_SECOND_INCREMENT"
	.byte	0x8
	.uahalf	0x892
	.uaword	0x836e
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x895
	.uaword	0x83e3
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x897
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x898
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x899
	.uaword	0x5064
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS"
	.byte	0x8
	.uahalf	0x89a
	.uaword	0x83bb
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x89d
	.uaword	0x843b
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x89f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8a0
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8a1
	.uaword	0x50ea
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SYSTEM_TIME_NANOSECONDS"
	.byte	0x8
	.uahalf	0x8a2
	.uaword	0x8413
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8a5
	.uaword	0x848b
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8a7
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8a8
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8a9
	.uaword	0x5172
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE"
	.byte	0x8
	.uahalf	0x8aa
	.uaword	0x8463
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8ad
	.uaword	0x84e2
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8af
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8b0
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8b1
	.uaword	0x51e2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SYSTEM_TIME_SECONDS"
	.byte	0x8
	.uahalf	0x8b2
	.uaword	0x84ba
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8b5
	.uaword	0x852e
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8b7
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8b8
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8b9
	.uaword	0x524e
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE"
	.byte	0x8
	.uahalf	0x8ba
	.uaword	0x8506
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8bd
	.uaword	0x8581
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8bf
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8c0
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8c1
	.uaword	0x52d5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TARGET_TIME_NANOSECONDS"
	.byte	0x8
	.uahalf	0x8c2
	.uaword	0x8559
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8c5
	.uaword	0x85d1
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8c7
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8c8
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8c9
	.uaword	0x533f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TARGET_TIME_SECONDS"
	.byte	0x8
	.uahalf	0x8ca
	.uaword	0x85a9
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8cd
	.uaword	0x861d
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8cf
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8d0
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8d1
	.uaword	0x53a2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TIMESTAMP_ADDEND"
	.byte	0x8
	.uahalf	0x8d2
	.uaword	0x85f5
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8d5
	.uaword	0x8666
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8d7
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8d8
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8d9
	.uaword	0x55d0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TIMESTAMP_CONTROL"
	.byte	0x8
	.uahalf	0x8da
	.uaword	0x863e
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8dd
	.uaword	0x86b0
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8df
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8e0
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8e1
	.uaword	0x575f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TIMESTAMP_STATUS"
	.byte	0x8
	.uahalf	0x8e2
	.uaword	0x8688
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8e5
	.uaword	0x86f9
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8e7
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8e8
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8e9
	.uaword	0x57e1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS"
	.byte	0x8
	.uahalf	0x8ea
	.uaword	0x86d1
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8ed
	.uaword	0x8752
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8ef
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8f0
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8f1
	.uaword	0x5854
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TRANSMIT_POLL_DEMAND"
	.byte	0x8
	.uahalf	0x8f2
	.uaword	0x872a
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8f6
	.uaword	0x879f
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x8f8
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x8f9
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x8fa
	.uaword	0x58d5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x8fb
	.uaword	0x8777
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x8ff
	.uaword	0x87fa
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x901
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x902
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x903
	.uaword	0x5962
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x904
	.uaword	0x87d2
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x908
	.uaword	0x8854
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x90a
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x90b
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x90c
	.uaword	0x59ee
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x90d
	.uaword	0x882c
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x911
	.uaword	0x88ae
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x913
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x914
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x915
	.uaword	0x5a7c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x916
	.uaword	0x8886
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x919
	.uaword	0x8909
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x91b
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x91c
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x91d
	.uaword	0x5afe
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x91e
	.uaword	0x88e1
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x922
	.uaword	0x895d
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x924
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x925
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x926
	.uaword	0x5b82
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x927
	.uaword	0x8935
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x92a
	.uaword	0x89b6
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x92c
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x92d
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x92e
	.uaword	0x5c7b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_BROADCAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x92f
	.uaword	0x898e
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x932
	.uaword	0x8a07
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x934
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x935
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x936
	.uaword	0x5c03
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x937
	.uaword	0x89df
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x93a
	.uaword	0x8a5c
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x93c
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x93d
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x93e
	.uaword	0x5cec
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_CARRIER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x93f
	.uaword	0x8a34
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x942
	.uaword	0x8aac
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x944
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x945
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x946
	.uaword	0x5d58
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_DEFERRED_FRAMES"
	.byte	0x8
	.uahalf	0x947
	.uaword	0x8a84
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x94b
	.uaword	0x8af7
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x94d
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x94e
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x94f
	.uaword	0x5dcb
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES"
	.byte	0x8
	.uahalf	0x950
	.uaword	0x8acf
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x954
	.uaword	0x8b4d
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x956
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x957
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x958
	.uaword	0x5e47
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR"
	.byte	0x8
	.uahalf	0x959
	.uaword	0x8b25
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x95c
	.uaword	0x8ba1
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x95e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x95f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x960
	.uaword	0x5f28
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_FRAME_COUNT_GOOD"
	.byte	0x8
	.uahalf	0x961
	.uaword	0x8b79
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x964
	.uaword	0x8bed
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x966
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x967
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x968
	.uaword	0x5ebc
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0x969
	.uaword	0x8bc5
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x96c
	.uaword	0x8c3d
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x96e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x96f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x970
	.uaword	0x5f98
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_LATE_COLLISION_FRAMES"
	.byte	0x8
	.uahalf	0x971
	.uaword	0x8c15
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x974
	.uaword	0x8c8e
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x976
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x977
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x978
	.uaword	0x6089
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_MULTICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x979
	.uaword	0x8c66
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x97c
	.uaword	0x8cdf
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x97e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x97f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x980
	.uaword	0x6011
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x981
	.uaword	0x8cb7
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x985
	.uaword	0x8d34
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x987
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x988
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x989
	.uaword	0x6108
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x98a
	.uaword	0x8d0c
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x98d
	.uaword	0x8d8e
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x98f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x990
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x991
	.uaword	0x61ef
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_OCTET_COUNT_GOOD"
	.byte	0x8
	.uahalf	0x992
	.uaword	0x8d66
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x995
	.uaword	0x8dda
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x997
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x998
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x999
	.uaword	0x6183
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0x99a
	.uaword	0x8db2
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x99d
	.uaword	0x8e2a
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x99f
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x9a0
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x9a1
	.uaword	0x6259
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_OSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x9a2
	.uaword	0x8e02
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x9a5
	.uaword	0x8e77
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x9a7
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x9a8
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x9a9
	.uaword	0x62bf
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_PAUSE_FRAMES"
	.byte	0x8
	.uahalf	0x9aa
	.uaword	0x8e4f
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x9ae
	.uaword	0x8ebf
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x9b0
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x9b1
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x9b2
	.uaword	0x6333
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0x9b3
	.uaword	0x8e97
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x9b6
	.uaword	0x8f17
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x9b8
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x9b9
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x9ba
	.uaword	0x63b0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0x9bb
	.uaword	0x8eef
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x9be
	.uaword	0x8f69
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x9c0
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x9c1
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x9c2
	.uaword	0x6428
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0x9c3
	.uaword	0x8f41
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x9c6
	.uaword	0x8fbc
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x9c8
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x9c9
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x9ca
	.uaword	0x6498
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_TX_VLAN_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0x9cb
	.uaword	0x8f94
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x9ce
	.uaword	0x9008
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x9d0
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x9d1
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x9d2
	.uaword	0x6519
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_VERSION"
	.byte	0x8
	.uahalf	0x9d3
	.uaword	0x8fe0
	.uleb128 0x14
	.byte	0x4
	.byte	0x8
	.uahalf	0x9d6
	.uaword	0x9048
	.uleb128 0x15
	.string	"U"
	.byte	0x8
	.uahalf	0x9d8
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x8
	.uahalf	0x9d9
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x8
	.uahalf	0x9da
	.uaword	0x65b9
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_VLAN_TAG"
	.byte	0x8
	.uahalf	0x9db
	.uaword	0x9020
	.uleb128 0x13
	.string	"_Ifx_ETH_MAC_ADDRESS"
	.byte	0x8
	.byte	0x8
	.uahalf	0x9e6
	.uaword	0x909b
	.uleb128 0x16
	.string	"HIGH"
	.byte	0x8
	.uahalf	0x9e8
	.uaword	0x6c98
	.byte	0
	.uleb128 0x16
	.string	"LOW"
	.byte	0x8
	.uahalf	0x9e9
	.uaword	0x6ce1
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH_MAC_ADDRESS"
	.byte	0x8
	.uahalf	0x9ea
	.uaword	0x90b7
	.uleb128 0x17
	.uaword	0x9061
	.uleb128 0x18
	.string	"_Ifx_ETH"
	.uahalf	0x2100
	.byte	0x8
	.uahalf	0x9f7
	.uaword	0xa39a
	.uleb128 0x16
	.string	"CLC"
	.byte	0x8
	.uahalf	0x9f9
	.uaword	0x6708
	.byte	0
	.uleb128 0x16
	.string	"ID"
	.byte	0x8
	.uahalf	0x9fa
	.uaword	0x6ac8
	.byte	0x4
	.uleb128 0x16
	.string	"GPCTL"
	.byte	0x8
	.uahalf	0x9fb
	.uaword	0x69b8
	.byte	0x8
	.uleb128 0x16
	.string	"ACCEN0"
	.byte	0x8
	.uahalf	0x9fc
	.uaword	0x65ff
	.byte	0xc
	.uleb128 0x16
	.string	"ACCEN1"
	.byte	0x8
	.uahalf	0x9fd
	.uaword	0x663e
	.byte	0x10
	.uleb128 0x16
	.string	"KRST0"
	.byte	0x8
	.uahalf	0x9fe
	.uaword	0x6bdc
	.byte	0x14
	.uleb128 0x16
	.string	"KRST1"
	.byte	0x8
	.uahalf	0x9ff
	.uaword	0x6c1a
	.byte	0x18
	.uleb128 0x16
	.string	"KRSTCLR"
	.byte	0x8
	.uahalf	0xa00
	.uaword	0x6c58
	.byte	0x1c
	.uleb128 0x19
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0xa01
	.uaword	0xa39a
	.byte	0x20
	.uleb128 0x1a
	.string	"MAC_CONFIGURATION"
	.byte	0x8
	.uahalf	0xa02
	.uaword	0x6d29
	.uahalf	0x1000
	.uleb128 0x1a
	.string	"MAC_FRAME_FILTER"
	.byte	0x8
	.uahalf	0xa03
	.uaword	0x6d73
	.uahalf	0x1004
	.uleb128 0x1a
	.string	"HASH_TABLE_HIGH"
	.byte	0x8
	.uahalf	0xa04
	.uaword	0x69f6
	.uahalf	0x1008
	.uleb128 0x1a
	.string	"HASH_TABLE_LOW"
	.byte	0x8
	.uahalf	0xa05
	.uaword	0x6a3e
	.uahalf	0x100c
	.uleb128 0x1a
	.string	"GMII_ADDRESS"
	.byte	0x8
	.uahalf	0xa06
	.uaword	0x6931
	.uahalf	0x1010
	.uleb128 0x1a
	.string	"GMII_DATA"
	.byte	0x8
	.uahalf	0xa07
	.uaword	0x6976
	.uahalf	0x1014
	.uleb128 0x1a
	.string	"FLOW_CONTROL"
	.byte	0x8
	.uahalf	0xa08
	.uaword	0x68ec
	.uahalf	0x1018
	.uleb128 0x1a
	.string	"VLAN_TAG"
	.byte	0x8
	.uahalf	0xa09
	.uaword	0x9048
	.uahalf	0x101c
	.uleb128 0x1a
	.string	"VERSION"
	.byte	0x8
	.uahalf	0xa0a
	.uaword	0x9008
	.uahalf	0x1020
	.uleb128 0x1a
	.string	"DEBUG"
	.byte	0x8
	.uahalf	0xa0b
	.uaword	0x68ae
	.uahalf	0x1024
	.uleb128 0x1a
	.string	"REMOTE_WAKE_UP_FRAME_FILTER"
	.byte	0x8
	.uahalf	0xa0c
	.uaword	0x7221
	.uahalf	0x1028
	.uleb128 0x1a
	.string	"PMT_CONTROL_STATUS"
	.byte	0x8
	.uahalf	0xa0d
	.uaword	0x7095
	.uahalf	0x102c
	.uleb128 0x1a
	.string	"reserved_1030"
	.byte	0x8
	.uahalf	0xa0e
	.uaword	0xa3b7
	.uahalf	0x1030
	.uleb128 0x1a
	.string	"INTERRUPT_STATUS"
	.byte	0x8
	.uahalf	0xa0f
	.uaword	0x6b93
	.uahalf	0x1038
	.uleb128 0x1a
	.string	"INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0xa10
	.uaword	0x6b4c
	.uahalf	0x103c
	.uleb128 0x1a
	.string	"MAC_ADDRESS_G0"
	.byte	0x8
	.uahalf	0xa11
	.uaword	0xa3d7
	.uahalf	0x1040
	.uleb128 0x1a
	.string	"reserved_10C0"
	.byte	0x8
	.uahalf	0xa12
	.uaword	0xa3dc
	.uahalf	0x10c0
	.uleb128 0x1a
	.string	"MMC_CONTROL"
	.byte	0x8
	.uahalf	0xa13
	.uaword	0x6e1d
	.uahalf	0x1100
	.uleb128 0x1a
	.string	"MMC_RECEIVE_INTERRUPT"
	.byte	0x8
	.uahalf	0xa14
	.uaword	0x6f0a
	.uahalf	0x1104
	.uleb128 0x1a
	.string	"MMC_TRANSMIT_INTERRUPT"
	.byte	0x8
	.uahalf	0xa15
	.uaword	0x6fab
	.uahalf	0x1108
	.uleb128 0x1a
	.string	"MMC_RECEIVE_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0xa16
	.uaword	0x6f58
	.uahalf	0x110c
	.uleb128 0x1a
	.string	"MMC_TRANSMIT_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0xa17
	.uaword	0x6ffa
	.uahalf	0x1110
	.uleb128 0x1a
	.string	"TX_OCTET_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa18
	.uaword	0x8dda
	.uahalf	0x1114
	.uleb128 0x1a
	.string	"TX_FRAME_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa19
	.uaword	0x8bed
	.uahalf	0x1118
	.uleb128 0x1a
	.string	"TX_BROADCAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa1a
	.uaword	0x89b6
	.uahalf	0x111c
	.uleb128 0x1a
	.string	"TX_MULTICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa1b
	.uaword	0x8c8e
	.uahalf	0x1120
	.uleb128 0x1a
	.string	"TX_64OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa1c
	.uaword	0x8909
	.uahalf	0x1124
	.uleb128 0x1a
	.string	"TX_65TO127OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa1d
	.uaword	0x895d
	.uahalf	0x1128
	.uleb128 0x1a
	.string	"TX_128TO255OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa1e
	.uaword	0x87fa
	.uahalf	0x112c
	.uleb128 0x1a
	.string	"TX_256TO511OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa1f
	.uaword	0x8854
	.uahalf	0x1130
	.uleb128 0x1a
	.string	"TX_512TO1023OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa20
	.uaword	0x88ae
	.uahalf	0x1134
	.uleb128 0x1a
	.string	"TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa21
	.uaword	0x879f
	.uahalf	0x1138
	.uleb128 0x1a
	.string	"TX_UNICAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa22
	.uaword	0x8f69
	.uahalf	0x113c
	.uleb128 0x1a
	.string	"TX_MULTICAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa23
	.uaword	0x8cdf
	.uahalf	0x1140
	.uleb128 0x1a
	.string	"TX_BROADCAST_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa24
	.uaword	0x8a07
	.uahalf	0x1144
	.uleb128 0x1a
	.string	"TX_UNDERFLOW_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa25
	.uaword	0x8f17
	.uahalf	0x1148
	.uleb128 0x1a
	.string	"TX_SINGLE_COLLISION_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa26
	.uaword	0x8ebf
	.uahalf	0x114c
	.uleb128 0x1a
	.string	"TX_MULTIPLE_COLLISION_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa27
	.uaword	0x8d34
	.uahalf	0x1150
	.uleb128 0x1a
	.string	"TX_DEFERRED_FRAMES"
	.byte	0x8
	.uahalf	0xa28
	.uaword	0x8aac
	.uahalf	0x1154
	.uleb128 0x1a
	.string	"TX_LATE_COLLISION_FRAMES"
	.byte	0x8
	.uahalf	0xa29
	.uaword	0x8c3d
	.uahalf	0x1158
	.uleb128 0x1a
	.string	"TX_EXCESSIVE_COLLISION_FRAMES"
	.byte	0x8
	.uahalf	0xa2a
	.uaword	0x8af7
	.uahalf	0x115c
	.uleb128 0x1a
	.string	"TX_CARRIER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa2b
	.uaword	0x8a5c
	.uahalf	0x1160
	.uleb128 0x1a
	.string	"TX_OCTET_COUNT_GOOD"
	.byte	0x8
	.uahalf	0xa2c
	.uaword	0x8d8e
	.uahalf	0x1164
	.uleb128 0x1a
	.string	"TX_FRAME_COUNT_GOOD"
	.byte	0x8
	.uahalf	0xa2d
	.uaword	0x8ba1
	.uahalf	0x1168
	.uleb128 0x1a
	.string	"TX_EXCESSIVE_DEFERRAL_ERROR"
	.byte	0x8
	.uahalf	0xa2e
	.uaword	0x8b4d
	.uahalf	0x116c
	.uleb128 0x1a
	.string	"TX_PAUSE_FRAMES"
	.byte	0x8
	.uahalf	0xa2f
	.uaword	0x8e77
	.uahalf	0x1170
	.uleb128 0x1a
	.string	"TX_VLAN_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa30
	.uaword	0x8fbc
	.uahalf	0x1174
	.uleb128 0x1a
	.string	"TX_OSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa31
	.uaword	0x8e2a
	.uahalf	0x1178
	.uleb128 0x1a
	.string	"reserved_117C"
	.byte	0x8
	.uahalf	0xa32
	.uaword	0xa3ec
	.uahalf	0x117c
	.uleb128 0x1a
	.string	"RX_FRAMES_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa33
	.uaword	0x761a
	.uahalf	0x1180
	.uleb128 0x1a
	.string	"RX_OCTET_COUNT_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa34
	.uaword	0x77a6
	.uahalf	0x1184
	.uleb128 0x1a
	.string	"RX_OCTET_COUNT_GOOD"
	.byte	0x8
	.uahalf	0xa35
	.uaword	0x775a
	.uahalf	0x1188
	.uleb128 0x1a
	.string	"RX_BROADCAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa36
	.uaword	0x74de
	.uahalf	0x118c
	.uleb128 0x1a
	.string	"RX_MULTICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa37
	.uaword	0x7709
	.uahalf	0x1190
	.uleb128 0x1a
	.string	"RX_CRC_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa38
	.uaword	0x757e
	.uahalf	0x1194
	.uleb128 0x1a
	.string	"RX_ALIGNMENT_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa39
	.uaword	0x748c
	.uahalf	0x1198
	.uleb128 0x1a
	.string	"RX_RUNT_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa3a
	.uaword	0x7932
	.uahalf	0x119c
	.uleb128 0x1a
	.string	"RX_JABBER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa3b
	.uaword	0x766b
	.uahalf	0x11a0
	.uleb128 0x1a
	.string	"RX_UNDERSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa3c
	.uaword	0x797f
	.uahalf	0x11a4
	.uleb128 0x1a
	.string	"RX_OVERSIZE_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa3d
	.uaword	0x784a
	.uahalf	0x11a8
	.uleb128 0x1a
	.string	"RX_64OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa3e
	.uaword	0x73df
	.uahalf	0x11ac
	.uleb128 0x1a
	.string	"RX_65TO127OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa3f
	.uaword	0x7433
	.uahalf	0x11b0
	.uleb128 0x1a
	.string	"RX_128TO255OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa40
	.uaword	0x72d0
	.uahalf	0x11b4
	.uleb128 0x1a
	.string	"RX_256TO511OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa41
	.uaword	0x732a
	.uahalf	0x11b8
	.uleb128 0x1a
	.string	"RX_512TO1023OCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa42
	.uaword	0x7384
	.uahalf	0x11bc
	.uleb128 0x1a
	.string	"RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa43
	.uaword	0x7275
	.uahalf	0x11c0
	.uleb128 0x1a
	.string	"RX_UNICAST_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa44
	.uaword	0x79d0
	.uahalf	0x11c4
	.uleb128 0x1a
	.string	"RX_LENGTH_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa45
	.uaword	0x76ba
	.uahalf	0x11c8
	.uleb128 0x1a
	.string	"RX_OUT_OF_RANGE_TYPE_FRAMES"
	.byte	0x8
	.uahalf	0xa46
	.uaword	0x77f6
	.uahalf	0x11cc
	.uleb128 0x1a
	.string	"RX_PAUSE_FRAMES"
	.byte	0x8
	.uahalf	0xa47
	.uaword	0x789a
	.uahalf	0x11d0
	.uleb128 0x1a
	.string	"RX_FIFO_OVERFLOW_FRAMES"
	.byte	0x8
	.uahalf	0xa48
	.uaword	0x75ca
	.uahalf	0x11d4
	.uleb128 0x1a
	.string	"RX_VLAN_FRAMES_GOOD_BAD"
	.byte	0x8
	.uahalf	0xa49
	.uaword	0x7a1f
	.uahalf	0x11d8
	.uleb128 0x1a
	.string	"RX_WATCHDOG_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa4a
	.uaword	0x7a6f
	.uahalf	0x11dc
	.uleb128 0x1a
	.string	"RX_RECEIVE_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa4b
	.uaword	0x78e2
	.uahalf	0x11e0
	.uleb128 0x1a
	.string	"RX_CONTROL_FRAMES_GOOD"
	.byte	0x8
	.uahalf	0xa4c
	.uaword	0x752f
	.uahalf	0x11e4
	.uleb128 0x1a
	.string	"reserved_11E8"
	.byte	0x8
	.uahalf	0xa4d
	.uaword	0xa3fc
	.uahalf	0x11e8
	.uleb128 0x1a
	.string	"MMC_IPC_RECEIVE_INTERRUPT_MASK"
	.byte	0x8
	.uahalf	0xa4e
	.uaword	0x6eb3
	.uahalf	0x1200
	.uleb128 0x1a
	.string	"reserved_1204"
	.byte	0x8
	.uahalf	0xa4f
	.uaword	0xa3ec
	.uahalf	0x1204
	.uleb128 0x1a
	.string	"MMC_IPC_RECEIVE_INTERRUPT"
	.byte	0x8
	.uahalf	0xa50
	.uaword	0x6e61
	.uahalf	0x1208
	.uleb128 0x1a
	.string	"reserved_120C"
	.byte	0x8
	.uahalf	0xa51
	.uaword	0xa3ec
	.uahalf	0x120c
	.uleb128 0x1a
	.string	"RXIPV4_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa52
	.uaword	0x7c90
	.uahalf	0x1210
	.uleb128 0x1a
	.string	"RXIPV4_HEADER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa53
	.uaword	0x7d26
	.uahalf	0x1214
	.uleb128 0x1a
	.string	"RXIPV4_NO_PAYLOAD_FRAMES"
	.byte	0x8
	.uahalf	0xa54
	.uaword	0x7dcc
	.uahalf	0x1218
	.uleb128 0x1a
	.string	"RXIPV4_FRAGMENTED_FRAMES"
	.byte	0x8
	.uahalf	0xa55
	.uaword	0x7bee
	.uahalf	0x121c
	.uleb128 0x1a
	.string	"RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES"
	.byte	0x8
	.uahalf	0xa56
	.uaword	0x7ec9
	.uahalf	0x1220
	.uleb128 0x1a
	.string	"RXIPV6_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa57
	.uaword	0x7f25
	.uahalf	0x1224
	.uleb128 0x1a
	.string	"RXIPV6_HEADER_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa58
	.uaword	0x7fbb
	.uahalf	0x1228
	.uleb128 0x1a
	.string	"RXIPV6_NO_PAYLOAD_FRAMES"
	.byte	0x8
	.uahalf	0xa59
	.uaword	0x8061
	.uahalf	0x122c
	.uleb128 0x1a
	.string	"RXUDP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa5a
	.uaword	0x82c3
	.uahalf	0x1230
	.uleb128 0x1a
	.string	"RXUDP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa5b
	.uaword	0x822d
	.uahalf	0x1234
	.uleb128 0x1a
	.string	"RXTCP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa5c
	.uaword	0x8199
	.uahalf	0x1238
	.uleb128 0x1a
	.string	"RXTCP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa5d
	.uaword	0x8103
	.uahalf	0x123c
	.uleb128 0x1a
	.string	"RXICMP_GOOD_FRAMES"
	.byte	0x8
	.uahalf	0xa5e
	.uaword	0x7b58
	.uahalf	0x1240
	.uleb128 0x1a
	.string	"RXICMP_ERROR_FRAMES"
	.byte	0x8
	.uahalf	0xa5f
	.uaword	0x7ac0
	.uahalf	0x1244
	.uleb128 0x1a
	.string	"reserved_1248"
	.byte	0x8
	.uahalf	0xa60
	.uaword	0xa3b7
	.uahalf	0x1248
	.uleb128 0x1a
	.string	"RXIPV4_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0xa61
	.uaword	0x7cdb
	.uahalf	0x1250
	.uleb128 0x1a
	.string	"RXIPV4_HEADER_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0xa62
	.uaword	0x7d79
	.uahalf	0x1254
	.uleb128 0x1a
	.string	"RXIPV4_NO_PAYLOAD_OCTETS"
	.byte	0x8
	.uahalf	0xa63
	.uaword	0x7e1d
	.uahalf	0x1258
	.uleb128 0x1a
	.string	"RXIPV4_FRAGMENTED_OCTETS"
	.byte	0x8
	.uahalf	0xa64
	.uaword	0x7c3f
	.uahalf	0x125c
	.uleb128 0x1a
	.string	"RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS"
	.byte	0x8
	.uahalf	0xa65
	.uaword	0x7e6e
	.uahalf	0x1260
	.uleb128 0x1a
	.string	"RXIPV6_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0xa66
	.uaword	0x7f70
	.uahalf	0x1264
	.uleb128 0x1a
	.string	"RXIPV6_HEADER_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0xa67
	.uaword	0x800e
	.uahalf	0x1268
	.uleb128 0x1a
	.string	"RXIPV6_NO_PAYLOAD_OCTETS"
	.byte	0x8
	.uahalf	0xa68
	.uaword	0x80b2
	.uahalf	0x126c
	.uleb128 0x1a
	.string	"RXUDP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0xa69
	.uaword	0x830d
	.uahalf	0x1270
	.uleb128 0x1a
	.string	"RXUDP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0xa6a
	.uaword	0x8278
	.uahalf	0x1274
	.uleb128 0x1a
	.string	"RXTCP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0xa6b
	.uaword	0x81e3
	.uahalf	0x1278
	.uleb128 0x1a
	.string	"RXTCP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0xa6c
	.uaword	0x814e
	.uahalf	0x127c
	.uleb128 0x1a
	.string	"RXICMP_GOOD_OCTETS"
	.byte	0x8
	.uahalf	0xa6d
	.uaword	0x7ba3
	.uahalf	0x1280
	.uleb128 0x1a
	.string	"RXICMP_ERROR_OCTETS"
	.byte	0x8
	.uahalf	0xa6e
	.uaword	0x7b0c
	.uahalf	0x1284
	.uleb128 0x1a
	.string	"reserved_1288"
	.byte	0x8
	.uahalf	0xa6f
	.uaword	0xa40c
	.uahalf	0x1288
	.uleb128 0x1a
	.string	"TIMESTAMP_CONTROL"
	.byte	0x8
	.uahalf	0xa70
	.uaword	0x8666
	.uahalf	0x1700
	.uleb128 0x1a
	.string	"SUB_SECOND_INCREMENT"
	.byte	0x8
	.uahalf	0xa71
	.uaword	0x8396
	.uahalf	0x1704
	.uleb128 0x1a
	.string	"SYSTEM_TIME_SECONDS"
	.byte	0x8
	.uahalf	0xa72
	.uaword	0x84e2
	.uahalf	0x1708
	.uleb128 0x1a
	.string	"SYSTEM_TIME_NANOSECONDS"
	.byte	0x8
	.uahalf	0xa73
	.uaword	0x843b
	.uahalf	0x170c
	.uleb128 0x1a
	.string	"SYSTEM_TIME_SECONDS_UPDATE"
	.byte	0x8
	.uahalf	0xa74
	.uaword	0x852e
	.uahalf	0x1710
	.uleb128 0x1a
	.string	"SYSTEM_TIME_NANOSECONDS_UPDATE"
	.byte	0x8
	.uahalf	0xa75
	.uaword	0x848b
	.uahalf	0x1714
	.uleb128 0x1a
	.string	"TIMESTAMP_ADDEND"
	.byte	0x8
	.uahalf	0xa76
	.uaword	0x861d
	.uahalf	0x1718
	.uleb128 0x1a
	.string	"TARGET_TIME_SECONDS"
	.byte	0x8
	.uahalf	0xa77
	.uaword	0x85d1
	.uahalf	0x171c
	.uleb128 0x1a
	.string	"TARGET_TIME_NANOSECONDS"
	.byte	0x8
	.uahalf	0xa78
	.uaword	0x8581
	.uahalf	0x1720
	.uleb128 0x1a
	.string	"SYSTEM_TIME_HIGHER_WORD_SECONDS"
	.byte	0x8
	.uahalf	0xa79
	.uaword	0x83e3
	.uahalf	0x1724
	.uleb128 0x1a
	.string	"TIMESTAMP_STATUS"
	.byte	0x8
	.uahalf	0xa7a
	.uaword	0x86b0
	.uahalf	0x1728
	.uleb128 0x1a
	.string	"PPS_CONTROL"
	.byte	0x8
	.uahalf	0xa7b
	.uaword	0x70e0
	.uahalf	0x172c
	.uleb128 0x1a
	.string	"reserved_1730"
	.byte	0x8
	.uahalf	0xa7c
	.uaword	0xa41d
	.uahalf	0x1730
	.uleb128 0x1a
	.string	"MAC_ADDRESS_G1"
	.byte	0x8
	.uahalf	0xa7d
	.uaword	0xa42d
	.uahalf	0x1800
	.uleb128 0x1a
	.string	"reserved_1880"
	.byte	0x8
	.uahalf	0xa7e
	.uaword	0xa432
	.uahalf	0x1880
	.uleb128 0x1a
	.string	"BUS_MODE"
	.byte	0x8
	.uahalf	0xa7f
	.uaword	0x66c7
	.uahalf	0x2000
	.uleb128 0x1a
	.string	"TRANSMIT_POLL_DEMAND"
	.byte	0x8
	.uahalf	0xa80
	.uaword	0x8752
	.uahalf	0x2004
	.uleb128 0x1a
	.string	"RECEIVE_POLL_DEMAND"
	.byte	0x8
	.uahalf	0xa81
	.uaword	0x71d5
	.uahalf	0x2008
	.uleb128 0x1a
	.string	"RECEIVE_DESCRIPTOR_LIST_ADDRESS"
	.byte	0x8
	.uahalf	0xa82
	.uaword	0x7124
	.uahalf	0x200c
	.uleb128 0x1a
	.string	"TRANSMIT_DESCRIPTOR_LIST_ADDRESS"
	.byte	0x8
	.uahalf	0xa83
	.uaword	0x86f9
	.uahalf	0x2010
	.uleb128 0x1a
	.string	"STATUS"
	.byte	0x8
	.uahalf	0xa84
	.uaword	0x8357
	.uahalf	0x2014
	.uleb128 0x1a
	.string	"OPERATION_MODE"
	.byte	0x8
	.uahalf	0xa85
	.uaword	0x704e
	.uahalf	0x2018
	.uleb128 0x1a
	.string	"INTERRUPT_ENABLE"
	.byte	0x8
	.uahalf	0xa86
	.uaword	0x6b03
	.uahalf	0x201c
	.uleb128 0x1a
	.string	"MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER"
	.byte	0x8
	.uahalf	0xa87
	.uaword	0x6dbc
	.uahalf	0x2020
	.uleb128 0x1a
	.string	"RECEIVE_INTERRUPT_WATCHDOG_TIMER"
	.byte	0x8
	.uahalf	0xa88
	.uaword	0x717c
	.uahalf	0x2024
	.uleb128 0x1a
	.string	"reserved_2028"
	.byte	0x8
	.uahalf	0xa89
	.uaword	0xa3ec
	.uahalf	0x2028
	.uleb128 0x1a
	.string	"AHB_OR_AXI_STATUS"
	.byte	0x8
	.uahalf	0xa8a
	.uaword	0x667d
	.uahalf	0x202c
	.uleb128 0x1a
	.string	"reserved_2030"
	.byte	0x8
	.uahalf	0xa8b
	.uaword	0xa3fc
	.uahalf	0x2030
	.uleb128 0x1a
	.string	"CURRENT_HOST_TRANSMIT_DESCRIPTOR"
	.byte	0x8
	.uahalf	0xa8c
	.uaword	0x6855
	.uahalf	0x2048
	.uleb128 0x1a
	.string	"CURRENT_HOST_RECEIVE_DESCRIPTOR"
	.byte	0x8
	.uahalf	0xa8d
	.uaword	0x67a0
	.uahalf	0x204c
	.uleb128 0x1a
	.string	"CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS"
	.byte	0x8
	.uahalf	0xa8e
	.uaword	0x67f8
	.uahalf	0x2050
	.uleb128 0x1a
	.string	"CURRENT_HOST_RECEIVE_BUFFER_ADDRESS"
	.byte	0x8
	.uahalf	0xa8f
	.uaword	0x6744
	.uahalf	0x2054
	.uleb128 0x1a
	.string	"HW_FEATURE"
	.byte	0x8
	.uahalf	0xa90
	.uaword	0x6a85
	.uahalf	0x2058
	.uleb128 0x1a
	.string	"reserved_205C"
	.byte	0x8
	.uahalf	0xa91
	.uaword	0xa443
	.uahalf	0x205c
	.byte	0
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xa3ab
	.uleb128 0x1c
	.uaword	0xa3ab
	.uahalf	0xfdf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xa3c7
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.uaword	0x909b
	.uaword	0xa3d7
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.uaword	0xa3c7
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xa3ec
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x3f
	.byte	0
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xa3fc
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xa40c
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xa41d
	.uleb128 0x1c
	.uaword	0xa3ab
	.uahalf	0x477
	.byte	0
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xa42d
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0xcf
	.byte	0
	.uleb128 0x17
	.uaword	0xa3c7
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xa443
	.uleb128 0x1c
	.uaword	0xa3ab
	.uahalf	0x77f
	.byte	0
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xa453
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0xa3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_ETH"
	.byte	0x8
	.uahalf	0xa92
	.uaword	0xa463
	.uleb128 0x17
	.uaword	0x90bc
	.uleb128 0xd
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x2d
	.uaword	0xa67a
	.uleb128 0xe
	.string	"EN0"
	.byte	0x9
	.byte	0x2f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x9
	.byte	0x30
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x9
	.byte	0x31
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x9
	.byte	0x32
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x9
	.byte	0x33
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x9
	.byte	0x34
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x9
	.byte	0x35
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x9
	.byte	0x36
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x9
	.byte	0x37
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x9
	.byte	0x38
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x9
	.byte	0x39
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x9
	.byte	0x3a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x9
	.byte	0x3b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x9
	.byte	0x3c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x9
	.byte	0x3d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x9
	.byte	0x3e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EN16"
	.byte	0x9
	.byte	0x3f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"EN17"
	.byte	0x9
	.byte	0x40
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"EN18"
	.byte	0x9
	.byte	0x41
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"EN19"
	.byte	0x9
	.byte	0x42
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"EN20"
	.byte	0x9
	.byte	0x43
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"EN21"
	.byte	0x9
	.byte	0x44
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"EN22"
	.byte	0x9
	.byte	0x45
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"EN23"
	.byte	0x9
	.byte	0x46
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EN24"
	.byte	0x9
	.byte	0x47
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EN25"
	.byte	0x9
	.byte	0x48
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"EN26"
	.byte	0x9
	.byte	0x49
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"EN27"
	.byte	0x9
	.byte	0x4a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EN28"
	.byte	0x9
	.byte	0x4b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"EN29"
	.byte	0x9
	.byte	0x4c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"EN30"
	.byte	0x9
	.byte	0x4d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"EN31"
	.byte	0x9
	.byte	0x4e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x9
	.byte	0x4f
	.uaword	0xa468
	.uleb128 0xd
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x52
	.uaword	0xa6be
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0x54
	.uaword	0x5c2
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x9
	.byte	0x55
	.uaword	0xa693
	.uleb128 0xd
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x58
	.uaword	0xa7f5
	.uleb128 0xe
	.string	"EN0"
	.byte	0x9
	.byte	0x5a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x9
	.byte	0x5b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x9
	.byte	0x5c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x9
	.byte	0x5d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x9
	.byte	0x5e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x9
	.byte	0x5f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x9
	.byte	0x60
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x9
	.byte	0x61
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x9
	.byte	0x62
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x9
	.byte	0x63
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x9
	.byte	0x64
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x9
	.byte	0x65
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x9
	.byte	0x66
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x9
	.byte	0x67
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x9
	.byte	0x68
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x9
	.byte	0x69
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x9
	.byte	0x6a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x9
	.byte	0x6b
	.uaword	0xa6d7
	.uleb128 0xd
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x6e
	.uaword	0xa857
	.uleb128 0xe
	.string	"MODREV"
	.byte	0x9
	.byte	0x70
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"MODTYPE"
	.byte	0x9
	.byte	0x71
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF14
	.byte	0x9
	.byte	0x72
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x9
	.byte	0x73
	.uaword	0xa80b
	.uleb128 0xd
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x76
	.uaword	0xa979
	.uleb128 0xe
	.string	"P0"
	.byte	0x9
	.byte	0x78
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"P1"
	.byte	0x9
	.byte	0x79
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"P2"
	.byte	0x9
	.byte	0x7a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"P3"
	.byte	0x9
	.byte	0x7b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"P4"
	.byte	0x9
	.byte	0x7c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"P5"
	.byte	0x9
	.byte	0x7d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"P6"
	.byte	0x9
	.byte	0x7e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"P7"
	.byte	0x9
	.byte	0x7f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"P8"
	.byte	0x9
	.byte	0x80
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"P9"
	.byte	0x9
	.byte	0x81
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"P10"
	.byte	0x9
	.byte	0x82
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"P11"
	.byte	0x9
	.byte	0x83
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"P12"
	.byte	0x9
	.byte	0x84
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"P13"
	.byte	0x9
	.byte	0x85
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"P14"
	.byte	0x9
	.byte	0x86
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"P15"
	.byte	0x9
	.byte	0x87
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x9
	.byte	0x88
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x9
	.byte	0x89
	.uaword	0xa86c
	.uleb128 0xd
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x8c
	.uaword	0xaa21
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0x8e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC0"
	.byte	0x9
	.byte	0x8f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0x9
	.byte	0x90
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC1"
	.byte	0x9
	.byte	0x91
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x9
	.byte	0x92
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC2"
	.byte	0x9
	.byte	0x93
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF24
	.byte	0x9
	.byte	0x94
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC3"
	.byte	0x9
	.byte	0x95
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x9
	.byte	0x96
	.uaword	0xa98e
	.uleb128 0xd
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x99
	.uaword	0xaad1
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0x9b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC12"
	.byte	0x9
	.byte	0x9c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0x9
	.byte	0x9d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC13"
	.byte	0x9
	.byte	0x9e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x9
	.byte	0x9f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC14"
	.byte	0x9
	.byte	0xa0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF24
	.byte	0x9
	.byte	0xa1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC15"
	.byte	0x9
	.byte	0xa2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x9
	.byte	0xa3
	.uaword	0xaa39
	.uleb128 0xd
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xa6
	.uaword	0xab7d
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0xa8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC4"
	.byte	0x9
	.byte	0xa9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0x9
	.byte	0xaa
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC5"
	.byte	0x9
	.byte	0xab
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x9
	.byte	0xac
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC6"
	.byte	0x9
	.byte	0xad
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF24
	.byte	0x9
	.byte	0xae
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC7"
	.byte	0x9
	.byte	0xaf
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x9
	.byte	0xb0
	.uaword	0xaaea
	.uleb128 0xd
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xb3
	.uaword	0xac2a
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0xb5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC8"
	.byte	0x9
	.byte	0xb6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0x9
	.byte	0xb7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC9"
	.byte	0x9
	.byte	0xb8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x9
	.byte	0xb9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC10"
	.byte	0x9
	.byte	0xba
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF24
	.byte	0x9
	.byte	0xbb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC11"
	.byte	0x9
	.byte	0xbc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x9
	.byte	0xbd
	.uaword	0xab95
	.uleb128 0xd
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc0
	.uaword	0xac8a
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0xc2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x9
	.byte	0xc3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x9
	.byte	0xc4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x9
	.byte	0xc5
	.uaword	0xac42
	.uleb128 0xd
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc8
	.uaword	0xacea
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0xca
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x9
	.byte	0xcb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x9
	.byte	0xcc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x9
	.byte	0xcd
	.uaword	0xaca2
	.uleb128 0xd
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xd0
	.uaword	0xad7a
	.uleb128 0xe
	.string	"RDIS_CTRL"
	.byte	0x9
	.byte	0xd2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"RX_DIS"
	.byte	0x9
	.byte	0xd3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"TERM"
	.byte	0x9
	.byte	0xd4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"LRXTERM"
	.byte	0x9
	.byte	0xd5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0x9
	.byte	0xd6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x9
	.byte	0xd7
	.uaword	0xad02
	.uleb128 0xd
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xda
	.uaword	0xae4d
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0xdc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"LVDSR"
	.byte	0x9
	.byte	0xdd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"LVDSRL"
	.byte	0x9
	.byte	0xde
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x9
	.byte	0xdf
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"TDIS_CTRL"
	.byte	0x9
	.byte	0xe0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"TX_DIS"
	.byte	0x9
	.byte	0xe1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"TX_PD"
	.byte	0x9
	.byte	0xe2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"TX_PWDPD"
	.byte	0x9
	.byte	0xe3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF11
	.byte	0x9
	.byte	0xe4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x9
	.byte	0xe5
	.uaword	0xad96
	.uleb128 0xd
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xe8
	.uaword	0xaede
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0xea
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0x9
	.byte	0xeb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0x9
	.byte	0xec
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"PCL2"
	.byte	0x9
	.byte	0xed
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PCL3"
	.byte	0x9
	.byte	0xee
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.uaword	.LASF23
	.byte	0x9
	.byte	0xef
	.uaword	0x5c2
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x9
	.byte	0xf0
	.uaword	0xae65
	.uleb128 0xd
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xf3
	.uaword	0xaf65
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0xf5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PCL12"
	.byte	0x9
	.byte	0xf6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"PCL13"
	.byte	0x9
	.byte	0xf7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"PCL14"
	.byte	0x9
	.byte	0xf8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PCL15"
	.byte	0x9
	.byte	0xf9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x9
	.byte	0xfa
	.uaword	0xaef6
	.uleb128 0xd
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xfd
	.uaword	0xaffc
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x9
	.byte	0xff
	.uaword	0x5c2
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x9
	.uahalf	0x100
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x9
	.uahalf	0x101
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x9
	.uahalf	0x102
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x9
	.uahalf	0x103
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF24
	.byte	0x9
	.uahalf	0x104
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x9
	.uahalf	0x105
	.uaword	0xaf7e
	.uleb128 0x13
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x108
	.uaword	0xb097
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x10a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x9
	.uahalf	0x10c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x9
	.uahalf	0x10d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x9
	.uahalf	0x10e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF25
	.byte	0x9
	.uahalf	0x10f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x9
	.uahalf	0x110
	.uaword	0xb015
	.uleb128 0x13
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x113
	.uaword	0xb1f1
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x115
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x9
	.uahalf	0x116
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x9
	.uahalf	0x118
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x9
	.uahalf	0x119
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x9
	.uahalf	0x11b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x9
	.uahalf	0x11d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x9
	.uahalf	0x11e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x9
	.uahalf	0x11f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x9
	.uahalf	0x120
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x9
	.uahalf	0x121
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x9
	.uahalf	0x122
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x9
	.uahalf	0x123
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x9
	.uahalf	0x124
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x9
	.uahalf	0x125
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x9
	.uahalf	0x126
	.uaword	0xb0b0
	.uleb128 0x13
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x129
	.uaword	0xb43f
	.uleb128 0x10
	.string	"PS0"
	.byte	0x9
	.uahalf	0x12b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x9
	.uahalf	0x12c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x9
	.uahalf	0x12d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x9
	.uahalf	0x12e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x9
	.uahalf	0x12f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x9
	.uahalf	0x130
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x9
	.uahalf	0x131
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x9
	.uahalf	0x132
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x9
	.uahalf	0x133
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x9
	.uahalf	0x134
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x9
	.uahalf	0x135
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x9
	.uahalf	0x136
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x9
	.uahalf	0x137
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x9
	.uahalf	0x138
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x9
	.uahalf	0x139
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x9
	.uahalf	0x13a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x9
	.uahalf	0x13b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x9
	.uahalf	0x13c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x9
	.uahalf	0x13d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x9
	.uahalf	0x13e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x9
	.uahalf	0x13f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x9
	.uahalf	0x140
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x9
	.uahalf	0x141
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x9
	.uahalf	0x142
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x9
	.uahalf	0x143
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x9
	.uahalf	0x144
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x9
	.uahalf	0x145
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x9
	.uahalf	0x146
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x9
	.uahalf	0x147
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x9
	.uahalf	0x148
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x9
	.uahalf	0x149
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x9
	.uahalf	0x14a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMR_Bits"
	.byte	0x9
	.uahalf	0x14b
	.uaword	0xb209
	.uleb128 0x13
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x14e
	.uaword	0xb4c2
	.uleb128 0x10
	.string	"PS0"
	.byte	0x9
	.uahalf	0x150
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x9
	.uahalf	0x151
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x9
	.uahalf	0x152
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x9
	.uahalf	0x153
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF17
	.byte	0x9
	.uahalf	0x154
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x9
	.uahalf	0x155
	.uaword	0xb456
	.uleb128 0x13
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x158
	.uaword	0xb55c
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x15a
	.uaword	0x5c2
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x9
	.uahalf	0x15b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x9
	.uahalf	0x15c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x9
	.uahalf	0x15e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x15f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x9
	.uahalf	0x160
	.uaword	0xb4db
	.uleb128 0x13
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x163
	.uaword	0xb5f2
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x165
	.uaword	0x5c2
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x9
	.uahalf	0x166
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x9
	.uahalf	0x167
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x9
	.uahalf	0x168
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x9
	.uahalf	0x169
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x9
	.uahalf	0x16b
	.uaword	0xb576
	.uleb128 0x13
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x16e
	.uaword	0xb689
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x170
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x9
	.uahalf	0x171
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x9
	.uahalf	0x172
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x9
	.uahalf	0x173
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x9
	.uahalf	0x174
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0x9
	.uahalf	0x175
	.uaword	0x5c2
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x9
	.uahalf	0x176
	.uaword	0xb60b
	.uleb128 0x13
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x179
	.uaword	0xb7d3
	.uleb128 0x10
	.string	"PS0"
	.byte	0x9
	.uahalf	0x17b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x9
	.uahalf	0x17c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x9
	.uahalf	0x17d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x9
	.uahalf	0x17f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x9
	.uahalf	0x180
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x9
	.uahalf	0x181
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x9
	.uahalf	0x182
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x9
	.uahalf	0x183
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x9
	.uahalf	0x184
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x9
	.uahalf	0x185
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x9
	.uahalf	0x186
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x9
	.uahalf	0x187
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x9
	.uahalf	0x188
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x9
	.uahalf	0x189
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x9
	.uahalf	0x18a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x18b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x9
	.uahalf	0x18c
	.uaword	0xb6a2
	.uleb128 0x13
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x18f
	.uaword	0xb90b
	.uleb128 0x10
	.string	"P0"
	.byte	0x9
	.uahalf	0x191
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"P1"
	.byte	0x9
	.uahalf	0x192
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"P2"
	.byte	0x9
	.uahalf	0x193
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"P3"
	.byte	0x9
	.uahalf	0x194
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"P4"
	.byte	0x9
	.uahalf	0x195
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"P5"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"P6"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"P7"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"P8"
	.byte	0x9
	.uahalf	0x199
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"P9"
	.byte	0x9
	.uahalf	0x19a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"P10"
	.byte	0x9
	.uahalf	0x19b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"P11"
	.byte	0x9
	.uahalf	0x19c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"P12"
	.byte	0x9
	.uahalf	0x19d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"P13"
	.byte	0x9
	.uahalf	0x19e
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"P14"
	.byte	0x9
	.uahalf	0x19f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"P15"
	.byte	0x9
	.uahalf	0x1a0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x1a1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OUT_Bits"
	.byte	0x9
	.uahalf	0x1a2
	.uaword	0xb7eb
	.uleb128 0x13
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1a5
	.uaword	0xba08
	.uleb128 0x10
	.string	"SEL0"
	.byte	0x9
	.uahalf	0x1a7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SEL1"
	.byte	0x9
	.uahalf	0x1a8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"SEL2"
	.byte	0x9
	.uahalf	0x1a9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"SEL3"
	.byte	0x9
	.uahalf	0x1aa
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SEL4"
	.byte	0x9
	.uahalf	0x1ab
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"SEL5"
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"SEL6"
	.byte	0x9
	.uahalf	0x1ad
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x1ae
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"SEL10"
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"SEL11"
	.byte	0x9
	.uahalf	0x1b0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF26
	.byte	0x9
	.uahalf	0x1b1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"LCK"
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x9
	.uahalf	0x1b3
	.uaword	0xb922
	.uleb128 0x13
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1b6
	.uaword	0xbb72
	.uleb128 0x10
	.string	"PDIS0"
	.byte	0x9
	.uahalf	0x1b8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PDIS1"
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PDIS2"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PDIS3"
	.byte	0x9
	.uahalf	0x1bb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PDIS4"
	.byte	0x9
	.uahalf	0x1bc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PDIS5"
	.byte	0x9
	.uahalf	0x1bd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PDIS6"
	.byte	0x9
	.uahalf	0x1be
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PDIS7"
	.byte	0x9
	.uahalf	0x1bf
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PDIS8"
	.byte	0x9
	.uahalf	0x1c0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PDIS9"
	.byte	0x9
	.uahalf	0x1c1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PDIS10"
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PDIS11"
	.byte	0x9
	.uahalf	0x1c3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PDIS12"
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PDIS13"
	.byte	0x9
	.uahalf	0x1c5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PDIS14"
	.byte	0x9
	.uahalf	0x1c6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PDIS15"
	.byte	0x9
	.uahalf	0x1c7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x1c8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x9
	.uahalf	0x1c9
	.uaword	0xba20
	.uleb128 0x13
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1cc
	.uaword	0xbca6
	.uleb128 0x10
	.string	"PD0"
	.byte	0x9
	.uahalf	0x1ce
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PL0"
	.byte	0x9
	.uahalf	0x1cf
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PD1"
	.byte	0x9
	.uahalf	0x1d0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PL1"
	.byte	0x9
	.uahalf	0x1d1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PD2"
	.byte	0x9
	.uahalf	0x1d2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PL2"
	.byte	0x9
	.uahalf	0x1d3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PD3"
	.byte	0x9
	.uahalf	0x1d4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PL3"
	.byte	0x9
	.uahalf	0x1d5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PD4"
	.byte	0x9
	.uahalf	0x1d6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PL4"
	.byte	0x9
	.uahalf	0x1d7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PD5"
	.byte	0x9
	.uahalf	0x1d8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PL5"
	.byte	0x9
	.uahalf	0x1d9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PD6"
	.byte	0x9
	.uahalf	0x1da
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PL6"
	.byte	0x9
	.uahalf	0x1db
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PD7"
	.byte	0x9
	.uahalf	0x1dc
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PL7"
	.byte	0x9
	.uahalf	0x1dd
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x9
	.uahalf	0x1de
	.uaword	0xbb8b
	.uleb128 0x13
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x9
	.uahalf	0x1e1
	.uaword	0xbde5
	.uleb128 0x10
	.string	"PD8"
	.byte	0x9
	.uahalf	0x1e3
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PL8"
	.byte	0x9
	.uahalf	0x1e4
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PD9"
	.byte	0x9
	.uahalf	0x1e5
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PL9"
	.byte	0x9
	.uahalf	0x1e6
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PD10"
	.byte	0x9
	.uahalf	0x1e7
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PL10"
	.byte	0x9
	.uahalf	0x1e8
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PD11"
	.byte	0x9
	.uahalf	0x1e9
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PL11"
	.byte	0x9
	.uahalf	0x1ea
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PD12"
	.byte	0x9
	.uahalf	0x1eb
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PL12"
	.byte	0x9
	.uahalf	0x1ec
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PD13"
	.byte	0x9
	.uahalf	0x1ed
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PL13"
	.byte	0x9
	.uahalf	0x1ee
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PD14"
	.byte	0x9
	.uahalf	0x1ef
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PL14"
	.byte	0x9
	.uahalf	0x1f0
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PD15"
	.byte	0x9
	.uahalf	0x1f1
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PL15"
	.byte	0x9
	.uahalf	0x1f2
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x9
	.uahalf	0x1f3
	.uaword	0xbcbe
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x1fb
	.uaword	0xbe25
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x1fd
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x1fe
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x1ff
	.uaword	0xa67a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ACCEN0"
	.byte	0x9
	.uahalf	0x200
	.uaword	0xbdfd
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x203
	.uaword	0xbe62
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x205
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x206
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x207
	.uaword	0xa6be
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ACCEN1"
	.byte	0x9
	.uahalf	0x208
	.uaword	0xbe3a
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x20b
	.uaword	0xbe9f
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x20d
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x20e
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x20f
	.uaword	0xa7f5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ESR"
	.byte	0x9
	.uahalf	0x210
	.uaword	0xbe77
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x213
	.uaword	0xbed9
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x215
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x216
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x217
	.uaword	0xa857
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ID"
	.byte	0x9
	.uahalf	0x218
	.uaword	0xbeb1
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x21b
	.uaword	0xbf12
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x21d
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x21e
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x21f
	.uaword	0xa979
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IN"
	.byte	0x9
	.uahalf	0x220
	.uaword	0xbeea
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x223
	.uaword	0xbf4b
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x225
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x226
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x227
	.uaword	0xaa21
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR0"
	.byte	0x9
	.uahalf	0x228
	.uaword	0xbf23
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x22b
	.uaword	0xbf87
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x22d
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x22e
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x22f
	.uaword	0xaad1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR12"
	.byte	0x9
	.uahalf	0x230
	.uaword	0xbf5f
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x233
	.uaword	0xbfc4
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x235
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x236
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x237
	.uaword	0xab7d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR4"
	.byte	0x9
	.uahalf	0x238
	.uaword	0xbf9c
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x23b
	.uaword	0xc000
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x23d
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x23e
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x23f
	.uaword	0xac2a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR8"
	.byte	0x9
	.uahalf	0x240
	.uaword	0xbfd8
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x243
	.uaword	0xc03c
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x245
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x246
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x247
	.uaword	0xac8a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR0"
	.byte	0x9
	.uahalf	0x248
	.uaword	0xc014
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x24b
	.uaword	0xc086
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x24d
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x24e
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x24f
	.uaword	0xacea
	.uleb128 0x15
	.string	"B_P21"
	.byte	0x9
	.uahalf	0x250
	.uaword	0xad7a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR1"
	.byte	0x9
	.uahalf	0x251
	.uaword	0xc050
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x254
	.uaword	0xc0c2
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x256
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x257
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x258
	.uaword	0xae4d
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR2"
	.byte	0x9
	.uahalf	0x259
	.uaword	0xc09a
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x25c
	.uaword	0xc0fe
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x25e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x25f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x260
	.uaword	0xb1f1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR"
	.byte	0x9
	.uahalf	0x261
	.uaword	0xc0d6
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x264
	.uaword	0xc139
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x266
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x267
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x268
	.uaword	0xaede
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR0"
	.byte	0x9
	.uahalf	0x269
	.uaword	0xc111
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x26c
	.uaword	0xc175
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x26e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x26f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x270
	.uaword	0xaf65
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR12"
	.byte	0x9
	.uahalf	0x271
	.uaword	0xc14d
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x274
	.uaword	0xc1b2
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x276
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x277
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x278
	.uaword	0xaffc
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR4"
	.byte	0x9
	.uahalf	0x279
	.uaword	0xc18a
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x27c
	.uaword	0xc1ee
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x27e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x27f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x280
	.uaword	0xb097
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR8"
	.byte	0x9
	.uahalf	0x281
	.uaword	0xc1c6
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x284
	.uaword	0xc22a
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x286
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x287
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x288
	.uaword	0xb43f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMR"
	.byte	0x9
	.uahalf	0x289
	.uaword	0xc202
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x28c
	.uaword	0xc264
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x28e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x28f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x290
	.uaword	0xb7d3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR"
	.byte	0x9
	.uahalf	0x291
	.uaword	0xc23c
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x294
	.uaword	0xc29f
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x296
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x297
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x298
	.uaword	0xb4c2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR0"
	.byte	0x9
	.uahalf	0x299
	.uaword	0xc277
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x29c
	.uaword	0xc2db
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x29e
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x29f
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x2a0
	.uaword	0xb55c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR12"
	.byte	0x9
	.uahalf	0x2a1
	.uaword	0xc2b3
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x2a4
	.uaword	0xc318
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x2a6
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x2a7
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x2a8
	.uaword	0xb5f2
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR4"
	.byte	0x9
	.uahalf	0x2a9
	.uaword	0xc2f0
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x2ac
	.uaword	0xc354
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x2ae
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x2af
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x2b0
	.uaword	0xb689
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR8"
	.byte	0x9
	.uahalf	0x2b1
	.uaword	0xc32c
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x2b4
	.uaword	0xc390
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x2b6
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x2b7
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x2b8
	.uaword	0xb90b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OUT"
	.byte	0x9
	.uahalf	0x2b9
	.uaword	0xc368
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x2bc
	.uaword	0xc3ca
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x2be
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x2bf
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x2c0
	.uaword	0xba08
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PCSR"
	.byte	0x9
	.uahalf	0x2c1
	.uaword	0xc3a2
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x2c4
	.uaword	0xc405
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x2c6
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x2c7
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x2c8
	.uaword	0xbb72
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDISC"
	.byte	0x9
	.uahalf	0x2c9
	.uaword	0xc3dd
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x2cc
	.uaword	0xc441
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x2ce
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x2cf
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x2d0
	.uaword	0xbca6
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR0"
	.byte	0x9
	.uahalf	0x2d1
	.uaword	0xc419
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.uahalf	0x2d4
	.uaword	0xc47c
	.uleb128 0x15
	.string	"U"
	.byte	0x9
	.uahalf	0x2d6
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0x9
	.uahalf	0x2d7
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0x9
	.uahalf	0x2d8
	.uaword	0xbde5
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR1"
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0xc454
	.uleb128 0x18
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x9
	.uahalf	0x2e4
	.uaword	0xc6d0
	.uleb128 0x16
	.string	"OUT"
	.byte	0x9
	.uahalf	0x2e6
	.uaword	0xc390
	.byte	0
	.uleb128 0x16
	.string	"OMR"
	.byte	0x9
	.uahalf	0x2e7
	.uaword	0xc22a
	.byte	0x4
	.uleb128 0x16
	.string	"ID"
	.byte	0x9
	.uahalf	0x2e8
	.uaword	0xbed9
	.byte	0x8
	.uleb128 0x16
	.string	"reserved_C"
	.byte	0x9
	.uahalf	0x2e9
	.uaword	0xa3ec
	.byte	0xc
	.uleb128 0x16
	.string	"IOCR0"
	.byte	0x9
	.uahalf	0x2ea
	.uaword	0xbf4b
	.byte	0x10
	.uleb128 0x16
	.string	"IOCR4"
	.byte	0x9
	.uahalf	0x2eb
	.uaword	0xbfc4
	.byte	0x14
	.uleb128 0x16
	.string	"IOCR8"
	.byte	0x9
	.uahalf	0x2ec
	.uaword	0xc000
	.byte	0x18
	.uleb128 0x16
	.string	"IOCR12"
	.byte	0x9
	.uahalf	0x2ed
	.uaword	0xbf87
	.byte	0x1c
	.uleb128 0x19
	.uaword	.LASF23
	.byte	0x9
	.uahalf	0x2ee
	.uaword	0xa3ec
	.byte	0x20
	.uleb128 0x16
	.string	"IN"
	.byte	0x9
	.uahalf	0x2ef
	.uaword	0xbf12
	.byte	0x24
	.uleb128 0x19
	.uaword	.LASF25
	.byte	0x9
	.uahalf	0x2f0
	.uaword	0xa3fc
	.byte	0x28
	.uleb128 0x16
	.string	"PDR0"
	.byte	0x9
	.uahalf	0x2f1
	.uaword	0xc441
	.byte	0x40
	.uleb128 0x16
	.string	"PDR1"
	.byte	0x9
	.uahalf	0x2f2
	.uaword	0xc47c
	.byte	0x44
	.uleb128 0x16
	.string	"reserved_48"
	.byte	0x9
	.uahalf	0x2f3
	.uaword	0xa3b7
	.byte	0x48
	.uleb128 0x16
	.string	"ESR"
	.byte	0x9
	.uahalf	0x2f4
	.uaword	0xbe9f
	.byte	0x50
	.uleb128 0x16
	.string	"reserved_54"
	.byte	0x9
	.uahalf	0x2f5
	.uaword	0xc6d0
	.byte	0x54
	.uleb128 0x16
	.string	"PDISC"
	.byte	0x9
	.uahalf	0x2f6
	.uaword	0xc405
	.byte	0x60
	.uleb128 0x16
	.string	"PCSR"
	.byte	0x9
	.uahalf	0x2f7
	.uaword	0xc3ca
	.byte	0x64
	.uleb128 0x16
	.string	"reserved_68"
	.byte	0x9
	.uahalf	0x2f8
	.uaword	0xa3b7
	.byte	0x68
	.uleb128 0x16
	.string	"OMSR0"
	.byte	0x9
	.uahalf	0x2f9
	.uaword	0xc29f
	.byte	0x70
	.uleb128 0x16
	.string	"OMSR4"
	.byte	0x9
	.uahalf	0x2fa
	.uaword	0xc318
	.byte	0x74
	.uleb128 0x16
	.string	"OMSR8"
	.byte	0x9
	.uahalf	0x2fb
	.uaword	0xc354
	.byte	0x78
	.uleb128 0x16
	.string	"OMSR12"
	.byte	0x9
	.uahalf	0x2fc
	.uaword	0xc2db
	.byte	0x7c
	.uleb128 0x16
	.string	"OMCR0"
	.byte	0x9
	.uahalf	0x2fd
	.uaword	0xc139
	.byte	0x80
	.uleb128 0x16
	.string	"OMCR4"
	.byte	0x9
	.uahalf	0x2fe
	.uaword	0xc1b2
	.byte	0x84
	.uleb128 0x16
	.string	"OMCR8"
	.byte	0x9
	.uahalf	0x2ff
	.uaword	0xc1ee
	.byte	0x88
	.uleb128 0x16
	.string	"OMCR12"
	.byte	0x9
	.uahalf	0x300
	.uaword	0xc175
	.byte	0x8c
	.uleb128 0x16
	.string	"OMSR"
	.byte	0x9
	.uahalf	0x301
	.uaword	0xc264
	.byte	0x90
	.uleb128 0x16
	.string	"OMCR"
	.byte	0x9
	.uahalf	0x302
	.uaword	0xc0fe
	.byte	0x94
	.uleb128 0x16
	.string	"reserved_98"
	.byte	0x9
	.uahalf	0x303
	.uaword	0xa3b7
	.byte	0x98
	.uleb128 0x16
	.string	"LPCR0"
	.byte	0x9
	.uahalf	0x304
	.uaword	0xc03c
	.byte	0xa0
	.uleb128 0x16
	.string	"LPCR1"
	.byte	0x9
	.uahalf	0x305
	.uaword	0xc086
	.byte	0xa4
	.uleb128 0x16
	.string	"LPCR2"
	.byte	0x9
	.uahalf	0x306
	.uaword	0xc0c2
	.byte	0xa8
	.uleb128 0x16
	.string	"reserved_A4"
	.byte	0x9
	.uahalf	0x307
	.uaword	0xc6e0
	.byte	0xac
	.uleb128 0x16
	.string	"ACCEN1"
	.byte	0x9
	.uahalf	0x308
	.uaword	0xbe62
	.byte	0xf8
	.uleb128 0x16
	.string	"ACCEN0"
	.byte	0x9
	.uahalf	0x309
	.uaword	0xbe25
	.byte	0xfc
	.byte	0
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xc6e0
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0xb
	.byte	0
	.uleb128 0x1b
	.uaword	0x1ff
	.uaword	0xc6f0
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x4b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P"
	.byte	0x9
	.uahalf	0x30a
	.uaword	0xc6fe
	.uleb128 0x17
	.uaword	0xc48f
	.uleb128 0x4
	.byte	0x4
	.uaword	0xc6f0
	.uleb128 0x17
	.uaword	0x5c2
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x40
	.uaword	0xc78e
	.uleb128 0x9
	.string	"IfxPort_InputMode_undefined"
	.sleb128 -1
	.uleb128 0x9
	.string	"IfxPort_InputMode_noPullDevice"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxPort_InputMode_pullDown"
	.sleb128 8
	.uleb128 0x9
	.string	"IfxPort_InputMode_pullUp"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_InputMode"
	.byte	0x4
	.byte	0x45
	.uaword	0xc70e
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x4c
	.uaword	0xca47
	.uleb128 0x9
	.string	"IfxPort_Mode_inputNoPullDevice"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxPort_Mode_inputPullDown"
	.sleb128 8
	.uleb128 0x9
	.string	"IfxPort_Mode_inputPullUp"
	.sleb128 16
	.uleb128 0x9
	.string	"IfxPort_Mode_outputPushPullGeneral"
	.sleb128 128
	.uleb128 0x9
	.string	"IfxPort_Mode_outputPushPullAlt1"
	.sleb128 136
	.uleb128 0x9
	.string	"IfxPort_Mode_outputPushPullAlt2"
	.sleb128 144
	.uleb128 0x9
	.string	"IfxPort_Mode_outputPushPullAlt3"
	.sleb128 152
	.uleb128 0x9
	.string	"IfxPort_Mode_outputPushPullAlt4"
	.sleb128 160
	.uleb128 0x9
	.string	"IfxPort_Mode_outputPushPullAlt5"
	.sleb128 168
	.uleb128 0x9
	.string	"IfxPort_Mode_outputPushPullAlt6"
	.sleb128 176
	.uleb128 0x9
	.string	"IfxPort_Mode_outputPushPullAlt7"
	.sleb128 184
	.uleb128 0x9
	.string	"IfxPort_Mode_outputOpenDrainGeneral"
	.sleb128 192
	.uleb128 0x9
	.string	"IfxPort_Mode_outputOpenDrainAlt1"
	.sleb128 200
	.uleb128 0x9
	.string	"IfxPort_Mode_outputOpenDrainAlt2"
	.sleb128 208
	.uleb128 0x9
	.string	"IfxPort_Mode_outputOpenDrainAlt3"
	.sleb128 216
	.uleb128 0x9
	.string	"IfxPort_Mode_outputOpenDrainAlt4"
	.sleb128 224
	.uleb128 0x9
	.string	"IfxPort_Mode_outputOpenDrainAlt5"
	.sleb128 232
	.uleb128 0x9
	.string	"IfxPort_Mode_outputOpenDrainAlt6"
	.sleb128 240
	.uleb128 0x9
	.string	"IfxPort_Mode_outputOpenDrainAlt7"
	.sleb128 248
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Mode"
	.byte	0x4
	.byte	0x60
	.uaword	0xc7a7
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x65
	.uaword	0xcb37
	.uleb128 0x9
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x9
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x9
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x9
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x9
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x9
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x9
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x9
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputIdx"
	.byte	0x4
	.byte	0x6e
	.uaword	0xca5b
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x73
	.uaword	0xcb98
	.uleb128 0x9
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x9
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputMode"
	.byte	0x4
	.byte	0x76
	.uaword	0xcb50
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x7d
	.uaword	0xcd53
	.uleb128 0x9
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x9
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x9
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x9
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x9
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x9
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x9
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x9
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x9
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0x4
	.byte	0x8a
	.uaword	0xcbb2
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xaa
	.uaword	0xcd8e
	.uleb128 0xc
	.string	"port"
	.byte	0x4
	.byte	0xac
	.uaword	0xc703
	.byte	0
	.uleb128 0xb
	.uaword	.LASF27
	.byte	0x4
	.byte	0xad
	.uaword	0x1f2
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Pin"
	.byte	0x4
	.byte	0xae
	.uaword	0xcd6c
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x27
	.uaword	0xcdce
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x29
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x2a
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x2b
	.uaword	0x360
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xa453
	.uleb128 0x3
	.string	"IfxEth_Crs_In"
	.byte	0xa
	.byte	0x2c
	.uaword	0xcde9
	.uleb128 0x5
	.uaword	0xcda1
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x2f
	.uaword	0xce1b
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x31
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x32
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x33
	.uaword	0x360
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Crsdv_In"
	.byte	0xa
	.byte	0x34
	.uaword	0xce32
	.uleb128 0x5
	.uaword	0xcdee
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x37
	.uaword	0xce64
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x39
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x3a
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x3b
	.uaword	0x360
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Rxdv_In"
	.byte	0xa
	.byte	0x3c
	.uaword	0xce7a
	.uleb128 0x5
	.uaword	0xce37
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x3f
	.uaword	0xceac
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x41
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x42
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x43
	.uaword	0x360
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Refclk_In"
	.byte	0xa
	.byte	0x44
	.uaword	0xcec4
	.uleb128 0x5
	.uaword	0xce7f
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x47
	.uaword	0xcef6
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x49
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x4a
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x4b
	.uaword	0x360
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Rxclk_In"
	.byte	0xa
	.byte	0x4c
	.uaword	0xcf0d
	.uleb128 0x5
	.uaword	0xcec9
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x4f
	.uaword	0xcf3f
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x51
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x52
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x53
	.uaword	0x360
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Txclk_In"
	.byte	0xa
	.byte	0x54
	.uaword	0xcf56
	.uleb128 0x5
	.uaword	0xcf12
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x57
	.uaword	0xcf88
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x59
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x5a
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x5b
	.uaword	0x360
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Rxd_In"
	.byte	0xa
	.byte	0x5c
	.uaword	0xcf9d
	.uleb128 0x5
	.uaword	0xcf5b
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x5f
	.uaword	0xcfcf
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x61
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x62
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x63
	.uaword	0x360
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Col_In"
	.byte	0xa
	.byte	0x64
	.uaword	0xcfe4
	.uleb128 0x5
	.uaword	0xcfa2
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x67
	.uaword	0xd016
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x69
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x6a
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x6b
	.uaword	0xcb37
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Mdc_Out"
	.byte	0xa
	.byte	0x6c
	.uaword	0xd02c
	.uleb128 0x5
	.uaword	0xcfe9
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x6f
	.uaword	0xd075
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x71
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x72
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xc
	.string	"inSelect"
	.byte	0xa
	.byte	0x73
	.uaword	0x360
	.byte	0xc
	.uleb128 0xc
	.string	"outSelect"
	.byte	0xa
	.byte	0x74
	.uaword	0xcb37
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Mdio_InOut"
	.byte	0xa
	.byte	0x75
	.uaword	0xd08e
	.uleb128 0x5
	.uaword	0xd031
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x78
	.uaword	0xd0c0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x7a
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x7b
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x7c
	.uaword	0xcb37
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Txd_Out"
	.byte	0xa
	.byte	0x7d
	.uaword	0xd0d6
	.uleb128 0x5
	.uaword	0xd093
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x80
	.uaword	0xd108
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x82
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x83
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x84
	.uaword	0xcb37
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Txen_Out"
	.byte	0xa
	.byte	0x85
	.uaword	0xd11f
	.uleb128 0x5
	.uaword	0xd0db
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x88
	.uaword	0xd151
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x8a
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x8b
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x8c
	.uaword	0xcb37
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Txer_Out"
	.byte	0xa
	.byte	0x8d
	.uaword	0xd168
	.uleb128 0x5
	.uaword	0xd124
	.uleb128 0xa
	.byte	0x10
	.byte	0xa
	.byte	0x90
	.uaword	0xd19a
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x92
	.uaword	0xcdce
	.byte	0
	.uleb128 0xc
	.string	"pin"
	.byte	0xa
	.byte	0x93
	.uaword	0xcd8e
	.byte	0x4
	.uleb128 0xb
	.uaword	.LASF28
	.byte	0xa
	.byte	0x94
	.uaword	0x360
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_Rxer_In"
	.byte	0xa
	.byte	0x95
	.uaword	0xd1b0
	.uleb128 0x5
	.uaword	0xd16d
	.uleb128 0x8
	.byte	0x1
	.byte	0xb
	.byte	0x32
	.uaword	0xd205
	.uleb128 0x9
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0xb
	.byte	0x37
	.uaword	0xd1b5
	.uleb128 0xd
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x2d
	.uaword	0xd325
	.uleb128 0xe
	.string	"SRPN"
	.byte	0xc
	.byte	0x2f
	.uaword	0x5c2
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0xc
	.byte	0x30
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"SRE"
	.byte	0xc
	.byte	0x31
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"TOS"
	.byte	0xc
	.byte	0x32
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"reserved_13"
	.byte	0xc
	.byte	0x33
	.uaword	0x5c2
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"ECC"
	.byte	0xc
	.byte	0x34
	.uaword	0x5c2
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.uaword	.LASF12
	.byte	0xc
	.byte	0x35
	.uaword	0x5c2
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"SRR"
	.byte	0xc
	.byte	0x36
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"CLRR"
	.byte	0xc
	.byte	0x37
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"SETR"
	.byte	0xc
	.byte	0x38
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"IOV"
	.byte	0xc
	.byte	0x39
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"IOVCLR"
	.byte	0xc
	.byte	0x3a
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"SWS"
	.byte	0xc
	.byte	0x3b
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"SWSCLR"
	.byte	0xc
	.byte	0x3c
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.uaword	.LASF13
	.byte	0xc
	.byte	0x3d
	.uaword	0x5c2
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0xc
	.byte	0x3e
	.uaword	0xd217
	.uleb128 0x1e
	.byte	0x4
	.byte	0xc
	.byte	0x46
	.uaword	0xd362
	.uleb128 0x1f
	.string	"U"
	.byte	0xc
	.byte	0x48
	.uaword	0x5c2
	.uleb128 0x1f
	.string	"I"
	.byte	0xc
	.byte	0x49
	.uaword	0x1dc
	.uleb128 0x1f
	.string	"B"
	.byte	0xc
	.byte	0x4a
	.uaword	0xd325
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0xc
	.byte	0x4b
	.uaword	0xd33e
	.uleb128 0xd
	.string	"_Ifx_CPU_CORE_ID_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x5c
	.uaword	0xd3b7
	.uleb128 0xe
	.string	"CORE_ID"
	.byte	0xd
	.byte	0x5e
	.uaword	0xc709
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0xd
	.byte	0x5f
	.uaword	0xc709
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CPU_CORE_ID_Bits"
	.byte	0xd
	.byte	0x60
	.uaword	0xd376
	.uleb128 0x14
	.byte	0x4
	.byte	0xd
	.uahalf	0x2e2
	.uaword	0xd3fb
	.uleb128 0x15
	.string	"U"
	.byte	0xd
	.uahalf	0x2e4
	.uaword	0x5c2
	.uleb128 0x15
	.string	"I"
	.byte	0xd
	.uahalf	0x2e5
	.uaword	0x1dc
	.uleb128 0x15
	.string	"B"
	.byte	0xd
	.uahalf	0x2e6
	.uaword	0xd3b7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_CPU_CORE_ID"
	.byte	0xd
	.uahalf	0x2e7
	.uaword	0xd3d3
	.uleb128 0x8
	.byte	0x1
	.byte	0xe
	.byte	0x6c
	.uaword	0xd457
	.uleb128 0x9
	.string	"IfxCpu_Id_0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxCpu_Id_1"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxCpu_Id_2"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxCpu_Id_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxCpu_Id"
	.byte	0xe
	.byte	0x71
	.uaword	0xd413
	.uleb128 0x8
	.byte	0x1
	.byte	0xe
	.byte	0x76
	.uaword	0xd4b8
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
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0x58
	.uaword	0xd546
	.uleb128 0x9
	.string	"IfxEth_ChecksumMode_bypass"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxEth_ChecksumMode_ipv4"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxEth_ChecksumMode_tcpUdpIcmpSegment"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxEth_ChecksumMode_tcpUdpIcmpFull"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_ChecksumMode"
	.byte	0x2
	.byte	0x5d
	.uaword	0xd4b8
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0x60
	.uaword	0xd5a5
	.uleb128 0x9
	.string	"IfxEth_DescriptorMode_chain"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxEth_DescriptorMode_ring"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_DescriptorMode"
	.byte	0x2
	.byte	0x63
	.uaword	0xd561
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0x68
	.uaword	0xd608
	.uleb128 0x9
	.string	"IfxEth_PhyInterfaceMode_mii"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxEth_PhyInterfaceMode_rmii"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_PhyInterfaceMode"
	.byte	0x2
	.byte	0x6b
	.uaword	0xd5c2
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.byte	0x7e
	.uaword	0xd6a0
	.uleb128 0x9
	.string	"IfxEth_RingModeBufferUsed_buffer1"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxEth_RingModeBufferUsed_buffer2"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxEth_RingModeBufferUsed_bothBuffers"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_RingModeBufferUsed"
	.byte	0x2
	.byte	0x82
	.uaword	0xd627
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.byte	0x9c
	.uaword	0xd7dd
	.uleb128 0xe
	.string	"ext"
	.byte	0x2
	.byte	0x9e
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"CE"
	.byte	0x2
	.byte	0x9f
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"DBE"
	.byte	0x2
	.byte	0xa0
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"RE"
	.byte	0x2
	.byte	0xa1
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"RWT"
	.byte	0x2
	.byte	0xa2
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"FT"
	.byte	0x2
	.byte	0xa3
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"LC"
	.byte	0x2
	.byte	0xa4
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"IPC"
	.byte	0x2
	.byte	0xa5
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"LS"
	.byte	0x2
	.byte	0xa6
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"FS"
	.byte	0x2
	.byte	0xa7
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"VLAN"
	.byte	0x2
	.byte	0xa8
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"OE"
	.byte	0x2
	.byte	0xa9
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"LE"
	.byte	0x2
	.byte	0xaa
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"SAF"
	.byte	0x2
	.byte	0xab
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"DE"
	.byte	0x2
	.byte	0xac
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"ES"
	.byte	0x2
	.byte	0xad
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"FL"
	.byte	0x2
	.byte	0xae
	.uaword	0x24f
	.byte	0x4
	.byte	0xe
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"AFM"
	.byte	0x2
	.byte	0xaf
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"OWN"
	.byte	0x2
	.byte	0xb0
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_AltRxDescr0_Bits"
	.byte	0x2
	.byte	0xb1
	.uaword	0xd6c1
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.byte	0xb5
	.uaword	0xd873
	.uleb128 0xe
	.string	"RBS1"
	.byte	0x2
	.byte	0xb7
	.uaword	0x24f
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"resv1"
	.byte	0x2
	.byte	0xb8
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"RCH"
	.byte	0x2
	.byte	0xb9
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"RER"
	.byte	0x2
	.byte	0xba
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"RBS2"
	.byte	0x2
	.byte	0xbb
	.uaword	0x24f
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"resv"
	.byte	0x2
	.byte	0xbc
	.uaword	0x24f
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"DIC"
	.byte	0x2
	.byte	0xbd
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_AltRxDescr1_Bits"
	.byte	0x2
	.byte	0xbe
	.uaword	0xd7fc
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.byte	0xc2
	.uaword	0xda27
	.uleb128 0xe
	.string	"DB"
	.byte	0x2
	.byte	0xc4
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"UF"
	.byte	0x2
	.byte	0xc5
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"ED"
	.byte	0x2
	.byte	0xc6
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"CC"
	.byte	0x2
	.byte	0xc7
	.uaword	0x24f
	.byte	0x4
	.byte	0x4
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"VLAN"
	.byte	0x2
	.byte	0xc8
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EC"
	.byte	0x2
	.byte	0xc9
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"LC"
	.byte	0x2
	.byte	0xca
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"NC"
	.byte	0x2
	.byte	0xcb
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"LOC"
	.byte	0x2
	.byte	0xcc
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"PCE"
	.byte	0x2
	.byte	0xcd
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"FF"
	.byte	0x2
	.byte	0xce
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"JT"
	.byte	0x2
	.byte	0xcf
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"ES"
	.byte	0x2
	.byte	0xd0
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"IHE"
	.byte	0x2
	.byte	0xd1
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"TTSS"
	.byte	0x2
	.byte	0xd2
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"resv"
	.byte	0x2
	.byte	0xd3
	.uaword	0x24f
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"TCH"
	.byte	0x2
	.byte	0xd4
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"TER"
	.byte	0x2
	.byte	0xd5
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"CIC"
	.byte	0x2
	.byte	0xd6
	.uaword	0x24f
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"resv1"
	.byte	0x2
	.byte	0xd7
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"TTSE"
	.byte	0x2
	.byte	0xd8
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"DP"
	.byte	0x2
	.byte	0xd9
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"DC"
	.byte	0x2
	.byte	0xda
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"FS"
	.byte	0x2
	.byte	0xdb
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"LS"
	.byte	0x2
	.byte	0xdc
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"IC"
	.byte	0x2
	.byte	0xdd
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"OWN"
	.byte	0x2
	.byte	0xde
	.uaword	0x24f
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_AltTxDescr0_Bits"
	.byte	0x2
	.byte	0xdf
	.uaword	0xd892
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.byte	0xe3
	.uaword	0xda91
	.uleb128 0xe
	.string	"TBS1"
	.byte	0x2
	.byte	0xe5
	.uaword	0x24f
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"resv1"
	.byte	0x2
	.byte	0xe6
	.uaword	0x24f
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"TBS2"
	.byte	0x2
	.byte	0xe7
	.uaword	0x24f
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"resv2"
	.byte	0x2
	.byte	0xe8
	.uaword	0x24f
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_AltTxDescr1_Bits"
	.byte	0x2
	.byte	0xe9
	.uaword	0xda46
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.byte	0xf1
	.uaword	0xdacb
	.uleb128 0x1f
	.string	"A"
	.byte	0x2
	.byte	0xf3
	.uaword	0xd7dd
	.uleb128 0x1f
	.string	"U"
	.byte	0x2
	.byte	0xf4
	.uaword	0x24f
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_RxDescr0"
	.byte	0x2
	.byte	0xf5
	.uaword	0xdab0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.byte	0xf9
	.uaword	0xdafd
	.uleb128 0x1f
	.string	"A"
	.byte	0x2
	.byte	0xfb
	.uaword	0xd873
	.uleb128 0x1f
	.string	"U"
	.byte	0x2
	.byte	0xfc
	.uaword	0x24f
	.byte	0
	.uleb128 0x3
	.string	"IfxEth_RxDescr1"
	.byte	0x2
	.byte	0xfd
	.uaword	0xdae2
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.uahalf	0x101
	.uaword	0xdb28
	.uleb128 0x15
	.string	"U"
	.byte	0x2
	.uahalf	0x103
	.uaword	0x24f
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_RxDescr2"
	.byte	0x2
	.uahalf	0x104
	.uaword	0xdb14
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.uahalf	0x108
	.uaword	0xdb54
	.uleb128 0x15
	.string	"U"
	.byte	0x2
	.uahalf	0x10a
	.uaword	0x24f
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_RxDescr3"
	.byte	0x2
	.uahalf	0x10b
	.uaword	0xdb40
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.uahalf	0x10f
	.uaword	0xdb8a
	.uleb128 0x15
	.string	"A"
	.byte	0x2
	.uahalf	0x111
	.uaword	0xda27
	.uleb128 0x15
	.string	"U"
	.byte	0x2
	.uahalf	0x112
	.uaword	0x24f
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_TxDescr0"
	.byte	0x2
	.uahalf	0x113
	.uaword	0xdb6c
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.uahalf	0x117
	.uaword	0xdbc0
	.uleb128 0x15
	.string	"A"
	.byte	0x2
	.uahalf	0x119
	.uaword	0xda91
	.uleb128 0x15
	.string	"U"
	.byte	0x2
	.uahalf	0x11a
	.uaword	0x24f
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_TxDescr1"
	.byte	0x2
	.uahalf	0x11b
	.uaword	0xdba2
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.uahalf	0x11f
	.uaword	0xdbec
	.uleb128 0x15
	.string	"U"
	.byte	0x2
	.uahalf	0x121
	.uaword	0x24f
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_TxDescr2"
	.byte	0x2
	.uahalf	0x122
	.uaword	0xdbd8
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.uahalf	0x126
	.uaword	0xdc18
	.uleb128 0x15
	.string	"U"
	.byte	0x2
	.uahalf	0x128
	.uaword	0x24f
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_TxDescr3"
	.byte	0x2
	.uahalf	0x129
	.uaword	0xdc04
	.uleb128 0x20
	.byte	0x10
	.byte	0x2
	.uahalf	0x131
	.uaword	0xdcb3
	.uleb128 0x19
	.uaword	.LASF29
	.byte	0x2
	.uahalf	0x133
	.uaword	0xd6a0
	.byte	0
	.uleb128 0x16
	.string	"rxBuffer1StartAddress"
	.byte	0x2
	.uahalf	0x134
	.uaword	0x24f
	.byte	0x4
	.uleb128 0x16
	.string	"rxBuffer2StartAddress"
	.byte	0x2
	.uahalf	0x135
	.uaword	0x24f
	.byte	0x8
	.uleb128 0x16
	.string	"rxBuffer1Size"
	.byte	0x2
	.uahalf	0x136
	.uaword	0x21d
	.byte	0xc
	.uleb128 0x16
	.string	"rxBuffer2Size"
	.byte	0x2
	.uahalf	0x137
	.uaword	0x21d
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_RingModeRxBuffersConfig"
	.byte	0x2
	.uahalf	0x138
	.uaword	0xdc30
	.uleb128 0x20
	.byte	0x10
	.byte	0x2
	.uahalf	0x13c
	.uaword	0xdd5d
	.uleb128 0x19
	.uaword	.LASF30
	.byte	0x2
	.uahalf	0x13e
	.uaword	0xd6a0
	.byte	0
	.uleb128 0x16
	.string	"txBuffer1StartAddress"
	.byte	0x2
	.uahalf	0x13f
	.uaword	0x24f
	.byte	0x4
	.uleb128 0x16
	.string	"txBuffer2StartAddress"
	.byte	0x2
	.uahalf	0x140
	.uaword	0x24f
	.byte	0x8
	.uleb128 0x16
	.string	"txBuffer1Size"
	.byte	0x2
	.uahalf	0x141
	.uaword	0x21d
	.byte	0xc
	.uleb128 0x16
	.string	"txBuffer2Size"
	.byte	0x2
	.uahalf	0x142
	.uaword	0x21d
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_RingModeTxBuffersConfig"
	.byte	0x2
	.uahalf	0x143
	.uaword	0xdcda
	.uleb128 0x20
	.byte	0x10
	.byte	0x2
	.uahalf	0x147
	.uaword	0xddca
	.uleb128 0x16
	.string	"RDES0"
	.byte	0x2
	.uahalf	0x149
	.uaword	0xdacb
	.byte	0
	.uleb128 0x16
	.string	"RDES1"
	.byte	0x2
	.uahalf	0x14a
	.uaword	0xdafd
	.byte	0x4
	.uleb128 0x16
	.string	"RDES2"
	.byte	0x2
	.uahalf	0x14b
	.uaword	0xdb28
	.byte	0x8
	.uleb128 0x16
	.string	"RDES3"
	.byte	0x2
	.uahalf	0x14c
	.uaword	0xdb54
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_RxDescr"
	.byte	0x2
	.uahalf	0x14d
	.uaword	0xdd84
	.uleb128 0x20
	.byte	0x10
	.byte	0x2
	.uahalf	0x151
	.uaword	0xde27
	.uleb128 0x16
	.string	"TDES0"
	.byte	0x2
	.uahalf	0x153
	.uaword	0xdb8a
	.byte	0
	.uleb128 0x16
	.string	"TDES1"
	.byte	0x2
	.uahalf	0x154
	.uaword	0xdbc0
	.byte	0x4
	.uleb128 0x16
	.string	"TDES2"
	.byte	0x2
	.uahalf	0x155
	.uaword	0xdbec
	.byte	0x8
	.uleb128 0x16
	.string	"TDES3"
	.byte	0x2
	.uahalf	0x156
	.uaword	0xdc18
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_TxDescr"
	.byte	0x2
	.uahalf	0x157
	.uaword	0xdde1
	.uleb128 0x20
	.byte	0x40
	.byte	0x2
	.uahalf	0x15f
	.uaword	0xdf28
	.uleb128 0x16
	.string	"crs"
	.byte	0x2
	.uahalf	0x161
	.uaword	0xdf28
	.byte	0
	.uleb128 0x16
	.string	"col"
	.byte	0x2
	.uahalf	0x162
	.uaword	0xdf2e
	.byte	0x4
	.uleb128 0x16
	.string	"txClk"
	.byte	0x2
	.uahalf	0x163
	.uaword	0xdf34
	.byte	0x8
	.uleb128 0x16
	.string	"rxClk"
	.byte	0x2
	.uahalf	0x164
	.uaword	0xdf3a
	.byte	0xc
	.uleb128 0x16
	.string	"rxDv"
	.byte	0x2
	.uahalf	0x165
	.uaword	0xdf40
	.byte	0x10
	.uleb128 0x16
	.string	"rxEr"
	.byte	0x2
	.uahalf	0x166
	.uaword	0xdf46
	.byte	0x14
	.uleb128 0x16
	.string	"rxd0"
	.byte	0x2
	.uahalf	0x167
	.uaword	0xdf4c
	.byte	0x18
	.uleb128 0x16
	.string	"rxd1"
	.byte	0x2
	.uahalf	0x168
	.uaword	0xdf4c
	.byte	0x1c
	.uleb128 0x16
	.string	"rxd2"
	.byte	0x2
	.uahalf	0x169
	.uaword	0xdf4c
	.byte	0x20
	.uleb128 0x16
	.string	"rxd3"
	.byte	0x2
	.uahalf	0x16a
	.uaword	0xdf4c
	.byte	0x24
	.uleb128 0x16
	.string	"txEn"
	.byte	0x2
	.uahalf	0x16b
	.uaword	0xdf52
	.byte	0x28
	.uleb128 0x16
	.string	"txEr"
	.byte	0x2
	.uahalf	0x16c
	.uaword	0xdf58
	.byte	0x2c
	.uleb128 0x16
	.string	"txd0"
	.byte	0x2
	.uahalf	0x16d
	.uaword	0xdf5e
	.byte	0x30
	.uleb128 0x16
	.string	"txd1"
	.byte	0x2
	.uahalf	0x16e
	.uaword	0xdf5e
	.byte	0x34
	.uleb128 0x16
	.string	"txd2"
	.byte	0x2
	.uahalf	0x16f
	.uaword	0xdf5e
	.byte	0x38
	.uleb128 0x16
	.string	"txd3"
	.byte	0x2
	.uahalf	0x170
	.uaword	0xdf5e
	.byte	0x3c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xcdd4
	.uleb128 0x4
	.byte	0x4
	.uaword	0xcfcf
	.uleb128 0x4
	.byte	0x4
	.uaword	0xcf3f
	.uleb128 0x4
	.byte	0x4
	.uaword	0xcef6
	.uleb128 0x4
	.byte	0x4
	.uaword	0xce64
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd19a
	.uleb128 0x4
	.byte	0x4
	.uaword	0xcf88
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd108
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd151
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd0c0
	.uleb128 0x12
	.string	"IfxEth_MiiPins"
	.byte	0x2
	.uahalf	0x171
	.uaword	0xde3e
	.uleb128 0x20
	.byte	0x20
	.byte	0x2
	.uahalf	0x175
	.uaword	0xdfa9
	.uleb128 0x16
	.string	"txConfig"
	.byte	0x2
	.uahalf	0x177
	.uaword	0xdd5d
	.byte	0
	.uleb128 0x16
	.string	"rxConfig"
	.byte	0x2
	.uahalf	0x178
	.uaword	0xdcb3
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_RingModeBuffersConfig"
	.byte	0x2
	.uahalf	0x179
	.uaword	0xdf7b
	.uleb128 0x20
	.byte	0x24
	.byte	0x2
	.uahalf	0x17d
	.uaword	0xe059
	.uleb128 0x16
	.string	"crsDiv"
	.byte	0x2
	.uahalf	0x17f
	.uaword	0xe059
	.byte	0
	.uleb128 0x16
	.string	"refClk"
	.byte	0x2
	.uahalf	0x180
	.uaword	0xe05f
	.byte	0x4
	.uleb128 0x16
	.string	"rxd0"
	.byte	0x2
	.uahalf	0x181
	.uaword	0xdf4c
	.byte	0x8
	.uleb128 0x16
	.string	"rxd1"
	.byte	0x2
	.uahalf	0x182
	.uaword	0xdf4c
	.byte	0xc
	.uleb128 0x16
	.string	"mdc"
	.byte	0x2
	.uahalf	0x183
	.uaword	0xe065
	.byte	0x10
	.uleb128 0x16
	.string	"mdio"
	.byte	0x2
	.uahalf	0x184
	.uaword	0xe06b
	.byte	0x14
	.uleb128 0x16
	.string	"txd0"
	.byte	0x2
	.uahalf	0x185
	.uaword	0xdf5e
	.byte	0x18
	.uleb128 0x16
	.string	"txd1"
	.byte	0x2
	.uahalf	0x186
	.uaword	0xdf5e
	.byte	0x1c
	.uleb128 0x16
	.string	"txEn"
	.byte	0x2
	.uahalf	0x187
	.uaword	0xdf52
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xce1b
	.uleb128 0x4
	.byte	0x4
	.uaword	0xceac
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd016
	.uleb128 0x4
	.byte	0x4
	.uaword	0xd075
	.uleb128 0x12
	.string	"IfxEth_RmiiPins"
	.byte	0x2
	.uahalf	0x188
	.uaword	0xdfce
	.uleb128 0x14
	.byte	0x80
	.byte	0x2
	.uahalf	0x18e
	.uaword	0xe0ab
	.uleb128 0x15
	.string	"items"
	.byte	0x2
	.uahalf	0x190
	.uaword	0xe0ab
	.uleb128 0x15
	.string	"U"
	.byte	0x2
	.uahalf	0x191
	.uaword	0xe0bb
	.byte	0
	.uleb128 0x1b
	.uaword	0xddca
	.uaword	0xe0bb
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.uaword	0x24f
	.uaword	0xe0d1
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x7
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_RxDescrList"
	.byte	0x2
	.uahalf	0x192
	.uaword	0xe089
	.uleb128 0x21
	.uahalf	0x100
	.byte	0x2
	.uahalf	0x194
	.uaword	0xe10f
	.uleb128 0x15
	.string	"items"
	.byte	0x2
	.uahalf	0x196
	.uaword	0xe10f
	.uleb128 0x15
	.string	"U"
	.byte	0x2
	.uahalf	0x197
	.uaword	0xe11f
	.byte	0
	.uleb128 0x1b
	.uaword	0xde27
	.uaword	0xe11f
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0xf
	.byte	0
	.uleb128 0x1b
	.uaword	0x24f
	.uaword	0xe135
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0xf
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.string	"IfxEth_TxDescrList"
	.byte	0x2
	.uahalf	0x198
	.uaword	0xe0ec
	.uleb128 0x20
	.byte	0x50
	.byte	0x2
	.uahalf	0x1a0
	.uaword	0xe242
	.uleb128 0x19
	.uaword	.LASF31
	.byte	0x2
	.uahalf	0x1a2
	.uaword	0xe242
	.byte	0
	.uleb128 0x16
	.string	"phyInit"
	.byte	0x2
	.uahalf	0x1a3
	.uaword	0xe258
	.byte	0x8
	.uleb128 0x16
	.string	"phyLink"
	.byte	0x2
	.uahalf	0x1a4
	.uaword	0xe264
	.byte	0xc
	.uleb128 0x16
	.string	"phyInterfaceMode"
	.byte	0x2
	.uahalf	0x1a5
	.uaword	0xd608
	.byte	0x10
	.uleb128 0x19
	.uaword	.LASF32
	.byte	0x2
	.uahalf	0x1a6
	.uaword	0xe26a
	.byte	0x14
	.uleb128 0x19
	.uaword	.LASF33
	.byte	0x2
	.uahalf	0x1a7
	.uaword	0xe275
	.byte	0x18
	.uleb128 0x16
	.string	"isrPriority"
	.byte	0x2
	.uahalf	0x1a8
	.uaword	0x2d3
	.byte	0x1c
	.uleb128 0x16
	.string	"isrProvider"
	.byte	0x2
	.uahalf	0x1a9
	.uaword	0xd205
	.byte	0x1e
	.uleb128 0x19
	.uaword	.LASF34
	.byte	0x2
	.uahalf	0x1aa
	.uaword	0xcdce
	.byte	0x20
	.uleb128 0x16
	.string	"rxDescr"
	.byte	0x2
	.uahalf	0x1ab
	.uaword	0xe280
	.byte	0x24
	.uleb128 0x16
	.string	"txDescr"
	.byte	0x2
	.uahalf	0x1ac
	.uaword	0xe286
	.byte	0x28
	.uleb128 0x19
	.uaword	.LASF35
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0xd5a5
	.byte	0x2c
	.uleb128 0x16
	.string	"ringModeBuffersConfig"
	.byte	0x2
	.uahalf	0x1ae
	.uaword	0xdfa9
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.uaword	0x1f2
	.uaword	0xe252
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x5
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.uaword	0x24f
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe252
	.uleb128 0x22
	.byte	0x1
	.uaword	0x270
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe25e
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe270
	.uleb128 0x5
	.uaword	0xe071
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe27b
	.uleb128 0x5
	.uaword	0xdf64
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe0d1
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe135
	.uleb128 0x12
	.string	"IfxEth_Config"
	.byte	0x2
	.uahalf	0x1af
	.uaword	0xe150
	.uleb128 0x20
	.byte	0x8c
	.byte	0x2
	.uahalf	0x1b7
	.uaword	0xe3ce
	.uleb128 0x16
	.string	"status"
	.byte	0x2
	.uahalf	0x1b9
	.uaword	0x8357
	.byte	0
	.uleb128 0x16
	.string	"rxCount"
	.byte	0x2
	.uahalf	0x1ba
	.uaword	0x24f
	.byte	0x4
	.uleb128 0x16
	.string	"txCount"
	.byte	0x2
	.uahalf	0x1bb
	.uaword	0x24f
	.byte	0x8
	.uleb128 0x16
	.string	"error"
	.byte	0x2
	.uahalf	0x1bc
	.uaword	0x24f
	.byte	0xc
	.uleb128 0x16
	.string	"isrRxCount"
	.byte	0x2
	.uahalf	0x1bd
	.uaword	0x241
	.byte	0x10
	.uleb128 0x16
	.string	"isrTxCount"
	.byte	0x2
	.uahalf	0x1be
	.uaword	0x241
	.byte	0x14
	.uleb128 0x16
	.string	"txDiff"
	.byte	0x2
	.uahalf	0x1bf
	.uaword	0x241
	.byte	0x18
	.uleb128 0x16
	.string	"rxDiff"
	.byte	0x2
	.uahalf	0x1c0
	.uaword	0x241
	.byte	0x1c
	.uleb128 0x16
	.string	"isrCount"
	.byte	0x2
	.uahalf	0x1c1
	.uaword	0x241
	.byte	0x20
	.uleb128 0x19
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x1c2
	.uaword	0xe28c
	.byte	0x24
	.uleb128 0x16
	.string	"rxDescr"
	.byte	0x2
	.uahalf	0x1c3
	.uaword	0xe280
	.byte	0x74
	.uleb128 0x16
	.string	"txDescr"
	.byte	0x2
	.uahalf	0x1c4
	.uaword	0xe286
	.byte	0x78
	.uleb128 0x16
	.string	"pRxDescr"
	.byte	0x2
	.uahalf	0x1c5
	.uaword	0xe3ce
	.byte	0x7c
	.uleb128 0x16
	.string	"pTxDescr"
	.byte	0x2
	.uahalf	0x1c6
	.uaword	0xe3d4
	.byte	0x80
	.uleb128 0x19
	.uaword	.LASF34
	.byte	0x2
	.uahalf	0x1c7
	.uaword	0xcdce
	.byte	0x84
	.uleb128 0x19
	.uaword	.LASF35
	.byte	0x2
	.uahalf	0x1c8
	.uaword	0xd5a5
	.byte	0x88
	.uleb128 0x19
	.uaword	.LASF30
	.byte	0x2
	.uahalf	0x1c9
	.uaword	0xd6a0
	.byte	0x89
	.uleb128 0x19
	.uaword	.LASF29
	.byte	0x2
	.uahalf	0x1ca
	.uaword	0xd6a0
	.byte	0x8a
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xddca
	.uleb128 0x4
	.byte	0x4
	.uaword	0xde27
	.uleb128 0x12
	.string	"IfxEth"
	.byte	0x2
	.uahalf	0x1cb
	.uaword	0xe2a2
	.uleb128 0x23
	.string	"IfxSrc_clearRequest"
	.byte	0x5
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0xe412
	.uleb128 0x24
	.string	"src"
	.byte	0x5
	.byte	0xe6
	.uaword	0xe412
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe418
	.uleb128 0x17
	.uaword	0xd362
	.uleb128 0x25
	.string	"IfxEth_RxDescr_getNext"
	.byte	0x2
	.uahalf	0x4b5
	.byte	0x1
	.uaword	0xe3ce
	.byte	0x3
	.uaword	0xe44f
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x4b5
	.uaword	0xe3ce
	.byte	0
	.uleb128 0x25
	.string	"IfxCpu_getCoreId"
	.byte	0x3
	.uahalf	0x2ef
	.byte	0x1
	.uaword	0xd457
	.byte	0x3
	.uaword	0xe48b
	.uleb128 0x27
	.string	"reg"
	.byte	0x3
	.uahalf	0x2f1
	.uaword	0xd3fb
	.uleb128 0x28
	.uleb128 0x27
	.string	"__res"
	.byte	0x3
	.uahalf	0x2f2
	.uaword	0x5c2
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_RxDescr_setBuffer"
	.byte	0x2
	.uahalf	0x4c1
	.byte	0x1
	.byte	0x3
	.uaword	0xe4c7
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x4c1
	.uaword	0xe3ce
	.uleb128 0x26
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x4c1
	.uaword	0x2ca
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_TxDescr_getNext"
	.byte	0x2
	.uahalf	0x4c7
	.byte	0x1
	.uaword	0xe3d4
	.byte	0x3
	.uaword	0xe4f9
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x4c7
	.uaword	0xe3d4
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_TxDescr_setBuffer"
	.byte	0x2
	.uahalf	0x4d9
	.byte	0x1
	.byte	0x3
	.uaword	0xe535
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x4d9
	.uaword	0xe3d4
	.uleb128 0x26
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x4d9
	.uaword	0x2ca
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_applySoftwareReset"
	.byte	0x2
	.uahalf	0x4eb
	.byte	0x1
	.byte	0x3
	.uaword	0xe566
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x4eb
	.uaword	0xe566
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe3da
	.uleb128 0x25
	.string	"IfxEth_getActualRxDescriptor"
	.byte	0x2
	.uahalf	0x553
	.byte	0x1
	.uaword	0xe3ce
	.byte	0x3
	.uaword	0xe5a4
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x553
	.uaword	0xe566
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_getActualTxDescriptor"
	.byte	0x2
	.uahalf	0x560
	.byte	0x1
	.uaword	0xe3d4
	.byte	0x3
	.uaword	0xe5dc
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x560
	.uaword	0xe566
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_getBaseRxDescriptor"
	.byte	0x2
	.uahalf	0x566
	.byte	0x1
	.uaword	0xe3ce
	.byte	0x3
	.uaword	0xe612
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x566
	.uaword	0xe566
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_getBaseTxDescriptor"
	.byte	0x2
	.uahalf	0x56c
	.byte	0x1
	.uaword	0xe3d4
	.byte	0x3
	.uaword	0xe648
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x56c
	.uaword	0xe566
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_isSoftwareResetDone"
	.byte	0x2
	.uahalf	0x5e9
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0xe67e
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x5e9
	.uaword	0xe566
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setPhyInterfaceMode"
	.byte	0x2
	.uahalf	0x622
	.byte	0x1
	.byte	0x3
	.uaword	0xe6bc
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x622
	.uaword	0xe566
	.uleb128 0x26
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x622
	.uaword	0xd608
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setReceiveBuffer1RingMode"
	.byte	0x2
	.uahalf	0x629
	.byte	0x1
	.byte	0x3
	.uaword	0xe719
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x629
	.uaword	0xe566
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x629
	.uaword	0xe3ce
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x629
	.uaword	0x24f
	.uleb128 0x2a
	.string	"size"
	.byte	0x2
	.uahalf	0x629
	.uaword	0x21d
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setReceiveBuffer2RingMode"
	.byte	0x2
	.uahalf	0x630
	.byte	0x1
	.byte	0x3
	.uaword	0xe776
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x630
	.uaword	0xe566
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x630
	.uaword	0xe3ce
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x630
	.uaword	0x24f
	.uleb128 0x2a
	.string	"size"
	.byte	0x2
	.uahalf	0x630
	.uaword	0x21d
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setTransmitBuffer1RingMode"
	.byte	0x2
	.uahalf	0x652
	.byte	0x1
	.byte	0x3
	.uaword	0xe7d4
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x652
	.uaword	0xe566
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x652
	.uaword	0xe3d4
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x652
	.uaword	0x24f
	.uleb128 0x2a
	.string	"size"
	.byte	0x2
	.uahalf	0x652
	.uaword	0x21d
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setTransmitBuffer2RingMode"
	.byte	0x2
	.uahalf	0x659
	.byte	0x1
	.byte	0x3
	.uaword	0xe832
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x659
	.uaword	0xe566
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x659
	.uaword	0xe3d4
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x659
	.uaword	0x24f
	.uleb128 0x2a
	.string	"size"
	.byte	0x2
	.uahalf	0x659
	.uaword	0x21d
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setReceiveDescriptorAddress"
	.byte	0x2
	.uahalf	0x637
	.byte	0x1
	.byte	0x3
	.uaword	0xe878
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x637
	.uaword	0xcdce
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x637
	.uaword	0x2ca
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_setTransmitDescriptorAddress"
	.byte	0x2
	.uahalf	0x660
	.byte	0x1
	.byte	0x3
	.uaword	0xe8bf
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x660
	.uaword	0xcdce
	.uleb128 0x26
	.uaword	.LASF40
	.byte	0x2
	.uahalf	0x660
	.uaword	0x2ca
	.byte	0
	.uleb128 0x29
	.string	"IfxPort_setPinModeInput"
	.byte	0x4
	.uahalf	0x230
	.byte	0x1
	.byte	0x3
	.uaword	0xe907
	.uleb128 0x2a
	.string	"port"
	.byte	0x4
	.uahalf	0x230
	.uaword	0xc703
	.uleb128 0x26
	.uaword	.LASF27
	.byte	0x4
	.uahalf	0x230
	.uaword	0x1f2
	.uleb128 0x26
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x230
	.uaword	0xc78e
	.byte	0
	.uleb128 0x29
	.string	"IfxPort_setPinModeOutput"
	.byte	0x4
	.uahalf	0x236
	.byte	0x1
	.byte	0x3
	.uaword	0xe95e
	.uleb128 0x2a
	.string	"port"
	.byte	0x4
	.uahalf	0x236
	.uaword	0xc703
	.uleb128 0x26
	.uaword	.LASF27
	.byte	0x4
	.uahalf	0x236
	.uaword	0x1f2
	.uleb128 0x26
	.uaword	.LASF39
	.byte	0x4
	.uahalf	0x236
	.uaword	0xcb98
	.uleb128 0x2a
	.string	"index"
	.byte	0x4
	.uahalf	0x236
	.uaword	0xcb37
	.byte	0
	.uleb128 0x29
	.string	"IfxEth_RxDescr_release"
	.byte	0x2
	.uahalf	0x4bb
	.byte	0x1
	.byte	0x3
	.uaword	0xe98c
	.uleb128 0x26
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x4bb
	.uaword	0xe3ce
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_setMacAddress"
	.byte	0x1
	.uahalf	0x23d
	.byte	0x1
	.byte	0x1
	.uaword	0xe9c5
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x23d
	.uaword	0xe566
	.uleb128 0x26
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x23d
	.uaword	0xe9c5
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe9cb
	.uleb128 0x5
	.uaword	0x1f2
	.uleb128 0x23
	.string	"IfxSrc_init"
	.byte	0x5
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0xea15
	.uleb128 0x24
	.string	"src"
	.byte	0x5
	.byte	0xfe
	.uaword	0xe412
	.uleb128 0x24
	.string	"typOfService"
	.byte	0x5
	.byte	0xfe
	.uaword	0xd205
	.uleb128 0x24
	.string	"priority"
	.byte	0x5
	.byte	0xfe
	.uaword	0x2d3
	.byte	0
	.uleb128 0x23
	.string	"IfxSrc_enable"
	.byte	0x5
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0xea38
	.uleb128 0x24
	.string	"src"
	.byte	0x5
	.byte	0xf8
	.uaword	0xe412
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_stopTransmitter"
	.byte	0x1
	.uahalf	0x33b
	.byte	0x1
	.byte	0x1
	.uaword	0xea67
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x33b
	.uaword	0xe566
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_startReceiver"
	.byte	0x1
	.uahalf	0x31c
	.byte	0x1
	.byte	0x1
	.uaword	0xea94
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x31c
	.uaword	0xe566
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_wakeupReceiver"
	.byte	0x1
	.uahalf	0x345
	.byte	0x1
	.byte	0x1
	.uaword	0xeac2
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x345
	.uaword	0xe566
	.byte	0
	.uleb128 0x25
	.string	"IfxEth_isRxDataAvailable"
	.byte	0x2
	.uahalf	0x5da
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0xeaf6
	.uleb128 0x2a
	.string	"eth"
	.byte	0x2
	.uahalf	0x5da
	.uaword	0xe566
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_startTransmitter"
	.byte	0x1
	.uahalf	0x327
	.byte	0x1
	.byte	0x1
	.uaword	0xeb26
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x327
	.uaword	0xe566
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxEth_wakeupTransmitter"
	.byte	0x1
	.uahalf	0x356
	.byte	0x1
	.byte	0x1
	.uaword	0xeb57
	.uleb128 0x2a
	.string	"eth"
	.byte	0x1
	.uahalf	0x356
	.uaword	0xe566
	.byte	0
	.uleb128 0x2c
	.uaword	0xea94
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xeb8b
	.uleb128 0x2d
	.uaword	0xeab5
	.byte	0x1
	.byte	0x64
	.uleb128 0x2e
	.uaword	0xea67
	.uaword	.LBB242
	.uaword	.LBE242
	.byte	0x1
	.uahalf	0x351
	.uleb128 0x2d
	.uaword	0xea87
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xeb26
	.uaword	.LFB353
	.uaword	.LFE353
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xebbf
	.uleb128 0x2d
	.uaword	0xeb4a
	.byte	0x1
	.byte	0x64
	.uleb128 0x2e
	.uaword	0xeaf6
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.uahalf	0x364
	.uleb128 0x2d
	.uaword	0xeb19
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxEth_disableModule"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.uaword	.LFB306
	.uaword	.LFE306
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xec26
	.uleb128 0x30
	.uaword	.LASF41
	.byte	0x1
	.byte	0x31
	.uaword	0x21d
	.uaword	.LLST0
	.uleb128 0x31
	.uaword	.LVL4
	.uaword	0x10a13
	.uleb128 0x32
	.uaword	.LVL6
	.uaword	0x10a3f
	.uaword	0xec14
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x10a69
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxEth_enableModule"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB307
	.uaword	.LFE307
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xec96
	.uleb128 0x35
	.uaword	.LBB246
	.uaword	.LBE246
	.uleb128 0x30
	.uaword	.LASF41
	.byte	0x1
	.byte	0x3b
	.uaword	0x21d
	.uaword	.LLST1
	.uleb128 0x31
	.uaword	.LVL8
	.uaword	0x10a13
	.uleb128 0x32
	.uaword	.LVL10
	.uaword	0x10a3f
	.uaword	0xec83
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL11
	.byte	0x1
	.uaword	0x10a69
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IfxEth_getReceiveBuffer"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	0x2ca
	.uaword	.LFB309
	.uaword	.LFE309
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xed1d
	.uleb128 0x37
	.string	"eth"
	.byte	0x1
	.byte	0x4b
	.uaword	0xe566
	.uaword	.LLST2
	.uleb128 0x38
	.string	"result"
	.byte	0x1
	.byte	0x4d
	.uaword	0x2ca
	.uaword	.LLST3
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.byte	0x4e
	.uaword	0xe3ce
	.uleb128 0x3a
	.uaword	0xea94
	.uaword	.LBB247
	.uaword	.LBE247
	.byte	0x1
	.byte	0x57
	.uleb128 0x3b
	.uaword	0xeab5
	.uaword	.LLST4
	.uleb128 0x3c
	.uaword	.LVL16
	.uaword	0xeb57
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IfxEth_getTransmitBuffer"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	0x2ca
	.uaword	.LFB310
	.uaword	.LFE310
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xed76
	.uleb128 0x3d
	.string	"eth"
	.byte	0x1
	.byte	0x5d
	.uaword	0xe566
	.byte	0x1
	.byte	0x64
	.uleb128 0x30
	.uaword	.LASF38
	.byte	0x1
	.byte	0x5f
	.uaword	0x2ca
	.uaword	.LLST5
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.byte	0x60
	.uaword	0xe3d4
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxEth_initConfig"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.uaword	.LFB312
	.uaword	.LFE312
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xedd2
	.uleb128 0x3e
	.uaword	.LASF36
	.byte	0x1
	.byte	0xf6
	.uaword	0xedd2
	.byte	0x1
	.byte	0x64
	.uleb128 0x3e
	.uaword	.LASF34
	.byte	0x1
	.byte	0xf6
	.uaword	0xcdce
	.byte	0x1
	.byte	0x65
	.uleb128 0x3f
	.string	"defaultConfig"
	.byte	0x1
	.byte	0xf8
	.uaword	0xedd8
	.byte	0x5
	.byte	0x3
	.uaword	defaultConfig.11120
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xe28c
	.uleb128 0x5
	.uaword	0xe28c
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_initReceiveDescriptors"
	.byte	0x1
	.uahalf	0x11c
	.byte	0x1
	.uaword	.LFB313
	.uaword	.LFE313
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xeef4
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0xe566
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x1dc
	.uaword	.LLST6
	.uleb128 0x43
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x120
	.uaword	0xe3ce
	.uaword	.LLST7
	.uleb128 0x44
	.uaword	0xe5dc
	.uaword	.LBB249
	.uaword	.LBE249
	.byte	0x1
	.uahalf	0x120
	.uaword	0xee58
	.uleb128 0x2d
	.uaword	0xe605
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x45
	.uaword	0xe48b
	.uaword	.LBB251
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x12f
	.uaword	0xeeb2
	.uleb128 0x3b
	.uaword	0xe4ae
	.uaword	.LLST8
	.uleb128 0x3b
	.uaword	0xe4ba
	.uaword	.LLST9
	.uleb128 0x2e
	.uaword	0xe44f
	.uaword	.LBB253
	.uaword	.LBE253
	.byte	0x2
	.uahalf	0x4c3
	.uleb128 0x35
	.uaword	.LBB254
	.uaword	.LBE254
	.uleb128 0x46
	.uaword	0xe46e
	.uleb128 0x35
	.uaword	.LBB255
	.uaword	.LBE255
	.uleb128 0x47
	.uaword	0xe47b
	.uaword	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe832
	.uaword	.LBB262
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x146
	.uaword	0xeed9
	.uleb128 0x3b
	.uaword	0xe86b
	.uaword	.LLST11
	.uleb128 0x3b
	.uaword	0xe85f
	.uaword	.LLST12
	.byte	0
	.uleb128 0x2e
	.uaword	0xe5dc
	.uaword	.LBB265
	.uaword	.LBE265
	.byte	0x1
	.uahalf	0x13f
	.uleb128 0x3b
	.uaword	0xe605
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_initReceiveDescriptorsRingMode"
	.byte	0x1
	.uahalf	0x14a
	.byte	0x1
	.uaword	.LFB314
	.uaword	.LFE314
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf182
	.uleb128 0x48
	.string	"eth"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0xe566
	.uaword	.LLST14
	.uleb128 0x49
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x14a
	.uaword	0xf182
	.uaword	.LLST15
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x1dc
	.uaword	.LLST16
	.uleb128 0x43
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x24f
	.uaword	.LLST17
	.uleb128 0x43
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x24f
	.uaword	.LLST18
	.uleb128 0x43
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x151
	.uaword	0xe3ce
	.uaword	.LLST19
	.uleb128 0x4a
	.uaword	.LASF44
	.uaword	0xf19d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.11137
	.uleb128 0x44
	.uaword	0xe5dc
	.uaword	.LBB270
	.uaword	.LBE270
	.byte	0x1
	.uahalf	0x151
	.uaword	0xefbb
	.uleb128 0x3b
	.uaword	0xe605
	.uaword	.LLST20
	.byte	0
	.uleb128 0x45
	.uaword	0xe6bc
	.uaword	.LBB272
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x162
	.uaword	0xf023
	.uleb128 0x3b
	.uaword	0xe6e7
	.uaword	.LLST21
	.uleb128 0x3b
	.uaword	0xe70b
	.uaword	.LLST22
	.uleb128 0x3b
	.uaword	0xe6ff
	.uaword	.LLST23
	.uleb128 0x3b
	.uaword	0xe6f3
	.uaword	.LLST24
	.uleb128 0x4b
	.uaword	0xe44f
	.uaword	.LBB274
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x2
	.uahalf	0x62b
	.uleb128 0x4c
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x46
	.uaword	0xe46e
	.uleb128 0x35
	.uaword	.LBB276
	.uaword	.LBE276
	.uleb128 0x47
	.uaword	0xe47b
	.uaword	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe719
	.uaword	.LBB282
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x171
	.uaword	0xf05c
	.uleb128 0x3b
	.uaword	0xe744
	.uaword	.LLST26
	.uleb128 0x3b
	.uaword	0xe768
	.uaword	.LLST27
	.uleb128 0x3b
	.uaword	0xe75c
	.uaword	.LLST27
	.uleb128 0x3b
	.uaword	0xe750
	.uaword	.LLST29
	.byte	0
	.uleb128 0x44
	.uaword	0xe6bc
	.uaword	.LBB286
	.uaword	.LBE286
	.byte	0x1
	.uahalf	0x166
	.uaword	0xf095
	.uleb128 0x3b
	.uaword	0xe6e7
	.uaword	.LLST30
	.uleb128 0x3b
	.uaword	0xe70b
	.uaword	.LLST31
	.uleb128 0x3b
	.uaword	0xe6ff
	.uaword	.LLST31
	.uleb128 0x3b
	.uaword	0xe6f3
	.uaword	.LLST33
	.byte	0
	.uleb128 0x45
	.uaword	0xe719
	.uaword	.LBB288
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.uahalf	0x16d
	.uaword	0xf0fd
	.uleb128 0x3b
	.uaword	0xe744
	.uaword	.LLST34
	.uleb128 0x3b
	.uaword	0xe768
	.uaword	.LLST35
	.uleb128 0x3b
	.uaword	0xe75c
	.uaword	.LLST36
	.uleb128 0x3b
	.uaword	0xe750
	.uaword	.LLST37
	.uleb128 0x4b
	.uaword	0xe44f
	.uaword	.LBB290
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x2
	.uahalf	0x632
	.uleb128 0x4c
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x46
	.uaword	0xe46e
	.uleb128 0x35
	.uaword	.LBB292
	.uaword	.LBE292
	.uleb128 0x47
	.uaword	0xe47b
	.uaword	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe832
	.uaword	.LBB300
	.uaword	.Ldebug_ranges0+0xd8
	.byte	0x1
	.uahalf	0x184
	.uaword	0xf124
	.uleb128 0x3b
	.uaword	0xe86b
	.uaword	.LLST39
	.uleb128 0x3b
	.uaword	0xe85f
	.uaword	.LLST40
	.byte	0
	.uleb128 0x32
	.uaword	.LVL43
	.uaword	0x10a91
	.uaword	0xf153
	.uleb128 0x33
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.11137
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x160
	.uleb128 0x33
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL53
	.uaword	0x10a91
	.uleb128 0x33
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.11137
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x16b
	.uleb128 0x33
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xf188
	.uleb128 0x5
	.uaword	0xdcb3
	.uleb128 0x1b
	.uaword	0x2c2
	.uaword	0xf19d
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.uaword	0xf18d
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_initTransmitDescriptors"
	.byte	0x1
	.uahalf	0x18a
	.byte	0x1
	.uaword	.LFB315
	.uaword	.LFE315
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf2ba
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0xe566
	.byte	0x1
	.byte	0x64
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x1dc
	.uaword	.LLST41
	.uleb128 0x43
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x18d
	.uaword	0xe3d4
	.uaword	.LLST42
	.uleb128 0x44
	.uaword	0xe612
	.uaword	.LBB306
	.uaword	.LBE306
	.byte	0x1
	.uahalf	0x18d
	.uaword	0xf21e
	.uleb128 0x2d
	.uaword	0xe63b
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x45
	.uaword	0xe4f9
	.uaword	.LBB308
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.uahalf	0x19b
	.uaword	0xf278
	.uleb128 0x3b
	.uaword	0xe51c
	.uaword	.LLST43
	.uleb128 0x3b
	.uaword	0xe528
	.uaword	.LLST44
	.uleb128 0x2e
	.uaword	0xe44f
	.uaword	.LBB310
	.uaword	.LBE310
	.byte	0x2
	.uahalf	0x4db
	.uleb128 0x35
	.uaword	.LBB311
	.uaword	.LBE311
	.uleb128 0x46
	.uaword	0xe46e
	.uleb128 0x35
	.uaword	.LBB312
	.uaword	.LBE312
	.uleb128 0x47
	.uaword	0xe47b
	.uaword	.LLST45
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe878
	.uaword	.LBB319
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0xf29f
	.uleb128 0x3b
	.uaword	0xe8b2
	.uaword	.LLST46
	.uleb128 0x3b
	.uaword	0xe8a6
	.uaword	.LLST47
	.byte	0
	.uleb128 0x2e
	.uaword	0xe612
	.uaword	.LBB322
	.uaword	.LBE322
	.byte	0x1
	.uahalf	0x1ab
	.uleb128 0x3b
	.uaword	0xe63b
	.uaword	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_initTransmitDescriptorsRingMode"
	.byte	0x1
	.uahalf	0x1b6
	.byte	0x1
	.uaword	.LFB316
	.uaword	.LFE316
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf552
	.uleb128 0x48
	.string	"eth"
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0xe566
	.uaword	.LLST49
	.uleb128 0x49
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0xf552
	.uaword	.LLST50
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x1dc
	.uaword	.LLST51
	.uleb128 0x43
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x24f
	.uaword	.LLST52
	.uleb128 0x43
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x24f
	.uaword	.LLST53
	.uleb128 0x43
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x1bc
	.uaword	0xe3d4
	.uaword	.LLST54
	.uleb128 0x4a
	.uaword	.LASF44
	.uaword	0xf56d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.11157
	.uleb128 0x44
	.uaword	0xe612
	.uaword	.LBB327
	.uaword	.LBE327
	.byte	0x1
	.uahalf	0x1bc
	.uaword	0xf382
	.uleb128 0x3b
	.uaword	0xe63b
	.uaword	.LLST55
	.byte	0
	.uleb128 0x45
	.uaword	0xe776
	.uaword	.LBB329
	.uaword	.Ldebug_ranges0+0x138
	.byte	0x1
	.uahalf	0x1cd
	.uaword	0xf3ea
	.uleb128 0x3b
	.uaword	0xe7a2
	.uaword	.LLST56
	.uleb128 0x3b
	.uaword	0xe7c6
	.uaword	.LLST57
	.uleb128 0x3b
	.uaword	0xe7ba
	.uaword	.LLST58
	.uleb128 0x3b
	.uaword	0xe7ae
	.uaword	.LLST59
	.uleb128 0x4b
	.uaword	0xe44f
	.uaword	.LBB331
	.uaword	.Ldebug_ranges0+0x158
	.byte	0x2
	.uahalf	0x654
	.uleb128 0x4c
	.uaword	.Ldebug_ranges0+0x158
	.uleb128 0x46
	.uaword	0xe46e
	.uleb128 0x35
	.uaword	.LBB333
	.uaword	.LBE333
	.uleb128 0x47
	.uaword	0xe47b
	.uaword	.LLST60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe7d4
	.uaword	.LBB339
	.uaword	.Ldebug_ranges0+0x170
	.byte	0x1
	.uahalf	0x1dd
	.uaword	0xf423
	.uleb128 0x3b
	.uaword	0xe800
	.uaword	.LLST61
	.uleb128 0x3b
	.uaword	0xe824
	.uaword	.LLST62
	.uleb128 0x3b
	.uaword	0xe818
	.uaword	.LLST62
	.uleb128 0x3b
	.uaword	0xe80c
	.uaword	.LLST64
	.byte	0
	.uleb128 0x45
	.uaword	0xe776
	.uaword	.LBB343
	.uaword	.Ldebug_ranges0+0x188
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0xf45c
	.uleb128 0x3b
	.uaword	0xe7a2
	.uaword	.LLST65
	.uleb128 0x3b
	.uaword	0xe7c6
	.uaword	.LLST66
	.uleb128 0x3b
	.uaword	0xe7ba
	.uaword	.LLST66
	.uleb128 0x3b
	.uaword	0xe7ae
	.uaword	.LLST68
	.byte	0
	.uleb128 0x45
	.uaword	0xe7d4
	.uaword	.LBB347
	.uaword	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0xf4c4
	.uleb128 0x3b
	.uaword	0xe800
	.uaword	.LLST69
	.uleb128 0x3b
	.uaword	0xe824
	.uaword	.LLST70
	.uleb128 0x3b
	.uaword	0xe818
	.uaword	.LLST71
	.uleb128 0x3b
	.uaword	0xe80c
	.uaword	.LLST72
	.uleb128 0x4b
	.uaword	0xe44f
	.uaword	.LBB349
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x2
	.uahalf	0x65b
	.uleb128 0x4c
	.uaword	.Ldebug_ranges0+0x1c8
	.uleb128 0x46
	.uaword	0xe46e
	.uleb128 0x35
	.uaword	.LBB351
	.uaword	.LBE351
	.uleb128 0x47
	.uaword	0xe47b
	.uaword	.LLST73
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe878
	.uaword	.LBB359
	.uaword	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0xf4eb
	.uleb128 0x3b
	.uaword	0xe8b2
	.uaword	.LLST74
	.uleb128 0x3b
	.uaword	0xe8a6
	.uaword	.LLST75
	.byte	0
	.uleb128 0x32
	.uaword	.LVL95
	.uaword	0x10a91
	.uaword	0xf520
	.uleb128 0x33
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.11157
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ca
	.uleb128 0x33
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL106
	.uaword	0x10a91
	.uleb128 0x33
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.11157
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x1d6
	.uleb128 0x33
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xf558
	.uleb128 0x5
	.uaword	0xdd5d
	.uleb128 0x1b
	.uaword	0x2c2
	.uaword	0xf56d
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x26
	.byte	0
	.uleb128 0x5
	.uaword	0xf55d
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_readMacAddress"
	.byte	0x1
	.uahalf	0x1f6
	.byte	0x1
	.uaword	.LFB317
	.uaword	.LFE317
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf5ba
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x1f6
	.uaword	0xe566
	.byte	0x1
	.byte	0x64
	.uleb128 0x4d
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x1f6
	.uaword	0xf5ba
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1f2
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_resetModule"
	.byte	0x1
	.uahalf	0x1fe
	.byte	0x1
	.uaword	.LFB318
	.uaword	.LFE318
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf652
	.uleb128 0x42
	.string	"passwd"
	.byte	0x1
	.uahalf	0x200
	.uaword	0x21d
	.uaword	.LLST76
	.uleb128 0x31
	.uaword	.LVL127
	.uaword	0x10a13
	.uleb128 0x32
	.uaword	.LVL129
	.uaword	0x10a3f
	.uaword	0xf618
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL130
	.uaword	0x10a69
	.uaword	0xf62c
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL131
	.uaword	0x10a3f
	.uaword	0xf640
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL132
	.byte	0x1
	.uaword	0x10a69
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xe98c
	.uaword	.LFB322
	.uaword	.LFE322
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf675
	.uleb128 0x2d
	.uaword	0xe9ac
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.uaword	0xe9b8
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_setupChecksumEngine"
	.byte	0x1
	.uahalf	0x24e
	.byte	0x1
	.uaword	.LFB323
	.uaword	.LFE323
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xf706
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x24e
	.uaword	0xe566
	.byte	0x1
	.byte	0x64
	.uleb128 0x49
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x24e
	.uaword	0xd546
	.uaword	.LLST77
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x250
	.uaword	0x1dc
	.uaword	.LLST78
	.uleb128 0x35
	.uaword	.LBB365
	.uaword	.LBE365
	.uleb128 0x43
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x258
	.uaword	0xe3d4
	.uaword	.LLST79
	.uleb128 0x2e
	.uaword	0xe612
	.uaword	.LBB366
	.uaword	.LBE366
	.byte	0x1
	.uahalf	0x258
	.uleb128 0x3b
	.uaword	0xe63b
	.uaword	.LLST80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_setupMiiInputPins"
	.byte	0x1
	.uahalf	0x263
	.byte	0x1
	.uaword	.LFB324
	.uaword	.LFE324
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfb18
	.uleb128 0x48
	.string	"eth"
	.byte	0x1
	.uahalf	0x263
	.uaword	0xe566
	.uaword	.LLST81
	.uleb128 0x49
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x263
	.uaword	0xe275
	.uaword	.LLST82
	.uleb128 0x4e
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x267
	.uaword	0xc78e
	.byte	0
	.uleb128 0x4e
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x268
	.uaword	0xcd53
	.byte	0
	.uleb128 0x4f
	.string	"crs"
	.byte	0x1
	.uahalf	0x26a
	.uaword	0xdf28
	.byte	0x1
	.byte	0x5d
	.uleb128 0x4f
	.string	"col"
	.byte	0x1
	.uahalf	0x26b
	.uaword	0xdf2e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x4f
	.string	"txClk"
	.byte	0x1
	.uahalf	0x26c
	.uaword	0xdf34
	.byte	0x1
	.byte	0x5b
	.uleb128 0x4f
	.string	"rxClk"
	.byte	0x1
	.uahalf	0x26d
	.uaword	0xdf3a
	.byte	0x1
	.byte	0x5a
	.uleb128 0x4f
	.string	"rxDv"
	.byte	0x1
	.uahalf	0x26e
	.uaword	0xdf40
	.byte	0x1
	.byte	0x59
	.uleb128 0x4f
	.string	"rxEr"
	.byte	0x1
	.uahalf	0x26f
	.uaword	0xdf46
	.byte	0x1
	.byte	0x58
	.uleb128 0x4f
	.string	"rxd0"
	.byte	0x1
	.uahalf	0x270
	.uaword	0xdf4c
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4f
	.string	"rxd1"
	.byte	0x1
	.uahalf	0x271
	.uaword	0xdf4c
	.byte	0x1
	.byte	0x6e
	.uleb128 0x4f
	.string	"rxd2"
	.byte	0x1
	.uahalf	0x272
	.uaword	0xdf4c
	.byte	0x1
	.byte	0x6d
	.uleb128 0x4f
	.string	"rxd3"
	.byte	0x1
	.uahalf	0x273
	.uaword	0xdf4c
	.byte	0x1
	.byte	0x6c
	.uleb128 0x45
	.uaword	0xe8bf
	.uaword	.LBB368
	.uaword	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.uahalf	0x281
	.uaword	0xf840
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST83
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST84
	.uleb128 0x3c
	.uaword	.LVL150
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe8bf
	.uaword	.LBB373
	.uaword	.Ldebug_ranges0+0x218
	.byte	0x1
	.uahalf	0x283
	.uaword	0xf87c
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST85
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST86
	.uleb128 0x3c
	.uaword	.LVL152
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe8bf
	.uaword	.LBB377
	.uaword	.LBE377
	.byte	0x1
	.uahalf	0x282
	.uaword	0xf8b8
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST87
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST88
	.uleb128 0x3c
	.uaword	.LVL151
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe8bf
	.uaword	.LBB380
	.uaword	.Ldebug_ranges0+0x230
	.byte	0x1
	.uahalf	0x284
	.uaword	0xf8f4
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST89
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST90
	.uleb128 0x3c
	.uaword	.LVL153
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe8bf
	.uaword	.LBB383
	.uaword	.Ldebug_ranges0+0x248
	.byte	0x1
	.uahalf	0x285
	.uaword	0xf930
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST91
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST92
	.uleb128 0x3c
	.uaword	.LVL154
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe8bf
	.uaword	.LBB388
	.uaword	.Ldebug_ranges0+0x260
	.byte	0x1
	.uahalf	0x286
	.uaword	0xf96c
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST93
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST94
	.uleb128 0x3c
	.uaword	.LVL155
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0xe8bf
	.uaword	.LBB391
	.uaword	.Ldebug_ranges0+0x278
	.byte	0x1
	.uahalf	0x287
	.uaword	0xf9a8
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST95
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST96
	.uleb128 0x3c
	.uaword	.LVL156
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe8bf
	.uaword	.LBB396
	.uaword	.LBE396
	.byte	0x1
	.uahalf	0x288
	.uaword	0xf9e4
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST97
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST98
	.uleb128 0x3c
	.uaword	.LVL157
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe8bf
	.uaword	.LBB398
	.uaword	.LBE398
	.byte	0x1
	.uahalf	0x289
	.uaword	0xfa20
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST99
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST100
	.uleb128 0x3c
	.uaword	.LVL158
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe8bf
	.uaword	.LBB400
	.uaword	.LBE400
	.byte	0x1
	.uahalf	0x28a
	.uaword	0xfa5c
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST101
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST102
	.uleb128 0x3c
	.uaword	.LVL159
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL160
	.uaword	0x10af6
	.uaword	0xfa6f
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL161
	.uaword	0x10af6
	.uaword	0xfa82
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL162
	.uaword	0x10af6
	.uaword	0xfa95
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL163
	.uaword	0x10af6
	.uaword	0xfaa8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL164
	.uaword	0x10af6
	.uaword	0xfabb
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL165
	.uaword	0x10af6
	.uaword	0xface
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL166
	.uaword	0x10af6
	.uaword	0xfae1
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL167
	.uaword	0x10af6
	.uaword	0xfaf4
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL168
	.uaword	0x10af6
	.uaword	0xfb07
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.uaword	.LVL169
	.byte	0x1
	.uaword	0x10af6
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_setupMiiOutputPins"
	.byte	0x1
	.uahalf	0x29a
	.byte	0x1
	.uaword	.LFB325
	.uaword	.LFE325
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfdcc
	.uleb128 0x48
	.string	"eth"
	.byte	0x1
	.uahalf	0x29a
	.uaword	0xe566
	.uaword	.LLST103
	.uleb128 0x49
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x29a
	.uaword	0xe275
	.uaword	.LLST104
	.uleb128 0x51
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x29c
	.uaword	0xcb98
	.sleb128 -128
	.uleb128 0x4e
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x29d
	.uaword	0xcd53
	.byte	0
	.uleb128 0x4f
	.string	"txEn"
	.byte	0x1
	.uahalf	0x29f
	.uaword	0xdf52
	.byte	0x1
	.byte	0x58
	.uleb128 0x4f
	.string	"txEr"
	.byte	0x1
	.uahalf	0x2a0
	.uaword	0xdf58
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4f
	.string	"txd0"
	.byte	0x1
	.uahalf	0x2a1
	.uaword	0xdf5e
	.byte	0x1
	.byte	0x6e
	.uleb128 0x4f
	.string	"txd1"
	.byte	0x1
	.uahalf	0x2a2
	.uaword	0xdf5e
	.byte	0x1
	.byte	0x6d
	.uleb128 0x4f
	.string	"txd2"
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0xdf5e
	.byte	0x1
	.byte	0x6c
	.uleb128 0x4f
	.string	"txd3"
	.byte	0x1
	.uahalf	0x2a4
	.uaword	0xdf5e
	.byte	0x1
	.byte	0x6f
	.uleb128 0x44
	.uaword	0xe907
	.uaword	.LBB402
	.uaword	.LBE402
	.byte	0x1
	.uahalf	0x2af
	.uaword	0xfc1c
	.uleb128 0x3b
	.uaword	0xe94f
	.uaword	.LLST105
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe937
	.uaword	.LLST106
	.uleb128 0x3b
	.uaword	0xe92a
	.uaword	.LLST107
	.uleb128 0x31
	.uaword	.LVL183
	.uaword	0x10ac8
	.byte	0
	.uleb128 0x44
	.uaword	0xe907
	.uaword	.LBB404
	.uaword	.LBE404
	.byte	0x1
	.uahalf	0x2b0
	.uaword	0xfc5c
	.uleb128 0x3b
	.uaword	0xe94f
	.uaword	.LLST108
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe937
	.uaword	.LLST109
	.uleb128 0x3b
	.uaword	0xe92a
	.uaword	.LLST110
	.uleb128 0x31
	.uaword	.LVL184
	.uaword	0x10ac8
	.byte	0
	.uleb128 0x44
	.uaword	0xe907
	.uaword	.LBB406
	.uaword	.LBE406
	.byte	0x1
	.uahalf	0x2b1
	.uaword	0xfc9c
	.uleb128 0x3b
	.uaword	0xe94f
	.uaword	.LLST111
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe937
	.uaword	.LLST112
	.uleb128 0x3b
	.uaword	0xe92a
	.uaword	.LLST113
	.uleb128 0x31
	.uaword	.LVL185
	.uaword	0x10ac8
	.byte	0
	.uleb128 0x44
	.uaword	0xe907
	.uaword	.LBB408
	.uaword	.LBE408
	.byte	0x1
	.uahalf	0x2b2
	.uaword	0xfcdc
	.uleb128 0x3b
	.uaword	0xe94f
	.uaword	.LLST114
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe937
	.uaword	.LLST115
	.uleb128 0x3b
	.uaword	0xe92a
	.uaword	.LLST116
	.uleb128 0x31
	.uaword	.LVL186
	.uaword	0x10ac8
	.byte	0
	.uleb128 0x44
	.uaword	0xe907
	.uaword	.LBB410
	.uaword	.LBE410
	.byte	0x1
	.uahalf	0x2b3
	.uaword	0xfd1c
	.uleb128 0x3b
	.uaword	0xe94f
	.uaword	.LLST117
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe937
	.uaword	.LLST118
	.uleb128 0x3b
	.uaword	0xe92a
	.uaword	.LLST119
	.uleb128 0x31
	.uaword	.LVL187
	.uaword	0x10ac8
	.byte	0
	.uleb128 0x44
	.uaword	0xe907
	.uaword	.LBB412
	.uaword	.LBE412
	.byte	0x1
	.uahalf	0x2b4
	.uaword	0xfd5d
	.uleb128 0x3b
	.uaword	0xe94f
	.uaword	.LLST120
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe937
	.uaword	.LLST121
	.uleb128 0x3b
	.uaword	0xe92a
	.uaword	.LLST122
	.uleb128 0x53
	.uaword	.LVL188
	.byte	0x1
	.uaword	0x10ac8
	.byte	0
	.uleb128 0x32
	.uaword	.LVL177
	.uaword	0x10af6
	.uaword	0xfd70
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL178
	.uaword	0x10af6
	.uaword	0xfd83
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL179
	.uaword	0x10af6
	.uaword	0xfd96
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL180
	.uaword	0x10af6
	.uaword	0xfda9
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL181
	.uaword	0x10af6
	.uaword	0xfdbc
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL182
	.uaword	0x10af6
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_setupRmiiInputPins"
	.byte	0x1
	.uahalf	0x2b8
	.byte	0x1
	.uaword	.LFB326
	.uaword	.LFE326
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xffb5
	.uleb128 0x48
	.string	"eth"
	.byte	0x1
	.uahalf	0x2b8
	.uaword	0xe566
	.uaword	.LLST123
	.uleb128 0x49
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x2b8
	.uaword	0xe26a
	.uaword	.LLST124
	.uleb128 0x4c
	.uaword	.Ldebug_ranges0+0x290
	.uleb128 0x4e
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x2c3
	.uaword	0xc78e
	.byte	0
	.uleb128 0x4e
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x2c4
	.uaword	0xcd53
	.byte	0
	.uleb128 0x4f
	.string	"crsDiv"
	.byte	0x1
	.uahalf	0x2c6
	.uaword	0xe059
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4f
	.string	"refClk"
	.byte	0x1
	.uahalf	0x2c7
	.uaword	0xe05f
	.byte	0x1
	.byte	0x6e
	.uleb128 0x4f
	.string	"rxd0"
	.byte	0x1
	.uahalf	0x2c8
	.uaword	0xdf4c
	.byte	0x1
	.byte	0x6d
	.uleb128 0x4f
	.string	"rxd1"
	.byte	0x1
	.uahalf	0x2c9
	.uaword	0xdf4c
	.byte	0x1
	.byte	0x6c
	.uleb128 0x45
	.uaword	0xe8bf
	.uaword	.LBB415
	.uaword	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0xfeb6
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST125
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST126
	.uleb128 0x3c
	.uaword	.LVL192
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe8bf
	.uaword	.LBB421
	.uaword	.LBE421
	.byte	0x1
	.uahalf	0x2cc
	.uaword	0xfef2
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST127
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST128
	.uleb128 0x3c
	.uaword	.LVL193
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe8bf
	.uaword	.LBB423
	.uaword	.LBE423
	.byte	0x1
	.uahalf	0x2cd
	.uaword	0xff2e
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST129
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST130
	.uleb128 0x3c
	.uaword	.LVL194
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	0xe8bf
	.uaword	.LBB425
	.uaword	.LBE425
	.byte	0x1
	.uahalf	0x2ce
	.uaword	0xff6a
	.uleb128 0x50
	.uaword	0xe8fa
	.byte	0
	.uleb128 0x3b
	.uaword	0xe8ee
	.uaword	.LLST131
	.uleb128 0x3b
	.uaword	0xe8e1
	.uaword	.LLST132
	.uleb128 0x3c
	.uaword	.LVL195
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL196
	.uaword	0x10af6
	.uaword	0xff7d
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL197
	.uaword	0x10af6
	.uaword	0xff90
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL198
	.uaword	0x10af6
	.uaword	0xffa3
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.uaword	.LVL199
	.byte	0x1
	.uaword	0x10af6
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_setupRmiiOutputPins"
	.byte	0x1
	.uahalf	0x2d8
	.byte	0x1
	.uaword	.LFB327
	.uaword	.LFE327
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x101ed
	.uleb128 0x48
	.string	"eth"
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0xe566
	.uaword	.LLST133
	.uleb128 0x49
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0xe26a
	.uaword	.LLST134
	.uleb128 0x51
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x2da
	.uaword	0xcb98
	.sleb128 -128
	.uleb128 0x4e
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x2db
	.uaword	0xcd53
	.byte	0
	.uleb128 0x4f
	.string	"mdc"
	.byte	0x1
	.uahalf	0x2dd
	.uaword	0xe065
	.byte	0x1
	.byte	0x6e
	.uleb128 0x4f
	.string	"mdio"
	.byte	0x1
	.uahalf	0x2de
	.uaword	0xe06b
	.byte	0x1
	.byte	0x5f
	.uleb128 0x4f
	.string	"txen"
	.byte	0x1
	.uahalf	0x2df
	.uaword	0xdf52
	.byte	0x1
	.byte	0x6d
	.uleb128 0x4f
	.string	"txd0"
	.byte	0x1
	.uahalf	0x2e0
	.uaword	0xdf5e
	.byte	0x1
	.byte	0x6c
	.uleb128 0x42
	.string	"txd1"
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0xdf5e
	.uaword	.LLST135
	.uleb128 0x44
	.uaword	0xe907
	.uaword	.LBB428
	.uaword	.LBE428
	.byte	0x1
	.uahalf	0x2ed
	.uaword	0x100ac
	.uleb128 0x3b
	.uaword	0xe94f
	.uaword	.LLST136
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe937
	.uaword	.LLST137
	.uleb128 0x3b
	.uaword	0xe92a
	.uaword	.LLST138
	.uleb128 0x31
	.uaword	.LVL207
	.uaword	0x10ac8
	.byte	0
	.uleb128 0x44
	.uaword	0xe907
	.uaword	.LBB430
	.uaword	.LBE430
	.byte	0x1
	.uahalf	0x2ee
	.uaword	0x100ec
	.uleb128 0x3b
	.uaword	0xe94f
	.uaword	.LLST139
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe937
	.uaword	.LLST140
	.uleb128 0x3b
	.uaword	0xe92a
	.uaword	.LLST141
	.uleb128 0x31
	.uaword	.LVL208
	.uaword	0x10ac8
	.byte	0
	.uleb128 0x44
	.uaword	0xe907
	.uaword	.LBB432
	.uaword	.LBE432
	.byte	0x1
	.uahalf	0x2ef
	.uaword	0x1012c
	.uleb128 0x3b
	.uaword	0xe94f
	.uaword	.LLST142
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe937
	.uaword	.LLST143
	.uleb128 0x3b
	.uaword	0xe92a
	.uaword	.LLST144
	.uleb128 0x31
	.uaword	.LVL209
	.uaword	0x10ac8
	.byte	0
	.uleb128 0x45
	.uaword	0xe907
	.uaword	.LBB434
	.uaword	.Ldebug_ranges0+0x2c8
	.byte	0x1
	.uahalf	0x2f0
	.uaword	0x1016c
	.uleb128 0x3b
	.uaword	0xe94f
	.uaword	.LLST145
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x3b
	.uaword	0xe937
	.uaword	.LLST146
	.uleb128 0x3b
	.uaword	0xe92a
	.uaword	.LLST147
	.uleb128 0x31
	.uaword	.LVL211
	.uaword	0x10ac8
	.byte	0
	.uleb128 0x44
	.uaword	0xe907
	.uaword	.LBB438
	.uaword	.LBE438
	.byte	0x1
	.uahalf	0x2f5
	.uaword	0x101b7
	.uleb128 0x54
	.uaword	0xe94f
	.uleb128 0x52
	.uaword	0xe943
	.sleb128 -128
	.uleb128 0x50
	.uaword	0xe937
	.byte	0x1
	.uleb128 0x52
	.uaword	0xe92a
	.sleb128 -268189440
	.uleb128 0x34
	.uaword	.LVL213
	.byte	0x1
	.uaword	0x10ac8
	.uleb128 0x33
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x11
	.sleb128 -268189440
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL204
	.uaword	0x10af6
	.uaword	0x101ca
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.uaword	.LVL205
	.uaword	0x10af6
	.uaword	0x101dd
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL206
	.uaword	0x10af6
	.uleb128 0x33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x55
	.byte	0x1
	.string	"IfxEth_init"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	.LFB311
	.uaword	.LFE311
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10459
	.uleb128 0x37
	.string	"eth"
	.byte	0x1
	.byte	0x6c
	.uaword	0xe566
	.uaword	.LLST148
	.uleb128 0x56
	.uaword	.LASF36
	.byte	0x1
	.byte	0x6c
	.uaword	0x10459
	.uaword	.LLST149
	.uleb128 0x57
	.uaword	.LASF44
	.uaword	0x1046f
	.byte	0x1
	.uleb128 0x58
	.uaword	0xe67e
	.uaword	.LBB440
	.uaword	.LBE440
	.byte	0x1
	.byte	0x89
	.uaword	0x1025b
	.uleb128 0x3b
	.uaword	0xe6a3
	.uaword	.LLST150
	.uleb128 0x3b
	.uaword	0xe6af
	.uaword	.LLST151
	.byte	0
	.uleb128 0x58
	.uaword	0xe535
	.uaword	.LBB442
	.uaword	.LBE442
	.byte	0x1
	.byte	0x8a
	.uaword	0x10278
	.uleb128 0x3b
	.uaword	0xe559
	.uaword	.LLST152
	.byte	0
	.uleb128 0x59
	.uaword	.LBB444
	.uaword	.LBE444
	.uaword	0x102b2
	.uleb128 0x38
	.string	"timeout"
	.byte	0x1
	.byte	0x8e
	.uaword	0x24f
	.uaword	.LLST153
	.uleb128 0x5a
	.uaword	0xe648
	.uaword	.LBB445
	.uaword	.Ldebug_ranges0+0x2e0
	.byte	0x1
	.byte	0x90
	.uleb128 0x3b
	.uaword	0xe671
	.uaword	.LLST154
	.byte	0
	.byte	0
	.uleb128 0x59
	.uaword	.LBB449
	.uaword	.LBE449
	.uaword	0x102d3
	.uleb128 0x38
	.string	"busMode"
	.byte	0x1
	.byte	0x98
	.uaword	0x66c7
	.uaword	.LLST155
	.byte	0
	.uleb128 0x59
	.uaword	.LBB450
	.uaword	.LBE450
	.uaword	0x102f6
	.uleb128 0x38
	.string	"ethMacCfg"
	.byte	0x1
	.byte	0xa3
	.uaword	0x6d29
	.uaword	.LLST156
	.byte	0
	.uleb128 0x58
	.uaword	0xe98c
	.uaword	.LBB451
	.uaword	.LBE451
	.byte	0x1
	.byte	0xbd
	.uaword	0x1031c
	.uleb128 0x3b
	.uaword	0xe9b8
	.uaword	.LLST157
	.uleb128 0x3b
	.uaword	0xe9ac
	.uaword	.LLST158
	.byte	0
	.uleb128 0x5b
	.uaword	0xe9d0
	.uaword	.LBB453
	.uaword	.Ldebug_ranges0+0x2f8
	.byte	0x1
	.byte	0xcc
	.uaword	0x10361
	.uleb128 0x54
	.uaword	0xea04
	.uleb128 0x3b
	.uaword	0xe9f0
	.uaword	.LLST159
	.uleb128 0x3b
	.uaword	0xe9e5
	.uaword	.LLST160
	.uleb128 0x2e
	.uaword	0xe3e9
	.uaword	.LBB455
	.uaword	.LBE455
	.byte	0x5
	.uahalf	0x102
	.uleb128 0x3b
	.uaword	0xe406
	.uaword	.LLST161
	.byte	0
	.byte	0
	.uleb128 0x58
	.uaword	0xea15
	.uaword	.LBB459
	.uaword	.LBE459
	.byte	0x1
	.byte	0xcd
	.uaword	0x1037e
	.uleb128 0x3b
	.uaword	0xea2c
	.uaword	.LLST162
	.byte	0
	.uleb128 0x5b
	.uaword	0xea38
	.uaword	.LBB461
	.uaword	.Ldebug_ranges0+0x310
	.byte	0x1
	.byte	0xdd
	.uaword	0x1039b
	.uleb128 0x3b
	.uaword	0xea5a
	.uaword	.LLST163
	.byte	0
	.uleb128 0x31
	.uaword	.LVL215
	.uaword	0xec26
	.uleb128 0x32
	.uaword	.LVL216
	.uaword	0xfb18
	.uaword	0x103b8
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL217
	.uaword	0xf706
	.uaword	0x103cc
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL218
	.uaword	0xf5c0
	.uleb128 0x32
	.uaword	.LVL244
	.uaword	0xffb5
	.uaword	0x103e9
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL245
	.uaword	0xfdcc
	.uaword	0x103fd
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL247
	.uaword	0xeddd
	.uaword	0x10411
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x5c
	.uaword	.LVL248
	.byte	0x1
	.uaword	0xf1a2
	.uaword	0x10426
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL249
	.uaword	0xeef4
	.uaword	0x10441
	.uleb128 0x33
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 64
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL250
	.byte	0x1
	.uaword	0xf2ba
	.uleb128 0x33
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 48
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xedd8
	.uleb128 0x1b
	.uaword	0x2c2
	.uaword	0x1046f
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.uaword	0x1045f
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_shuffleRxDescriptor"
	.byte	0x1
	.uahalf	0x2fa
	.byte	0x1
	.uaword	.LFB328
	.uaword	.LFE328
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x104b3
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x2fa
	.uaword	0xe566
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxEth_freeReceiveBuffer"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	.LFB308
	.uaword	.LFE308
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1052a
	.uleb128 0x37
	.string	"eth"
	.byte	0x1
	.byte	0x43
	.uaword	0xe566
	.uaword	.LLST164
	.uleb128 0x39
	.uaword	.LASF37
	.byte	0x1
	.byte	0x45
	.uaword	0xe3ce
	.uleb128 0x58
	.uaword	0xe95e
	.uaword	.LBB465
	.uaword	.LBE465
	.byte	0x1
	.byte	0x46
	.uaword	0x10517
	.uleb128 0x3b
	.uaword	0xe97f
	.uaword	.LLST165
	.byte	0
	.uleb128 0x34
	.uaword	.LVL257
	.byte	0x1
	.uaword	0x10474
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_shuffleTxDescriptor"
	.byte	0x1
	.uahalf	0x30b
	.byte	0x1
	.uaword	.LFB329
	.uaword	.LFE329
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10569
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x30b
	.uaword	0xe566
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_sendTransmitBuffer"
	.byte	0x1
	.uahalf	0x211
	.byte	0x1
	.uaword	.LFB319
	.uaword	.LFE319
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10603
	.uleb128 0x48
	.string	"eth"
	.byte	0x1
	.uahalf	0x211
	.uaword	0xe566
	.uaword	.LLST166
	.uleb128 0x48
	.string	"len"
	.byte	0x1
	.uahalf	0x211
	.uaword	0x21d
	.uaword	.LLST167
	.uleb128 0x5d
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x213
	.uaword	0xe3d4
	.uleb128 0x44
	.uaword	0xeb26
	.uaword	.LBB467
	.uaword	.LBE467
	.byte	0x1
	.uahalf	0x218
	.uaword	0x105f2
	.uleb128 0x3b
	.uaword	0xeb4a
	.uaword	.LLST168
	.uleb128 0x3c
	.uaword	.LVL266
	.uaword	0xeb8b
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL267
	.uaword	0x1052a
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_setAndSendTransmitBuffer"
	.byte	0x1
	.uahalf	0x236
	.byte	0x1
	.uaword	.LFB321
	.uaword	.LFE321
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x106c5
	.uleb128 0x48
	.string	"eth"
	.byte	0x1
	.uahalf	0x236
	.uaword	0xe566
	.uaword	.LLST169
	.uleb128 0x49
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x236
	.uaword	0x2ca
	.uaword	.LLST170
	.uleb128 0x48
	.string	"len"
	.byte	0x1
	.uahalf	0x236
	.uaword	0x21d
	.uaword	.LLST171
	.uleb128 0x44
	.uaword	0xe4f9
	.uaword	.LBB469
	.uaword	.LBE469
	.byte	0x1
	.uahalf	0x238
	.uaword	0x106ba
	.uleb128 0x54
	.uaword	0xe51c
	.uleb128 0x3b
	.uaword	0xe528
	.uaword	.LLST172
	.uleb128 0x4b
	.uaword	0xe44f
	.uaword	.LBB471
	.uaword	.Ldebug_ranges0+0x328
	.byte	0x2
	.uahalf	0x4db
	.uleb128 0x4c
	.uaword	.Ldebug_ranges0+0x328
	.uleb128 0x46
	.uaword	0xe46e
	.uleb128 0x35
	.uaword	.LBB473
	.uaword	.LBE473
	.uleb128 0x47
	.uaword	0xe47b
	.uaword	.LLST173
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.uaword	.LVL272
	.byte	0x1
	.uaword	0x10569
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_sendTransmitBuffersRingMode"
	.byte	0x1
	.uahalf	0x21f
	.byte	0x1
	.uaword	.LFB320
	.uaword	.LFE320
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1078c
	.uleb128 0x48
	.string	"eth"
	.byte	0x1
	.uahalf	0x21f
	.uaword	0xe566
	.uaword	.LLST174
	.uleb128 0x48
	.string	"buffer1Length"
	.byte	0x1
	.uahalf	0x21f
	.uaword	0x21d
	.uaword	.LLST175
	.uleb128 0x48
	.string	"buffer2Length"
	.byte	0x1
	.uahalf	0x21f
	.uaword	0x21d
	.uaword	.LLST176
	.uleb128 0x5d
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x221
	.uaword	0xe3d4
	.uleb128 0x44
	.uaword	0xeb26
	.uaword	.LBB476
	.uaword	.LBE476
	.byte	0x1
	.uahalf	0x22f
	.uaword	0x1077b
	.uleb128 0x3b
	.uaword	0xeb4a
	.uaword	.LLST177
	.uleb128 0x3c
	.uaword	.LVL277
	.uaword	0xeb8b
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL278
	.uaword	0x1052a
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xea67
	.uaword	.LFB330
	.uaword	.LFE330
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x107a8
	.uleb128 0x2d
	.uaword	0xea87
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2c
	.uaword	0xeaf6
	.uaword	.LFB331
	.uaword	.LFE331
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x107c4
	.uleb128 0x2d
	.uaword	0xeb19
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_stopReceiver"
	.byte	0x1
	.uahalf	0x331
	.byte	0x1
	.uaword	.LFB332
	.uaword	.LFE332
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x107fc
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x331
	.uaword	0xe566
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2c
	.uaword	0xea38
	.uaword	.LFB333
	.uaword	.LFE333
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10818
	.uleb128 0x2d
	.uaword	0xea5a
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2c
	.uaword	0xea94
	.uaword	.LFB334
	.uaword	.LFE334
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10848
	.uleb128 0x3b
	.uaword	0xeab5
	.uaword	.LLST178
	.uleb128 0x34
	.uaword	.LVL285
	.byte	0x1
	.uaword	0xeb57
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0xeb26
	.uaword	.LFB335
	.uaword	.LFE335
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10878
	.uleb128 0x3b
	.uaword	0xeb4a
	.uaword	.LLST179
	.uleb128 0x34
	.uaword	.LVL287
	.byte	0x1
	.uaword	0xeb8b
	.uleb128 0x33
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxEth_writeHeader"
	.byte	0x1
	.uahalf	0x369
	.byte	0x1
	.uaword	.LFB336
	.uaword	.LFE336
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x10920
	.uleb128 0x41
	.string	"eth"
	.byte	0x1
	.uahalf	0x369
	.uaword	0xe566
	.byte	0x1
	.byte	0x64
	.uleb128 0x48
	.string	"txBuffer"
	.byte	0x1
	.uahalf	0x369
	.uaword	0xf5ba
	.uaword	.LLST180
	.uleb128 0x48
	.string	"destinationAddress"
	.byte	0x1
	.uahalf	0x369
	.uaword	0xf5ba
	.uaword	.LLST181
	.uleb128 0x48
	.string	"sourceAddress"
	.byte	0x1
	.uahalf	0x369
	.uaword	0xf5ba
	.uaword	.LLST182
	.uleb128 0x41
	.string	"packetSize"
	.byte	0x1
	.uahalf	0x369
	.uaword	0x24f
	.byte	0x1
	.byte	0x54
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.uahalf	0x36c
	.uaword	0x24f
	.uaword	.LLST183
	.byte	0
	.uleb128 0x5e
	.string	"Assert_verboseLevel"
	.byte	0xf
	.byte	0x79
	.uaword	0x24f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x394
	.uaword	0x1094d
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x2
	.byte	0
	.uleb128 0x5e
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xe
	.byte	0x96
	.uaword	0x1096a
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x1093d
	.uleb128 0x1b
	.uaword	0x1f2
	.uaword	0x10986
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0x7
	.uleb128 0x1c
	.uaword	0xa3ab
	.uahalf	0x5ff
	.byte	0
	.uleb128 0x5f
	.string	"IfxEth_rxBuffer"
	.byte	0x1
	.byte	0x23
	.uaword	0x1096f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_rxBuffer
	.uleb128 0x5f
	.string	"IfxEth_rxDescr"
	.byte	0x1
	.byte	0x25
	.uaword	0xe0d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_rxDescr
	.uleb128 0x1b
	.uaword	0x1f2
	.uaword	0x109d8
	.uleb128 0x1d
	.uaword	0xa3ab
	.byte	0xf
	.uleb128 0x1c
	.uaword	0xa3ab
	.uahalf	0x5ff
	.byte	0
	.uleb128 0x5f
	.string	"IfxEth_txBuffer"
	.byte	0x1
	.byte	0x27
	.uaword	0x109c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_txBuffer
	.uleb128 0x5f
	.string	"IfxEth_txDescr"
	.byte	0x1
	.byte	0x29
	.uaword	0xe135
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_txDescr
	.uleb128 0x60
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x10
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x21d
	.byte	0x1
	.uleb128 0x61
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0x10
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x10a69
	.uleb128 0x62
	.uaword	0x21d
	.byte	0
	.uleb128 0x61
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0x10
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x10a91
	.uleb128 0x62
	.uaword	0x21d
	.byte	0
	.uleb128 0x61
	.byte	0x1
	.string	"Ifx_Assert_doLevel"
	.byte	0xf
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uaword	0x10ac8
	.uleb128 0x62
	.uaword	0x1f2
	.uleb128 0x62
	.uaword	0x2aa
	.uleb128 0x62
	.uaword	0x2aa
	.uleb128 0x62
	.uaword	0x5c2
	.uleb128 0x62
	.uaword	0x2aa
	.byte	0
	.uleb128 0x63
	.byte	0x1
	.string	"IfxPort_setPinMode"
	.byte	0x4
	.uahalf	0x163
	.byte	0x1
	.byte	0x1
	.uaword	0x10af6
	.uleb128 0x62
	.uaword	0xc703
	.uleb128 0x62
	.uaword	0x1f2
	.uleb128 0x62
	.uaword	0xca47
	.byte	0
	.uleb128 0x64
	.byte	0x1
	.string	"IfxPort_setPinPadDriver"
	.byte	0x4
	.uahalf	0x172
	.byte	0x1
	.byte	0x1
	.uleb128 0x62
	.uaword	0xc703
	.uleb128 0x62
	.uaword	0x1f2
	.uleb128 0x62
	.uaword	0xcd53
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x17
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
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x5
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x5
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.byte	0
	.byte	0
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.uleb128 0x60
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x61
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
	.uleb128 0x62
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x63
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x64
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6-1
	.uaword	.LFE306
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10-1
	.uaword	.LFE307
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL12
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LFE309
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE309
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LFE309
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE310
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0x85
	.sleb128 112
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL34
	.uaword	.LFE313
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x83
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x83
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE313
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -1536
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -1536
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LFE313
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf001d000
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL42
	.uaword	.LFE314
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL42
	.uaword	.LFE314
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LFE314
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71
	.uaword	.LFE314
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL42
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x3
	.byte	0x8e
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE314
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL42
	.uaword	.LFE314
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL65
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL65
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL65
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL54
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL69
	.uaword	.LFE314
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL54
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL69
	.uaword	.LFE314
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71
	.uaword	.LFE314
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LFE314
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x3
	.byte	0x8d
	.sleb128 116
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x4
	.byte	0x8f
	.sleb128 8204
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL61
	.uaword	.LVL65
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf001d000
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL78
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL80
	.uaword	.LVL85
	.uahalf	0x4
	.byte	0x85
	.sleb128 240
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL86
	.uaword	.LFE315
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL77
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL81
	.uaword	.LVL85
	.uahalf	0x3
	.byte	0x83
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x3
	.byte	0x83
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LFE315
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL76
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL83
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -1536
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -1536
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL89
	.uaword	.LFE315
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf001d000
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL94
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL94
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL120
	.uaword	.LVL122
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL124
	.uaword	.LFE316
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL94
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL112
	.uaword	.LVL118
	.uahalf	0x3
	.byte	0x8d
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL92
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL94
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL96
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL118
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL96
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL118
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL120
	.uaword	.LVL122
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL96
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL118
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL119
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL100
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL100
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL107
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL122
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL107
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL122
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL124
	.uaword	.LFE316
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x8c
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL107
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL123
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x3
	.byte	0x8e
	.sleb128 120
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x4
	.byte	0x8f
	.sleb128 8208
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL114
	.uaword	.LVL118
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf001d000
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL128
	.uaword	.LVL129-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL129-1
	.uaword	.LFE318
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL135
	.uaword	.LFE323
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL136
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL141
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL149
	.uaword	.LFE324
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL141
	.uaword	.LVL150-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL150-1
	.uaword	.LFE324
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL148
	.uaword	.LVL150-1
	.uahalf	0x2
	.byte	0x7d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL148
	.uaword	.LVL150-1
	.uahalf	0x2
	.byte	0x7d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL151
	.uaword	.LVL152-1
	.uahalf	0x2
	.byte	0x7b
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL151
	.uaword	.LVL152-1
	.uahalf	0x2
	.byte	0x7b
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL150
	.uaword	.LVL151-1
	.uahalf	0x2
	.byte	0x7c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL150
	.uaword	.LVL151-1
	.uahalf	0x2
	.byte	0x7c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL152
	.uaword	.LVL153-1
	.uahalf	0x2
	.byte	0x7a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL152
	.uaword	.LVL153-1
	.uahalf	0x2
	.byte	0x7a
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL153
	.uaword	.LVL154-1
	.uahalf	0x2
	.byte	0x79
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL153
	.uaword	.LVL154-1
	.uahalf	0x2
	.byte	0x79
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL154
	.uaword	.LVL155-1
	.uahalf	0x2
	.byte	0x78
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL154
	.uaword	.LVL155-1
	.uahalf	0x2
	.byte	0x78
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL155
	.uaword	.LVL156-1
	.uahalf	0x2
	.byte	0x7f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL155
	.uaword	.LVL156-1
	.uahalf	0x2
	.byte	0x7f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL156
	.uaword	.LVL157-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL156
	.uaword	.LVL157-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL157
	.uaword	.LVL158-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL157
	.uaword	.LVL158-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL158
	.uaword	.LVL159-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL158
	.uaword	.LVL159-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL170
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL173
	.uaword	.LFE325
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL170
	.uaword	.LVL177-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL177-1
	.uaword	.LFE325
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL182
	.uaword	.LVL183-1
	.uahalf	0x2
	.byte	0x78
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL182
	.uaword	.LVL183-1
	.uahalf	0x2
	.byte	0x78
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL182
	.uaword	.LVL183-1
	.uahalf	0x2
	.byte	0x78
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL183
	.uaword	.LVL184-1
	.uahalf	0x2
	.byte	0x7f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL183
	.uaword	.LVL184-1
	.uahalf	0x2
	.byte	0x7f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL183
	.uaword	.LVL184-1
	.uahalf	0x2
	.byte	0x7f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL184
	.uaword	.LVL185-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL184
	.uaword	.LVL185-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL184
	.uaword	.LVL185-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL185
	.uaword	.LVL186-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL186
	.uaword	.LVL187-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL186
	.uaword	.LVL187-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL186
	.uaword	.LVL187-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL187
	.uaword	.LVL188-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL187
	.uaword	.LVL188-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL187
	.uaword	.LVL188-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL189
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL191
	.uaword	.LFE326
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL189
	.uaword	.LVL192-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL192-1
	.uaword	.LFE326
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL190
	.uaword	.LVL192-1
	.uahalf	0x2
	.byte	0x7f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL190
	.uaword	.LVL192-1
	.uahalf	0x2
	.byte	0x7f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL192
	.uaword	.LVL193-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL192
	.uaword	.LVL193-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL193
	.uaword	.LVL194-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL193
	.uaword	.LVL194-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL194
	.uaword	.LVL195-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL194
	.uaword	.LVL195-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL200
	.uaword	.LVL202
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL202
	.uaword	.LFE327
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL200
	.uaword	.LVL204-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL204-1
	.uaword	.LFE327
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL203
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL206
	.uaword	.LVL207-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL206
	.uaword	.LVL207-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL206
	.uaword	.LVL207-1
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL207
	.uaword	.LVL208-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL207
	.uaword	.LVL208-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL207
	.uaword	.LVL208-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL208
	.uaword	.LVL209-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL208
	.uaword	.LVL209-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL208
	.uaword	.LVL209-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL210
	.uaword	.LVL211-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL210
	.uaword	.LVL211-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL214
	.uaword	.LVL215-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL215-1
	.uaword	.LFE311
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL214
	.uaword	.LVL215-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL215-1
	.uaword	.LFE311
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL218
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL246
	.uaword	.LFE311
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL218
	.uaword	.LVL219
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL219
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL246
	.uaword	.LFE311
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL221
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL220
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL246
	.uaword	.LFE311
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL227
	.uaword	.LVL228
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL229
	.uaword	.LVL231
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL232
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL234
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL246
	.uaword	.LFE311
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL234
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL246
	.uaword	.LFE311
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL236
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x8f
	.sleb128 30
	.uaword	.LVL237
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL236
	.uaword	.LVL240
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf00388f0
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL238
	.uaword	.LVL240
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf00388f0
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf00388f0
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL246
	.uaword	.LFE311
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL256
	.uaword	.LVL257-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL257-1
	.uaword	.LFE308
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL256
	.uaword	.LVL257-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 124
	.uaword	.LVL257-1
	.uaword	.LFE308
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL263
	.uaword	.LVL266-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL266-1
	.uaword	.LFE319
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL263
	.uaword	.LVL266-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL266-1
	.uaword	.LFE319
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL265
	.uaword	.LVL266-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL266-1
	.uaword	.LFE319
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL268
	.uaword	.LVL272-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL272-1
	.uaword	.LFE321
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL268
	.uaword	.LVL272-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL272-1
	.uaword	.LFE321
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL268
	.uaword	.LVL272-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL272-1
	.uaword	.LFE321
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL269
	.uaword	.LVL272-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL272-1
	.uaword	.LFE321
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL270
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL273
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL276
	.uaword	.LVL279
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL279
	.uaword	.LFE320
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL273
	.uaword	.LVL277-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL277-1
	.uaword	.LVL279
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL279
	.uaword	.LFE320
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL273
	.uaword	.LVL277-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL277-1
	.uaword	.LVL279
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL279
	.uaword	.LFE320
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL275
	.uaword	.LVL277-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL277-1
	.uaword	.LVL279
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL284
	.uaword	.LVL285-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL285-1
	.uaword	.LVL285
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL285
	.uaword	.LFE334
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL286
	.uaword	.LVL287-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL287-1
	.uaword	.LVL287
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL287
	.uaword	.LFE335
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL289
	.uaword	.LVL292
	.uahalf	0x3
	.byte	0x83
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL292
	.uaword	.LVL293
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL293
	.uaword	.LVL296
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL296
	.uaword	.LVL297
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL297
	.uaword	.LFE336
	.uahalf	0x3
	.byte	0x85
	.sleb128 13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL289
	.uaword	.LVL291
	.uahalf	0x3
	.byte	0x86
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL291
	.uaword	.LFE336
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL288
	.uaword	.LVL293
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL293
	.uaword	.LVL295
	.uahalf	0x3
	.byte	0x87
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL295
	.uaword	.LFE336
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL288
	.uaword	.LVL290
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL293
	.uaword	.LVL294
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x11c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.uaword	.LFB306
	.uaword	.LFE306-.LFB306
	.uaword	.LFB307
	.uaword	.LFE307-.LFB307
	.uaword	.LFB309
	.uaword	.LFE309-.LFB309
	.uaword	.LFB310
	.uaword	.LFE310-.LFB310
	.uaword	.LFB312
	.uaword	.LFE312-.LFB312
	.uaword	.LFB313
	.uaword	.LFE313-.LFB313
	.uaword	.LFB314
	.uaword	.LFE314-.LFB314
	.uaword	.LFB315
	.uaword	.LFE315-.LFB315
	.uaword	.LFB316
	.uaword	.LFE316-.LFB316
	.uaword	.LFB317
	.uaword	.LFE317-.LFB317
	.uaword	.LFB318
	.uaword	.LFE318-.LFB318
	.uaword	.LFB322
	.uaword	.LFE322-.LFB322
	.uaword	.LFB323
	.uaword	.LFE323-.LFB323
	.uaword	.LFB324
	.uaword	.LFE324-.LFB324
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.uaword	.LFB327
	.uaword	.LFE327-.LFB327
	.uaword	.LFB311
	.uaword	.LFE311-.LFB311
	.uaword	.LFB328
	.uaword	.LFE328-.LFB328
	.uaword	.LFB308
	.uaword	.LFE308-.LFB308
	.uaword	.LFB329
	.uaword	.LFE329-.LFB329
	.uaword	.LFB319
	.uaword	.LFE319-.LFB319
	.uaword	.LFB321
	.uaword	.LFE321-.LFB321
	.uaword	.LFB320
	.uaword	.LFE320-.LFB320
	.uaword	.LFB330
	.uaword	.LFE330-.LFB330
	.uaword	.LFB331
	.uaword	.LFE331-.LFB331
	.uaword	.LFB332
	.uaword	.LFE332-.LFB332
	.uaword	.LFB333
	.uaword	.LFE333-.LFB333
	.uaword	.LFB334
	.uaword	.LFE334-.LFB334
	.uaword	.LFB335
	.uaword	.LFE335-.LFB335
	.uaword	.LFB336
	.uaword	.LFE336-.LFB336
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB251
	.uaword	.LBE251
	.uaword	.LBB260
	.uaword	.LBE260
	.uaword	.LBB261
	.uaword	.LBE261
	.uaword	.LBB268
	.uaword	.LBE268
	.uaword	.LBB269
	.uaword	.LBE269
	.uaword	0
	.uaword	0
	.uaword	.LBB262
	.uaword	.LBE262
	.uaword	.LBB267
	.uaword	.LBE267
	.uaword	0
	.uaword	0
	.uaword	.LBB272
	.uaword	.LBE272
	.uaword	.LBB281
	.uaword	.LBE281
	.uaword	.LBB304
	.uaword	.LBE304
	.uaword	0
	.uaword	0
	.uaword	.LBB274
	.uaword	.LBE274
	.uaword	.LBB278
	.uaword	.LBE278
	.uaword	0
	.uaword	0
	.uaword	.LBB282
	.uaword	.LBE282
	.uaword	.LBB285
	.uaword	.LBE285
	.uaword	0
	.uaword	0
	.uaword	.LBB288
	.uaword	.LBE288
	.uaword	.LBB298
	.uaword	.LBE298
	.uaword	.LBB299
	.uaword	.LBE299
	.uaword	.LBB305
	.uaword	.LBE305
	.uaword	0
	.uaword	0
	.uaword	.LBB290
	.uaword	.LBE290
	.uaword	.LBB294
	.uaword	.LBE294
	.uaword	0
	.uaword	0
	.uaword	.LBB300
	.uaword	.LBE300
	.uaword	.LBB303
	.uaword	.LBE303
	.uaword	0
	.uaword	0
	.uaword	.LBB308
	.uaword	.LBE308
	.uaword	.LBB317
	.uaword	.LBE317
	.uaword	.LBB318
	.uaword	.LBE318
	.uaword	.LBB325
	.uaword	.LBE325
	.uaword	.LBB326
	.uaword	.LBE326
	.uaword	0
	.uaword	0
	.uaword	.LBB319
	.uaword	.LBE319
	.uaword	.LBB324
	.uaword	.LBE324
	.uaword	0
	.uaword	0
	.uaword	.LBB329
	.uaword	.LBE329
	.uaword	.LBB338
	.uaword	.LBE338
	.uaword	.LBB363
	.uaword	.LBE363
	.uaword	0
	.uaword	0
	.uaword	.LBB331
	.uaword	.LBE331
	.uaword	.LBB335
	.uaword	.LBE335
	.uaword	0
	.uaword	0
	.uaword	.LBB339
	.uaword	.LBE339
	.uaword	.LBB342
	.uaword	.LBE342
	.uaword	0
	.uaword	0
	.uaword	.LBB343
	.uaword	.LBE343
	.uaword	.LBB346
	.uaword	.LBE346
	.uaword	0
	.uaword	0
	.uaword	.LBB347
	.uaword	.LBE347
	.uaword	.LBB357
	.uaword	.LBE357
	.uaword	.LBB358
	.uaword	.LBE358
	.uaword	.LBB364
	.uaword	.LBE364
	.uaword	0
	.uaword	0
	.uaword	.LBB349
	.uaword	.LBE349
	.uaword	.LBB353
	.uaword	.LBE353
	.uaword	0
	.uaword	0
	.uaword	.LBB359
	.uaword	.LBE359
	.uaword	.LBB362
	.uaword	.LBE362
	.uaword	0
	.uaword	0
	.uaword	.LBB368
	.uaword	.LBE368
	.uaword	.LBB372
	.uaword	.LBE372
	.uaword	.LBB376
	.uaword	.LBE376
	.uaword	0
	.uaword	0
	.uaword	.LBB373
	.uaword	.LBE373
	.uaword	.LBB379
	.uaword	.LBE379
	.uaword	0
	.uaword	0
	.uaword	.LBB380
	.uaword	.LBE380
	.uaword	.LBB386
	.uaword	.LBE386
	.uaword	0
	.uaword	0
	.uaword	.LBB383
	.uaword	.LBE383
	.uaword	.LBB387
	.uaword	.LBE387
	.uaword	0
	.uaword	0
	.uaword	.LBB388
	.uaword	.LBE388
	.uaword	.LBB394
	.uaword	.LBE394
	.uaword	0
	.uaword	0
	.uaword	.LBB391
	.uaword	.LBE391
	.uaword	.LBB395
	.uaword	.LBE395
	.uaword	0
	.uaword	0
	.uaword	.LBB414
	.uaword	.LBE414
	.uaword	.LBB427
	.uaword	.LBE427
	.uaword	0
	.uaword	0
	.uaword	.LBB415
	.uaword	.LBE415
	.uaword	.LBB419
	.uaword	.LBE419
	.uaword	.LBB420
	.uaword	.LBE420
	.uaword	0
	.uaword	0
	.uaword	.LBB434
	.uaword	.LBE434
	.uaword	.LBB437
	.uaword	.LBE437
	.uaword	0
	.uaword	0
	.uaword	.LBB445
	.uaword	.LBE445
	.uaword	.LBB448
	.uaword	.LBE448
	.uaword	0
	.uaword	0
	.uaword	.LBB453
	.uaword	.LBE453
	.uaword	.LBB458
	.uaword	.LBE458
	.uaword	0
	.uaword	0
	.uaword	.LBB461
	.uaword	.LBE461
	.uaword	.LBB464
	.uaword	.LBE464
	.uaword	0
	.uaword	0
	.uaword	.LBB471
	.uaword	.LBE471
	.uaword	.LBB475
	.uaword	.LBE475
	.uaword	0
	.uaword	0
	.uaword	.LFB352
	.uaword	.LFE352
	.uaword	.LFB353
	.uaword	.LFE353
	.uaword	.LFB306
	.uaword	.LFE306
	.uaword	.LFB307
	.uaword	.LFE307
	.uaword	.LFB309
	.uaword	.LFE309
	.uaword	.LFB310
	.uaword	.LFE310
	.uaword	.LFB312
	.uaword	.LFE312
	.uaword	.LFB313
	.uaword	.LFE313
	.uaword	.LFB314
	.uaword	.LFE314
	.uaword	.LFB315
	.uaword	.LFE315
	.uaword	.LFB316
	.uaword	.LFE316
	.uaword	.LFB317
	.uaword	.LFE317
	.uaword	.LFB318
	.uaword	.LFE318
	.uaword	.LFB322
	.uaword	.LFE322
	.uaword	.LFB323
	.uaword	.LFE323
	.uaword	.LFB324
	.uaword	.LFE324
	.uaword	.LFB325
	.uaword	.LFE325
	.uaword	.LFB326
	.uaword	.LFE326
	.uaword	.LFB327
	.uaword	.LFE327
	.uaword	.LFB311
	.uaword	.LFE311
	.uaword	.LFB328
	.uaword	.LFE328
	.uaword	.LFB308
	.uaword	.LFE308
	.uaword	.LFB329
	.uaword	.LFE329
	.uaword	.LFB319
	.uaword	.LFE319
	.uaword	.LFB321
	.uaword	.LFE321
	.uaword	.LFB320
	.uaword	.LFE320
	.uaword	.LFB330
	.uaword	.LFE330
	.uaword	.LFB331
	.uaword	.LFE331
	.uaword	.LFB332
	.uaword	.LFE332
	.uaword	.LFB333
	.uaword	.LFE333
	.uaword	.LFB334
	.uaword	.LFE334
	.uaword	.LFB335
	.uaword	.LFE335
	.uaword	.LFB336
	.uaword	.LFE336
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF27:
	.string	"pinIndex"
.LASF14:
	.string	"MODNUMBER"
.LASF28:
	.string	"select"
.LASF34:
	.string	"ethSfr"
.LASF45:
	.string	"speedGrade"
.LASF41:
	.string	"l_TempVar"
.LASF30:
	.string	"txBufferUsed"
.LASF37:
	.string	"descr"
.LASF6:
	.string	"reserved_10"
.LASF15:
	.string	"reserved_11"
.LASF26:
	.string	"reserved_12"
.LASF11:
	.string	"reserved_16"
.LASF16:
	.string	"reserved_17"
.LASF22:
	.string	"reserved_19"
.LASF32:
	.string	"rmiiPins"
.LASF23:
	.string	"reserved_20"
.LASF12:
	.string	"reserved_22"
.LASF7:
	.string	"reserved_23"
.LASF24:
	.string	"reserved_24"
.LASF8:
	.string	"reserved_26"
.LASF21:
	.string	"reserved_27"
.LASF25:
	.string	"reserved_28"
.LASF19:
	.string	"reserved_29"
.LASF43:
	.string	"buffer2StartAddress"
.LASF40:
	.string	"address"
.LASF1:
	.string	"reserved_0"
.LASF18:
	.string	"reserved_1"
.LASF2:
	.string	"reserved_2"
.LASF4:
	.string	"reserved_3"
.LASF17:
	.string	"reserved_4"
.LASF9:
	.string	"reserved_6"
.LASF5:
	.string	"reserved_7"
.LASF10:
	.string	"reserved_8"
.LASF3:
	.string	"reserved_30"
.LASF13:
	.string	"reserved_31"
.LASF42:
	.string	"buffer1StartAddress"
.LASF0:
	.string	"module"
.LASF35:
	.string	"descriptorMode"
.LASF44:
	.string	"__func__"
.LASF33:
	.string	"miiPins"
.LASF39:
	.string	"mode"
.LASF36:
	.string	"config"
.LASF20:
	.string	"reserved_14"
.LASF38:
	.string	"buffer"
.LASF29:
	.string	"rxBufferUsed"
.LASF31:
	.string	"macAddress"
	.extern	IfxPort_setPinPadDriver,STT_FUNC,0
	.extern	IfxPort_setPinMode,STT_FUNC,0
	.extern	Ifx_Assert_doLevel,STT_FUNC,0
	.extern	Assert_verboseLevel,STT_OBJECT,4
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
