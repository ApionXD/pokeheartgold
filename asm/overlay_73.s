
	thumb_func_start ov73_021E5900
ov73_021E5900: @ 0x021E5900
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, [r5]
	adds r7, r0, #0
	cmp r1, #0
	beq _021E5916
	cmp r1, #1
	bne _021E5914
	b _021E5A80
_021E5914:
	b _021E5A8E
_021E5916:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201A0FC
	bl FUN_0201A108
	bl FUN_02022C54
	bl FUN_02022CBC
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E5A94 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021E5A98 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r2, #0x41
	movs r0, #3
	movs r1, #0x32
	lsls r2, r2, #0xc
	bl FUN_0201A910
	movs r0, #0x54
	movs r1, #0x32
	bl FUN_02007688
	adds r6, r0, #0
	ldr r1, _021E5A9C @ =0x00004A8C
	adds r0, r7, #0
	movs r2, #0x32
	bl FUN_02007280
	ldr r2, _021E5A9C @ =0x00004A8C
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020E5B44
	movs r0, #0x32
	bl FUN_0201AC88
	str r0, [r4]
	adds r0, r7, #0
	bl FUN_020072A4
	str r0, [r4, #8]
	ldr r1, [r0]
	ldr r0, _021E5AA0 @ =0x00004A0C
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x10]
	bl FUN_020183F0
	movs r1, #0xc5
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x32
	bl FUN_0200BD08
	str r0, [r4, #0x24]
	ldr r2, _021E5AA4 @ =0x000001A6
	movs r0, #0
	movs r1, #0x1b
	movs r3, #0x32
	bl FUN_0200BAF8
	str r0, [r4, #0x28]
	movs r0, #4
	movs r1, #0x32
	bl FUN_02002CEC
	movs r0, #4
	movs r1, #8
	bl FUN_0201A71C
	bl ov73_021E5D00
	ldr r0, [r4]
	bl ov73_021E5D20
	movs r0, #0
	bl FUN_0200FBE8
	movs r0, #1
	bl FUN_0200FBE8
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x32
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #0x11
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200FA24
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov73_021E5F38
	bl FUN_020210BC
	movs r0, #2
	bl FUN_02021148
	ldr r0, _021E5AA8 @ =ov73_021E5CD8
	adds r1, r4, #0
	bl FUN_0201A0FC
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov73_021E5E0C
	bl ov73_021E6060
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov73_021E6090
	adds r0, r4, #0
	bl ov73_021E6184
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov73_021E629C
	adds r0, r4, #0
	bl ov73_021E7230
	movs r1, #0
	movs r0, #0x34
	adds r2, r1, #0
	bl FUN_02004EC4
	ldr r2, _021E5AAC @ =0x04000304
	ldr r0, _021E5AB0 @ =0xFFFF7FFF
	ldrh r1, [r2]
	ands r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	bl FUN_0208FB64
	bl FUN_0203893C
	movs r0, #3
	bl FUN_02038C1C
	bl FUN_0203769C
	cmp r0, #0
	bne _021E5A54
	movs r0, #2
	bl FUN_0205A904
_021E5A54:
	bl FUN_0203A880
	ldr r0, _021E5AA0 @ =0x00004A0C
	movs r1, #0xe2
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	adds r1, r4, r1
	bl ov73_021EA374
	ldr r0, _021E5AB4 @ =ov73_021E5C74
	adds r1, r4, #0
	movs r2, #5
	bl FUN_0200E33C
	str r0, [r4, #0x20]
	adds r0, r6, #0
	bl FUN_0200770C
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021E5A8E
_021E5A80:
	bl FUN_02007290
	movs r0, #0
	str r0, [r5]
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021E5A8E:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E5A94: .4byte 0xFFFFE0FF
_021E5A98: .4byte 0x04001000
_021E5A9C: .4byte 0x00004A8C
_021E5AA0: .4byte 0x00004A0C
_021E5AA4: .4byte 0x000001A6
_021E5AA8: .4byte ov73_021E5CD8
_021E5AAC: .4byte 0x04000304
_021E5AB0: .4byte 0xFFFF7FFF
_021E5AB4: .4byte ov73_021E5C74
	thumb_func_end ov73_021E5900

	thumb_func_start ov73_021E5AB8
ov73_021E5AB8: @ 0x021E5AB8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_02007290
	adds r4, r0, #0
	bl FUN_0203769C
	cmp r0, #0
	bne _021E5ADE
	ldr r0, _021E5B9C @ =0x00004A24
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E5ADE
	bl FUN_02033250
	ldr r1, _021E5B9C @ =0x00004A24
	ldr r2, [r4, r1]
	ands r0, r2
	str r0, [r4, r1]
_021E5ADE:
	ldr r1, [r5]
	cmp r1, #3
	bhi _021E5B92
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E5AF0: @ jump table
	.2byte _021E5AF8 - _021E5AF0 - 2 @ case 0
	.2byte _021E5B20 - _021E5AF0 - 2 @ case 1
	.2byte _021E5B6E - _021E5AF0 - 2 @ case 2
	.2byte _021E5B86 - _021E5AF0 - 2 @ case 3
_021E5AF8:
	bl FUN_0200FB5C
	cmp r0, #0
	beq _021E5B92
	movs r0, #1
	str r0, [r5]
	bl FUN_0203769C
	cmp r0, #0
	beq _021E5B92
	bl ov73_021E746C
	cmp r0, #2
	ble _021E5B92
	movs r1, #0
	movs r0, #0x72
	adds r2, r1, #0
	bl FUN_02037030
	b _021E5B92
_021E5B20:
	movs r0, #0xc6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	lsls r2, r0, #2
	ldr r0, _021E5BA0 @ =0x021EA7C0
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021E5B36
	adds r0, r4, #0
	blx r2
	str r0, [r5]
_021E5B36:
	ldr r0, _021E5BA4 @ =0x00004A14
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021E5B4E
	movs r0, #0xa6
	lsls r0, r0, #2
	ldr r2, _021E5BA8 @ =0x00010300
	adds r0, r4, r0
	movs r1, #0
	adds r3, r4, #0
	bl ov73_021E735C
_021E5B4E:
	adds r0, r4, #0
	bl ov73_021E762C
	bl FUN_0203769C
	cmp r0, #0
	bne _021E5B92
	adds r0, r4, #0
	movs r1, #1
	bl ov73_021E7870
	ldr r1, [r5]
	cmp r1, #1
	bne _021E5B92
	str r0, [r5]
	b _021E5B92
_021E5B6E:
	movs r0, #0xc6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	lsls r2, r0, #2
	ldr r0, _021E5BA0 @ =0x021EA7C0
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021E5B92
	adds r0, r4, #0
	blx r2
	str r0, [r5]
	b _021E5B92
_021E5B86:
	bl FUN_0200FB5C
	cmp r0, #0
	beq _021E5B92
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E5B92:
	ldr r0, [r4, #0x50]
	bl FUN_0202457C
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E5B9C: .4byte 0x00004A24
_021E5BA0: .4byte 0x021EA7C0
_021E5BA4: .4byte 0x00004A14
_021E5BA8: .4byte 0x00010300
	thumb_func_end ov73_021E5AB8

	thumb_func_start ov73_021E5BAC
ov73_021E5BAC: @ 0x021E5BAC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl FUN_02007290
	adds r6, r0, #0
	ldr r0, [r6, #0x20]
	bl FUN_0200E390
	movs r0, #0x6b
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200AEB0
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_0200B0A8
	movs r7, #0x5f
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_021E5BD8:
	ldr r0, [r5, r7]
	bl FUN_0200A0D0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021E5BD8
	ldr r0, [r6, #0x50]
	bl FUN_02024504
	bl FUN_0200B244
	bl FUN_0202168C
	bl FUN_02022608
	adds r0, r6, #0
	bl ov73_021E6400
	adds r0, r6, #0
	bl ov73_021E6048
	ldr r0, [r6]
	bl ov73_021E5F0C
	movs r0, #2
	bl FUN_02038C1C
	bl FUN_02037FF0
	ldr r0, [r6, #8]
	ldr r0, [r0, #4]
	bl FUN_0205AD24
	bl FUN_02021238
	movs r0, #4
	bl FUN_02002DB4
	ldr r0, [r6, #0x28]
	bl FUN_0200BB44
	ldr r0, [r6, #0x24]
	bl FUN_0200BDA0
	ldr r0, [r6, #8]
	movs r1, #0xc5
	lsls r1, r1, #2
	ldr r0, [r0, #0x10]
	ldr r1, [r6, r1]
	bl FUN_02018410
	adds r0, r6, #0
	bl ov73_021E5ED4
	ldr r0, [sp]
	bl FUN_02007294
	ldr r2, _021E5C70 @ =0x04000304
	ldrh r1, [r2]
	lsrs r0, r2, #0xb
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	bl FUN_0205A904
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201A0FC
	movs r0, #0x32
	bl FUN_0201A9C4
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5C70: .4byte 0x04000304
	thumb_func_end ov73_021E5BAC

	thumb_func_start ov73_021E5C74
ov73_021E5C74: @ 0x021E5C74
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #0xc]
	adds r1, #0xc
	cmp r0, #0
	beq _021E5CCE
	ldr r0, [r1, #4]
	ldr r3, [r1, #8]
	lsls r2, r0, #1
	ldr r0, _021E5CD0 @ =0x021EA52A
	ldrb r0, [r0, r2]
	cmp r3, r0
	ble _021E5CBE
	movs r0, #0
	str r0, [r1, #8]
	ldr r2, [r1, #4]
	adds r2, r2, #1
	str r2, [r1, #4]
	lsls r3, r2, #1
	ldr r2, _021E5CD4 @ =0x021EA52B
	ldrb r2, [r2, r3]
	cmp r2, #0xff
	bne _021E5CA4
	str r0, [r1, #4]
_021E5CA4:
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	lsls r2, r1, #1
	ldr r1, _021E5CD4 @ =0x021EA52B
	ldrb r1, [r1, r2]
	movs r2, #0x20
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0
	blx FUN_020CFD18
	b _021E5CC4
_021E5CBE:
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
_021E5CC4:
	movs r0, #0xde
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov73_021E72F4
_021E5CCE:
	pop {r4, pc}
	.align 2, 0
_021E5CD0: .4byte 0x021EA52A
_021E5CD4: .4byte 0x021EA52B
	thumb_func_end ov73_021E5C74

	thumb_func_start ov73_021E5CD8
ov73_021E5CD8: @ 0x021E5CD8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0202061C
	bl FUN_0200B224
	ldr r0, [r4]
	bl FUN_0201EEB4
	ldr r3, _021E5CF8 @ =0x027E0000
	ldr r1, _021E5CFC @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_021E5CF8: .4byte 0x027E0000
_021E5CFC: .4byte 0x00003FF8
	thumb_func_end ov73_021E5CD8

	thumb_func_start ov73_021E5D00
ov73_021E5D00: @ 0x021E5D00
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E5D1C @ =0x021EA5E8
	add r3, sp, #0
	movs r2, #5
_021E5D0A:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021E5D0A
	add r0, sp, #0
	bl FUN_02022BE8
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021E5D1C: .4byte 0x021EA5E8
	thumb_func_end ov73_021E5D00

	thumb_func_start ov73_021E5D20
ov73_021E5D20: @ 0x021E5D20
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _021E5DF8 @ =0x021EA540
	add r3, sp, #0x70
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201ACB0
	ldr r5, _021E5DFC @ =0x021EA5B0
	add r3, sp, #0x54
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #4
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0201B1E4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_0201CAE0
	ldr r5, _021E5E00 @ =0x021EA5CC
	add r3, sp, #0x38
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #5
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0201B1E4
	adds r0, r4, #0
	movs r1, #5
	bl FUN_0201CAE0
	ldr r5, _021E5E04 @ =0x021EA578
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #0
	str r0, [r3]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0201B1E4
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201CAE0
	ldr r5, _021E5E08 @ =0x021EA594
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0201B1E4
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0201CAE0
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x32
	bl FUN_0201C1C4
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x32
	bl FUN_0201C1C4
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_021E5DF8: .4byte 0x021EA540
_021E5DFC: .4byte 0x021EA5B0
_021E5E00: .4byte 0x021EA5CC
_021E5E04: .4byte 0x021EA578
_021E5E08: .4byte 0x021EA594
	thumb_func_end ov73_021E5D20

	thumb_func_start ov73_021E5E0C
ov73_021E5E0C: @ 0x021E5E0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	movs r7, #0
	adds r6, r0, #0
	adds r4, r0, #0
	adds r5, r0, #0
_021E5E1C:
	movs r0, #8
	movs r1, #0x32
	bl FUN_02026354
	str r0, [r6, #0x2c]
	movs r0, #0xce
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _021E5EC8 @ =0x00004A3C
	adds r7, r7, #1
	str r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _021E5ECC @ =0x00004A44
	adds r4, #8
	str r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
	movs r0, #0x36
	lsls r0, r0, #4
	str r1, [r6, r0]
	adds r6, r6, #4
	adds r5, #0x10
	cmp r7, #5
	blt _021E5E1C
	movs r0, #0xb4
	movs r1, #0x32
	bl FUN_02026354
	ldr r1, [sp]
	str r0, [r1, #0x44]
	movs r0, #0x28
	movs r1, #0x32
	bl FUN_02026354
	ldr r1, [sp]
	movs r2, #0
	str r0, [r1, #0x48]
	movs r1, #0xc6
	ldr r0, [sp]
	lsls r1, r1, #2
	str r2, [r0, r1]
	ldr r2, [sp]
	ldr r0, [r0, #0x28]
	ldr r2, [r2, #0x48]
	movs r1, #0x11
	bl FUN_0200BB6C
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov73_021E7740
	movs r0, #0x32
	bl FUN_0205B4A4
	movs r2, #0xdf
	ldr r1, [sp]
	lsls r2, r2, #2
	str r0, [r1, r2]
	ldr r2, [sp]
	ldr r0, [sp]
	movs r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r0, [sp, #4]
	movs r1, #7
	adds r2, #0x1c
	movs r3, #0x32
	bl FUN_02007C48
	ldr r1, [sp]
	ldr r2, _021E5ED0 @ =0x00004A18
	str r0, [r1, #0x18]
	movs r0, #0
	str r0, [r1, r2]
	adds r3, r2, #4
	movs r4, #2
	str r4, [r1, r3]
	subs r2, r2, #3
	strb r0, [r1, r2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E5EC8: .4byte 0x00004A3C
_021E5ECC: .4byte 0x00004A44
_021E5ED0: .4byte 0x00004A18
	thumb_func_end ov73_021E5E0C

	thumb_func_start ov73_021E5ED4
ov73_021E5ED4: @ 0x021E5ED4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl ov73_021E77E8
	ldr r0, [r6, #0x18]
	bl FUN_0201AB0C
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0201AB0C
	movs r4, #0
	adds r5, r6, #0
_021E5EF0:
	ldr r0, [r5, #0x2c]
	bl FUN_02026380
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _021E5EF0
	ldr r0, [r6, #0x48]
	bl FUN_02026380
	ldr r0, [r6, #0x44]
	bl FUN_02026380
	pop {r4, r5, r6, pc}
	thumb_func_end ov73_021E5ED4

	thumb_func_start ov73_021E5F0C
ov73_021E5F0C: @ 0x021E5F0C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #5
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #4
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201BB4C
	adds r0, r4, #0
	bl FUN_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021E5F0C

	thumb_func_start ov73_021E5F38
ov73_021E5F38: @ 0x021E5F38
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r6, [r5]
	adds r4, r1, #0
	movs r1, #0
	str r1, [sp]
	movs r0, #0x32
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02007B8C
	movs r3, #0
	movs r1, #4
	str r3, [sp]
	movs r0, #0x32
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r1, #0
	bl FUN_02007B8C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x32
	movs r1, #5
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r1, #0
	bl FUN_02007B44
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x32
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #6
	adds r2, r6, #0
	movs r3, #5
	bl FUN_02007B68
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #0x32
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r1, #0
	bl FUN_02007B44
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #0x32
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #2
	adds r2, r6, #0
	bl FUN_02007B68
	movs r3, #0xc3
	movs r0, #0x32
	lsls r3, r3, #2
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	adds r3, r5, r3
	bl FUN_02007C2C
	movs r1, #0x31
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r1, #6
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x32
	bl FUN_0200304C
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x32
	bl FUN_02003030
	movs r1, #6
	movs r0, #4
	lsls r1, r1, #6
	movs r2, #0x32
	bl FUN_0200304C
	movs r1, #0x1a
	movs r0, #4
	lsls r1, r1, #4
	movs r2, #0x32
	bl FUN_02003030
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	bl FUN_0202ADCC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x32
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xb
	bl FUN_0200E644
	movs r1, #0
	str r1, [sp]
	movs r0, #0x32
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x1f
	movs r3, #0xa
	bl FUN_0200E3DC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov73_021E5F38

	thumb_func_start ov73_021E6048
ov73_021E6048: @ 0x021E6048
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x31
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0201AB0C
	movs r0, #0x31
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov73_021E6048

	thumb_func_start ov73_021E6060
ov73_021E6060: @ 0x021E6060
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021E608C @ =0x021EA550
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_020215A0
	movs r0, #0x14
	movs r1, #0x32
	bl FUN_02022588
	bl FUN_020216C8
	bl FUN_02022638
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021E608C: .4byte 0x021EA550
	thumb_func_end ov73_021E6060

	thumb_func_start ov73_021E6090
ov73_021E6090: @ 0x021E6090
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	str r1, [sp, #0x14]
	blx FUN_020B78D4
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x32
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200B150
	adds r1, r6, #0
	movs r0, #0x1e
	adds r1, #0x54
	movs r2, #0x32
	bl FUN_02009F40
	str r0, [r6, #0x50]
	adds r0, r6, #0
	movs r2, #1
	adds r0, #0x54
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_02009FC8
	movs r7, #0x5f
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_021E60D8:
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0x32
	bl FUN_0200A090
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021E60D8
	movs r0, #2
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x32
	str r0, [sp, #8]
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x14]
	movs r2, #8
	bl FUN_0200A3C8
	movs r1, #0x6b
	lsls r1, r1, #2
	str r0, [r6, r1]
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xf
	str r0, [sp, #8]
	movs r0, #0x32
	subs r1, #0x2c
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r2, #7
	movs r3, #0
	bl FUN_0200A480
	movs r1, #0x1b
	lsls r1, r1, #4
	str r0, [r6, r1]
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x32
	subs r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r2, #9
	movs r3, #1
	bl FUN_0200A540
	movs r1, #0x6d
	lsls r1, r1, #2
	str r0, [r6, r1]
	movs r0, #2
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x32
	subs r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r2, #0xa
	movs r3, #1
	bl FUN_0200A540
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r6, r1]
	subs r1, #0xc
	ldr r0, [r6, r1]
	bl FUN_0200ACF0
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_0200AF94
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov73_021E6090

	thumb_func_start ov73_021E6184
ov73_021E6184: @ 0x021E6184
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	movs r1, #2
	adds r5, r0, #0
	str r1, [sp]
	subs r0, r1, #3
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	movs r3, #0x5f
	str r0, [sp, #0xc]
	movs r2, #1
	lsls r3, r3, #2
	str r2, [sp, #0x10]
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	adds r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r3, #0
	adds r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r2, [r5, r2]
	adds r3, #0x88
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, r3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02009D48
	ldr r0, [r5, #0x50]
	movs r1, #0
	str r0, [sp, #0x2c]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	movs r0, #1
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	movs r0, #0x32
	str r0, [sp, #0x58]
	movs r0, #0x15
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r0, #0x1a
	lsls r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02024624
	movs r1, #0x8a
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_0202484C
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02024830
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x64
	bl FUN_02024ADC
	movs r7, #0x8b
	ldr r4, _021E6298 @ =0x021EA560
	movs r6, #0
	lsls r7, r7, #2
_021E6232:
	ldrh r0, [r4, #4]
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #6]
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02024624
	movs r1, #0x8b
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0202484C
	movs r0, #0x8b
	lsls r0, r0, #2
	subs r1, r6, #1
	lsls r1, r1, #1
	ldr r0, [r5, r0]
	adds r1, #0x1b
	bl FUN_020248F0
	ldr r0, [r5, r7]
	movs r1, #0
	bl FUN_02024830
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #5
	blt _021E6232
	movs r0, #6
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r0, #0x1a
	lsls r0, r0, #0x10
	str r0, [sp, #0x38]
	movs r0, #0x10
	movs r1, #1
	bl FUN_02022C60
	movs r0, #0x10
	movs r1, #1
	bl FUN_02022CC8
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_021E6298: .4byte 0x021EA560
	thumb_func_end ov73_021E6184

	thumb_func_start ov73_021E629C
ov73_021E629C: @ 0x021E629C
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	movs r0, #0x5b
	movs r1, #0xaa
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201D40C
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0xf
	bl FUN_0201D978
	movs r0, #0x15
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	movs r0, #0xc7
	movs r1, #0xae
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #0x10
	bl FUN_0201D40C
	movs r0, #0xae
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201D978
	movs r0, #0x15
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	ldr r0, _021E63B4 @ =0x00000133
	movs r1, #0xb2
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #0x18
	bl FUN_0201D40C
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201D978
	movs r1, #1
	str r1, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0xb6
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r1, r4, r1
	movs r2, #4
	movs r3, #3
	bl FUN_0201D40C
	movs r0, #0xb6
	lsls r0, r0, #2
	ldr r1, [r4, #0x48]
	adds r0, r4, r0
	movs r2, #0
	bl ov73_021E63BC
	movs r0, #7
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	movs r0, #0x35
	movs r1, #0xa6
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r1, r4, r1
	movs r2, #4
	movs r3, #8
	bl FUN_0201D40C
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201D978
	movs r0, #0xa6
	lsls r0, r0, #2
	ldr r2, _021E63B8 @ =0x00010300
	adds r0, r4, r0
	movs r1, #0
	adds r3, r4, #0
	bl ov73_021E735C
	movs r0, #0x32
	bl FUN_0201660C
	movs r1, #0xba
	lsls r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021E63B4: .4byte 0x00000133
_021E63B8: .4byte 0x00010300
	thumb_func_end ov73_021E629C

	thumb_func_start ov73_021E63BC
ov73_021E63BC: @ 0x021E63BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r2, #0
	movs r0, #1
	movs r2, #0
	adds r7, r1, #0
	bl FUN_02002F30
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201D978
	movs r1, #1
	str r1, [sp]
	movs r0, #0x41
	movs r3, #0xd0
	str r4, [sp, #4]
	subs r4, r3, r6
	lsls r0, r0, #0xa
	lsrs r3, r4, #0x1f
	str r0, [sp, #8]
	movs r0, #0
	adds r3, r4, r3
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r7, #0
	asrs r3, r3, #1
	bl FUN_020200FC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov73_021E63BC

	thumb_func_start ov73_021E6400
ov73_021E6400: @ 0x021E6400
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xba
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02016624
	movs r0, #0xa6
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201D520
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201D520
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201D520
	movs r0, #0xae
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201D520
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201D520
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021E6400

	thumb_func_start ov73_021E6444
ov73_021E6444: @ 0x021E6444
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0
	movs r1, #1
	bl FUN_020398D4
	bl FUN_0203769C
	cmp r0, #0
	bne _021E646E
	bl FUN_02037454
	cmp r0, #2
	blt _021E6478
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl ov73_021E756C
	b _021E6478
_021E646E:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov73_021E756C
_021E6478:
	adds r0, r5, #0
	movs r1, #3
	bl ov73_021E670C
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E6444

	thumb_func_start ov73_021E6484
ov73_021E6484: @ 0x021E6484
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov73_021E6508
	bl FUN_0203769C
	cmp r0, #0
	bne _021E64A6
	bl ov73_021E7340
	cmp r0, #1
	beq _021E64AC
	adds r0, r5, #0
	bl ov73_021E7468
	b _021E64AC
_021E64A6:
	adds r0, r5, #0
	bl ov73_021E7468
_021E64AC:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E6484

	thumb_func_start ov73_021E64B0
ov73_021E64B0: @ 0x021E64B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021E64DE
	bl FUN_0202534C
	cmp r0, #0
	beq _021E64CA
	movs r0, #0
	pop {r4, pc}
_021E64CA:
	ldr r0, _021E6504 @ =0x021D110C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _021E64FE
	movs r0, #0xc5
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_021E64DE:
	ldr r0, _021E6504 @ =0x021D110C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _021E64EA
	movs r0, #0
	pop {r4, pc}
_021E64EA:
	bl FUN_0202534C
	cmp r0, #0
	beq _021E64FE
	movs r0, #0xc5
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #0
	pop {r4, pc}
_021E64FE:
	movs r0, #0
	pop {r4, pc}
	nop
_021E6504: .4byte 0x021D110C
	thumb_func_end ov73_021E64B0

	thumb_func_start ov73_021E6508
ov73_021E6508: @ 0x021E6508
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r4, #0
	bl ov73_021E64B0
	ldr r0, _021E66C8 @ =0x021EA534
	bl FUN_02025224
	adds r6, r0, #0
	ldr r1, _021E66CC @ =0x0000FFD5
	add r0, sp, #4
	strh r1, [r0, #4]
	subs r0, r4, #1
	cmp r6, r0
	beq _021E6544
	add r0, sp, #8
	str r0, [sp]
	ldr r3, _021E66D0 @ =0x021D114C
	ldr r0, [r5]
	ldrh r2, [r3, #0x20]
	ldrh r3, [r3, #0x22]
	movs r1, #1
	bl FUN_0201F2CC
	cmp r0, #0
	beq _021E6544
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_021E6544:
	ldr r0, _021E66D4 @ =0x021D110C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _021E6552
	cmp r4, #1
	bne _021E65BE
_021E6552:
	bl FUN_0203769C
	cmp r0, #0
	beq _021E655C
	b _021E669C
_021E655C:
	bl ov73_021E746C
	ldr r1, _021E66D8 @ =0x00004A1C
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021E65B6
	adds r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021E65B6
	movs r1, #1
	add r0, sp, #4
	strb r1, [r0, #2]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	bl ov73_021E756C
	adds r0, r5, #0
	movs r1, #0x16
	bl ov73_021E670C
	add r1, sp, #4
	movs r0, #0x75
	adds r1, #2
	movs r2, #1
	bl FUN_02037030
	adds r0, r5, #0
	movs r1, #0
	bl ov73_021E781C
	ldr r0, _021E66DC @ =0x000005DC
	bl FUN_0200604C
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl ov73_021E71E4
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0201EFBC
	b _021E669C
_021E65B6:
	ldr r0, _021E66E0 @ =0x000005F2
	bl FUN_0200604C
	b _021E669C
_021E65BE:
	movs r0, #2
	tst r0, r1
	bne _021E65C8
	cmp r4, #2
	bne _021E6670
_021E65C8:
	bl FUN_0203769C
	cmp r0, #0
	beq _021E660C
	ldr r1, _021E66E4 @ =0x00004A10
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021E65F4
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl ov73_021E756C
	adds r0, r5, #0
	movs r1, #4
	bl ov73_021E670C
	movs r0, #0x25
	lsls r0, r0, #6
	bl FUN_0200604C
	b _021E669C
_021E65F4:
	adds r0, r1, #0
	adds r0, #0x28
	ldr r0, [r5, r0]
	cmp r0, #0
	bge _021E669C
	movs r0, #2
	adds r1, #0x28
	str r0, [r5, r1]
	ldr r0, _021E66E0 @ =0x000005F2
	bl FUN_0200604C
	b _021E669C
_021E660C:
	bl FUN_02037454
	ldr r1, _021E66D8 @ =0x00004A1C
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021E6668
	adds r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021E6668
	movs r1, #1
	add r0, sp, #4
	strb r1, [r0, #1]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl ov73_021E756C
	adds r0, r5, #0
	movs r1, #4
	bl ov73_021E670C
	add r1, sp, #4
	movs r0, #0x75
	adds r1, #1
	movs r2, #1
	bl FUN_02037030
	adds r0, r5, #0
	movs r1, #0
	bl ov73_021E781C
	movs r0, #0x25
	lsls r0, r0, #6
	bl FUN_0200604C
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov73_021E71E4
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0201EFBC
	b _021E669C
_021E6668:
	ldr r0, _021E66E0 @ =0x000005F2
	bl FUN_0200604C
	b _021E669C
_021E6670:
	ldr r0, _021E66E8 @ =0x00004A20
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E669C
	bl FUN_0203769C
	cmp r0, #0
	bne _021E669C
	bl FUN_02037454
	ldr r1, _021E66D8 @ =0x00004A1C
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021E669C
	movs r1, #0
	add r0, sp, #4
	strb r1, [r0]
	movs r0, #0x75
	add r1, sp, #4
	movs r2, #1
	bl FUN_02037030
_021E669C:
	ldr r0, _021E66EC @ =0x00004A38
	ldr r1, [r5, r0]
	cmp r1, #0
	blt _021E66A8
	subs r1, r1, #1
	str r1, [r5, r0]
_021E66A8:
	ldr r0, _021E66EC @ =0x00004A38
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E66C2
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl ov73_021E71E4
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0201EFBC
_021E66C2:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E66C8: .4byte 0x021EA534
_021E66CC: .4byte 0x0000FFD5
_021E66D0: .4byte 0x021D114C
_021E66D4: .4byte 0x021D110C
_021E66D8: .4byte 0x00004A1C
_021E66DC: .4byte 0x000005DC
_021E66E0: .4byte 0x000005F2
_021E66E4: .4byte 0x00004A10
_021E66E8: .4byte 0x00004A20
_021E66EC: .4byte 0x00004A38
	thumb_func_end ov73_021E6508

	thumb_func_start ov73_021E66F0
ov73_021E66F0: @ 0x021E66F0
	bx lr
	.align 2, 0
	thumb_func_end ov73_021E66F0

	thumb_func_start ov73_021E66F4
ov73_021E66F4: @ 0x021E66F4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #2
	bl ov73_021E670C
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov73_021E66F4

	thumb_func_start ov73_021E670C
ov73_021E670C: @ 0x021E670C
	movs r2, #0xc6
	movs r3, #0x1e
	lsls r2, r2, #2
	str r3, [r0, r2]
	adds r2, r2, #4
	str r1, [r0, r2]
	bx lr
	.align 2, 0
	thumb_func_end ov73_021E670C

	thumb_func_start ov73_021E671C
ov73_021E671C: @ 0x021E671C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x4c]
	adds r4, r1, #0
	bl ov73_021E75FC
	cmp r0, #0
	beq _021E6768
	movs r1, #0xc7
	lsls r1, r1, #2
	ldr r2, [r5, r1]
	subs r0, r1, #4
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	cmp r0, #3
	bne _021E6768
	bl FUN_0203769C
	cmp r0, #0
	bne _021E674E
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov73_021E71E4
_021E674E:
	movs r1, #0
	ldr r0, _021E6774 @ =0x00004A38
	mvns r1, r1
	str r1, [r5, r0]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl ov73_021E71E4
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0201EFBC
_021E6768:
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6774: .4byte 0x00004A38
	thumb_func_end ov73_021E671C

	thumb_func_start ov73_021E6778
ov73_021E6778: @ 0x021E6778
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203769C
	cmp r0, #0
	bne _021E6794
	movs r0, #0
	str r0, [sp]
	movs r0, #0x75
	add r1, sp, #0
	movs r2, #1
	bl FUN_02037030
_021E6794:
	movs r0, #0xc6
	movs r1, #3
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov73_021E6778

	thumb_func_start ov73_021E67A8
ov73_021E67A8: @ 0x021E67A8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	add r0, sp, #0
	movs r1, #0
	movs r2, #0x14
	blx FUN_020D4994
	ldr r0, [r4]
	movs r3, #0xc5
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x1f
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r1, #0x19
	add r0, sp, #0
	strb r1, [r0, #0x10]
	movs r1, #6
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	movs r2, #0xf
	lsls r3, r3, #2
	bics r1, r2
	ldr r2, [r4, r3]
	subs r3, #0x2c
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r2, #0xf
	ands r2, r5
	orrs r1, r2
	strb r1, [r0, #0x12]
	ldrb r2, [r0, #0x12]
	movs r1, #0xf0
	bics r2, r1
	strb r2, [r0, #0x12]
	ldr r0, [r4, r3]
	add r1, sp, #0
	bl FUN_020166FC
	ldr r0, _021E682C @ =0x00004A15
	movs r1, #1
	strb r1, [r4, r0]
	bl FUN_0203769C
	cmp r0, #0
	bne _021E6814
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl ov73_021E71E4
_021E6814:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl ov73_021E71E4
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0201EFBC
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021E682C: .4byte 0x00004A15
	thumb_func_end ov73_021E67A8

	thumb_func_start ov73_021E6830
ov73_021E6830: @ 0x021E6830
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E6888 @ =0x00004A15
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021E6886
	movs r0, #0xba
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020169C0
	movs r1, #0xc5
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x2c
	ldr r0, [r4, r1]
	bl FUN_020169CC
	ldr r0, _021E6888 @ =0x00004A15
	movs r1, #0
	strb r1, [r4, r0]
	bl FUN_0203769C
	cmp r0, #0
	bne _021E686C
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov73_021E71E4
_021E686C:
	movs r1, #0
	ldr r0, _021E688C @ =0x00004A38
	mvns r1, r1
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov73_021E71E4
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0201EFBC
_021E6886:
	pop {r4, pc}
	.align 2, 0
_021E6888: .4byte 0x00004A15
_021E688C: .4byte 0x00004A38
	thumb_func_end ov73_021E6830

	thumb_func_start ov73_021E6890
ov73_021E6890: @ 0x021E6890
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov73_021E67A8
	movs r0, #0xc6
	movs r1, #5
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E6890

	thumb_func_start ov73_021E68AC
ov73_021E68AC: @ 0x021E68AC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	bl FUN_0203769C
	cmp r0, #0
	beq _021E68E0
	ldr r0, _021E69BC @ =0x00004A10
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E6904
	ldr r0, _021E69C0 @ =0x021D110C
	ldr r1, [r0, #0x48]
	movs r0, #0xc3
	tst r0, r1
	beq _021E68D4
	ldr r0, _021E69C4 @ =0x000005F2
	bl FUN_0200604C
_021E68D4:
	adds r0, r5, #0
	bl ov73_021E66F0
	add sp, #8
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_021E68E0:
	ldr r0, _021E69C8 @ =0x00004A24
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E6904
	ldr r0, _021E69C0 @ =0x021D110C
	ldr r1, [r0, #0x48]
	movs r0, #0xc3
	tst r0, r1
	beq _021E68F8
	ldr r0, _021E69C4 @ =0x000005F2
	bl FUN_0200604C
_021E68F8:
	adds r0, r5, #0
	bl ov73_021E66F0
	add sp, #8
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_021E6904:
	bl ov73_021E746C
	adds r4, r0, #0
	bl FUN_02037454
	cmp r4, r0
	beq _021E691E
	adds r0, r5, #0
	bl ov73_021E66F0
	add sp, #8
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_021E691E:
	movs r0, #0xba
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020168F4
	cmp r0, #0
	beq _021E69B0
	cmp r0, #2
	bne _021E6958
	bl FUN_0203769C
	cmp r0, #0
	bne _021E694E
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x75
	add r1, sp, #4
	movs r2, #1
	bl FUN_02037030
	adds r0, r5, #0
	movs r1, #1
	bl ov73_021E781C
_021E694E:
	adds r0, r5, #0
	movs r1, #0
	bl ov73_021E670C
	b _021E69AA
_021E6958:
	bl FUN_0203769C
	cmp r0, #0
	bne _021E6974
	adds r0, r5, #0
	movs r1, #0xb
	bl ov73_021E670C
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #0
	bl ov73_021E756C
	b _021E69AA
_021E6974:
	add r0, sp, #0
	movs r1, #0
	movs r2, #4
	blx FUN_020D4994
	movs r1, #0
	add r0, sp, #0
	strb r1, [r0, #2]
	bl FUN_0203769C
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, _021E69CC @ =0x00004A28
	movs r1, #1
	strb r1, [r5, r0]
	movs r1, #0
	adds r0, #0xa
	strh r1, [r5, r0]
	movs r0, #0xc6
	movs r1, #6
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r0, #0x70
	add r1, sp, #0
	movs r2, #4
	bl FUN_02037030
_021E69AA:
	adds r0, r5, #0
	bl ov73_021E6830
_021E69B0:
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E69BC: .4byte 0x00004A10
_021E69C0: .4byte 0x021D110C
_021E69C4: .4byte 0x000005F2
_021E69C8: .4byte 0x00004A24
_021E69CC: .4byte 0x00004A28
	thumb_func_end ov73_021E68AC

	thumb_func_start ov73_021E69D0
ov73_021E69D0: @ 0x021E69D0
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _021E69E4 @ =0x00004A32
	movs r2, #0
	strh r2, [r0, r1]
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r4, pc}
	nop
_021E69E4: .4byte 0x00004A32
	thumb_func_end ov73_021E69D0

	thumb_func_start ov73_021E69E8
ov73_021E69E8: @ 0x021E69E8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_02037454
	ldr r1, _021E6A68 @ =0x00004A30
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _021E6A06
	bl ov73_021E746C
	ldr r1, _021E6A68 @ =0x00004A30
	ldrh r2, [r5, r1]
	cmp r2, r0
	beq _021E6A1E
_021E6A06:
	ldr r0, _021E6A6C @ =0x00004A32
	movs r1, #0
	strh r1, [r5, r0]
	movs r0, #0xc6
	movs r1, #8
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_021E6A1E:
	adds r0, r1, #2
	ldrsh r0, [r5, r0]
	adds r2, r0, #1
	adds r0, r1, #2
	strh r2, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x1e
	ble _021E6A5E
	add r0, sp, #0
	movs r1, #0
	movs r2, #4
	blx FUN_020D4994
	movs r1, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	bl FUN_0203769C
	add r1, sp, #0
	strb r0, [r1]
	movs r0, #0x70
	add r1, sp, #0
	movs r2, #4
	bl FUN_02037030
	ldr r0, _021E6A6C @ =0x00004A32
	movs r1, #0
	strh r1, [r5, r0]
	movs r0, #0xc6
	movs r1, #9
	lsls r0, r0, #2
	str r1, [r5, r0]
_021E6A5E:
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E6A68: .4byte 0x00004A30
_021E6A6C: .4byte 0x00004A32
	thumb_func_end ov73_021E69E8

	thumb_func_start ov73_021E6A70
ov73_021E6A70: @ 0x021E6A70
	push {r3, r4, r5, lr}
	ldr r2, _021E6A8C @ =0x00004A28
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #0
	strb r1, [r5, r2]
	bl ov73_021E670C
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6A8C: .4byte 0x00004A28
	thumb_func_end ov73_021E6A70

	thumb_func_start ov73_021E6A90
ov73_021E6A90: @ 0x021E6A90
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov73_021E67A8
	movs r0, #0xc6
	movs r1, #0x17
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E6A90

	thumb_func_start ov73_021E6AAC
ov73_021E6AAC: @ 0x021E6AAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov73_021E746C
	ldr r1, _021E6B5C @ =0x00004A1C
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021E6AC8
	adds r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021E6AE4
_021E6AC8:
	ldr r0, _021E6B60 @ =0x021D110C
	ldr r1, [r0, #0x48]
	movs r0, #0xc3
	tst r0, r1
	beq _021E6AD8
	ldr r0, _021E6B64 @ =0x000005F2
	bl FUN_0200604C
_021E6AD8:
	adds r0, r5, #0
	bl ov73_021E66F0
	add sp, #4
	adds r0, r4, #0
	pop {r3, r4, r5, r6, pc}
_021E6AE4:
	movs r0, #0xba
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020168F4
	adds r6, r0, #0
	beq _021E6B4E
	adds r0, r5, #0
	bl ov73_021E6830
	cmp r6, #2
	bne _021E6B1C
	movs r0, #0
	str r0, [sp]
	movs r0, #0x75
	add r1, sp, #0
	movs r2, #1
	bl FUN_02037030
	adds r0, r5, #0
	movs r1, #1
	bl ov73_021E781C
	adds r0, r5, #0
	movs r1, #0
	bl ov73_021E670C
	b _021E6B4E
_021E6B1C:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl ov73_021E71E4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	bl ov73_021E71E4
	bl FUN_0203769C
	cmp r0, #0
	bne _021E6B4A
	movs r0, #0xc6
	movs r1, #0x18
	lsls r0, r0, #2
	str r1, [r5, r0]
	bl ov73_021E746C
	ldr r1, _021E6B68 @ =0x00004A2A
	strb r0, [r5, r1]
	b _021E6B4E
_021E6B4A:
	bl FUN_0202551C
_021E6B4E:
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E6B5C: .4byte 0x00004A1C
_021E6B60: .4byte 0x021D110C
_021E6B64: .4byte 0x000005F2
_021E6B68: .4byte 0x00004A2A
	thumb_func_end ov73_021E6AAC

	thumb_func_start ov73_021E6B6C
ov73_021E6B6C: @ 0x021E6B6C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021E6B94 @ =0x00004A2B
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021E6B8E
	movs r1, #0
	movs r0, #0x73
	adds r2, r1, #0
	bl FUN_02037030
	cmp r0, #1
	bne _021E6B8E
	ldr r0, _021E6B94 @ =0x00004A2B
	movs r1, #1
	strb r1, [r5, r0]
_021E6B8E:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6B94: .4byte 0x00004A2B
	thumb_func_end ov73_021E6B6C

	thumb_func_start ov73_021E6B98
ov73_021E6B98: @ 0x021E6B98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x48]
	movs r1, #0x12
	bl FUN_0200BB6C
	movs r0, #0xb6
	lsls r0, r0, #2
	ldr r1, [r4, #0x48]
	adds r0, r4, r0
	movs r2, #0
	bl ov73_021E63BC
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x25
	bl FUN_020248F0
	movs r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021E6B98

	thumb_func_start ov73_021E6BC8
ov73_021E6BC8: @ 0x021E6BC8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203769C
	cmp r0, #0
	bne _021E6BDA
	bl FUN_02037454
_021E6BDA:
	bl FUN_02037454
	ldr r1, _021E6BF4 @ =0x00004A08
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021E6BEE
	movs r0, #0xc6
	movs r1, #0x1a
	lsls r0, r0, #2
	str r1, [r5, r0]
_021E6BEE:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6BF4: .4byte 0x00004A08
	thumb_func_end ov73_021E6BC8

	thumb_func_start ov73_021E6BF8
ov73_021E6BF8: @ 0x021E6BF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021E6C18 @ =0x00004A0C
	adds r4, r1, #0
	ldr r1, _021E6C1C @ =0x00000F48
	ldr r0, [r5, r0]
	adds r1, r5, r1
	bl ov73_021EA3D0
	movs r0, #0xc6
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6C18: .4byte 0x00004A0C
_021E6C1C: .4byte 0x00000F48
	thumb_func_end ov73_021E6BF8

	thumb_func_start ov73_021E6C20
ov73_021E6C20: @ 0x021E6C20
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _021E6C4C @ =0x021D116C
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x13
	ldr r0, [r0, #0xc]
	bl FUN_0202D1C0
	movs r0, #0xdd
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_02039EAC
	movs r0, #0xc6
	movs r1, #0x1c
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E6C4C: .4byte 0x021D116C
	thumb_func_end ov73_021E6C20

	thumb_func_start ov73_021E6C50
ov73_021E6C50: @ 0x021E6C50
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203769C
	cmp r0, #0
	bne _021E6C62
	bl FUN_02037454
_021E6C62:
	ldr r0, [r5, #8]
	movs r2, #0xdd
	lsls r2, r2, #2
	ldr r0, [r0]
	movs r1, #2
	adds r2, r5, r2
	bl FUN_02039EB4
	cmp r0, #0
	beq _021E6CAE
	ldr r0, _021E6CB4 @ =0x00000657
	movs r1, #8
	bl FUN_02006154
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #0
	bl ov73_021E756C
	adds r0, r5, #0
	movs r1, #0x1d
	bl ov73_021E670C
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_020248F0
	movs r1, #0
	movs r0, #0xc9
	str r1, [r5, #0xc]
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _021E6CB8 @ =0x021D116C
	strb r1, [r0, #0xc]
	ldr r0, _021E6CBC @ =0x00004A14
	strb r1, [r5, r0]
_021E6CAE:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6CB4: .4byte 0x00000657
_021E6CB8: .4byte 0x021D116C
_021E6CBC: .4byte 0x00004A14
	thumb_func_end ov73_021E6C50

	thumb_func_start ov73_021E6CC0
ov73_021E6CC0: @ 0x021E6CC0
	push {r3, r4}
	movs r2, #0xc9
	lsls r2, r2, #2
	ldr r4, [r0, r2]
	adds r3, r4, #1
	str r3, [r0, r2]
	cmp r4, #0x3c
	ble _021E6CD6
	movs r3, #0xf
	subs r2, #0xc
	str r3, [r0, r2]
_021E6CD6:
	adds r0, r1, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov73_021E6CC0

	thumb_func_start ov73_021E6CDC
ov73_021E6CDC: @ 0x021E6CDC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #5
	movs r2, #0
	bl ov73_021E756C
	adds r0, r5, #0
	movs r1, #0xa
	bl ov73_021E670C
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E6CDC

	thumb_func_start ov73_021E6CFC
ov73_021E6CFC: @ 0x021E6CFC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0x3c
	ble _021E6D2C
	movs r1, #0x10
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x32
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200FA24
	movs r4, #3
_021E6D2C:
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov73_021E6CFC

	thumb_func_start ov73_021E6D38
ov73_021E6D38: @ 0x021E6D38
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov73_021E67A8
	movs r0, #0xc6
	movs r1, #0xc
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E6D38

	thumb_func_start ov73_021E6D54
ov73_021E6D54: @ 0x021E6D54
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov73_021E746C
	ldr r1, _021E6DEC @ =0x00004A1C
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021E6D6E
	adds r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021E6D88
_021E6D6E:
	ldr r0, _021E6DF0 @ =0x021D110C
	ldr r1, [r0, #0x48]
	movs r0, #0xc3
	tst r0, r1
	beq _021E6D7E
	ldr r0, _021E6DF4 @ =0x000005F2
	bl FUN_0200604C
_021E6D7E:
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_021E6D88:
	movs r0, #0xba
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020168F4
	cmp r0, #0
	beq _021E6DE0
	cmp r0, #2
	bne _021E6DB8
	movs r1, #0
	movs r0, #0xc6
	str r1, [sp]
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r0, #0x75
	add r1, sp, #0
	movs r2, #1
	bl FUN_02037030
	adds r0, r5, #0
	movs r1, #1
	bl ov73_021E781C
	b _021E6DDA
_021E6DB8:
	movs r0, #0xc6
	movs r1, #0xd
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0
	movs r0, #0x71
	adds r2, r1, #0
	bl FUN_02037030
	movs r0, #0
	bl FUN_02034818
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200BE48
_021E6DDA:
	adds r0, r5, #0
	bl ov73_021E6830
_021E6DE0:
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6DEC: .4byte 0x00004A1C
_021E6DF0: .4byte 0x021D110C
_021E6DF4: .4byte 0x000005F2
	thumb_func_end ov73_021E6D54

	thumb_func_start ov73_021E6DF8
ov73_021E6DF8: @ 0x021E6DF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203769C
	cmp r0, #0
	bne _021E6E12
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	bl ov73_021E756C
	b _021E6E2C
_021E6E12:
	movs r0, #0
	bl FUN_02034818
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200BE48
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov73_021E756C
_021E6E2C:
	adds r0, r5, #0
	movs r1, #0xe
	bl ov73_021E670C
	movs r0, #0xc9
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov73_021E6DF8

	thumb_func_start ov73_021E6E48
ov73_021E6E48: @ 0x021E6E48
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #0xc9
	lsls r1, r1, #2
	ldr r2, [r0, r1]
	adds r2, r2, #1
	str r2, [r0, r1]
	ldr r2, [r0, r1]
	cmp r2, #0x2d
	ble _021E6E62
	movs r2, #0xf
	subs r1, #0xc
	str r2, [r0, r1]
_021E6E62:
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021E6E48

	thumb_func_start ov73_021E6E6C
ov73_021E6E6C: @ 0x021E6E6C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc9
	adds r4, r1, #0
	bl FUN_02037AC0
	movs r0, #0xc6
	movs r1, #0x10
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov73_021E6E6C

	thumb_func_start ov73_021E6E8C
ov73_021E6E8C: @ 0x021E6E8C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0xc9
	adds r5, r1, #0
	bl FUN_02037B38
	cmp r0, #0
	beq _021E6EBE
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020398D4
	movs r1, #0x10
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x32
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200FA24
	movs r5, #3
_021E6EBE:
	adds r0, r4, #0
	bl ov73_021E66F0
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov73_021E6E8C

	thumb_func_start ov73_021E6ECC
ov73_021E6ECC: @ 0x021E6ECC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x4c]
	adds r4, r1, #0
	bl ov73_021E75FC
	cmp r0, #0
	beq _021E6EE6
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0
	bl ov73_021E756C
_021E6EE6:
	movs r0, #0xc6
	movs r1, #0x12
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E6ECC

	thumb_func_start ov73_021E6EF8
ov73_021E6EF8: @ 0x021E6EF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x4c]
	adds r4, r1, #0
	bl ov73_021E75FC
	cmp r0, #0
	beq _021E6F10
	movs r0, #0xc6
	movs r1, #0xa
	lsls r0, r0, #2
	str r1, [r5, r0]
_021E6F10:
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov73_021E6EF8

	thumb_func_start ov73_021E6F1C
ov73_021E6F1C: @ 0x021E6F1C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203769C
	cmp r0, #0
	bne _021E6F34
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	bl ov73_021E71E4
_021E6F34:
	movs r1, #0
	ldr r0, _021E6FA4 @ =0x00004A38
	mvns r1, r1
	str r1, [r5, r0]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl ov73_021E71E4
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0201EFBC
	ldr r0, [r5, #0x4c]
	cmp r0, #0xff
	beq _021E6F66
	bl ov73_021E75FC
	cmp r0, #0
	bne _021E6F66
	ldr r0, [r5, #0x4c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_020200A0
_021E6F66:
	adds r0, r5, #0
	movs r1, #0xf
	movs r2, #1
	bl ov73_021E756C
	movs r0, #0xc6
	movs r1, #0x14
	lsls r0, r0, #2
	str r1, [r5, r0]
	bl FUN_0203769C
	cmp r0, #0
	bne _021E6F88
	adds r0, r5, #0
	movs r1, #0
	bl ov73_021E781C
_021E6F88:
	bl FUN_02037454
	ldr r1, _021E6FA8 @ =0x00004A2C
	str r0, [r5, r1]
	movs r0, #0x4b
	lsls r0, r0, #2
	adds r1, #8
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6FA4: .4byte 0x00004A38
_021E6FA8: .4byte 0x00004A2C
	thumb_func_end ov73_021E6F1C

	thumb_func_start ov73_021E6FAC
ov73_021E6FAC: @ 0x021E6FAC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021E6FE4 @ =0x00004A2C
	adds r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E6FCA
	bl FUN_02037454
	ldr r1, _021E6FE4 @ =0x00004A2C
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021E6FCA
	movs r0, #0
	str r0, [r5, r1]
_021E6FCA:
	movs r0, #0xc6
	movs r1, #0x15
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0
	adds r0, #0xc
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6FE4: .4byte 0x00004A2C
	thumb_func_end ov73_021E6FAC

	thumb_func_start ov73_021E6FE8
ov73_021E6FE8: @ 0x021E6FE8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021E7054 @ =0x00004A2C
	adds r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E7006
	bl FUN_02037454
	ldr r1, _021E7054 @ =0x00004A2C
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021E7006
	movs r0, #0
	str r0, [r5, r1]
_021E7006:
	ldr r0, _021E7058 @ =0x00004A34
	ldr r1, [r5, r0]
	subs r1, r1, #1
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	cmp r1, #0
	bge _021E701A
	movs r1, #0
	subs r0, #8
	str r1, [r5, r0]
_021E701A:
	movs r1, #0xc9
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0x3c
	ble _021E7048
	ldr r0, _021E7054 @ =0x00004A2C
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E7048
	movs r0, #0
	subs r1, #0xc
	str r0, [r5, r1]
	bl FUN_0203769C
	cmp r0, #0
	bne _021E7048
	adds r0, r5, #0
	movs r1, #1
	bl ov73_021E781C
_021E7048:
	adds r0, r5, #0
	bl ov73_021E66F0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E7054: .4byte 0x00004A2C
_021E7058: .4byte 0x00004A34
	thumb_func_end ov73_021E6FE8

	thumb_func_start ov73_021E705C
ov73_021E705C: @ 0x021E705C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #0xd
	bgt _021E707E
	bge _021E7092
	cmp r4, #8
	bgt _021E7110
	cmp r4, #2
	blt _021E7110
	beq _021E708C
	cmp r4, #7
	beq _021E710A
	cmp r4, #8
	beq _021E710A
	pop {r4, r5, r6, pc}
_021E707E:
	cmp r4, #0x13
	bgt _021E7086
	beq _021E70D0
	pop {r4, r5, r6, pc}
_021E7086:
	cmp r4, #0x19
	beq _021E7098
	pop {r4, r5, r6, pc}
_021E708C:
	bl ov73_021E761C
	b _021E710A
_021E7092:
	bl ov73_021E6830
	b _021E710A
_021E7098:
	ldr r0, [r5, #0x4c]
	bl ov73_021E75FC
	cmp r0, #0
	bne _021E70AC
	ldr r0, [r5, #0x4c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_020200A0
_021E70AC:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl ov73_021E71E4
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0201EFBC
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0
	bl ov73_021E756C
	adds r0, r5, #0
	bl ov73_021E6830
	b _021E710A
_021E70D0:
	ldr r0, _021E7114 @ =0x00004A28
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _021E7110
	adds r0, r6, #0
	bl FUN_02034818
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200BE48
	bl FUN_0203769C
	cmp r6, r0
	beq _021E7110
	adds r0, r5, #0
	bl ov73_021E6830
	bl FUN_0203769C
	cmp r0, #0
	bne _021E710A
	ldr r1, _021E7118 @ =0x00004A24
	ldr r0, _021E711C @ =0x0000FFFF
	ldr r2, [r5, r1]
	eors r0, r6
	ands r0, r2
	str r0, [r5, r1]
_021E710A:
	movs r0, #0xc6
	lsls r0, r0, #2
	str r4, [r5, r0]
_021E7110:
	pop {r4, r5, r6, pc}
	nop
_021E7114: .4byte 0x00004A28
_021E7118: .4byte 0x00004A24
_021E711C: .4byte 0x0000FFFF
	thumb_func_end ov73_021E705C

	thumb_func_start ov73_021E7120
ov73_021E7120: @ 0x021E7120
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0xc6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r0, #3
	bne _021E71C0
	cmp r4, #1
	beq _021E713E
	cmp r4, #0x13
	beq _021E7182
	b _021E71B8
_021E713E:
	adds r0, r6, #0
	bl FUN_02034818
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200BE48
	adds r0, r5, #0
	movs r1, #1
	bl ov73_021E781C
	movs r0, #0xc6
	lsls r0, r0, #2
	str r4, [r5, r0]
	bl FUN_02037454
	ldr r1, _021E71D8 @ =0x00004A1C
	str r0, [r5, r1]
	movs r0, #0
	adds r1, #8
	str r0, [r5, r1]
	bl FUN_0203769C
	cmp r0, #0
	bne _021E71D2
	movs r2, #1
	movs r0, #0x75
	add r1, sp, #0
	str r2, [sp]
	bl FUN_02037030
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021E7182:
	adds r0, r6, #0
	bl FUN_02034818
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200BE48
	bl FUN_0203769C
	cmp r6, r0
	beq _021E71D2
	bl FUN_0203769C
	cmp r0, #0
	bne _021E71AE
	ldr r1, _021E71DC @ =0x00004A24
	ldr r0, _021E71E0 @ =0x0000FFFF
	ldr r2, [r5, r1]
	eors r0, r6
	ands r0, r2
	str r0, [r5, r1]
_021E71AE:
	movs r0, #0xc6
	lsls r0, r0, #2
	add sp, #4
	str r4, [r5, r0]
	pop {r3, r4, r5, r6, pc}
_021E71B8:
	bl FUN_0202551C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021E71C0:
	cmp r4, #1
	bne _021E71D2
	ldr r0, _021E71DC @ =0x00004A24
	movs r1, #0
	str r1, [r5, r0]
	bl FUN_02037454
	ldr r1, _021E71D8 @ =0x00004A1C
	str r0, [r5, r1]
_021E71D2:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E71D8: .4byte 0x00004A1C
_021E71DC: .4byte 0x00004A24
_021E71E0: .4byte 0x0000FFFF
	thumb_func_end ov73_021E7120

	thumb_func_start ov73_021E71E4
ov73_021E71E4: @ 0x021E71E4
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r3, r1, #0
	movs r1, #0xc3
	lsls r1, r1, #2
	ldr r1, [r0, r1]
	movs r4, #8
	str r4, [sp]
	movs r4, #4
	str r4, [sp, #4]
	adds r4, r1, #0
	adds r4, #0xc
	str r4, [sp, #8]
	movs r4, #0
	lsls r2, r2, #0x1a
	str r4, [sp, #0xc]
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	ldrh r2, [r1]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r1, [r1, #2]
	ldr r2, _021E722C @ =_021EA51C
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x18]
	ldrb r2, [r2, r3]
	ldr r0, [r0]
	movs r1, #1
	movs r3, #0x14
	bl FUN_0201C4EC
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_021E722C: .4byte _021EA51C
	thumb_func_end ov73_021E71E4

	thumb_func_start ov73_021E7230
ov73_021E7230: @ 0x021E7230
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl FUN_0203769C
	cmp r0, #0
	bne _021E7286
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov73_021E71E4
	ldr r0, [r4, #0x28]
	movs r1, #0x15
	bl FUN_0200BBA0
	adds r5, r0, #0
	movs r0, #4
	adds r1, r5, #0
	movs r2, #0
	bl FUN_02002F30
	movs r1, #0x40
	subs r3, r1, r0
	movs r1, #0
	str r1, [sp]
	lsrs r6, r3, #0x1f
	adds r6, r3, r6
	ldr r0, _021E72EC @ =0x00040100
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0xae
	lsls r0, r0, #2
	str r1, [sp, #0xc]
	adds r0, r4, r0
	movs r1, #4
	adds r2, r5, #0
	asrs r3, r6, #1
	bl FUN_020200FC
	adds r0, r5, #0
	bl FUN_02026380
_021E7286:
	movs r1, #0
	ldr r0, _021E72F0 @ =0x00004A38
	mvns r1, r1
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov73_021E71E4
	ldr r0, [r4, #0x28]
	movs r1, #0x16
	bl FUN_0200BBA0
	adds r5, r0, #0
	movs r0, #4
	adds r1, r5, #0
	movs r2, #0
	bl FUN_02002F30
	movs r1, #0x40
	subs r3, r1, r0
	movs r1, #0
	str r1, [sp]
	lsrs r6, r3, #0x1f
	adds r6, r3, r6
	ldr r0, _021E72EC @ =0x00040100
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0xb2
	lsls r0, r0, #2
	str r1, [sp, #0xc]
	adds r0, r4, r0
	movs r1, #4
	adds r2, r5, #0
	asrs r3, r6, #1
	bl FUN_020200FC
	adds r0, r5, #0
	bl FUN_02026380
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0201EFBC
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0201EFBC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021E72EC: .4byte 0x00040100
_021E72F0: .4byte 0x00004A38
	thumb_func_end ov73_021E7230

	thumb_func_start ov73_021E72F4
ov73_021E72F4: @ 0x021E72F4
	push {r3, lr}
	ldrh r1, [r0]
	adds r1, #0xa
	strh r1, [r0]
	ldrh r2, [r0]
	movs r1, #0x5a
	lsls r1, r1, #2
	cmp r2, r1
	bls _021E730A
	movs r1, #0
	strh r1, [r0]
_021E730A:
	ldrh r0, [r0]
	bl FUN_0201FCAC
	movs r1, #0xa
	adds r2, r0, #0
	muls r2, r1, r2
	asrs r0, r2, #0xb
	lsrs r0, r0, #0x14
	adds r0, r2, r0
	asrs r0, r0, #0xc
	adds r0, #0xf
	lsls r2, r0, #5
	movs r0, #0x1d
	orrs r2, r0
	add r0, sp, #0
	strh r2, [r0]
	add r0, sp, #0
	movs r2, #2
	blx FUN_020CFD18
	add r0, sp, #0
	movs r1, #0x2a
	movs r2, #2
	blx FUN_020CFD18
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov73_021E72F4

	thumb_func_start ov73_021E7340
ov73_021E7340: @ 0x021E7340
	push {r3, r4, r5, lr}
	movs r5, #0
	adds r4, r5, #0
_021E7346:
	adds r0, r4, #0
	bl FUN_02034818
	cmp r0, #0
	beq _021E7352
	adds r5, r5, #1
_021E7352:
	adds r4, r4, #1
	cmp r4, #5
	blt _021E7346
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E7340

	thumb_func_start ov73_021E735C
ov73_021E735C: @ 0x021E735C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r3, [sp, #0x14]
	adds r6, r0, #0
	str r2, [sp, #0x10]
	bl FUN_0203769C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	bl ov73_021E7490
	cmp r0, #0
	bne _021E737C
	add sp, #0x28
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E737C:
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0201D978
	ldr r7, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x20]
	adds r4, r7, #0
	movs r5, #1
_021E738E:
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021E7448
	bl FUN_02028F88
	str r0, [sp, #0x24]
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ldr r1, [r4, #0x2c]
	bl FUN_02028F58
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x24]
	ldr r0, [r0, #0x24]
	movs r1, #0
	movs r3, #5
	bl FUN_0200BFCC
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0x24]
	ldr r1, [r1, #0x28]
	movs r2, #1
	movs r3, #0x32
	bl FUN_0200BC4C
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	str r5, [sp]
	bne _021E7410
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E7464 @ =0x00020300
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x2c]
	adds r0, r6, #0
	movs r3, #5
	bl FUN_020200FC
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E7464 @ =0x00020300
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0x46
	bl FUN_020200FC
	b _021E7442
_021E7410:
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x2c]
	adds r0, r6, #0
	movs r3, #5
	bl FUN_020200FC
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0x46
	bl FUN_020200FC
_021E7442:
	ldr r0, [sp, #0x18]
	bl FUN_02026380
_021E7448:
	ldr r0, [sp, #0x20]
	adds r7, #8
	adds r0, r0, #1
	adds r4, r4, #4
	adds r5, #0x12
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _021E738E
	adds r0, r6, #0
	bl FUN_0201D578
	movs r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E7464: .4byte 0x00020300
	thumb_func_end ov73_021E735C

	thumb_func_start ov73_021E7468
ov73_021E7468: @ 0x021E7468
	bx lr
	.align 2, 0
	thumb_func_end ov73_021E7468

	thumb_func_start ov73_021E746C
ov73_021E746C: @ 0x021E746C
	push {r3, r4, r5, lr}
	movs r5, #0
	adds r4, r5, #0
_021E7472:
	adds r0, r4, #0
	bl FUN_02034818
	cmp r0, #0
	beq _021E747E
	adds r5, r5, #1
_021E747E:
	adds r4, r4, #1
	cmp r4, #5
	blt _021E7472
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E746C

	thumb_func_start ov73_021E7488
ov73_021E7488: @ 0x021E7488
	ldr r3, _021E748C @ =ov73_021E746C
	bx r3
	.align 2, 0
_021E748C: .4byte ov73_021E746C
	thumb_func_end ov73_021E7488

	thumb_func_start ov73_021E7490
ov73_021E7490: @ 0x021E7490
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	str r4, [sp]
	adds r6, r7, #0
	adds r5, r7, #0
_021E749C:
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r1, [r6, r0]
	adds r0, r0, #4
	str r1, [r6, r0]
	adds r0, r4, #0
	bl FUN_02034818
	movs r1, #0xce
	lsls r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _021E7560 @ =0x00004A3C
	ldr r2, _021E7564 @ =0x00004A44
	ldr r1, [r5, r0]
	adds r0, r0, #4
	ldr r0, [r5, r0]
	str r1, [r5, r2]
	adds r1, r2, #4
	str r0, [r5, r1]
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021E74DA
	bl FUN_02028F84
	ldr r1, _021E7560 @ =0x00004A3C
	str r0, [r5, r1]
	movs r1, #1
	ldr r0, _021E7568 @ =0x00004A40
	b _021E74E4
_021E74DA:
	adds r0, r2, #0
	movs r1, #0
	subs r0, #8
	str r1, [r5, r0]
	subs r0, r2, #4
_021E74E4:
	adds r4, r4, #1
	str r1, [r5, r0]
	adds r6, #8
	adds r5, #0x10
	cmp r4, #5
	blt _021E749C
	movs r4, #0
	adds r2, r7, #0
	adds r3, r7, #0
_021E74F6:
	movs r0, #0xce
	movs r1, #0xcf
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r7, r0]
	ldr r1, [r7, r1]
	cmp r1, r0
	beq _021E7520
	movs r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _021E7518
	movs r0, #0x36
	movs r1, #3
	lsls r0, r0, #4
	str r1, [r2, r0]
	b _021E7550
_021E7518:
	movs r0, #0x36
	lsls r0, r0, #4
	str r1, [r2, r0]
	b _021E7550
_021E7520:
	ldr r0, _021E7560 @ =0x00004A3C
	ldr r5, _021E7564 @ =0x00004A44
	ldr r1, [r3, r0]
	ldr r6, [r3, r5]
	adds r0, r0, #4
	adds r5, r5, #4
	ldr r0, [r3, r0]
	ldr r5, [r3, r5]
	eors r1, r6
	eors r5, r0
	orrs r1, r5
	beq _021E7550
	movs r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _021E754A
	movs r0, #0x36
	movs r1, #3
	lsls r0, r0, #4
	str r1, [r2, r0]
	b _021E7550
_021E754A:
	movs r0, #0x36
	lsls r0, r0, #4
	str r1, [r2, r0]
_021E7550:
	adds r4, r4, #1
	adds r7, #8
	adds r2, r2, #4
	adds r3, #0x10
	cmp r4, #5
	blt _021E74F6
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E7560: .4byte 0x00004A3C
_021E7564: .4byte 0x00004A44
_021E7568: .4byte 0x00004A40
	thumb_func_end ov73_021E7490

	thumb_func_start ov73_021E756C
ov73_021E756C: @ 0x021E756C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r1, #0
	movs r0, #0xb4
	movs r1, #0x32
	adds r6, r2, #0
	bl FUN_02026354
	adds r4, r0, #0
	ldr r0, [r5, #0x28]
	adds r1, r7, #0
	adds r2, r4, #0
	bl FUN_0200BB6C
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x44]
	adds r2, r4, #0
	bl FUN_0200CBBC
	adds r0, r4, #0
	bl FUN_02026380
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201D978
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	movs r2, #1
	movs r3, #0xb
	bl FUN_0200E998
	cmp r6, #0
	bne _021E75DC
	adds r0, r5, #0
	bl ov73_021E7818
	movs r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r2, [r5, #0x44]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_020200A8
	add sp, #0xc
	str r0, [r5, #0x4c]
	pop {r4, r5, r6, r7, pc}
_021E75DC:
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r2, [r5, #0x44]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_020200A8
	movs r0, #0xff
	str r0, [r5, #0x4c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov73_021E756C

	thumb_func_start ov73_021E75FC
ov73_021E75FC: @ 0x021E75FC
	push {r3, lr}
	cmp r0, #0xff
	bne _021E7606
	movs r0, #1
	pop {r3, pc}
_021E7606:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02020094
	cmp r0, #0
	bne _021E7616
	movs r0, #1
	pop {r3, pc}
_021E7616:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov73_021E75FC

	thumb_func_start ov73_021E761C
ov73_021E761C: @ 0x021E761C
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r3, _021E7628 @ =FUN_0200E9BC
	movs r1, #0
	bx r3
	.align 2, 0
_021E7628: .4byte FUN_0200E9BC
	thumb_func_end ov73_021E761C

	thumb_func_start ov73_021E762C
ov73_021E762C: @ 0x021E762C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x14]
	movs r0, #0xc1
	lsls r0, r0, #2
	movs r4, #0
	adds r0, r5, r0
	str r4, [sp, #8]
	adds r6, r5, #0
	movs r7, #0x1c
	str r0, [sp, #0x18]
_021E764E:
	movs r0, #0x36
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #3
	bhi _021E771A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E7664: @ jump table
	.2byte _021E771A - _021E7664 - 2 @ case 0
	.2byte _021E766C - _021E7664 - 2 @ case 1
	.2byte _021E771A - _021E7664 - 2 @ case 2
	.2byte _021E76E2 - _021E7664 - 2 @ case 3
_021E766C:
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021E767A
	bl FUN_0202551C
_021E767A:
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02028F94
	str r0, [sp, #0xc]
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0202903C
	str r0, [sp, #0x10]
	bl FUN_0203769C
	cmp r4, r0
	bne _021E76AC
	movs r0, #0x8b
	ldr r1, [sp, #0xc]
	lsls r0, r0, #2
	lsls r1, r1, #1
	ldr r0, [r5, r0]
	adds r1, #0x26
	bl FUN_020248F0
	b _021E76C8
_021E76AC:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	adds r2, r4, #0
	bl ov73_021E77A4
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	bl FUN_020248F0
_021E76C8:
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02024830
	movs r0, #0x36
	movs r1, #2
	lsls r0, r0, #4
	str r1, [r5, r0]
	movs r0, #1
	str r0, [sp, #8]
	b _021E771A
_021E76E2:
	bl FUN_0203769C
	cmp r4, r0
	bne _021E7706
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02028F94
	adds r1, r0, #0
	movs r0, #0x8b
	lsls r0, r0, #2
	lsls r1, r1, #1
	ldr r0, [r5, r0]
	adds r1, #0x27
	bl FUN_020248F0
	b _021E7712
_021E7706:
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r7, #0
	bl FUN_020248F0
_021E7712:
	movs r0, #0x36
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
_021E771A:
	ldr r0, [sp, #4]
	adds r4, r4, #1
	adds r0, r0, #2
	adds r5, r5, #4
	adds r6, #8
	adds r7, r7, #2
	str r0, [sp, #4]
	cmp r4, #5
	blt _021E764E
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021E7738
	ldr r0, _021E773C @ =0x0000064E
	bl FUN_0200604C
_021E7738:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E773C: .4byte 0x0000064E
	thumb_func_end ov73_021E762C

	thumb_func_start ov73_021E7740
ov73_021E7740: @ 0x021E7740
	push {r3, r4, r5, lr}
	movs r2, #0xc1
	adds r5, r0, #0
	lsls r2, r2, #2
	adds r4, r1, #0
	movs r0, #0x64
	movs r1, #9
	adds r2, r5, r2
	movs r3, #0x32
	bl FUN_020079F4
	movs r2, #0xbf
	lsls r2, r2, #2
	str r0, [r5, r2]
	adds r2, #0xc
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r5, r2
	movs r3, #0x32
	bl FUN_02007C48
	movs r3, #3
	lsls r3, r3, #8
	str r0, [r5, r3]
	movs r0, #0x32
	subs r3, #0xc
	str r0, [sp]
	movs r0, #0x64
	movs r1, #0x2b
	movs r2, #1
	adds r3, r5, r3
	bl FUN_020079BC
	movs r3, #0xbb
	lsls r3, r3, #2
	str r0, [r5, r3]
	movs r0, #0x32
	adds r3, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #1
	adds r3, r5, r3
	bl FUN_02007C10
	movs r1, #0x2f
	lsls r1, r1, #4
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov73_021E7740

	thumb_func_start ov73_021E77A4
ov73_021E77A4: @ 0x021E77A4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x18]
	adds r1, r3, #0
	adds r5, r2, #0
	bl FUN_0205B464
	adds r4, r0, #0
	ldr r0, [r6, #4]
	movs r2, #6
	ldr r6, [r0, #0xc]
	ldr r0, [r7, #4]
	lsls r2, r2, #8
	ldr r1, [r0, #0x14]
	adds r0, r4, #0
	muls r0, r2, r0
	adds r0, r1, r0
	ldr r1, _021E77E4 @ =0x021EA520
	lsls r3, r5, #1
	ldrh r1, [r1, r3]
	blx FUN_020CFE74
	lsls r0, r4, #5
	adds r1, r5, #7
	adds r0, r6, r0
	lsls r1, r1, #5
	movs r2, #0x20
	blx FUN_020CFD18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E77E4: .4byte 0x021EA520
	thumb_func_end ov73_021E77A4

	thumb_func_start ov73_021E77E8
ov73_021E77E8: @ 0x021E77E8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201AB0C
	movs r0, #3
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	bl FUN_0201AB0C
	movs r0, #0xbb
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201AB0C
	movs r0, #0x2f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0201AB0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021E77E8

	thumb_func_start ov73_021E7818
ov73_021E7818: @ 0x021E7818
	movs r0, #1
	bx lr
	thumb_func_end ov73_021E7818

	thumb_func_start ov73_021E781C
ov73_021E781C: @ 0x021E781C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203769C
	cmp r0, #0
	bne _021E7868
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _021E783A
	movs r0, #1
	bl FUN_02038C1C
	b _021E784A
_021E783A:
	bl FUN_02037454
	adds r0, r4, r0
	cmp r0, #5
	ble _021E7846
	movs r0, #5
_021E7846:
	bl FUN_02038C1C
_021E784A:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	ldr r0, _021E786C @ =0x00004A29
	bne _021E785A
	movs r1, #2
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021E785A:
	cmp r4, #0
	bne _021E7864
	movs r1, #1
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021E7864:
	movs r1, #0
	strb r1, [r5, r0]
_021E7868:
	pop {r3, r4, r5, pc}
	nop
_021E786C: .4byte 0x00004A29
	thumb_func_end ov73_021E781C

	thumb_func_start ov73_021E7870
ov73_021E7870: @ 0x021E7870
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	bl ov73_021E746C
	adds r5, r0, #0
	ldr r0, _021E7950 @ =0x00004A1C
	ldr r1, [r4, r0]
	cmp r5, r1
	ble _021E789A
	movs r2, #1
	add r0, sp, #0
	strb r2, [r0]
	movs r0, #0x75
	add r1, sp, #0
	bl FUN_02037030
	movs r1, #1
	ldr r0, _021E7954 @ =0x00004A20
	b _021E789E
_021E789A:
	movs r1, #0
	adds r0, r0, #4
_021E789E:
	str r1, [r4, r0]
	ldr r0, _021E7958 @ =0x00004A18
	ldr r0, [r4, r0]
	cmp r5, r0
	bne _021E78AE
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021E78AE:
	cmp r5, #5
	bhi _021E7942
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E78BE: @ jump table
	.2byte _021E7942 - _021E78BE - 2 @ case 0
	.2byte _021E78CA - _021E78BE - 2 @ case 1
	.2byte _021E78FC - _021E78BE - 2 @ case 2
	.2byte _021E78FC - _021E78BE - 2 @ case 3
	.2byte _021E78FC - _021E78BE - 2 @ case 4
	.2byte _021E7934 - _021E78BE - 2 @ case 5
_021E78CA:
	bl FUN_02037454
	cmp r0, #1
	bgt _021E78DA
	bl FUN_02033250
	cmp r0, #1
	bls _021E78E0
_021E78DA:
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021E78E0:
	movs r0, #0xc6
	movs r1, #0x11
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r4, #0
	subs r1, #0x12
	bl ov73_021E781C
	adds r0, r4, #0
	bl ov73_021E6830
	add sp, #4
	movs r0, #2
	pop {r3, r4, r5, r6, pc}
_021E78FC:
	movs r0, #2
	bl FUN_0205A904
	ldr r0, _021E7958 @ =0x00004A18
	ldr r1, [r4, r0]
	cmp r5, r1
	bge _021E7942
	adds r0, #0x11
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _021E7918
	cmp r0, #1
	beq _021E7922
	b _021E792A
_021E7918:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov73_021E781C
	b _021E792A
_021E7922:
	adds r0, r4, #0
	movs r1, #0
	bl ov73_021E781C
_021E792A:
	bl FUN_02037454
	ldr r1, _021E7950 @ =0x00004A1C
	str r0, [r4, r1]
	b _021E7942
_021E7934:
	movs r0, #9
	bl FUN_0205A904
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov73_021E781C
_021E7942:
	bl ov73_021E746C
	ldr r1, _021E7958 @ =0x00004A18
	str r0, [r4, r1]
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E7950: .4byte 0x00004A1C
_021E7954: .4byte 0x00004A20
_021E7958: .4byte 0x00004A18
	thumb_func_end ov73_021E7870

	thumb_func_start ov73_021E795C
ov73_021E795C: @ 0x021E795C
	movs r0, #0x2c
	bx lr
	thumb_func_end ov73_021E795C

	thumb_func_start ov73_021E7960
ov73_021E7960: @ 0x021E7960
	adds r0, #0x2c
	bx lr
	thumb_func_end ov73_021E7960

	thumb_func_start ov73_021E7964
ov73_021E7964: @ 0x021E7964
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	adds r6, r7, #0
	mov ip, r1
	movs r5, #5
	adds r6, #0xdc
_021E7970:
	adds r4, r6, #0
	subs r4, #0x2c
	adds r3, r6, #0
	movs r2, #5
_021E7978:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021E7978
	ldr r0, [r4]
	subs r5, r5, #1
	subs r6, #0x2c
	str r0, [r3]
	cmp r5, #2
	bgt _021E7970
	adds r7, #0x58
	movs r3, #5
_021E7990:
	mov r2, ip
	ldm r2!, {r0, r1}
	mov ip, r2
	stm r7!, {r0, r1}
	subs r3, r3, #1
	bne _021E7990
	mov r0, ip
	ldr r0, [r0]
	str r0, [r7]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov73_021E7964

	thumb_func_start ov73_021E79A8
ov73_021E79A8: @ 0x021E79A8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #2
	blt _021E79B6
	cmp r5, #5
	ble _021E79BA
_021E79B6:
	bl FUN_0202551C
_021E79BA:
	adds r2, r5, #1
	cmp r2, #5
	bgt _021E79E2
	movs r0, #0x2c
	muls r0, r2, r0
	adds r3, r4, r0
_021E79C6:
	adds r6, r3, #0
	adds r7, r3, #0
	subs r6, #0x2c
	movs r5, #5
_021E79CE:
	ldm r7!, {r0, r1}
	stm r6!, {r0, r1}
	subs r5, r5, #1
	bne _021E79CE
	ldr r0, [r7]
	adds r2, r2, #1
	adds r3, #0x2c
	str r0, [r6]
	cmp r2, #5
	ble _021E79C6
_021E79E2:
	ldr r0, _021E79F0 @ =0x0000FFFF
	adds r1, r4, #0
	adds r4, #0xdc
	adds r1, #0xdc
	strh r0, [r4]
	strh r0, [r1, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E79F0: .4byte 0x0000FFFF
	thumb_func_end ov73_021E79A8

	thumb_func_start ov73_021E79F4
ov73_021E79F4: @ 0x021E79F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	adds r5, r2, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	cmp r0, #0
	ble _021E7A6E
	movs r7, #0x2c
_021E7A0C:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r6, [r0]
	ldr r0, [sp, #4]
	cmp r1, r0
	beq _021E7A5C
	cmp r6, #0
	beq _021E7A5C
	adds r0, r6, #0
	bl FUN_0202C8C4
	cmp r0, #1
	beq _021E7A5C
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_0202C8E4
	cmp r0, #0
	bne _021E7A5C
	movs r4, #0
_021E7A34:
	adds r1, r4, #2
	adds r2, r1, #0
	muls r2, r7, r2
	adds r0, r6, #0
	adds r1, r5, r2
	bl FUN_0202C8E4
	cmp r0, #0
	beq _021E7A4E
	adds r0, r5, #0
	adds r1, r4, #2
	bl ov73_021E79A8
_021E7A4E:
	adds r4, r4, #1
	cmp r4, #4
	blt _021E7A34
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov73_021E7964
_021E7A5C:
	ldr r0, [sp, #8]
	adds r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	adds r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021E7A0C
_021E7A6E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov73_021E79F4

	thumb_func_start ov73_021E7A74
ov73_021E7A74: @ 0x021E7A74
	movs r0, #0x12
	lsls r0, r0, #4
	bx lr
	.align 2, 0
	thumb_func_end ov73_021E7A74

	thumb_func_start ov73_021E7A7C
ov73_021E7A7C: @ 0x021E7A7C
	movs r0, #0x12
	lsls r0, r0, #4
	bx lr
	.align 2, 0
	thumb_func_end ov73_021E7A7C

	thumb_func_start ov73_021E7A84
ov73_021E7A84: @ 0x021E7A84
	movs r0, #0x12
	lsls r0, r0, #4
	bx lr
	.align 2, 0
	thumb_func_end ov73_021E7A84

	thumb_func_start ov73_021E7A8C
ov73_021E7A8C: @ 0x021E7A8C
	push {r4, r5}
	ldr r4, _021E7ABC @ =0x021EA664
	lsls r5, r0, #2
	ldr r0, [r4, r5]
	movs r2, #0
	ldrb r3, [r0]
	cmp r3, #0xff
	beq _021E7AB4
	adds r4, r0, #0
_021E7A9E:
	ldrb r3, [r0]
	cmp r1, r3
	bne _021E7AAA
	movs r0, #1
	pop {r4, r5}
	bx lr
_021E7AAA:
	adds r2, r2, #1
	ldrb r3, [r4, r2]
	adds r0, r0, #1
	cmp r3, #0xff
	bne _021E7A9E
_021E7AB4:
	movs r0, #0
	pop {r4, r5}
	bx lr
	nop
_021E7ABC: .4byte 0x021EA664
	thumb_func_end ov73_021E7A8C

	thumb_func_start ov73_021E7AC0
ov73_021E7AC0: @ 0x021E7AC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02028E9C
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	cmp r0, #0
	ble _021E7B36
_021E7ADA:
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x48
	blx FUN_020D4858
	adds r0, r4, #0
	bl FUN_02028F84
	str r0, [r5]
	adds r0, r4, #0
	bl FUN_02028F94
	strb r0, [r5, #4]
	movs r0, #7
	strb r0, [r5, #5]
	movs r0, #2
	strb r0, [r5, #6]
	adds r0, r4, #0
	bl FUN_02028F54
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #8
	movs r2, #8
	bl FUN_02002048
	adds r3, r5, #0
	adds r6, r7, #0
	adds r3, #0x18
	movs r2, #6
_021E7B16:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021E7B16
	movs r0, #0
	strb r0, [r5, #0x19]
	strb r0, [r5, #0x18]
	ldr r0, [sp, #4]
	adds r7, #0x30
	adds r0, r0, #1
	str r0, [sp, #4]
	adds r1, r0, #0
	ldr r0, [sp]
	adds r5, #0x48
	cmp r1, r0
	blt _021E7ADA
_021E7B36:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov73_021E7AC0

	thumb_func_start ov73_021E7B3C
ov73_021E7B3C: @ 0x021E7B3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r2, #0
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r4, #0
	bl FUN_0201AACC
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_020270C4
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov73_021E7A74
	cmp r4, r0
	beq _021E7B64
	bl FUN_0202551C
_021E7B64:
	movs r0, #1
	movs r2, #0x63
	str r0, [sp]
	movs r0, #3
	lsls r2, r2, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, r2
	movs r3, #4
	bl ov73_021E7AC0
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov73_021E7B3C

	thumb_func_start ov73_021E7B84
ov73_021E7B84: @ 0x021E7B84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r2, #0
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r4, #0
	bl FUN_0201AACC
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_020270C4
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov73_021E7A7C
	cmp r4, r0
	beq _021E7BAC
	bl FUN_0202551C
_021E7BAC:
	movs r0, #1
	adds r6, #0xc
	str r0, [sp]
	movs r3, #4
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	str r3, [sp, #4]
	bl ov73_021E7AC0
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov73_021E7B84

	thumb_func_start ov73_021E7BC8
ov73_021E7BC8: @ 0x021E7BC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r2, #0
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r4, #0
	bl FUN_0201AACC
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_020270C4
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov73_021E7A84
	cmp r4, r0
	beq _021E7BF0
	bl FUN_0202551C
_021E7BF0:
	movs r0, #1
	str r0, [sp]
	movs r0, #5
	adds r6, #0xcc
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #4
	bl ov73_021E7AC0
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov73_021E7BC8

	thumb_func_start ov73_021E7C0C
ov73_021E7C0C: @ 0x021E7C0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r2, #0
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r4, #0
	bl FUN_0201AACC
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_020270C4
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov73_021E7A74
	cmp r4, r0
	beq _021E7C34
	bl FUN_0202551C
_021E7C34:
	movs r0, #0
	movs r2, #0x63
	str r0, [sp]
	lsls r2, r2, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, r2
	movs r3, #4
	bl ov73_021E7AC0
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov73_021E7C0C

	thumb_func_start ov73_021E7C50
ov73_021E7C50: @ 0x021E7C50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r2, #0
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r4, #0
	bl FUN_0201AACC
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_020270C4
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov73_021E7A7C
	cmp r4, r0
	beq _021E7C78
	bl FUN_0202551C
_021E7C78:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	adds r6, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #4
	bl ov73_021E7AC0
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov73_021E7C50

	thumb_func_start ov73_021E7C94
ov73_021E7C94: @ 0x021E7C94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r2, #0
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r4, #0
	bl FUN_0201AACC
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_020270C4
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov73_021E7A84
	cmp r4, r0
	beq _021E7CBC
	bl FUN_0202551C
_021E7CBC:
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	adds r6, #0xcc
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #4
	bl ov73_021E7AC0
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov73_021E7C94

	thumb_func_start ov73_021E7CD8
ov73_021E7CD8: @ 0x021E7CD8
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r4, r1, #0
	ldrb r1, [r6, #0x18]
	adds r5, r0, #0
	cmp r1, #0
	bne _021E7CEA
	movs r0, #0
	pop {r4, r5, r6, pc}
_021E7CEA:
	adds r0, r3, #0
	bl ov73_021E7A8C
	cmp r0, #0
	bne _021E7CFA
	movs r0, #0
	mvns r0, r0
	pop {r4, r5, r6, pc}
_021E7CFA:
	movs r1, #0
	cmp r4, #0
	ble _021E7D24
	adds r2, r5, #0
_021E7D02:
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _021E7D1C
	movs r0, #0x48
	muls r0, r1, r0
	adds r3, r5, r0
	movs r2, #9
_021E7D10:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021E7D10
	movs r0, #1
	pop {r4, r5, r6, pc}
_021E7D1C:
	adds r1, r1, #1
	adds r2, #0x48
	cmp r1, r4
	blt _021E7D02
_021E7D24:
	movs r2, #0
	cmp r4, #0
	ble _021E7D4E
	adds r1, r5, #0
_021E7D2C:
	ldrb r0, [r1, #0x19]
	cmp r0, #3
	blo _021E7D46
	movs r0, #0x48
	muls r0, r2, r0
	adds r3, r5, r0
	movs r2, #9
_021E7D3A:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021E7D3A
	movs r0, #1
	pop {r4, r5, r6, pc}
_021E7D46:
	adds r2, r2, #1
	adds r1, #0x48
	cmp r2, r4
	blt _021E7D2C
_021E7D4E:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov73_021E7CD8

	thumb_func_start ov73_021E7D54
ov73_021E7D54: @ 0x021E7D54
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	bl FUN_02034818
	cmp r0, #0
	bne _021E7D66
	movs r0, #0
	pop {r3, r4, r5, pc}
_021E7D66:
	bl FUN_0202907C
	cmp r0, #0
	beq _021E7D70
	adds r4, r5, #0
_021E7D70:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E7D54

	thumb_func_start ov73_021E7D74
ov73_021E7D74: @ 0x021E7D74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r1, [sp, #4]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	adds r7, r2, #0
	str r0, [sp, #0x48]
	add r0, sp, #0x1c
	movs r1, #0
	movs r2, #0x10
	str r3, [sp, #8]
	ldr r5, [sp, #0x40]
	blx FUN_020D4994
	movs r4, #0
	adds r6, r4, #0
	cmp r7, #0
	ble _021E7E18
	str r5, [sp, #0x14]
_021E7D9E:
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	cmp r0, #0
	beq _021E7E0C
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x10]
	b _021E7E06
_021E7DAE:
	adds r0, r4, #1
	adds r1, r7, #0
	blx FUN_020F2998
	adds r4, r1, #0
_021E7DB8:
	lsls r0, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E7DAE
	cmp r4, r6
	beq _021E7DAE
	add r0, sp, #0x1c
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq _021E7DAE
	adds r1, r0, #1
	add r0, sp, #0x1c
	strb r1, [r0, r4]
	ldr r0, [sp, #8]
	cmp r4, r0
	beq _021E7DFA
	ldr r2, [sp, #0x44]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov73_021E7D54
	adds r3, r0, #0
	beq _021E7DFA
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r3, [r3, r2]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #4]
	adds r2, r3, r2
	ldr r3, [sp, #0x48]
	bl ov73_021E7CD8
_021E7DFA:
	ldr r0, [sp, #0x10]
	adds r0, #0x48
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
_021E7E06:
	ldr r0, [sp, #0x18]
	cmp r0, #4
	blt _021E7DB8
_021E7E0C:
	ldr r0, [sp, #0x14]
	adds r6, r6, #1
	adds r0, r0, #4
	str r0, [sp, #0x14]
	cmp r6, r7
	blt _021E7D9E
_021E7E18:
	movs r0, #0x17
	bl FUN_0202893C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov73_021E7D74

	thumb_func_start ov73_021E7E24
ov73_021E7E24: @ 0x021E7E24
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	adds r4, r2, #0
	movs r1, #0
	str r1, [sp, #8]
	ldr r1, _021E7E48 @ =0x0000090C
	adds r2, r5, #0
	adds r0, r0, r1
	movs r1, #8
	adds r3, r4, #0
	bl ov73_021E7D74
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021E7E48: .4byte 0x0000090C
	thumb_func_end ov73_021E7E24

	thumb_func_start ov73_021E7E4C
ov73_021E7E4C: @ 0x021E7E4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021E7E62
	cmp r0, #1
	bne _021E7E60
	b _021E7F62
_021E7E60:
	b _021E7F78
_021E7E62:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201A0FC
	bl FUN_0201A108
	bl FUN_02022C54
	bl FUN_02022CBC
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E7F80 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021E7F84 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r2, #5
	movs r0, #3
	movs r1, #0x96
	lsls r2, r2, #0x10
	bl FUN_0201A910
	ldr r1, _021E7F88 @ =0x000012CC
	adds r0, r6, #0
	movs r2, #0x96
	bl FUN_02007280
	ldr r2, _021E7F88 @ =0x000012CC
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020E5B44
	movs r0, #0x96
	bl FUN_0201AC88
	str r0, [r4, #4]
	ldr r0, _021E7F8C @ =0x021EA940
	add r2, sp, #0
	ldr r3, _021E7F90 @ =0x021EA68C
	str r4, [r0]
	adds r7, r2, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	adds r0, r7, #0
	bl FUN_0201ACB0
	movs r0, #0xb
	movs r1, #0x20
	movs r2, #0x96
	bl FUN_0200BD18
	movs r1, #0xbd
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _021E7F94 @ =0x0000031F
	movs r0, #0
	movs r1, #0x1b
	movs r3, #0x96
	bl FUN_0200BAF8
	ldr r1, _021E7F98 @ =0x00000BD4
	ldr r2, _021E7F9C @ =0x0000030A
	str r0, [r4, r1]
	movs r0, #0
	movs r1, #0x1b
	movs r3, #0x96
	bl FUN_0200BAF8
	ldr r1, _021E7FA0 @ =0x00000BD8
	movs r2, #0x32
	str r0, [r4, r1]
	movs r0, #0
	movs r1, #0x1b
	lsls r2, r2, #4
	movs r3, #0x96
	bl FUN_0200BAF8
	ldr r1, _021E7FA4 @ =0x00000BDC
	str r0, [r4, r1]
	movs r0, #4
	movs r1, #8
	bl FUN_0201A71C
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov73_021E8148
	adds r0, r4, #0
	bl ov73_021E8454
	movs r1, #0
	movs r0, #0x34
	adds r2, r1, #0
	bl FUN_02004EC4
	ldr r1, _021E7FA8 @ =0x00020020
	movs r0, #0x96
	bl FUN_0201AA8C
	str r0, [r4, #0x24]
	adds r0, #0x1f
	movs r1, #0x1f
	bics r0, r1
	movs r1, #2
	lsls r1, r1, #0x10
	movs r2, #0
	blx FUN_020B535C
	str r0, [r4, #0x28]
	ldr r1, _021E7FAC @ =0x0000047D
	movs r0, #0xb
	movs r2, #1
	bl FUN_02004EC4
	ldr r2, _021E7FB0 @ =0x04000304
	ldr r0, _021E7FB4 @ =0xFFFF7FFF
	ldrh r1, [r2]
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	str r0, [r5]
	b _021E7F78
_021E7F62:
	bl FUN_020915B0
	bl FUN_02091614
	bl FUN_02034D8C
	movs r0, #0
	str r0, [r5]
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E7F78:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7F80: .4byte 0xFFFFE0FF
_021E7F84: .4byte 0x04001000
_021E7F88: .4byte 0x000012CC
_021E7F8C: .4byte 0x021EA940
_021E7F90: .4byte 0x021EA68C
_021E7F94: .4byte 0x0000031F
_021E7F98: .4byte 0x00000BD4
_021E7F9C: .4byte 0x0000030A
_021E7FA0: .4byte 0x00000BD8
_021E7FA4: .4byte 0x00000BDC
_021E7FA8: .4byte 0x00020020
_021E7FAC: .4byte 0x0000047D
_021E7FB0: .4byte 0x04000304
_021E7FB4: .4byte 0xFFFF7FFF
	thumb_func_end ov73_021E7E4C

	thumb_func_start ov73_021E7FB8
ov73_021E7FB8: @ 0x021E7FB8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	bl FUN_02007290
	adds r5, r0, #0
	blx FUN_021ECB40
	bl FUN_022378DC
	blx FUN_021ECB40
	ldr r1, [r4]
	cmp r1, #5
	bhi _021E8060
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E7FE0: @ jump table
	.2byte _021E7FEC - _021E7FE0 - 2 @ case 0
	.2byte _021E8008 - _021E7FE0 - 2 @ case 1
	.2byte _021E801C - _021E7FE0 - 2 @ case 2
	.2byte _021E802A - _021E7FE0 - 2 @ case 3
	.2byte _021E803E - _021E7FE0 - 2 @ case 4
	.2byte _021E805C - _021E7FE0 - 2 @ case 5
_021E7FEC:
	bl FUN_02034DB8
	cmp r0, #0
	beq _021E8060
	ldr r1, [r5, #0x28]
	ldr r0, _021E8070 @ =0x021EA940
	str r1, [r0, #4]
	ldr r0, _021E8074 @ =ov73_021E83F4
	ldr r1, _021E8078 @ =ov73_021E841C
	blx FUN_021EC294
	movs r0, #1
	str r0, [r4]
	b _021E8060
_021E8008:
	ldr r3, [r5, #0x10]
	movs r2, #0xc
	adds r6, r3, #0
	muls r6, r2, r6
	ldr r2, _021E807C @ =0x021EA83C
	adds r0, r5, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r4]
	b _021E8060
_021E801C:
	bl FUN_0200FB5C
	cmp r0, #0
	beq _021E8060
	movs r0, #3
	str r0, [r4]
	b _021E8060
_021E802A:
	ldr r3, [r5, #0x10]
	movs r2, #0xc
	adds r6, r3, #0
	muls r6, r2, r6
	ldr r2, _021E8080 @ =0x021EA840
	adds r0, r5, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r4]
	b _021E8060
_021E803E:
	bl FUN_0200FB5C
	cmp r0, #0
	beq _021E8060
	ldr r3, [r5, #0x10]
	movs r2, #0xc
	adds r6, r3, #0
	muls r6, r2, r6
	ldr r2, _021E8084 @ =0x021EA844
	ldr r1, [r4]
	ldr r2, [r2, r6]
	adds r0, r5, #0
	blx r2
	str r0, [r4]
	b _021E8060
_021E805C:
	movs r0, #1
	pop {r4, r5, r6, pc}
_021E8060:
	ldr r0, _021E8088 @ =0x00000BF8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E806C
	bl FUN_0202457C
_021E806C:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E8070: .4byte 0x021EA940
_021E8074: .4byte ov73_021E83F4
_021E8078: .4byte ov73_021E841C
_021E807C: .4byte 0x021EA83C
_021E8080: .4byte 0x021EA840
_021E8084: .4byte 0x021EA844
_021E8088: .4byte 0x00000BF8
	thumb_func_end ov73_021E7FB8

	thumb_func_start ov73_021E808C
ov73_021E808C: @ 0x021E808C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_02007290
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	bl FUN_0201AB0C
	bl FUN_02091624
	bl FUN_020915C0
	adds r0, r4, #0
	bl ov73_021E847C
	ldr r0, _021E80F4 @ =0x00000BDC
	ldr r0, [r4, r0]
	bl FUN_0200BB44
	ldr r0, _021E80F8 @ =0x00000BD8
	ldr r0, [r4, r0]
	bl FUN_0200BB44
	ldr r0, _021E80FC @ =0x00000BD4
	ldr r0, [r4, r0]
	bl FUN_0200BB44
	movs r0, #0xbd
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0200BDA0
	adds r0, r4, #0
	bl ov73_021E8164
	bl FUN_02034DE0
	ldr r0, [r4, #4]
	bl FUN_0201AB0C
	adds r0, r5, #0
	bl FUN_02007294
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201A0FC
	movs r0, #0x96
	bl FUN_0201A9C4
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E80F4: .4byte 0x00000BDC
_021E80F8: .4byte 0x00000BD8
_021E80FC: .4byte 0x00000BD4
	thumb_func_end ov73_021E808C

	thumb_func_start ov73_021E8100
ov73_021E8100: @ 0x021E8100
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0202061C
	ldr r0, [r4, #4]
	bl FUN_0201EEB4
	bl FUN_0200B224
	ldr r3, _021E8120 @ =0x027E0000
	ldr r1, _021E8124 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_021E8120: .4byte 0x027E0000
_021E8124: .4byte 0x00003FF8
	thumb_func_end ov73_021E8100

	thumb_func_start ov73_021E8128
ov73_021E8128: @ 0x021E8128
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E8144 @ =0x021EA6AC
	add r3, sp, #0
	movs r2, #5
_021E8132:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021E8132
	add r0, sp, #0
	bl FUN_02022BE8
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021E8144: .4byte 0x021EA6AC
	thumb_func_end ov73_021E8128

	thumb_func_start ov73_021E8148
ov73_021E8148: @ 0x021E8148
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_020072A4
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r2, r1, #0
	str r1, [r4, #0x10]
	bl ov73_021E844C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021E8148

	thumb_func_start ov73_021E8164
ov73_021E8164: @ 0x021E8164
	bx lr
	.align 2, 0
	thumb_func_end ov73_021E8164

	thumb_func_start ov73_021E8168
ov73_021E8168: @ 0x021E8168
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021E8194 @ =0x021EA69C
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_020215A0
	movs r0, #0x14
	movs r1, #0x96
	bl FUN_02022588
	bl FUN_020216C8
	bl FUN_02022638
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021E8194: .4byte 0x021EA69C
	thumb_func_end ov73_021E8168

	thumb_func_start ov73_021E8198
ov73_021E8198: @ 0x021E8198
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0x64
	movs r1, #0x96
	bl FUN_02007688
	str r0, [sp, #0x14]
	blx FUN_020B78D4
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x96
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200B150
	ldr r1, _021E8290 @ =0x00000BFC
	movs r0, #0xa
	adds r1, r6, r1
	movs r2, #0x96
	bl FUN_02009F40
	ldr r1, _021E8294 @ =0x00000BF8
	movs r2, #1
	str r0, [r6, r1]
	adds r0, r1, #4
	adds r0, r6, r0
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_02009FC8
	ldr r7, _021E8298 @ =0x00000D24
	movs r4, #0
	adds r5, r6, #0
_021E81E8:
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0x96
	bl FUN_0200A090
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021E81E8
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x96
	str r0, [sp, #8]
	ldr r0, _021E8298 @ =0x00000D24
	ldr r1, [sp, #0x14]
	ldr r0, [r6, r0]
	movs r2, #0x2e
	bl FUN_0200A3C8
	ldr r1, _021E829C @ =0x00000D34
	movs r3, #0
	str r0, [r6, r1]
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x96
	subs r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r2, #0xa
	bl FUN_0200A480
	ldr r1, _021E82A0 @ =0x00000D38
	movs r2, #0x2f
	str r0, [r6, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x96
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r3, #1
	bl FUN_0200A540
	ldr r1, _021E82A4 @ =0x00000D3C
	movs r2, #0x30
	str r0, [r6, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x96
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r3, #1
	bl FUN_0200A540
	movs r1, #0x35
	lsls r1, r1, #6
	str r0, [r6, r1]
	subs r1, #0xc
	ldr r0, [r6, r1]
	bl FUN_0200ACF0
	ldr r0, _021E82A0 @ =0x00000D38
	ldr r0, [r6, r0]
	bl FUN_0200AF94
	ldr r0, [sp, #0x14]
	bl FUN_0200770C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E8290: .4byte 0x00000BFC
_021E8294: .4byte 0x00000BF8
_021E8298: .4byte 0x00000D24
_021E829C: .4byte 0x00000D34
_021E82A0: .4byte 0x00000D38
_021E82A4: .4byte 0x00000D3C
	thumb_func_end ov73_021E8198

	thumb_func_start ov73_021E82A8
ov73_021E82A8: @ 0x021E82A8
	push {r3, r4}
	ldr r4, _021E82D0 @ =0x00000BF8
	ldr r1, [r1, r4]
	str r1, [r0]
	str r2, [r0, #4]
	movs r2, #0
	movs r1, #1
	str r2, [r0, #0x10]
	lsls r1, r1, #0xc
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	strh r2, [r0, #0x20]
	movs r1, #1
	str r1, [r0, #0x24]
	str r3, [r0, #0x28]
	movs r1, #0x96
	str r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	.align 2, 0
_021E82D0: .4byte 0x00000BF8
	thumb_func_end ov73_021E82A8

	thumb_func_start ov73_021E82D4
ov73_021E82D4: @ 0x021E82D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp]
	subs r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _021E8384 @ =0x00000D24
	str r1, [sp, #0x10]
	ldr r0, [r5, r2]
	adds r3, r1, #0
	str r0, [sp, #0x14]
	adds r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	adds r0, r2, #0
	adds r0, #8
	ldr r0, [r5, r0]
	str r0, [sp, #0x1c]
	adds r0, r2, #0
	adds r0, #0xc
	ldr r0, [r5, r0]
	adds r2, #0x40
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	adds r0, r5, r2
	adds r2, r1, #0
	str r1, [sp, #0x28]
	bl FUN_02009D48
	ldr r2, _021E8388 @ =0x00000D64
	add r0, sp, #0x2c
	adds r1, r5, #0
	adds r2, r5, r2
	movs r3, #1
	bl ov73_021E82A8
	movs r7, #0xdd
	ldr r4, _021E838C @ =0x021EA684
	movs r6, #0
	lsls r7, r7, #4
_021E832A:
	ldrh r0, [r4]
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02024624
	movs r1, #0xdd
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0202484C
	movs r0, #0xdd
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_020248F0
	ldr r0, [r5, r7]
	movs r1, #0
	bl FUN_02024830
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #2
	blt _021E832A
	movs r0, #0x10
	movs r1, #1
	bl FUN_02022C60
	movs r0, #0x10
	movs r1, #1
	bl FUN_02022CC8
	bl FUN_0203A880
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_021E8384: .4byte 0x00000D24
_021E8388: .4byte 0x00000D64
_021E838C: .4byte 0x021EA684
	thumb_func_end ov73_021E82D4

	thumb_func_start ov73_021E8390
ov73_021E8390: @ 0x021E8390
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x96
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0201660C
	movs r1, #0
	movs r2, #8
	str r2, [sp, #0xc]
	str r5, [sp]
	str r1, [sp, #4]
	str r6, [sp, #8]
	movs r2, #0x17
	add r3, sp, #0
	strb r2, [r3, #0x10]
	strb r4, [r3, #0x11]
	ldrb r4, [r3, #0x12]
	movs r2, #0xf
	adds r7, r0, #0
	bics r4, r2
	strb r4, [r3, #0x12]
	ldrb r4, [r3, #0x12]
	movs r2, #0xf0
	bics r4, r2
	strb r4, [r3, #0x12]
	strb r1, [r3, #0x13]
	add r1, sp, #0
	bl FUN_020166FC
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov73_021E8390

	thumb_func_start ov73_021E83D4
ov73_021E83D4: @ 0x021E83D4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_020168F4
	adds r4, r0, #0
	beq _021E83E6
	adds r0, r5, #0
	bl FUN_02016624
_021E83E6:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov73_021E83D4

	thumb_func_start ov73_021E83EC
ov73_021E83EC: @ 0x021E83EC
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end ov73_021E83EC

	thumb_func_start ov73_021E83F4
ov73_021E83F4: @ 0x021E83F4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	blx FUN_020D3A38
	adds r6, r0, #0
	ldr r0, _021E8418 @ =0x021EA940
	adds r1, r5, #0
	ldr r0, [r0, #4]
	adds r2, r4, #0
	blx FUN_020B53A0
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020D3A4C
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E8418: .4byte 0x021EA940
	thumb_func_end ov73_021E83F4

	thumb_func_start ov73_021E841C
ov73_021E841C: @ 0x021E841C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	beq _021E8438
	blx FUN_020D3A38
	adds r4, r0, #0
	ldr r0, _021E843C @ =0x021EA940
	adds r1, r5, #0
	ldr r0, [r0, #4]
	blx FUN_020B5530
	adds r0, r4, #0
	blx FUN_020D3A4C
_021E8438:
	pop {r3, r4, r5, pc}
	nop
_021E843C: .4byte 0x021EA940
	thumb_func_end ov73_021E841C

	thumb_func_start ov73_021E8440
ov73_021E8440: @ 0x021E8440
	push {r3, lr}
	blx FUN_021EC9D4
	movs r1, #3
	subs r0, r1, r0
	pop {r3, pc}
	thumb_func_end ov73_021E8440

	thumb_func_start ov73_021E844C
ov73_021E844C: @ 0x021E844C
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end ov73_021E844C

	thumb_func_start ov73_021E8454
ov73_021E8454: @ 0x021E8454
	push {r4, lr}
	adds r4, r0, #0
	bl ov73_021E8128
	bl ov73_021E8168
	adds r0, r4, #0
	bl ov73_021E8198
	adds r0, r4, #0
	bl ov73_021E82D4
	ldr r0, _021E8478 @ =ov73_021E8100
	adds r1, r4, #0
	bl FUN_0201A0FC
	pop {r4, pc}
	nop
_021E8478: .4byte ov73_021E8100
	thumb_func_end ov73_021E8454

	thumb_func_start ov73_021E847C
ov73_021E847C: @ 0x021E847C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _021E84C0 @ =0x00000D34
	ldr r0, [r6, r0]
	bl FUN_0200AEB0
	ldr r0, _021E84C4 @ =0x00000D38
	ldr r0, [r6, r0]
	bl FUN_0200B0A8
	ldr r7, _021E84C8 @ =0x00000D24
	movs r4, #0
	adds r5, r6, #0
_021E8496:
	ldr r0, [r5, r7]
	bl FUN_0200A0D0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021E8496
	ldr r0, _021E84CC @ =0x00000BF8
	ldr r0, [r6, r0]
	bl FUN_02024504
	ldr r0, _021E84CC @ =0x00000BF8
	movs r1, #0
	str r1, [r6, r0]
	bl FUN_0200B244
	bl FUN_0202168C
	bl FUN_02022608
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E84C0: .4byte 0x00000D34
_021E84C4: .4byte 0x00000D38
_021E84C8: .4byte 0x00000D24
_021E84CC: .4byte 0x00000BF8
	thumb_func_end ov73_021E847C

	thumb_func_start ov73_021E84D0
ov73_021E84D0: @ 0x021E84D0
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl ov73_021E8B64
	movs r0, #8
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x96
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200FA24
	ldr r0, [r4, #4]
	bl ov73_021E8628
	adds r0, r4, #0
	bl ov73_021E8730
	adds r0, r4, #0
	bl ov73_021E8A08
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02022C60
	movs r0, #2
	movs r1, #1
	bl FUN_02022C60
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02022CC8
	movs r0, #2
	movs r1, #1
	bl FUN_02022CC8
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl FUN_02039418
	adds r0, r4, #0
	bl ov73_021EA12C
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_0202D488
	adds r1, r4, #0
	adds r1, #0x90
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x9c
	str r1, [r0]
	ldr r0, _021E85A0 @ =0x00000F0C
	movs r1, #0
	str r1, [r4, r0]
	blx FUN_021EC5B4
	cmp r0, #0
	bne _021E8594
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _021E858E
	ldr r0, _021E85A4 @ =0x00000F0F
	ldr r1, _021E85A8 @ =0x00000BD8
	str r0, [sp]
	movs r2, #1
	ldr r1, [r4, r1]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #2
	bl ov73_021E83EC
	adds r0, r4, #0
	bl ov73_021EA15C
	b _021E8598
_021E858E:
	movs r0, #0
	str r0, [r4, #0x1c]
	b _021E8598
_021E8594:
	movs r0, #0x33
	str r0, [r4, #0x1c]
_021E8598:
	movs r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021E85A0: .4byte 0x00000F0C
_021E85A4: .4byte 0x00000F0F
_021E85A8: .4byte 0x00000BD8
	thumb_func_end ov73_021E84D0

	thumb_func_start ov73_021E85AC
ov73_021E85AC: @ 0x021E85AC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov73_021E8440
	bl FUN_0203A930
	ldr r4, [r5, #0x1c]
	ldr r1, _021E85D8 @ =0x021EA848
	lsls r2, r4, #2
	ldr r1, [r1, r2]
	adds r0, r5, #0
	blx r1
	ldr r1, [r5, #0x1c]
	cmp r4, r1
	beq _021E85D6
	movs r1, #0xf9
	movs r2, #0
	lsls r1, r1, #4
	strh r2, [r5, r1]
	adds r1, r1, #2
	strh r2, [r5, r1]
_021E85D6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E85D8: .4byte 0x021EA848
	thumb_func_end ov73_021E85AC

	thumb_func_start ov73_021E85DC
ov73_021E85DC: @ 0x021E85DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E8620 @ =0x00000F98
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E85F6
	bl FUN_0200E390
	ldr r0, _021E8620 @ =0x00000F98
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
_021E85F6:
	adds r0, r4, #0
	bl ov73_021E8BBC
	adds r0, r4, #0
	bl ov73_021E8B20
	ldr r0, [r4, #4]
	bl ov73_021E870C
	ldr r0, _021E8624 @ =0x00000F9C
	movs r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _021E861A
	movs r0, #5
	pop {r4, pc}
_021E861A:
	movs r0, #1
	pop {r4, pc}
	nop
_021E8620: .4byte 0x00000F98
_021E8624: .4byte 0x00000F9C
	thumb_func_end ov73_021E85DC

	thumb_func_start ov73_021E8628
ov73_021E8628: @ 0x021E8628
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _021E86FC @ =0x021EA70C
	adds r4, r0, #0
	ldm r5!, {r0, r1}
	add r3, sp, #0x54
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #0
	str r0, [r3]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0201B1E4
	movs r0, #1
	movs r1, #0
	bl FUN_02022C60
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201CAE0
	ldr r5, _021E8700 @ =0x021EA6F0
	add r3, sp, #0x38
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0201B1E4
	movs r0, #2
	movs r1, #0
	bl FUN_02022C60
	ldr r5, _021E8704 @ =0x021EA728
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #4
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0201B1E4
	movs r0, #1
	movs r1, #0
	bl FUN_02022CC8
	adds r0, r4, #0
	movs r1, #4
	bl FUN_0201CAE0
	ldr r5, _021E8708 @ =0x021EA6D4
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #5
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0201B1E4
	movs r0, #2
	movs r1, #0
	bl FUN_02022CC8
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x96
	bl FUN_0201C1C4
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x96
	bl FUN_0201C1C4
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_021E86FC: .4byte 0x021EA70C
_021E8700: .4byte 0x021EA6F0
_021E8704: .4byte 0x021EA728
_021E8708: .4byte 0x021EA6D4
	thumb_func_end ov73_021E8628

	thumb_func_start ov73_021E870C
ov73_021E870C: @ 0x021E870C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #5
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #4
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0201BB4C
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201BB4C
	pop {r4, pc}
	thumb_func_end ov73_021E870C

	thumb_func_start ov73_021E8730
ov73_021E8730: @ 0x021E8730
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	ldr r4, [r0, #4]
	movs r0, #0x58
	movs r1, #0x96
	bl FUN_02007688
	movs r2, #0
	str r2, [sp]
	movs r1, #0x96
	str r1, [sp, #4]
	movs r1, #3
	adds r3, r2, #0
	str r0, [sp, #0x2c]
	bl FUN_02007B8C
	movs r3, #0
	str r3, [sp]
	movs r0, #0x96
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	movs r1, #3
	movs r2, #4
	bl FUN_02007B8C
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x96
	bl FUN_0200304C
	movs r1, #0x1a
	movs r0, #4
	lsls r1, r1, #4
	movs r2, #0x96
	bl FUN_0200304C
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bl FUN_0202ADCC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x96
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xe
	bl FUN_0200E644
	movs r1, #0
	str r1, [sp]
	movs r0, #0x96
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200E3DC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x96
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #2
	adds r2, r4, #0
	movs r3, #1
	bl FUN_02007B44
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x96
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #6
	adds r2, r4, #0
	movs r3, #1
	bl FUN_02007B68
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x96
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #0xb
	adds r2, r4, #0
	movs r3, #5
	bl FUN_02007B44
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x96
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #0xc
	adds r2, r4, #0
	movs r3, #5
	bl FUN_02007B68
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201C2D8
	movs r0, #4
	movs r1, #0
	bl FUN_0201C2D8
	movs r2, #0x33
	ldr r1, _021E894C @ =0x00000F98
	ldr r0, [sp, #0x10]
	lsls r2, r2, #4
	adds r0, r0, r1
	movs r1, #0
	blx FUN_020D4994
	ldr r0, [sp, #0x2c]
	movs r1, #5
	add r2, sp, #0x38
	movs r3, #0x96
	bl FUN_02007C48
	adds r4, r0, #0
	ldr r0, [sp, #0x38]
	movs r2, #0xfa
	ldr r1, [sp, #0x10]
	lsls r2, r2, #4
	adds r1, r1, r2
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020D47B8
	ldr r0, [sp, #0x38]
	ldr r2, _021E8950 @ =0x00001020
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	adds r1, r1, r2
	movs r2, #0x80
	blx FUN_020D47B8
	adds r0, r4, #0
	bl FUN_0201AB0C
	movs r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, _021E8950 @ =0x00001020
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	subs r1, #0x80
	adds r0, r0, r1
	str r0, [sp, #0x14]
_021E8882:
	movs r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	lsls r1, r0, #5
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x30]
_021E8894:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _021E889E
	bl FUN_0202551C
_021E889E:
	ldr r0, [sp, #0x30]
	movs r7, #1
	adds r4, r0, #2
	ldr r0, [sp, #0x18]
	adds r6, r0, #2
	ldr r0, [sp, #0x14]
	adds r5, r0, #2
	ldr r0, [sp, #0x20]
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
_021E88B6:
	movs r0, #0xfa
	lsls r0, r0, #4
	ldrh r0, [r4, r0]
	ldr r3, [sp, #0x34]
	adds r1, r6, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	bl FUN_02003DE8
	adds r7, r7, #1
	adds r4, r4, #2
	adds r6, r6, #2
	adds r5, r5, #2
	cmp r7, #0x10
	blt _021E88B6
	ldr r0, [sp, #0x18]
	adds r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _021E8902
	movs r0, #3
	ldr r1, [sp, #0x20]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _021E8894
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x1c]
	b _021E8894
_021E8902:
	ldr r0, [sp, #0x14]
	adds r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _021E8882
	ldr r1, _021E8950 @ =0x00001020
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	movs r1, #0x2a
	lsls r1, r1, #4
	blx FUN_020D2894
	ldr r1, _021E8954 @ =0x00000F9C
	ldr r0, [sp, #0x10]
	movs r2, #1
	str r2, [r0, r1]
	ldr r2, _021E8958 @ =0x000012C4
	movs r3, #0
	str r3, [r0, r2]
	subs r2, r1, #4
	ldr r1, [sp, #0x10]
	ldr r0, _021E895C @ =ov73_021E8960
	adds r1, r1, r2
	movs r2, #0x14
	bl FUN_0200E33C
	ldr r2, _021E894C @ =0x00000F98
	ldr r1, [sp, #0x10]
	str r0, [r1, r2]
	ldr r0, [sp, #0x2c]
	bl FUN_0200770C
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E894C: .4byte 0x00000F98
_021E8950: .4byte 0x00001020
_021E8954: .4byte 0x00000F9C
_021E8958: .4byte 0x000012C4
_021E895C: .4byte ov73_021E8960
	thumb_func_end ov73_021E8730

	thumb_func_start ov73_021E8960
ov73_021E8960: @ 0x021E8960
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E89FE
	ldr r1, _021E8A00 @ =0x0000032B
	movs r0, #1
	ldrb r2, [r4, r1]
	eors r2, r0
	strb r2, [r4, r1]
	ldrb r2, [r4, r1]
	tst r0, r2
	bne _021E89FE
	adds r0, r1, #1
	ldr r0, [r4, r0]
	cmp r0, #1
	bhi _021E8996
	subs r0, r1, #3
	ldrsh r0, [r4, r0]
	adds r2, r4, #0
	adds r2, #0x88
	lsls r0, r0, #5
	adds r0, r2, r0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020CFC6C
_021E8996:
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E89A4
	cmp r0, #2
	bne _021E89BA
_021E89A4:
	movs r0, #0xca
	lsls r0, r0, #2
	ldrsh r0, [r4, r0]
	adds r1, r4, #0
	adds r1, #0x88
	lsls r0, r0, #5
	adds r0, r1, r0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020CFCC0
_021E89BA:
	ldr r0, _021E8A04 @ =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _021E89E2
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	adds r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _021E89FE
	movs r2, #0x13
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	movs r1, #1
	eors r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_021E89E2:
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	subs r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _021E89FE
	movs r2, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eors r1, r2
	strb r1, [r4, r0]
_021E89FE:
	pop {r4, pc}
	.align 2, 0
_021E8A00: .4byte 0x0000032B
_021E8A04: .4byte 0x0000032A
	thumb_func_end ov73_021E8960

	thumb_func_start ov73_021E8A08
ov73_021E8A08: @ 0x021E8A08
	push {r3, r4, lr}
	sub sp, #0x14
	movs r3, #4
	adds r4, r0, #0
	str r3, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0xa4
	ldr r1, _021E8B04 @ =0x00000E18
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0
	bl FUN_0201D40C
	ldr r0, _021E8B04 @ =0x00000E18
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0201D978
	movs r0, #0xe
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x94
	ldr r1, _021E8B08 @ =0x00000DF8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #0x1a
	bl FUN_0201D40C
	ldr r0, _021E8B08 @ =0x00000DF8
	movs r1, #0xf
	adds r0, r4, r0
	bl FUN_0201D978
	movs r0, #0xe
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x9c
	ldr r1, _021E8B0C @ =0x00000DE8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #0x1a
	bl FUN_0201D40C
	ldr r0, _021E8B0C @ =0x00000DE8
	movs r1, #0xf
	adds r0, r4, r0
	bl FUN_0201D978
	movs r0, #1
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r1, _021E8B10 @ =0x00000E08
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #4
	bl FUN_0201D40C
	ldr r0, _021E8B10 @ =0x00000E08
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0201D978
	movs r3, #1
	ldr r0, _021E8B14 @ =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _021E8B18 @ =0x00000BE4
	ldr r0, _021E8B10 @ =0x00000E08
	ldr r1, [r4, r1]
	adds r0, r4, r0
	movs r2, #0
	bl ov73_021EA088
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	ldr r1, _021E8B1C @ =0x00000DD8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201D40C
	ldr r0, _021E8B1C @ =0x00000DD8
	movs r1, #0xf
	adds r0, r4, r0
	bl FUN_0201D978
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_021E8B04: .4byte 0x00000E18
_021E8B08: .4byte 0x00000DF8
_021E8B0C: .4byte 0x00000DE8
_021E8B10: .4byte 0x00000E08
_021E8B14: .4byte 0x000F0E00
_021E8B18: .4byte 0x00000BE4
_021E8B1C: .4byte 0x00000DD8
	thumb_func_end ov73_021E8A08

	thumb_func_start ov73_021E8B20
ov73_021E8B20: @ 0x021E8B20
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E8B50 @ =0x00000DD8
	adds r0, r4, r0
	bl FUN_0201D520
	ldr r0, _021E8B54 @ =0x00000E08
	adds r0, r4, r0
	bl FUN_0201D520
	ldr r0, _021E8B58 @ =0x00000DE8
	adds r0, r4, r0
	bl FUN_0201D520
	ldr r0, _021E8B5C @ =0x00000DF8
	adds r0, r4, r0
	bl FUN_0201D520
	ldr r0, _021E8B60 @ =0x00000E18
	adds r0, r4, r0
	bl FUN_0201D520
	pop {r4, pc}
	nop
_021E8B50: .4byte 0x00000DD8
_021E8B54: .4byte 0x00000E08
_021E8B58: .4byte 0x00000DE8
_021E8B5C: .4byte 0x00000DF8
_021E8B60: .4byte 0x00000E18
	thumb_func_end ov73_021E8B20

	thumb_func_start ov73_021E8B64
ov73_021E8B64: @ 0x021E8B64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xb4
	movs r1, #0x96
	bl FUN_02026354
	movs r1, #0xbe
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #4
	movs r1, #0x96
	bl FUN_02026354
	ldr r1, _021E8BB0 @ =0x00000BE8
	str r0, [r4, r1]
	movs r0, #3
	movs r1, #0x96
	bl FUN_02026354
	ldr r1, _021E8BB4 @ =0x00000BEC
	str r0, [r4, r1]
	subs r1, #0x18
	ldr r0, [r4, r1]
	movs r1, #0xa
	bl FUN_0200BBA0
	ldr r1, _021E8BB8 @ =0x00000BE4
	str r0, [r4, r1]
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x96
	bl FUN_02026354
	movs r1, #0xbf
	lsls r1, r1, #4
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021E8BB0: .4byte 0x00000BE8
_021E8BB4: .4byte 0x00000BEC
_021E8BB8: .4byte 0x00000BE4
	thumb_func_end ov73_021E8B64

	thumb_func_start ov73_021E8BBC
ov73_021E8BBC: @ 0x021E8BBC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbf
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02026380
	ldr r0, _021E8BF0 @ =0x00000BE4
	ldr r0, [r4, r0]
	bl FUN_02026380
	ldr r0, _021E8BF4 @ =0x00000BEC
	ldr r0, [r4, r0]
	bl FUN_02026380
	ldr r0, _021E8BF8 @ =0x00000BE8
	ldr r0, [r4, r0]
	bl FUN_02026380
	movs r0, #0xbe
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02026380
	pop {r4, pc}
	nop
_021E8BF0: .4byte 0x00000BE4
_021E8BF4: .4byte 0x00000BEC
_021E8BF8: .4byte 0x00000BE8
	thumb_func_end ov73_021E8BBC

	thumb_func_start ov73_021E8BFC
ov73_021E8BFC: @ 0x021E8BFC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E8C24 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E8C28 @ =0x00000BDC
	movs r2, #0x11
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #1
	bl ov73_021E83EC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E8C24: .4byte 0x00000F0F
_021E8C28: .4byte 0x00000BDC
	thumb_func_end ov73_021E8BFC

	thumb_func_start ov73_021E8C2C
ov73_021E8C2C: @ 0x021E8C2C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _021E8C80 @ =0x000012C8
	ldr r0, [r4, r0]
	bl ov73_021E83D4
	cmp r0, #0
	beq _021E8C78
	cmp r0, #2
	bne _021E8C56
	bl FUN_0203946C
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov73_021E844C
	movs r0, #0x2e
	str r0, [r4, #0x1c]
	b _021E8C78
_021E8C56:
	ldr r0, _021E8C84 @ =0x00000F0F
	ldr r1, _021E8C88 @ =0x00000BD8
	str r0, [sp]
	movs r2, #1
	ldr r1, [r4, r1]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #2
	bl ov73_021E83EC
	adds r0, r4, #0
	bl ov73_021EA15C
_021E8C78:
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E8C80: .4byte 0x000012C8
_021E8C84: .4byte 0x00000F0F
_021E8C88: .4byte 0x00000BD8
	thumb_func_end ov73_021E8C2C

	thumb_func_start ov73_021E8C8C
ov73_021E8C8C: @ 0x021E8C8C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E8CB4 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E8CB8 @ =0x00000BD8
	movs r2, #0xc
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0x34
	bl ov73_021E83EC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E8CB4: .4byte 0x00000F0F
_021E8CB8: .4byte 0x00000BD8
	thumb_func_end ov73_021E8C8C

	thumb_func_start ov73_021E8CBC
ov73_021E8CBC: @ 0x021E8CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E8D08 @ =0x000012C8
	ldr r0, [r4, r0]
	bl ov73_021E83D4
	cmp r0, #0
	beq _021E8D04
	cmp r0, #2
	bne _021E8CE4
	blx FUN_021EC5B4
	cmp r0, #0
	bne _021E8CDE
	movs r0, #0
	str r0, [r4, #0x1c]
	b _021E8D04
_021E8CDE:
	movs r0, #0x29
	str r0, [r4, #0x1c]
	b _021E8D04
_021E8CE4:
	blx FUN_021EC5B4
	cmp r0, #0
	bne _021E8CFA
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov73_021E844C
	movs r0, #0x2e
	b _021E8CFC
_021E8CFA:
	movs r0, #0x29
_021E8CFC:
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	movs r1, #1
	str r1, [r0, #0x20]
_021E8D04:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E8D08: .4byte 0x000012C8
	thumb_func_end ov73_021E8CBC

	thumb_func_start ov73_021E8D0C
ov73_021E8D0C: @ 0x021E8D0C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #2
	movs r2, #1
	movs r3, #0x14
	blx FUN_021EC3F0
	movs r0, #2
	blx FUN_021EC454
	blx FUN_021EC4A4
	movs r0, #3
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov73_021E8D0C

	thumb_func_start ov73_021E8D2C
ov73_021E8D2C: @ 0x021E8D2C
	push {r3, r4, lr}
	sub sp, #0x44
	adds r4, r0, #0
	blx FUN_021EC60C
	blx FUN_021EC5B4
	cmp r0, #0
	beq _021E8DAC
	blx FUN_021EC724
	cmp r0, #8
	bhi _021E8D8A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E8D52: @ jump table
	.2byte _021E8D8A - _021E8D52 - 2 @ case 0
	.2byte _021E8D8A - _021E8D52 - 2 @ case 1
	.2byte _021E8D8A - _021E8D52 - 2 @ case 2
	.2byte _021E8D8A - _021E8D52 - 2 @ case 3
	.2byte _021E8DA2 - _021E8D52 - 2 @ case 4
	.2byte _021E8D8A - _021E8D52 - 2 @ case 5
	.2byte _021E8D8A - _021E8D52 - 2 @ case 6
	.2byte _021E8D64 - _021E8D52 - 2 @ case 7
	.2byte _021E8D8A - _021E8D52 - 2 @ case 8
_021E8D64:
	add r0, sp, #4
	blx FUN_021EC0FC
	movs r1, #0xf1
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	adds r0, r1, #4
	str r2, [r4, r0]
	blx FUN_021EC210
	blx FUN_021EC8D8
	adds r0, r4, #0
	bl ov73_021EA180
	movs r0, #0x37
	str r0, [r4, #0x1c]
	b _021E8DAC
_021E8D8A:
	add r0, sp, #0
	blx FUN_021EC0FC
	adds r0, r4, #0
	bl ov73_021EA180
	movs r1, #0x35
	str r1, [r4, #0x1c]
	ldr r0, _021E8DB4 @ =0x00000F1C
	subs r1, #0x37
	str r1, [r4, r0]
	b _021E8DAC
_021E8DA2:
	add r0, sp, #8
	blx FUN_021EC9E0
	movs r0, #4
	str r0, [r4, #0x1c]
_021E8DAC:
	movs r0, #3
	add sp, #0x44
	pop {r3, r4, pc}
	nop
_021E8DB4: .4byte 0x00000F1C
	thumb_func_end ov73_021E8D2C

	thumb_func_start ov73_021E8DB8
ov73_021E8DB8: @ 0x021E8DB8
	push {r4, lr}
	adds r4, r0, #0
	blx FUN_021ECD04
	movs r0, #5
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	thumb_func_end ov73_021E8DB8

	thumb_func_start ov73_021E8DC8
ov73_021E8DC8: @ 0x021E8DC8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	blx FUN_021ECDC8
	cmp r0, #5
	bhi _021E8E6E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E8DE2: @ jump table
	.2byte _021E8DF4 - _021E8DE2 - 2 @ case 0
	.2byte _021E8E6E - _021E8DE2 - 2 @ case 1
	.2byte _021E8E6E - _021E8DE2 - 2 @ case 2
	.2byte _021E8DEE - _021E8DE2 - 2 @ case 3
	.2byte _021E8DF4 - _021E8DE2 - 2 @ case 4
	.2byte _021E8DF4 - _021E8DE2 - 2 @ case 5
_021E8DEE:
	movs r0, #6
	str r0, [r4, #0x1c]
	b _021E8E6E
_021E8DF4:
	adds r0, r4, #0
	bl ov73_021EA180
	add r0, sp, #4
	add r1, sp, #0
	blx FUN_021EC11C
	movs r1, #0xf1
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	adds r0, r1, #4
	str r2, [r4, r0]
	blx FUN_021EC210
	blx FUN_021EC8D8
	movs r0, #0x37
	str r0, [r4, #0x1c]
	ldr r1, [sp]
	cmp r1, #7
	bhi _021E8E5C
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E8E2C: @ jump table
	.2byte _021E8E5C - _021E8E2C - 2 @ case 0
	.2byte _021E8E3C - _021E8E2C - 2 @ case 1
	.2byte _021E8E3C - _021E8E2C - 2 @ case 2
	.2byte _021E8E4E - _021E8E2C - 2 @ case 3
	.2byte _021E8E40 - _021E8E2C - 2 @ case 4
	.2byte _021E8E58 - _021E8E2C - 2 @ case 5
	.2byte _021E8E4A - _021E8E2C - 2 @ case 6
	.2byte _021E8E58 - _021E8E2C - 2 @ case 7
_021E8E3C:
	str r0, [r4, #0x1c]
	b _021E8E5C
_021E8E40:
	blx FUN_021FA0D8
	movs r0, #0x37
	str r0, [r4, #0x1c]
	b _021E8E5C
_021E8E4A:
	str r0, [r4, #0x1c]
	b _021E8E5C
_021E8E4E:
	blx FUN_021ED9B4
	movs r0, #0x37
	str r0, [r4, #0x1c]
	b _021E8E5C
_021E8E58:
	bl FUN_020399EC
_021E8E5C:
	ldr r1, [sp, #4]
	ldr r0, _021E8E74 @ =0xFFFFB1E0
	cmp r1, r0
	bge _021E8E6E
	ldr r0, _021E8E78 @ =0xFFFF8AD1
	cmp r1, r0
	blt _021E8E6E
	movs r0, #0x37
	str r0, [r4, #0x1c]
_021E8E6E:
	movs r0, #3
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021E8E74: .4byte 0xFFFFB1E0
_021E8E78: .4byte 0xFFFF8AD1
	thumb_func_end ov73_021E8DC8

	thumb_func_start ov73_021E8E7C
ov73_021E8E7C: @ 0x021E8E7C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl FUN_02028DD8
	cmp r0, #0
	bne _021E8E96
	ldr r1, [r5]
	ldr r0, [r1, #8]
	ldr r1, [r1, #0x1c]
	bl FUN_02028DDC
_021E8E96:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl FUN_02028DD8
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0x14]
	blx FUN_020A0310
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, r4, #0
	adds r1, r3, #0
	bl FUN_022378C0
	movs r0, #7
	str r0, [r5, #0x1c]
	movs r0, #3
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E8E7C

	thumb_func_start ov73_021E8EBC
ov73_021E8EBC: @ 0x021E8EBC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02237CB0
	movs r0, #8
	str r0, [r4, #0x1c]
	ldr r0, _021E8ED4 @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #3
	pop {r4, pc}
	nop
_021E8ED4: .4byte 0x00000F94
	thumb_func_end ov73_021E8EBC

	thumb_func_start ov73_021E8ED8
ov73_021E8ED8: @ 0x021E8ED8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02237B54
	cmp r0, #0
	beq _021E8F90
	bl FUN_02237B74
	ldr r1, _021E8FAC @ =0x00000F94
	movs r2, #0
	str r2, [r4, r1]
	adds r2, r0, #7
	cmp r2, #9
	bhi _021E8F84
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021E8F00: @ jump table
	.2byte _021E8F64 - _021E8F00 - 2 @ case 0
	.2byte _021E8F74 - _021E8F00 - 2 @ case 1
	.2byte _021E8F84 - _021E8F00 - 2 @ case 2
	.2byte _021E8F64 - _021E8F00 - 2 @ case 3
	.2byte _021E8F84 - _021E8F00 - 2 @ case 4
	.2byte _021E8F74 - _021E8F00 - 2 @ case 5
	.2byte _021E8F54 - _021E8F00 - 2 @ case 6
	.2byte _021E8F14 - _021E8F00 - 2 @ case 7
	.2byte _021E8F44 - _021E8F00 - 2 @ case 8
	.2byte _021E8F54 - _021E8F00 - 2 @ case 9
_021E8F14:
	adds r0, r4, #0
	bl ov73_021EA180
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _021E8F2C
	cmp r0, #1
	beq _021E8F38
	cmp r0, #2
	beq _021E8F3E
	b _021E8FA6
_021E8F2C:
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0xd
	bl ov73_021E83EC
	b _021E8FA6
_021E8F38:
	movs r0, #0x19
	str r0, [r4, #0x1c]
	b _021E8FA6
_021E8F3E:
	movs r0, #0x1d
	str r0, [r4, #0x1c]
	b _021E8FA6
_021E8F44:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E8FA6
_021E8F54:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E8FA6
_021E8F64:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E8FA6
_021E8F74:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E8FA6
_021E8F84:
	adds r0, r4, #0
	bl ov73_021EA180
	bl FUN_020399EC
	b _021E8FA6
_021E8F90:
	ldr r0, _021E8FAC @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _021E8FA6
	bl FUN_020399EC
_021E8FA6:
	movs r0, #3
	pop {r4, pc}
	nop
_021E8FAC: .4byte 0x00000F94
	thumb_func_end ov73_021E8ED8

	thumb_func_start ov73_021E8FB0
ov73_021E8FB0: @ 0x021E8FB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, _021E8FDC @ =0x00000F24
	ldr r0, [r0, #0xc]
	adds r1, r4, r1
	bl FUN_0203189C
	ldr r1, _021E8FDC @ =0x00000F24
	adds r0, r4, r1
	adds r1, #0x64
	adds r1, r4, r1
	bl FUN_02237CF4
	movs r0, #0xa
	str r0, [r4, #0x1c]
	ldr r0, _021E8FE0 @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #3
	pop {r4, pc}
	nop
_021E8FDC: .4byte 0x00000F24
_021E8FE0: .4byte 0x00000F94
	thumb_func_end ov73_021E8FB0

	thumb_func_start ov73_021E8FE4
ov73_021E8FE4: @ 0x021E8FE4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02237B54
	cmp r0, #0
	bne _021E8FF2
	b _021E90FA
_021E8FF2:
	bl FUN_02237B74
	adds r5, r0, #0
	ldr r0, _021E9114 @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	adds r1, r5, #7
	cmp r1, #9
	bhi _021E90EE
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E9010: @ jump table
	.2byte _021E90CE - _021E9010 - 2 @ case 0
	.2byte _021E90DE - _021E9010 - 2 @ case 1
	.2byte _021E90EE - _021E9010 - 2 @ case 2
	.2byte _021E90CE - _021E9010 - 2 @ case 3
	.2byte _021E90EE - _021E9010 - 2 @ case 4
	.2byte _021E90DE - _021E9010 - 2 @ case 5
	.2byte _021E90BE - _021E9010 - 2 @ case 6
	.2byte _021E9024 - _021E9010 - 2 @ case 7
	.2byte _021E90AE - _021E9010 - 2 @ case 8
	.2byte _021E90BE - _021E9010 - 2 @ case 9
_021E9024:
	adds r0, r4, #0
	bl ov73_021EA180
	ldr r0, _021E9118 @ =0x00000F88
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021E903C
	cmp r1, #1
	beq _021E9092
	cmp r1, #2
	beq _021E9092
	b _021E90A2
_021E903C:
	adds r1, r0, #4
	ldr r1, [r4, r1]
	cmp r1, #3
	bhi _021E9110
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E9050: @ jump table
	.2byte _021E9058 - _021E9050 - 2 @ case 0
	.2byte _021E9082 - _021E9050 - 2 @ case 1
	.2byte _021E9082 - _021E9050 - 2 @ case 2
	.2byte _021E9082 - _021E9050 - 2 @ case 3
_021E9058:
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _021E906A
	cmp r0, #1
	beq _021E9076
	cmp r0, #2
	beq _021E907C
	b _021E9110
_021E906A:
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0xd
	bl ov73_021E83EC
	b _021E9110
_021E9076:
	movs r0, #0x19
	str r0, [r4, #0x1c]
	b _021E9110
_021E907C:
	movs r0, #0x1d
	str r0, [r4, #0x1c]
	b _021E9110
_021E9082:
	subs r0, #0x6c
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E9092:
	ldr r0, _021E911C @ =0x00000F1C
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E90A2:
	adds r0, r4, #0
	bl ov73_021EA180
	bl FUN_020399EC
	b _021E9110
_021E90AE:
	subs r0, #0x78
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E90BE:
	subs r0, #0x78
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E90CE:
	subs r0, #0x78
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E90DE:
	subs r0, #0x78
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E90EE:
	adds r0, r4, #0
	bl ov73_021EA180
	bl FUN_020399EC
	b _021E9110
_021E90FA:
	ldr r0, _021E9114 @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _021E9110
	bl FUN_020399EC
_021E9110:
	movs r0, #3
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E9114: .4byte 0x00000F94
_021E9118: .4byte 0x00000F88
_021E911C: .4byte 0x00000F1C
	thumb_func_end ov73_021E8FE4

	thumb_func_start ov73_021E9120
ov73_021E9120: @ 0x021E9120
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl FUN_02237B80
	movs r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, _021E9140 @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov73_021EA15C
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E9140: .4byte 0x00000F94
	thumb_func_end ov73_021E9120

	thumb_func_start ov73_021E9144
ov73_021E9144: @ 0x021E9144
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02237B54
	cmp r0, #0
	beq _021E91D6
	bl FUN_02237B74
	ldr r1, _021E91F0 @ =0x00000F94
	movs r2, #0
	str r2, [r4, r1]
	adds r2, r0, #7
	cmp r2, #6
	bhi _021E91C0
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021E916C: @ jump table
	.2byte _021E91A2 - _021E916C - 2 @ case 0
	.2byte _021E9198 - _021E916C - 2 @ case 1
	.2byte _021E91AC - _021E916C - 2 @ case 2
	.2byte _021E91A2 - _021E916C - 2 @ case 3
	.2byte _021E918E - _021E916C - 2 @ case 4
	.2byte _021E9184 - _021E916C - 2 @ case 5
	.2byte _021E917A - _021E916C - 2 @ case 6
_021E917A:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	b _021E91CE
_021E9184:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	b _021E91CE
_021E918E:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	b _021E91CE
_021E9198:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	b _021E91CE
_021E91A2:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	b _021E91CE
_021E91AC:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	bl FUN_020399EC
	b _021E91CE
_021E91C0:
	cmp r0, #0
	ble _021E91CE
	adds r1, r4, #0
	adds r1, #0x98
	str r0, [r1]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_021E91CE:
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E91EC
_021E91D6:
	ldr r0, _021E91F0 @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _021E91EC
	bl FUN_020399EC
_021E91EC:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E91F0: .4byte 0x00000F94
	thumb_func_end ov73_021E9144

	thumb_func_start ov73_021E91F4
ov73_021E91F4: @ 0x021E91F4
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E921C @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9220 @ =0x00000BD4
	movs r2, #0
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0xe
	bl ov73_021E83EC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E921C: .4byte 0x00000F0F
_021E9220: .4byte 0x00000BD4
	thumb_func_end ov73_021E91F4

	thumb_func_start ov73_021E9224
ov73_021E9224: @ 0x021E9224
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E9264 @ =0x00000DF8
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_0200E580
	ldr r1, _021E9268 @ =0x00000BE8
	adds r2, r4, #0
	ldr r0, _021E9264 @ =0x00000DF8
	adds r2, #0x9c
	ldr r1, [r4, r1]
	ldr r2, [r2]
	adds r0, r4, r0
	movs r3, #3
	bl ov73_021EA0F0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl ov73_021EA134
	ldr r0, _021E9264 @ =0x00000DF8
	adds r0, r4, r0
	bl FUN_0201D578
	movs r0, #0xf
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E9264: .4byte 0x00000DF8
_021E9268: .4byte 0x00000BE8
	thumb_func_end ov73_021E9224

	thumb_func_start ov73_021E926C
ov73_021E926C: @ 0x021E926C
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r2, _021E9368 @ =0x021D110C
	movs r1, #0x40
	ldr r3, [r2, #0x4c]
	adds r4, r0, #0
	tst r1, r3
	beq _021E92BA
	adds r0, #0x9c
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r1, r0
	ble _021E92A0
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x9c
	str r1, [r0]
_021E92A0:
	ldr r0, _021E936C @ =0x00000DF8
	ldr r1, _021E9370 @ =0x00000BE8
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x9c
	ldr r2, [r4]
	movs r3, #3
	bl ov73_021EA0F0
	ldr r0, _021E9374 @ =0x000005DC
	bl FUN_0200604C
	b _021E9360
_021E92BA:
	movs r1, #0x80
	tst r1, r3
	beq _021E92FC
	adds r0, #0x9c
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bge _021E92E2
	adds r0, r4, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
_021E92E2:
	ldr r0, _021E936C @ =0x00000DF8
	ldr r1, _021E9370 @ =0x00000BE8
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x9c
	ldr r2, [r4]
	movs r3, #3
	bl ov73_021EA0F0
	ldr r0, _021E9374 @ =0x000005DC
	bl FUN_0200604C
	b _021E9360
_021E92FC:
	ldr r2, [r2, #0x48]
	movs r1, #1
	tst r1, r2
	beq _021E9348
	add r0, sp, #0
	add r1, sp, #0x10
	blx FUN_021ECB94
	adds r1, r4, #0
	adds r2, r4, #0
	adds r1, #0x94
	adds r2, #0x9c
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r0, [r0, #4]
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	add r3, sp, #0
	bl FUN_0202D720
	cmp r0, #0
	beq _021E9332
	movs r0, #0x14
	b _021E9334
_021E9332:
	movs r0, #0x10
_021E9334:
	movs r1, #0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov73_021EA134
	ldr r0, _021E9374 @ =0x000005DC
	bl FUN_0200604C
	b _021E9360
_021E9348:
	movs r1, #2
	tst r1, r2
	beq _021E9360
	movs r1, #0
	adds r2, r1, #0
	bl ov73_021EA134
	movs r0, #0x15
	str r0, [r4, #0x1c]
	ldr r0, _021E9374 @ =0x000005DC
	bl FUN_0200604C
_021E9360:
	movs r0, #3
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_021E9368: .4byte 0x021D110C
_021E936C: .4byte 0x00000DF8
_021E9370: .4byte 0x00000BE8
_021E9374: .4byte 0x000005DC
	thumb_func_end ov73_021E926C

	thumb_func_start ov73_021E9378
ov73_021E9378: @ 0x021E9378
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xbd
	adds r2, r4, #0
	lsls r0, r0, #4
	adds r2, #0x9c
	ldr r0, [r4, r0]
	ldr r2, [r2]
	movs r1, #0
	movs r3, #3
	bl FUN_0200BFCC
	movs r3, #2
	movs r0, #0xbd
	adds r2, r4, #0
	str r3, [sp]
	movs r1, #1
	str r1, [sp, #4]
	lsls r0, r0, #4
	adds r2, #0x94
	ldr r0, [r4, r0]
	ldr r2, [r2]
	bl FUN_0200BFCC
	ldr r0, _021E93E0 @ =0x00000F0F
	movs r2, #1
	str r0, [sp]
	ldr r1, _021E93E4 @ =0x00000BD4
	adds r0, r4, #0
	ldr r1, [r4, r1]
	adds r3, r2, #0
	bl ov73_021E9F34
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x11
	bl ov73_021E83EC
	adds r4, #0xa0
	ldr r2, _021E93E8 @ =0x00000A38
	movs r0, #0
	adds r1, r4, #0
	blx FUN_020D4858
	movs r0, #3
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021E93E0: .4byte 0x00000F0F
_021E93E4: .4byte 0x00000BD4
_021E93E8: .4byte 0x00000A38
	thumb_func_end ov73_021E9378

	thumb_func_start ov73_021E93EC
ov73_021E93EC: @ 0x021E93EC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9414 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9418 @ =0x00000BD4
	movs r2, #2
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9F34
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0xd
	bl ov73_021E83EC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9414: .4byte 0x00000F0F
_021E9418: .4byte 0x00000BD4
	thumb_func_end ov73_021E93EC

	thumb_func_start ov73_021E941C
ov73_021E941C: @ 0x021E941C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r0, #0x90
	adds r1, #0x9c
	adds r2, r4, #0
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, #0xa0
	bl FUN_02237BD0
	adds r0, r4, #0
	bl ov73_021EA15C
	movs r0, #0x12
	str r0, [r4, #0x1c]
	ldr r0, _021E9448 @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #3
	pop {r4, pc}
	nop
_021E9448: .4byte 0x00000F94
	thumb_func_end ov73_021E941C

	thumb_func_start ov73_021E944C
ov73_021E944C: @ 0x021E944C
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	bl FUN_02237B54
	cmp r0, #0
	beq _021E953A
	bl FUN_02237B74
	ldr r1, _021E9558 @ =0x00000F94
	movs r2, #0
	str r2, [r4, r1]
	adds r2, r0, #7
	cmp r2, #7
	bhi _021E9550
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021E9476: @ jump table
	.2byte _021E9516 - _021E9476 - 2 @ case 0
	.2byte _021E9506 - _021E9476 - 2 @ case 1
	.2byte _021E9526 - _021E9476 - 2 @ case 2
	.2byte _021E94F6 - _021E9476 - 2 @ case 3
	.2byte _021E94F6 - _021E9476 - 2 @ case 4
	.2byte _021E94E6 - _021E9476 - 2 @ case 5
	.2byte _021E94D6 - _021E9476 - 2 @ case 6
	.2byte _021E9486 - _021E9476 - 2 @ case 7
_021E9486:
	adds r2, r4, #0
	adds r3, r4, #0
	adds r2, #0x90
	adds r3, #0x9c
	ldr r0, [r4]
	ldr r2, [r2]
	ldr r3, [r3]
	adds r1, r4, #0
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r0, #4]
	adds r1, #0xa0
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0202D7C0
	adds r0, r4, #0
	movs r1, #0x27
	movs r2, #0x13
	bl ov73_021E83EC
	add r0, sp, #0
	add r1, sp, #0x10
	blx FUN_021ECB94
	adds r1, r4, #0
	ldr r0, [r4]
	adds r1, #0x94
	adds r4, #0x9c
	ldr r1, [r1]
	ldr r2, [r4]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r0, [r0, #4]
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	add r3, sp, #0
	bl FUN_0202D678
	b _021E9550
_021E94D6:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E94E6:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E94F6:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0xb
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E9506:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E9516:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E9526:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	bl FUN_020399EC
	b _021E9550
_021E953A:
	ldr r0, _021E9558 @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _021E9550
	bl FUN_020399EC
_021E9550:
	movs r0, #3
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_021E9558: .4byte 0x00000F94
	thumb_func_end ov73_021E944C

	thumb_func_start ov73_021E955C
ov73_021E955C: @ 0x021E955C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9590 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9594 @ =0x00000BD4
	movs r2, #3
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x2d
	bl ov73_021E83EC
	adds r0, r4, #0
	bl ov73_021EA180
	ldr r0, [r4]
	movs r1, #0
	str r1, [r0, #0x20]
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9590: .4byte 0x00000F0F
_021E9594: .4byte 0x00000BD4
	thumb_func_end ov73_021E955C

	thumb_func_start ov73_021E9598
ov73_021E9598: @ 0x021E9598
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E95C4 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E95C8 @ =0x00000BD4
	movs r2, #7
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x1a
	bl ov73_021E83EC
	adds r0, r4, #0
	bl ov73_021EA15C
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021E95C4: .4byte 0x00000F0F
_021E95C8: .4byte 0x00000BD4
	thumb_func_end ov73_021E9598

	thumb_func_start ov73_021E95CC
ov73_021E95CC: @ 0x021E95CC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0202D568
	adds r4, r0, #0
	ldr r0, [r5]
	add r1, sp, #0
	ldr r0, [r0, #4]
	bl FUN_0202D7F0
	ldr r0, [r5]
	ldr r2, _021E9610 @ =0x00000AD8
	ldr r0, [r0, #0xc]
	movs r1, #1
	adds r2, r5, r2
	bl FUN_02069528
	add r1, sp, #0
	ldrb r0, [r1]
	ldr r3, _021E9610 @ =0x00000AD8
	ldrb r1, [r1, #1]
	adds r2, r4, #0
	adds r3, r5, r3
	bl FUN_02237C30
	movs r0, #0x1b
	str r0, [r5, #0x1c]
	ldr r0, _021E9614 @ =0x00000F94
	movs r1, #0
	str r1, [r5, r0]
	movs r0, #3
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E9610: .4byte 0x00000AD8
_021E9614: .4byte 0x00000F94
	thumb_func_end ov73_021E95CC

	thumb_func_start ov73_021E9618
ov73_021E9618: @ 0x021E9618
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02237B54
	cmp r0, #0
	beq _021E96CC
	bl FUN_02237B74
	ldr r1, _021E96E8 @ =0x00000F94
	movs r2, #0
	str r2, [r4, r1]
	adds r2, r0, #7
	cmp r2, #7
	bhi _021E96E2
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021E9640: @ jump table
	.2byte _021E96A8 - _021E9640 - 2 @ case 0
	.2byte _021E9698 - _021E9640 - 2 @ case 1
	.2byte _021E96B8 - _021E9640 - 2 @ case 2
	.2byte _021E96A8 - _021E9640 - 2 @ case 3
	.2byte _021E9688 - _021E9640 - 2 @ case 4
	.2byte _021E9678 - _021E9640 - 2 @ case 5
	.2byte _021E9668 - _021E9640 - 2 @ case 6
	.2byte _021E9650 - _021E9640 - 2 @ case 7
_021E9650:
	ldr r0, [r4]
	movs r1, #5
	ldr r0, [r0]
	movs r2, #2
	bl FUN_0202D5DC
	adds r0, r4, #0
	movs r1, #0x27
	movs r2, #0x1c
	bl ov73_021E83EC
	b _021E96E2
_021E9668:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E9678:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E9688:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E9698:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E96A8:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E96B8:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	bl FUN_020399EC
	b _021E96E2
_021E96CC:
	ldr r0, _021E96E8 @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _021E96E2
	bl FUN_020399EC
_021E96E2:
	movs r0, #3
	pop {r4, pc}
	nop
_021E96E8: .4byte 0x00000F94
	thumb_func_end ov73_021E9618

	thumb_func_start ov73_021E96EC
ov73_021E96EC: @ 0x021E96EC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9720 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9724 @ =0x00000BD4
	movs r2, #8
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x2d
	bl ov73_021E83EC
	adds r0, r4, #0
	bl ov73_021EA180
	ldr r0, [r4]
	movs r1, #0
	str r1, [r0, #0x20]
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9720: .4byte 0x00000F0F
_021E9724: .4byte 0x00000BD4
	thumb_func_end ov73_021E96EC

	thumb_func_start ov73_021E9728
ov73_021E9728: @ 0x021E9728
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9750 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9754 @ =0x00000BD4
	movs r2, #5
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x1e
	bl ov73_021E83EC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9750: .4byte 0x00000F0F
_021E9754: .4byte 0x00000BD4
	thumb_func_end ov73_021E9728

	thumb_func_start ov73_021E9758
ov73_021E9758: @ 0x021E9758
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	adds r0, #0x94
	str r1, [r0]
	ldr r0, _021E97A0 @ =0x00000DE8
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_0200E580
	ldr r1, _021E97A4 @ =0x00000BEC
	adds r2, r4, #0
	ldr r0, _021E97A0 @ =0x00000DE8
	adds r2, #0x94
	ldr r1, [r4, r1]
	ldr r2, [r2]
	adds r0, r4, r0
	movs r3, #2
	bl ov73_021EA0F0
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov73_021EA134
	ldr r0, _021E97A0 @ =0x00000DE8
	adds r0, r4, r0
	bl FUN_0201D578
	movs r0, #0x1f
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	nop
_021E97A0: .4byte 0x00000DE8
_021E97A4: .4byte 0x00000BEC
	thumb_func_end ov73_021E9758

	thumb_func_start ov73_021E97A8
ov73_021E97A8: @ 0x021E97A8
	push {r4, lr}
	ldr r2, _021E986C @ =0x021D110C
	movs r1, #0x40
	ldr r3, [r2, #0x4c]
	adds r4, r0, #0
	tst r1, r3
	beq _021E97EE
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0xa
	ble _021E97D4
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x94
	str r1, [r0]
_021E97D4:
	ldr r0, _021E9870 @ =0x00000DE8
	ldr r1, _021E9874 @ =0x00000BEC
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x94
	ldr r2, [r4]
	movs r3, #2
	bl ov73_021EA0F0
	ldr r0, _021E9878 @ =0x000005DC
	bl FUN_0200604C
	b _021E9866
_021E97EE:
	movs r1, #0x80
	tst r1, r3
	beq _021E982C
	adds r0, #0x94
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #1
	bge _021E9812
	adds r0, r4, #0
	movs r1, #0xa
	adds r0, #0x94
	str r1, [r0]
_021E9812:
	ldr r0, _021E9870 @ =0x00000DE8
	ldr r1, _021E9874 @ =0x00000BEC
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x94
	ldr r2, [r4]
	movs r3, #2
	bl ov73_021EA0F0
	ldr r0, _021E9878 @ =0x000005DC
	bl FUN_0200604C
	b _021E9866
_021E982C:
	ldr r2, [r2, #0x48]
	movs r1, #1
	tst r1, r2
	beq _021E984E
	movs r1, #0
	adds r2, r1, #0
	bl ov73_021EA134
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0x20
	bl ov73_021E83EC
	ldr r0, _021E9878 @ =0x000005DC
	bl FUN_0200604C
	b _021E9866
_021E984E:
	movs r1, #2
	tst r1, r2
	beq _021E9866
	movs r1, #0
	adds r2, r1, #0
	bl ov73_021EA134
	movs r0, #0x17
	str r0, [r4, #0x1c]
	ldr r0, _021E9878 @ =0x000005DC
	bl FUN_0200604C
_021E9866:
	movs r0, #3
	pop {r4, pc}
	nop
_021E986C: .4byte 0x021D110C
_021E9870: .4byte 0x00000DE8
_021E9874: .4byte 0x00000BEC
_021E9878: .4byte 0x000005DC
	thumb_func_end ov73_021E97A8

	thumb_func_start ov73_021E987C
ov73_021E987C: @ 0x021E987C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E98A4 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E98A8 @ =0x00000BD4
	movs r2, #6
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x21
	bl ov73_021E83EC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E98A4: .4byte 0x00000F0F
_021E98A8: .4byte 0x00000BD4
	thumb_func_end ov73_021E987C

	thumb_func_start ov73_021E98AC
ov73_021E98AC: @ 0x021E98AC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	adds r0, #0x9c
	str r1, [r0]
	ldr r0, _021E98F4 @ =0x00000DF8
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_0200E580
	ldr r1, _021E98F8 @ =0x00000BE8
	adds r2, r4, #0
	ldr r0, _021E98F4 @ =0x00000DF8
	adds r2, #0x9c
	ldr r1, [r4, r1]
	ldr r2, [r2]
	adds r0, r4, r0
	movs r3, #3
	bl ov73_021EA0F0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl ov73_021EA134
	ldr r0, _021E98F4 @ =0x00000DF8
	adds r0, r4, r0
	bl FUN_0201D578
	movs r0, #0x22
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	nop
_021E98F4: .4byte 0x00000DF8
_021E98F8: .4byte 0x00000BE8
	thumb_func_end ov73_021E98AC

	thumb_func_start ov73_021E98FC
ov73_021E98FC: @ 0x021E98FC
	push {r4, lr}
	ldr r2, _021E99C4 @ =0x021D110C
	movs r1, #0x40
	ldr r3, [r2, #0x4c]
	adds r4, r0, #0
	tst r1, r3
	beq _021E994A
	adds r0, #0x9c
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	adds r0, r0, #1
	cmp r1, r0
	bne _021E9930
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x9c
	str r1, [r0]
_021E9930:
	ldr r0, _021E99C8 @ =0x00000DF8
	ldr r1, _021E99CC @ =0x00000BE8
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x9c
	ldr r2, [r4]
	movs r3, #3
	bl ov73_021EA0F0
	ldr r0, _021E99D0 @ =0x000005DC
	bl FUN_0200604C
	b _021E99C0
_021E994A:
	movs r1, #0x80
	tst r1, r3
	beq _021E998C
	adds r0, #0x9c
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bge _021E9972
	adds r0, r4, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
_021E9972:
	ldr r0, _021E99C8 @ =0x00000DF8
	ldr r1, _021E99CC @ =0x00000BE8
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x9c
	ldr r2, [r4]
	movs r3, #3
	bl ov73_021EA0F0
	ldr r0, _021E99D0 @ =0x000005DC
	bl FUN_0200604C
	b _021E99C0
_021E998C:
	ldr r2, [r2, #0x48]
	movs r1, #1
	tst r1, r2
	beq _021E99A8
	movs r1, #0
	adds r2, r1, #0
	bl ov73_021EA134
	movs r0, #0x23
	str r0, [r4, #0x1c]
	ldr r0, _021E99D0 @ =0x000005DC
	bl FUN_0200604C
	b _021E99C0
_021E99A8:
	movs r1, #2
	tst r1, r2
	beq _021E99C0
	movs r1, #0
	adds r2, r1, #0
	bl ov73_021EA134
	movs r0, #0x1d
	str r0, [r4, #0x1c]
	ldr r0, _021E99D0 @ =0x000005DC
	bl FUN_0200604C
_021E99C0:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E99C4: .4byte 0x021D110C
_021E99C8: .4byte 0x00000DF8
_021E99CC: .4byte 0x00000BE8
_021E99D0: .4byte 0x000005DC
	thumb_func_end ov73_021E98FC

	thumb_func_start ov73_021E99D4
ov73_021E99D4: @ 0x021E99D4
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xbd
	adds r2, r4, #0
	lsls r0, r0, #4
	adds r2, #0x9c
	ldr r0, [r4, r0]
	ldr r2, [r2]
	movs r1, #0
	movs r3, #3
	bl FUN_0200BFCC
	movs r3, #2
	movs r0, #0xbd
	adds r2, r4, #0
	str r3, [sp]
	movs r1, #1
	str r1, [sp, #4]
	lsls r0, r0, #4
	adds r2, #0x94
	ldr r0, [r4, r0]
	ldr r2, [r2]
	bl FUN_0200BFCC
	ldr r0, _021E9A34 @ =0x00000F0F
	movs r2, #1
	str r0, [sp]
	ldr r1, _021E9A38 @ =0x00000BD4
	adds r0, r4, #0
	ldr r1, [r4, r1]
	adds r3, r2, #0
	bl ov73_021E9F34
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x24
	bl ov73_021E83EC
	movs r0, #0x24
	str r0, [r4, #0x1c]
	movs r0, #3
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021E9A34: .4byte 0x00000F0F
_021E9A38: .4byte 0x00000BD4
	thumb_func_end ov73_021E99D4

	thumb_func_start ov73_021E9A3C
ov73_021E9A3C: @ 0x021E9A3C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r0, #0x94
	adds r1, #0x9c
	adds r2, r4, #0
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, #0xa0
	bl FUN_02237BD0
	movs r0, #0x25
	str r0, [r4, #0x1c]
	ldr r0, _021E9A68 @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov73_021EA15C
	movs r0, #3
	pop {r4, pc}
	nop
_021E9A68: .4byte 0x00000F94
	thumb_func_end ov73_021E9A3C

	thumb_func_start ov73_021E9A6C
ov73_021E9A6C: @ 0x021E9A6C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02237B54
	cmp r0, #0
	beq _021E9B34
	bl FUN_02237B74
	ldr r1, _021E9B50 @ =0x00000F94
	movs r2, #0
	str r2, [r4, r1]
	adds r2, r0, #7
	cmp r2, #7
	bhi _021E9B4A
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021E9A94: @ jump table
	.2byte _021E9B10 - _021E9A94 - 2 @ case 0
	.2byte _021E9B00 - _021E9A94 - 2 @ case 1
	.2byte _021E9B20 - _021E9A94 - 2 @ case 2
	.2byte _021E9B10 - _021E9A94 - 2 @ case 3
	.2byte _021E9AF0 - _021E9A94 - 2 @ case 4
	.2byte _021E9AE0 - _021E9A94 - 2 @ case 5
	.2byte _021E9AD0 - _021E9A94 - 2 @ case 6
	.2byte _021E9AA4 - _021E9A94 - 2 @ case 7
_021E9AA4:
	adds r2, r4, #0
	adds r3, r4, #0
	adds r2, #0x94
	adds r3, #0x9c
	ldr r0, [r4]
	ldr r2, [r2]
	ldr r3, [r3]
	ldr r1, _021E9B54 @ =0x000006DC
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r0, #4]
	adds r1, r4, r1
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0202D8A4
	adds r0, r4, #0
	movs r1, #0x27
	movs r2, #0x26
	bl ov73_021E83EC
	b _021E9B4A
_021E9AD0:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9B4A
_021E9AE0:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9B4A
_021E9AF0:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0xb
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9B4A
_021E9B00:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9B4A
_021E9B10:
	movs r2, #0xb
	str r2, [r4, #0x1c]
	subs r1, #0x78
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov73_021EA180
	b _021E9B4A
_021E9B20:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
	bl FUN_020399EC
	b _021E9B4A
_021E9B34:
	ldr r0, _021E9B50 @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _021E9B4A
	bl FUN_020399EC
_021E9B4A:
	movs r0, #3
	pop {r4, pc}
	nop
_021E9B50: .4byte 0x00000F94
_021E9B54: .4byte 0x000006DC
	thumb_func_end ov73_021E9A6C

	thumb_func_start ov73_021E9B58
ov73_021E9B58: @ 0x021E9B58
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9B8C @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9B90 @ =0x00000BD4
	movs r2, #3
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x2d
	bl ov73_021E83EC
	adds r0, r4, #0
	bl ov73_021EA180
	ldr r0, [r4]
	movs r1, #0
	str r1, [r0, #0x20]
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9B8C: .4byte 0x00000F0F
_021E9B90: .4byte 0x00000BD4
	thumb_func_end ov73_021E9B58

	thumb_func_start ov73_021E9B94
ov73_021E9B94: @ 0x021E9B94
	movs r1, #0x29
	str r1, [r0, #0x1c]
	movs r0, #3
	bx lr
	thumb_func_end ov73_021E9B94

	thumb_func_start ov73_021E9B9C
ov73_021E9B9C: @ 0x021E9B9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #2
	ldr r0, [r0, #0xc]
	bl FUN_02027550
	movs r0, #0x28
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021E9B9C

	thumb_func_start ov73_021E9BB4
ov73_021E9BB4: @ 0x021E9BB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl FUN_02027564
	cmp r0, #2
	bne _021E9BCE
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov73_021EA180
_021E9BCE:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021E9BB4

	thumb_func_start ov73_021E9BD4
ov73_021E9BD4: @ 0x021E9BD4
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9BFC @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9C00 @ =0x00000BD4
	movs r2, #4
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0x16
	bl ov73_021E83EC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9BFC: .4byte 0x00000F0F
_021E9C00: .4byte 0x00000BD4
	thumb_func_end ov73_021E9BD4

	thumb_func_start ov73_021E9C04
ov73_021E9C04: @ 0x021E9C04
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E9C2C @ =0x000012C8
	ldr r0, [r4, r0]
	bl ov73_021E83D4
	cmp r0, #0
	beq _021E9C28
	cmp r0, #2
	bne _021E9C1E
	movs r0, #0xd
	str r0, [r4, #0x1c]
	b _021E9C28
_021E9C1E:
	movs r0, #0x29
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	movs r1, #1
	str r1, [r0, #0x20]
_021E9C28:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E9C2C: .4byte 0x000012C8
	thumb_func_end ov73_021E9C04

	thumb_func_start ov73_021E9C30
ov73_021E9C30: @ 0x021E9C30
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9C58 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9C5C @ =0x00000BD4
	movs r2, #9
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0x18
	bl ov73_021E83EC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9C58: .4byte 0x00000F0F
_021E9C5C: .4byte 0x00000BD4
	thumb_func_end ov73_021E9C30

	thumb_func_start ov73_021E9C60
ov73_021E9C60: @ 0x021E9C60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E9C88 @ =0x000012C8
	ldr r0, [r4, r0]
	bl ov73_021E83D4
	cmp r0, #0
	beq _021E9C84
	cmp r0, #2
	bne _021E9C7A
	movs r0, #0x1d
	str r0, [r4, #0x1c]
	b _021E9C84
_021E9C7A:
	movs r0, #0x29
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	movs r1, #1
	str r1, [r0, #0x20]
_021E9C84:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E9C88: .4byte 0x000012C8
	thumb_func_end ov73_021E9C60

	thumb_func_start ov73_021E9C8C
ov73_021E9C8C: @ 0x021E9C8C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9CB4 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9CB8 @ =0x00000BDC
	movs r2, #0x1a
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x2a
	bl ov73_021E83EC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9CB4: .4byte 0x00000F0F
_021E9CB8: .4byte 0x00000BDC
	thumb_func_end ov73_021E9C8C

	thumb_func_start ov73_021E9CBC
ov73_021E9CBC: @ 0x021E9CBC
	push {r4, lr}
	adds r4, r0, #0
	blx FUN_021EC8D8
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov73_021E844C
	movs r0, #0x2b
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021E9CBC

	thumb_func_start ov73_021E9CD8
ov73_021E9CD8: @ 0x021E9CD8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9D08 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9D0C @ =0x00000BDC
	movs r2, #0x1b
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #0x2e
	bl ov73_021E83EC
	movs r0, #0xf2
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9D08: .4byte 0x00000F0F
_021E9D0C: .4byte 0x00000BDC
	thumb_func_end ov73_021E9CD8

	thumb_func_start ov73_021E9D10
ov73_021E9D10: @ 0x021E9D10
	movs r0, #3
	bx lr
	thumb_func_end ov73_021E9D10

	thumb_func_start ov73_021E9D14
ov73_021E9D14: @ 0x021E9D14
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl FUN_0203A914
	bl FUN_0203946C
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x96
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200FA24
	movs r0, #0
	str r0, [r4, #0x1c]
	movs r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov73_021E9D14

	thumb_func_start ov73_021E9D44
ov73_021E9D44: @ 0x021E9D44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E9D68 @ =0x000012C8
	ldr r0, [r4, r0]
	bl ov73_021E83D4
	cmp r0, #0
	beq _021E9D62
	cmp r0, #2
	bne _021E9D5E
	movs r0, #0
	str r0, [r4, #0x1c]
	b _021E9D62
_021E9D5E:
	movs r0, #0x29
	str r0, [r4, #0x1c]
_021E9D62:
	movs r0, #3
	pop {r4, pc}
	nop
_021E9D68: .4byte 0x000012C8
	thumb_func_end ov73_021E9D44

	thumb_func_start ov73_021E9D6C
ov73_021E9D6C: @ 0x021E9D6C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021E9DD4 @ =0x00000F1C
	movs r4, #0
	ldr r0, [r5, r0]
	adds r0, r0, #7
	cmp r0, #9
	bhi _021E9DAE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E9D88: @ jump table
	.2byte _021E9DA8 - _021E9D88 - 2 @ case 0
	.2byte _021E9D9C - _021E9D88 - 2 @ case 1
	.2byte _021E9DAE - _021E9D88 - 2 @ case 2
	.2byte _021E9DA8 - _021E9D88 - 2 @ case 3
	.2byte _021E9DAC - _021E9D88 - 2 @ case 4
	.2byte _021E9D9C - _021E9D88 - 2 @ case 5
	.2byte _021E9DA4 - _021E9D88 - 2 @ case 6
	.2byte _021E9DAE - _021E9D88 - 2 @ case 7
	.2byte _021E9DA0 - _021E9D88 - 2 @ case 8
	.2byte _021E9DA4 - _021E9D88 - 2 @ case 9
_021E9D9C:
	movs r4, #0xd
	b _021E9DAE
_021E9DA0:
	movs r4, #0xb
	b _021E9DAE
_021E9DA4:
	movs r4, #0xc
	b _021E9DAE
_021E9DA8:
	movs r4, #0xe
	b _021E9DAE
_021E9DAC:
	movs r4, #0xf
_021E9DAE:
	adds r0, r5, #0
	bl ov73_021EA180
	ldr r0, _021E9DD8 @ =0x00000F0F
	ldr r1, _021E9DDC @ =0x00000BD4
	str r0, [sp]
	ldr r1, [r5, r1]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl ov73_021E9FF8
	adds r0, r5, #0
	movs r1, #0x2f
	movs r2, #0x36
	bl ov73_021E83EC
	movs r0, #3
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E9DD4: .4byte 0x00000F1C
_021E9DD8: .4byte 0x00000F0F
_021E9DDC: .4byte 0x00000BD4
	thumb_func_end ov73_021E9D6C

	thumb_func_start ov73_021E9DE0
ov73_021E9DE0: @ 0x021E9DE0
	push {r3, r4, lr}
	sub sp, #4
	movs r1, #0xf9
	adds r4, r0, #0
	lsls r1, r1, #4
	ldrsh r2, [r4, r1]
	cmp r2, #3
	bhi _021E9E7C
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021E9DFC: @ jump table
	.2byte _021E9E04 - _021E9DFC - 2 @ case 0
	.2byte _021E9E20 - _021E9DFC - 2 @ case 1
	.2byte _021E9E44 - _021E9DFC - 2 @ case 2
	.2byte _021E9E60 - _021E9DFC - 2 @ case 3
_021E9E04:
	subs r1, #0x81
	str r1, [sp]
	ldr r1, _021E9EA0 @ =0x00000BD4
	movs r2, #0x10
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	movs r0, #0xf9
	lsls r0, r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	b _021E9E98
_021E9E20:
	ldr r0, _021E9EA4 @ =0x00000BF4
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02020094
	cmp r0, #0
	bne _021E9E98
	bl FUN_0203946C
	blx FUN_021EC8D8
	movs r0, #0xf9
	lsls r0, r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	b _021E9E98
_021E9E44:
	subs r1, #0x81
	str r1, [sp]
	ldr r1, _021E9EA0 @ =0x00000BD4
	movs r2, #0x11
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov73_021E9FF8
	movs r0, #0xf9
	lsls r0, r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	b _021E9E98
_021E9E60:
	ldr r0, _021E9EA4 @ =0x00000BF4
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02020094
	cmp r0, #0
	bne _021E9E98
	movs r0, #0xf9
	lsls r0, r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	b _021E9E98
_021E9E7C:
	ldr r0, _021E9EA8 @ =0x00000F92
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _021E9E98
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov73_021E844C
	movs r0, #0x2e
	str r0, [r4, #0x1c]
_021E9E98:
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9EA0: .4byte 0x00000BD4
_021E9EA4: .4byte 0x00000BF4
_021E9EA8: .4byte 0x00000F92
	thumb_func_end ov73_021E9DE0

	thumb_func_start ov73_021E9EAC
ov73_021E9EAC: @ 0x021E9EAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E9EC8 @ =0x00000BF4
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02020094
	cmp r0, #0
	bne _021E9EC4
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_021E9EC4:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E9EC8: .4byte 0x00000BF4
	thumb_func_end ov73_021E9EAC

	thumb_func_start ov73_021E9ECC
ov73_021E9ECC: @ 0x021E9ECC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E9EFC @ =0x00000BF4
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02020094
	cmp r0, #0
	bne _021E9EF8
	movs r0, #0xf2
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	ble _021E9EEE
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_021E9EEE:
	movs r0, #0xf2
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
_021E9EF8:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E9EFC: .4byte 0x00000BF4
	thumb_func_end ov73_021E9ECC

	thumb_func_start ov73_021E9F00
ov73_021E9F00: @ 0x021E9F00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E9F2C @ =0x00000BF4
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_02020094
	cmp r0, #0
	bne _021E9F28
	movs r2, #0x91
	ldr r0, [r4, #4]
	movs r1, #0xa
	lsls r2, r2, #2
	bl ov73_021E8390
	ldr r1, _021E9F30 @ =0x000012C8
	str r0, [r4, r1]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_021E9F28:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E9F2C: .4byte 0x00000BF4
_021E9F30: .4byte 0x000012C8
	thumb_func_end ov73_021E9F00

	thumb_func_start ov73_021E9F34
ov73_021E9F34: @ 0x021E9F34
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	bl FUN_0200BBA0
	movs r1, #0xbd
	adds r6, r0, #0
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	adds r1, #0x10
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200CBBC
	ldr r0, _021E9F94 @ =0x00000DD8
	movs r1, #0xf
	adds r0, r5, r0
	bl FUN_0201D978
	ldr r0, _021E9F94 @ =0x00000DD8
	movs r1, #0
	adds r0, r5, r0
	movs r2, #1
	movs r3, #0xe
	bl FUN_0200E998
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	movs r2, #0xbe
	ldr r0, _021E9F94 @ =0x00000DD8
	str r3, [sp, #8]
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_020200A8
	ldr r1, _021E9F98 @ =0x00000BF4
	str r0, [r5, r1]
	adds r0, r6, #0
	bl FUN_02026380
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E9F94: .4byte 0x00000DD8
_021E9F98: .4byte 0x00000BF4
	thumb_func_end ov73_021E9F34

	thumb_func_start ov73_021E9F9C
ov73_021E9F9C: @ 0x021E9F9C
	push {r4, lr}
	ldr r1, _021E9FC4 @ =0x00000F14
	adds r4, r0, #0
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	rsbs r0, r0, #0
	bl ov73_021E6A70
	ldr r2, _021E9FC4 @ =0x00000F14
	adds r1, r0, #0
	ldr r2, [r4, r2]
	adds r0, r4, #0
	rsbs r2, r2, #0
	bl ov73_021EA218
	movs r0, #0x38
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_021E9FC4: .4byte 0x00000F14
	thumb_func_end ov73_021E9F9C

	thumb_func_start ov73_021E9FC8
ov73_021E9FC8: @ 0x021E9FC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021E9FF0 @ =0x021D110C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _021E9FDC
	movs r0, #2
	tst r0, r1
	beq _021E9FEA
_021E9FDC:
	ldr r0, _021E9FF4 @ =0x00000E18
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0200E5D4
	movs r0, #0
	str r0, [r4, #0x1c]
_021E9FEA:
	movs r0, #3
	pop {r4, pc}
	nop
_021E9FF0: .4byte 0x021D110C
_021E9FF4: .4byte 0x00000E18
	thumb_func_end ov73_021E9FC8

	thumb_func_start ov73_021E9FF8
ov73_021E9FF8: @ 0x021E9FF8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0xbe
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	adds r4, r3, #0
	bl FUN_0200BB6C
	ldr r0, _021EA048 @ =0x00000DD8
	movs r1, #0xf
	adds r0, r5, r0
	bl FUN_0201D978
	ldr r0, _021EA048 @ =0x00000DD8
	movs r1, #0
	adds r0, r5, r0
	movs r2, #1
	movs r3, #0xe
	bl FUN_0200E998
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	movs r2, #0xbe
	ldr r0, _021EA048 @ =0x00000DD8
	str r3, [sp, #8]
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_020200A8
	ldr r1, _021EA04C @ =0x00000BF4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021EA048: .4byte 0x00000DD8
_021EA04C: .4byte 0x00000BF4
	thumb_func_end ov73_021E9FF8

	thumb_func_start ov73_021EA050
ov73_021EA050: @ 0x021EA050
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	beq _021EA05E
	cmp r3, #2
	beq _021EA074
	b _021EA082
_021EA05E:
	ldr r0, [sp, #0xc]
	movs r2, #0
	bl FUN_02002F30
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r2, r0, #1
	b _021EA082
_021EA074:
	ldr r0, [sp, #0xc]
	movs r2, #0
	bl FUN_02002F30
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r2, r1, r0
_021EA082:
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov73_021EA050

	thumb_func_start ov73_021EA088
ov73_021EA088: @ 0x021EA088
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r3, #0
	ldr r3, [sp, #0x24]
	adds r5, r0, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r6, r1, #0
	bl ov73_021EA050
	adds r3, r0, #0
	str r4, [sp]
	movs r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl FUN_020200FC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov73_021EA088

	thumb_func_start ov73_021EA0BC
ov73_021EA0BC: @ 0x021EA0BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r3, #0
	ldr r3, [sp, #0x24]
	adds r5, r0, #0
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r6, r1, #0
	bl ov73_021EA050
	adds r3, r0, #0
	str r4, [sp]
	movs r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	str r1, [sp, #0xc]
	bl FUN_020200FC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov73_021EA0BC

	thumb_func_start ov73_021EA0F0
ov73_021EA0F0: @ 0x021EA0F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r1, #0xf
	adds r5, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0201D978
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #2
	bl FUN_02026464
	movs r3, #1
	ldr r0, _021EA128 @ =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov73_021EA0BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EA128: .4byte 0x00010200
	thumb_func_end ov73_021EA0F0

	thumb_func_start ov73_021EA12C
ov73_021EA12C: @ 0x021EA12C
	ldr r3, _021EA130 @ =FUN_0203A880
	bx r3
	.align 2, 0
_021EA130: .4byte FUN_0203A880
	thumb_func_end ov73_021EA12C

	thumb_func_start ov73_021EA134
ov73_021EA134: @ 0x021EA134
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #1
	bhi _021EA154
	movs r0, #0xdd
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02024830
	ldr r0, _021EA158 @ =0x00000DD4
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_02024830
_021EA154:
	pop {r3, r4, r5, pc}
	nop
_021EA158: .4byte 0x00000DD4
	thumb_func_end ov73_021EA134

	thumb_func_start ov73_021EA15C
ov73_021EA15C: @ 0x021EA15C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021EA178 @ =0x00000F0C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021EA176
	ldr r0, _021EA17C @ =0x00000DD8
	movs r1, #1
	adds r0, r4, r0
	bl FUN_0200F0AC
	ldr r1, _021EA178 @ =0x00000F0C
	str r0, [r4, r1]
_021EA176:
	pop {r4, pc}
	.align 2, 0
_021EA178: .4byte 0x00000F0C
_021EA17C: .4byte 0x00000DD8
	thumb_func_end ov73_021EA15C

	thumb_func_start ov73_021EA180
ov73_021EA180: @ 0x021EA180
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021EA198 @ =0x00000F0C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021EA196
	bl FUN_0200F450
	ldr r0, _021EA198 @ =0x00000F0C
	movs r1, #0
	str r1, [r4, r0]
_021EA196:
	pop {r4, pc}
	.align 2, 0
_021EA198: .4byte 0x00000F0C
	thumb_func_end ov73_021EA180

	thumb_func_start ov73_021EA19C
ov73_021EA19C: @ 0x021EA19C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #1
	adds r6, r1, #0
	lsls r0, r0, #8
	movs r1, #0x96
	bl FUN_02026354
	adds r4, r0, #0
	ldr r0, _021EA20C @ =0x00000BDC
	adds r1, r6, #0
	ldr r0, [r5, r0]
	adds r2, r4, #0
	bl FUN_0200BB6C
	movs r1, #0xbd
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	adds r1, #0x20
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200CBBC
	ldr r0, _021EA210 @ =0x00000E18
	movs r1, #0xf
	adds r0, r5, r0
	bl FUN_0201D978
	ldr r0, _021EA210 @ =0x00000E18
	movs r1, #1
	adds r0, r5, r0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200E580
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	movs r2, #0xbf
	ldr r0, _021EA210 @ =0x00000E18
	str r3, [sp, #8]
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_020200A8
	ldr r1, _021EA214 @ =0x00000BF4
	str r0, [r5, r1]
	adds r0, r4, #0
	bl FUN_02026380
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021EA20C: .4byte 0x00000BDC
_021EA210: .4byte 0x00000E18
_021EA214: .4byte 0x00000BF4
	thumb_func_end ov73_021EA19C

	thumb_func_start ov73_021EA218
ov73_021EA218: @ 0x021EA218
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	mvns r0, r0
	cmp r4, r0
	bne _021EA22A
	movs r4, #0xb
_021EA22A:
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xbd
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	movs r3, #5
	bl FUN_0200BFCC
	ldr r0, _021EA258 @ =0x00000DD8
	movs r1, #1
	adds r0, r5, r0
	bl FUN_0200E9BC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov73_021EA19C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EA258: .4byte 0x00000DD8
	thumb_func_end ov73_021EA218

	thumb_func_start ov73_021EA25C
ov73_021EA25C: @ 0x021EA25C
	push {r3, lr}
	bl FUN_0202C854
	bl ov73_021E795C
	pop {r3, pc}
	thumb_func_end ov73_021EA25C

	thumb_func_start ov73_021EA268
ov73_021EA268: @ 0x021EA268
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl FUN_0202C854
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0201AACC
	adds r4, r0, #0
	adds r0, r6, #0
	bl ov73_021E7960
	adds r1, r4, #0
	adds r2, r5, #0
	blx FUN_020D48B4
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov73_021EA268

	thumb_func_start ov73_021EA290
ov73_021EA290: @ 0x021EA290
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0202C854
	adds r2, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov73_021E79F4
	pop {r4, pc}
	thumb_func_end ov73_021EA290

	thumb_func_start ov73_021EA2A8
ov73_021EA2A8: @ 0x021EA2A8
	push {r3, lr}
	bl FUN_0202C028
	bl FUN_0202B994
	pop {r3, pc}
	thumb_func_end ov73_021EA2A8

	thumb_func_start ov73_021EA2B4
ov73_021EA2B4: @ 0x021EA2B4
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl FUN_0202C028
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0201AACC
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0202B9B8
	adds r1, r4, #0
	adds r2, r5, #0
	blx FUN_020D48B4
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov73_021EA2B4

	thumb_func_start ov73_021EA2E0
ov73_021EA2E0: @ 0x021EA2E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0202C028
	adds r2, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #0x18
	ldr r3, [r4, #0x10]
	lsrs r0, r0, #0x18
	bl FUN_0202BF80
	pop {r4, pc}
	thumb_func_end ov73_021EA2E0

	thumb_func_start ov73_021EA2FC
ov73_021EA2FC: @ 0x021EA2FC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_020270C4
	ldr r1, [r4, #0x14]
	str r1, [sp]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov73_021E7E24
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov73_021EA2FC

	thumb_func_start ov73_021EA31C
ov73_021EA31C: @ 0x021EA31C
	ldr r3, _021EA320 @ =FUN_0202E66C
	bx r3
	.align 2, 0
_021EA320: .4byte FUN_0202E66C
	thumb_func_end ov73_021EA31C

	thumb_func_start ov73_021EA324
ov73_021EA324: @ 0x021EA324
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0202E530
	ldr r0, [r4]
	str r0, [sp]
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	lsls r2, r2, #0x18
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x10]
	lsrs r2, r2, #0x18
	bl FUN_0202E97C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov73_021EA324

	thumb_func_start ov73_021EA348
ov73_021EA348: @ 0x021EA348
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	adds r6, r0, #0
	adds r0, r1, #0
	adds r1, r5, #0
	bl FUN_0201AACC
	adds r4, r0, #0
	movs r1, #0
	adds r2, r5, #0
	blx FUN_020D4994
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl FUN_02069528
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov73_021EA348

	thumb_func_start ov73_021EA370
ov73_021EA370: @ 0x021EA370
	bx lr
	.align 2, 0
	thumb_func_end ov73_021EA370

	thumb_func_start ov73_021EA374
ov73_021EA374: @ 0x021EA374
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	movs r0, #0
	ldr r6, _021EA3C8 @ =0x00000BB8
	ldr r5, _021EA3CC @ =0x021EA744
	str r1, [sp, #4]
	str r0, [sp, #8]
_021EA384:
	ldr r0, [sp]
	ldr r1, [r5]
	blx r1
	adds r4, r0, #0
	ldr r0, [sp]
	ldr r3, [r5, #4]
	movs r1, #0x32
	adds r2, r4, #0
	blx r3
	adds r7, r0, #0
	cmp r6, r4
	bhi _021EA3A0
	bl FUN_0202551C
_021EA3A0:
	ldr r1, [sp, #4]
	adds r0, r7, #0
	adds r2, r4, #0
	blx FUN_020D48B4
	adds r0, r7, #0
	bl FUN_0201AB0C
	ldr r0, [sp, #4]
	subs r6, r6, r4
	adds r0, r0, r4
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	adds r5, #0xc
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0xa
	blt _021EA384
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA3C8: .4byte 0x00000BB8
_021EA3CC: .4byte 0x021EA744
	thumb_func_end ov73_021EA374

	thumb_func_start ov73_021EA3D0
ov73_021EA3D0: @ 0x021EA3D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r0, [sp]
	ldr r0, _021EA514 @ =0x00000BB8
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	movs r0, #0x32
	str r0, [sp, #0x50]
	ldr r0, [sp]
	movs r7, #0
	str r0, [sp, #0x54]
	bl FUN_0203769C
	adds r5, r7, #0
	str r0, [sp, #0x5c]
	movs r0, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x3c
	str r0, [sp, #0x60]
	add r0, sp, #0x28
	ldr r4, _021EA518 @ =0x021EA744
	str r0, [sp, #0x64]
	str r5, [sp, #0x1c]
	str r5, [sp, #0x20]
	str r5, [sp, #0x24]
_021EA402:
	ldr r0, [sp]
	ldr r1, [r4]
	blx r1
	ldr r1, [sp, #0x1c]
	adds r5, r5, #1
	adds r0, r1, r0
	adds r4, #0xc
	str r0, [sp, #0x1c]
	cmp r5, #2
	blt _021EA402
	ldr r4, _021EA518 @ =0x021EA744
	movs r5, #0
_021EA41A:
	ldr r0, [sp]
	ldr r1, [r4]
	blx r1
	ldr r1, [sp, #0x20]
	adds r5, r5, #1
	adds r0, r1, r0
	adds r4, #0xc
	str r0, [sp, #0x20]
	cmp r5, #3
	blt _021EA41A
	ldr r4, _021EA518 @ =0x021EA744
	movs r5, #0
_021EA432:
	ldr r0, [sp]
	ldr r1, [r4]
	blx r1
	ldr r1, [sp, #0x24]
	adds r5, r5, #1
	adds r0, r1, r0
	adds r4, #0xc
	str r0, [sp, #0x24]
	cmp r5, #4
	blt _021EA432
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _021EA518 @ =0x021EA744
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	str r0, [sp, #0xc]
_021EA452:
	ldr r1, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r1, r0
	bhi _021EA466
	bl FUN_0202551C
_021EA466:
	movs r6, #0
	ldr r4, [sp, #4]
	adds r5, r6, #0
_021EA46C:
	adds r0, r6, #0
	bl FUN_02034818
	cmp r0, #0
	beq _021EA47E
	ldr r0, [sp, #0x60]
	adds r1, r4, r7
	str r1, [r0, r5]
	b _021EA484
_021EA47E:
	ldr r1, [sp, #0x60]
	movs r0, #0
	str r0, [r1, r5]
_021EA484:
	movs r0, #0x2f
	lsls r0, r0, #6
	adds r6, r6, #1
	adds r4, r4, r0
	adds r5, r5, #4
	cmp r6, #5
	blt _021EA46C
	ldr r0, [sp, #8]
	cmp r0, #7
	beq _021EA4A0
	cmp r0, #8
	beq _021EA4A0
	cmp r0, #9
	bne _021EA4D2
_021EA4A0:
	movs r6, #0
	ldr r4, [sp, #4]
	adds r5, r6, #0
_021EA4A6:
	adds r0, r6, #0
	bl FUN_02034818
	cmp r0, #0
	beq _021EA4BE
	ldr r0, [sp, #0xc]
	subs r0, #0x1c
	ldr r0, [r0]
	adds r1, r4, r0
	ldr r0, [sp, #0x64]
	str r1, [r0, r5]
	b _021EA4C4
_021EA4BE:
	ldr r1, [sp, #0x64]
	movs r0, #0
	str r0, [r1, r5]
_021EA4C4:
	movs r0, #0x2f
	lsls r0, r0, #6
	adds r6, r6, #1
	adds r4, r4, r0
	adds r5, r5, #4
	cmp r6, #5
	blt _021EA4A6
_021EA4D2:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021EA4DE
	add r0, sp, #0x50
	blx r1
_021EA4DE:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	adds r7, r7, r0
	subs r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0xa
	blo _021EA452
	ldr r0, [sp]
	bl FUN_020270C4
	adds r4, r0, #0
	bl FUN_0202E43C
	adds r0, r4, #0
	bl FUN_0202E474
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EA514: .4byte 0x00000BB8
_021EA518: .4byte 0x021EA744
	thumb_func_end ov73_021EA3D0

	.rodata

_021EA51C:
	.byte 0x10, 0x18, 0x00, 0x00
	.byte 0xA0, 0x01, 0xA0, 0x07, 0xA0, 0x0D, 0xA0, 0x13, 0xA0, 0x19, 0x08, 0x02, 0x08, 0x03, 0x08, 0x04
	.byte 0x18, 0x00, 0x00, 0xFF, 0xA0, 0xC0, 0x80, 0xC0, 0xA0, 0xC0, 0xC0, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.byte 0x54, 0x00, 0x68, 0x00, 0x55, 0x00, 0x48, 0x00, 0x72, 0x00, 0x58, 0x00, 0x67, 0x00, 0x75, 0x00
	.byte 0x42, 0x00, 0x75, 0x00, 0x37, 0x00, 0x58, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x03, 0x04, 0x06, 0x08, 0x09, 0xFF, 0x00, 0x01, 0x03, 0x04, 0x05, 0x08, 0x09, 0x0A, 0x0B
	.byte 0xFF, 0x00, 0x00, 0x00, 0x02, 0x04, 0x06, 0x07, 0x09, 0x0A, 0x0B, 0x0D, 0xFF, 0x00, 0x00, 0x00
	.byte 0x02, 0x04, 0x06, 0x07, 0x09, 0x0A, 0x0B, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0xFF, 0x00
	.byte 0x01, 0x02, 0x03, 0x04, 0x06, 0x0A, 0x0D, 0x0F, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0xFF
	.byte 0x01, 0x02, 0x03, 0x04, 0x06, 0x07, 0x08, 0x0A, 0x0D, 0x0F, 0x10, 0x12, 0x13, 0x14, 0x15, 0x16
	.byte 0x17, 0x19, 0x1A, 0xFF, 0x30, 0xA6, 0x1E, 0x02, 0x50, 0xA6, 0x1E, 0x02, 0x18, 0xA6, 0x1E, 0x02
	.byte 0x24, 0xA6, 0x1E, 0x02, 0x40, 0xA6, 0x1E, 0x02, 0x10, 0xA6, 0x1E, 0x02, 0x00, 0x17, 0x0D, 0x07
	.byte 0x04, 0x0D, 0x00, 0x00, 0xE0, 0x00, 0x6F, 0x00, 0xE0, 0x00, 0x81, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1B, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1E, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x5D, 0xA2, 0x1E, 0x02, 0x69, 0xA2, 0x1E, 0x02, 0x91, 0xA2, 0x1E, 0x02
	.byte 0xA9, 0xA2, 0x1E, 0x02, 0xB5, 0xA2, 0x1E, 0x02, 0xE1, 0xA2, 0x1E, 0x02, 0x7D, 0x7A, 0x1E, 0x02
	.byte 0x85, 0x7B, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x85, 0x7A, 0x1E, 0x02, 0xC9, 0x7B, 0x1E, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x75, 0x7A, 0x1E, 0x02, 0x3D, 0x7B, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x8D, 0xE5, 0x02, 0x02, 0x1D, 0xA3, 0x1E, 0x02, 0x25, 0xA3, 0x1E, 0x02, 0x31, 0xD2, 0x02, 0x02
	.byte 0x49, 0xA3, 0x1E, 0x02, 0x71, 0xA3, 0x1E, 0x02, 0x7D, 0x7A, 0x1E, 0x02, 0x51, 0x7C, 0x1E, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x85, 0x7A, 0x1E, 0x02, 0x95, 0x7C, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x75, 0x7A, 0x1E, 0x02, 0x0D, 0x7C, 0x1E, 0x02, 0xFD, 0xA2, 0x1E, 0x02

	.data

_021EA7C0:
	.byte 0x45, 0x64, 0x1E, 0x02, 0xF5, 0x66, 0x1E, 0x02, 0x79, 0x67, 0x1E, 0x02, 0x85, 0x64, 0x1E, 0x02
	.byte 0x91, 0x68, 0x1E, 0x02, 0xAD, 0x68, 0x1E, 0x02, 0xD1, 0x69, 0x1E, 0x02, 0xE9, 0x69, 0x1E, 0x02
	.byte 0x71, 0x6A, 0x1E, 0x02, 0xDD, 0x6C, 0x1E, 0x02, 0xFD, 0x6C, 0x1E, 0x02, 0x39, 0x6D, 0x1E, 0x02
	.byte 0x55, 0x6D, 0x1E, 0x02, 0xF9, 0x6D, 0x1E, 0x02, 0x49, 0x6E, 0x1E, 0x02, 0x6D, 0x6E, 0x1E, 0x02
	.byte 0x8D, 0x6E, 0x1E, 0x02, 0xCD, 0x6E, 0x1E, 0x02, 0xF9, 0x6E, 0x1E, 0x02, 0x1D, 0x6F, 0x1E, 0x02
	.byte 0xAD, 0x6F, 0x1E, 0x02, 0xE9, 0x6F, 0x1E, 0x02, 0x91, 0x6A, 0x1E, 0x02, 0xAD, 0x6A, 0x1E, 0x02
	.byte 0x6D, 0x6B, 0x1E, 0x02, 0xC9, 0x6B, 0x1E, 0x02, 0xF9, 0x6B, 0x1E, 0x02, 0x21, 0x6C, 0x1E, 0x02
	.byte 0x51, 0x6C, 0x1E, 0x02, 0xC1, 0x6C, 0x1E, 0x02, 0x1D, 0x67, 0x1E, 0x02, 0xD1, 0x84, 0x1E, 0x02
	.byte 0xAD, 0x85, 0x1E, 0x02, 0xDD, 0x85, 0x1E, 0x02, 0xFD, 0x8B, 0x1E, 0x02, 0x2D, 0x8C, 0x1E, 0x02
	.byte 0x0D, 0x8D, 0x1E, 0x02, 0x2D, 0x8D, 0x1E, 0x02, 0xB9, 0x8D, 0x1E, 0x02, 0xC9, 0x8D, 0x1E, 0x02
	.byte 0x7D, 0x8E, 0x1E, 0x02, 0xBD, 0x8E, 0x1E, 0x02, 0xD9, 0x8E, 0x1E, 0x02, 0xB1, 0x8F, 0x1E, 0x02
	.byte 0xE5, 0x8F, 0x1E, 0x02, 0x21, 0x91, 0x1E, 0x02, 0x45, 0x91, 0x1E, 0x02, 0xF5, 0x91, 0x1E, 0x02
	.byte 0x25, 0x92, 0x1E, 0x02, 0x6D, 0x92, 0x1E, 0x02, 0x79, 0x93, 0x1E, 0x02, 0x1D, 0x94, 0x1E, 0x02
	.byte 0x4D, 0x94, 0x1E, 0x02, 0x5D, 0x95, 0x1E, 0x02, 0xED, 0x93, 0x1E, 0x02, 0xD5, 0x9B, 0x1E, 0x02
	.byte 0x05, 0x9C, 0x1E, 0x02, 0x31, 0x9C, 0x1E, 0x02, 0x61, 0x9C, 0x1E, 0x02, 0x99, 0x95, 0x1E, 0x02
	.byte 0xCD, 0x95, 0x1E, 0x02, 0x19, 0x96, 0x1E, 0x02, 0xED, 0x96, 0x1E, 0x02, 0x29, 0x97, 0x1E, 0x02
	.byte 0x59, 0x97, 0x1E, 0x02, 0xA9, 0x97, 0x1E, 0x02, 0x7D, 0x98, 0x1E, 0x02, 0xAD, 0x98, 0x1E, 0x02
	.byte 0xFD, 0x98, 0x1E, 0x02, 0xD5, 0x99, 0x1E, 0x02, 0x3D, 0x9A, 0x1E, 0x02, 0x6D, 0x9A, 0x1E, 0x02
	.byte 0x59, 0x9B, 0x1E, 0x02, 0x9D, 0x9B, 0x1E, 0x02, 0xB5, 0x9B, 0x1E, 0x02, 0x8D, 0x9C, 0x1E, 0x02
	.byte 0xBD, 0x9C, 0x1E, 0x02, 0xD9, 0x9C, 0x1E, 0x02, 0x11, 0x9D, 0x1E, 0x02, 0x95, 0x9B, 0x1E, 0x02
	.byte 0x15, 0x9D, 0x1E, 0x02, 0xAD, 0x9E, 0x1E, 0x02, 0x01, 0x9F, 0x1E, 0x02, 0xCD, 0x9E, 0x1E, 0x02
	.byte 0x45, 0x9D, 0x1E, 0x02, 0x8D, 0x8C, 0x1E, 0x02, 0xBD, 0x8C, 0x1E, 0x02, 0x6D, 0x9D, 0x1E, 0x02
	.byte 0xE1, 0x9D, 0x1E, 0x02, 0x9D, 0x9F, 0x1E, 0x02, 0xC9, 0x9F, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss

_021EA940:
	.space 0x20