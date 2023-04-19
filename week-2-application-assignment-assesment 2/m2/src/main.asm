	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	buffer
	.bss
	.align	2
	.type	buffer, %object
	.size	buffer, 10
buffer:
	.space	10
	.text
	.align	1
	.global	main
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	main, %function
main:
.LFB123:
	.file 1 "main.c"
	.loc 1 30 16
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 35 3
	movs	r1, #10
	ldr	r0, .L5
	bl	clear_all
	.loc 1 36 3
	ldr	r3, .L5+4
	movs	r2, #2
	movs	r1, #43
	mov	r0, r3
	bl	set_all
	.loc 1 37 3
	movs	r2, #97
	movs	r1, #0
	ldr	r0, .L5
	bl	set_value
	.loc 1 38 11
	movs	r1, #9
	ldr	r0, .L5
	bl	get_value
	mov	r3, r0
	strb	r3, [r7, #3]
	.loc 1 39 3
	ldrb	r3, [r7, #3]
	adds	r3, r3, #39
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #9
	ldr	r0, .L5
	bl	set_value
	.loc 1 40 3
	movs	r2, #55
	movs	r1, #3
	ldr	r0, .L5
	bl	set_value
	.loc 1 41 3
	movs	r2, #88
	movs	r1, #1
	ldr	r0, .L5
	bl	set_value
	.loc 1 42 3
	movs	r2, #50
	movs	r1, #4
	ldr	r0, .L5
	bl	set_value
	.loc 1 43 11
	movs	r1, #1
	ldr	r0, .L5
	bl	get_value
	mov	r3, r0
	strb	r3, [r7, #3]
	.loc 1 44 3
	movs	r2, #121
	movs	r1, #2
	ldr	r0, .L5
	bl	set_value
	.loc 1 45 3
	ldrb	r3, [r7, #3]
	subs	r3, r3, #12
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #7
	ldr	r0, .L5
	bl	set_value
	.loc 1 46 3
	movs	r2, #95
	movs	r1, #5
	ldr	r0, .L5
	bl	set_value
	.loc 1 48 11
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 1 48 3
	b	.L2
.L3:
	.loc 1 48 33 discriminator 3
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	.loc 1 48 3 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #9
	bls	.L3
	.loc 1 52 10
	movs	r3, #0
	.loc 1 53 1
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	buffer
	.word	buffer+8
	.cfi_endproc
.LFE123:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0xc
	.4byte	.LASF12
	.4byte	.LASF13
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	0x7b
	.4byte	0x7b
	.uleb128 0x5
	.4byte	0x64
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	0x6b
	.uleb128 0x5
	.byte	0x3
	.4byte	buffer
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.4byte	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x1
	.byte	0x20
	.byte	0x8
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF3:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF12:
	.ascii	"main.c\000"
.LASF13:
	.ascii	"/home/omid/Desktop/ese-coursera-course1-master/asse"
	.ascii	"ssments/m2/src\000"
.LASF15:
	.ascii	"main\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF9:
	.ascii	"char\000"
.LASF2:
	.ascii	"long int\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"value\000"
.LASF1:
	.ascii	"short int\000"
.LASF14:
	.ascii	"buffer\000"
.LASF11:
	.ascii	"GNU C99 10.3.1 20210621 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -march=ar"
	.ascii	"mv7e-m+fp -g -O0 -std=c99\000"
	.ident	"GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
