	.file	"memory.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	" \n Source is at : %p new string at destination %p \t"
.LC1:
	.string	"Pointer ERROR"
	.text
	.globl	my_memmove
	.type	my_memmove, @function
my_memmove:
.LFB0:
	.file 1 "source/memory.c"
	.loc 1 6 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	.loc 1 6 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 7 0
	movl	$0, -68(%rbp)
	.loc 1 10 0
	cmpq	$0, -88(%rbp)
	je	.L2
	.loc 1 13 0
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-100(%rbp), %esi
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	copying_LOOP
	.loc 1 15 0
	movl	$0, -68(%rbp)
	.loc 1 17 0
	movq	-96(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movl	-100(%rbp), %esi
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	copying_LOOP
	.loc 1 19 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	.loc 1 20 0
	movl	$0, -68(%rbp)
	.loc 1 22 0
	jmp	.L3
.L4:
	.loc 1 24 0
	movl	-68(%rbp), %edx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 25 0
	addl	$1, -68(%rbp)
.L3:
	.loc 1 22 0
	movl	-68(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jb	.L4
	.loc 1 27 0
	movl	$0, %eax
	jmp	.L6
.L2:
	.loc 1 31 0
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	.loc 1 32 0
	movl	$1, %eax
.L6:
	.loc 1 35 0 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	.loc 1 35 0 is_stmt 0
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	my_memmove, .-my_memmove
	.section	.rodata
.LC2:
	.string	" \n New String is \t"
.LC3:
	.string	"Pointer Error"
	.text
	.globl	my_memzero
	.type	my_memzero, @function
my_memzero:
.LFB1:
	.loc 1 38 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 39 0
	movw	$0, -4(%rbp)
	movw	$0, -2(%rbp)
	.loc 1 40 0
	jmp	.L9
.L10:
	.loc 1 42 0
	movzwl	-2(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -2(%rbp)
	.loc 1 43 0
	movzwl	-4(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -4(%rbp)
.L9:
	.loc 1 40 0
	movzwl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L10
	.loc 1 45 0
	movw	$0, -4(%rbp)
	.loc 1 46 0
	cmpq	$0, -24(%rbp)
	je	.L11
	.loc 1 48 0
	jmp	.L12
.L13:
	.loc 1 50 0
	movzwl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	.loc 1 51 0
	movzwl	-4(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -4(%rbp)
.L12:
	.loc 1 48 0
	movzwl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L13
	.loc 1 53 0
	movw	$0, -4(%rbp)
	.loc 1 54 0
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 55 0
	jmp	.L14
.L15:
	.loc 1 57 0
	movzwl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 58 0
	movzwl	-4(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -4(%rbp)
.L14:
	.loc 1 55 0
	movzwl	-4(%rbp), %eax
	cmpw	-2(%rbp), %ax
	jb	.L15
	.loc 1 61 0
	movl	$10, %edi
	call	putchar
	.loc 1 63 0
	movl	$0, %eax
	jmp	.L16
.L11:
	.loc 1 68 0
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 69 0
	movl	$1, %eax
.L16:
	.loc 1 71 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	my_memzero, .-my_memzero
	.section	.rodata
.LC4:
	.string	"\n Reveresed string is \t"
	.text
	.globl	my_reverse
	.type	my_reverse, @function
my_reverse:
.LFB2:
	.loc 1 74 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 75 0
	movw	$0, -4(%rbp)
	.loc 1 77 0
	cmpq	$0, -24(%rbp)
	je	.L18
.LBB2:
	.loc 1 81 0
	movw	$0, -2(%rbp)
	jmp	.L19
.L20:
	.loc 1 83 0 discriminator 3
	movzwl	-2(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	.loc 1 84 0 discriminator 3
	movzwl	-2(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movzwl	-2(%rbp), %eax
	subq	%rax, %rcx
	movq	%rcx, %rax
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	.loc 1 85 0 discriminator 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movzwl	-2(%rbp), %eax
	subq	%rax, %rdx
	movq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	.loc 1 81 0 discriminator 3
	movzwl	-2(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -2(%rbp)
.L19:
	.loc 1 81 0 is_stmt 0 discriminator 1
	movzwl	-2(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cmpl	%eax, %edx
	jl	.L20
	.loc 1 87 0 is_stmt 1
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	.loc 1 88 0
	jmp	.L21
.L22:
	.loc 1 90 0
	movzwl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar
	.loc 1 91 0
	movzwl	-4(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -4(%rbp)
.L21:
	.loc 1 88 0
	movzwl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L22
	.loc 1 93 0
	movl	$0, %eax
	jmp	.L23
.L18:
.LBE2:
	.loc 1 97 0
	movl	$1, %eax
.L23:
	.loc 1 101 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	my_reverse, .-my_reverse
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ef
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF18
	.byte	0xc
	.long	.LASF19
	.long	.LASF20
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0x24
	.long	0x49
	.uleb128 0x5
	.long	.LASF10
	.byte	0x2
	.byte	0x30
	.long	0x34
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0x31
	.long	0x3b
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x33
	.long	0x42
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x5
	.long	0x79
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x110
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x5
	.long	0x110
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x7
	.string	"dst"
	.byte	0x1
	.byte	0x5
	.long	0x110
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1
	.byte	0x5
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x7
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.byte	0x8
	.long	0x116
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x84
	.uleb128 0xb
	.long	0x84
	.long	0x126
	.uleb128 0xc
	.long	0x65
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0x25
	.long	0x79
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x17e
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x25
	.long	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1
	.byte	0x25
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x27
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x27
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.byte	0x49
	.long	0x79
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"src"
	.byte	0x1
	.byte	0x49
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1
	.byte	0x49
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x4b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xe
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.byte	0x50
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
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
	.uleb128 0x7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
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
	.uleb128 0x6
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x18
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"source/memory.c"
.LASF3:
	.string	"unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF14:
	.string	"temp"
.LASF13:
	.string	"length"
.LASF21:
	.string	"my_reverse"
.LASF0:
	.string	"long unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF17:
	.string	"counter"
.LASF10:
	.string	"uint8_t"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF9:
	.string	"int8_t"
.LASF6:
	.string	"long int"
.LASF16:
	.string	"my_memzero"
.LASF15:
	.string	"my_memmove"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF5:
	.string	"short int"
.LASF18:
	.string	"GNU C99 5.4.0 20160609 -mtune=generic -march=x86-64 -g -O0 -std=c99 -fstack-protector-strong"
.LASF20:
	.string	"/home/gauravgandhi70/codes/Gaurav_repo/project1"
.LASF7:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
