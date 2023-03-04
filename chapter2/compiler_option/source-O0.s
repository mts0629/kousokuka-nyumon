	.file	"source.cpp"
	.text
.Ltext0:
	.section	.rodata
.LC1:
	.string	"Elapsed time = %15.7f sec\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB14:
	.file 1 "source.cpp"
	.loc 1 6 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$524368, %rsp
	.loc 1 6 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 7 0
	movl	$65536, -524332(%rbp)
	.loc 1 8 0
	movl	$65536, -524328(%rbp)
	.loc 1 10 0
	call	rand@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -524356(%rbp)
	.loc 1 11 0
	call	rand@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -524352(%rbp)
	.loc 1 12 0
	call	rand@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -524348(%rbp)
.LBB2:
	.loc 1 17 0
	movl	$0, -524344(%rbp)
.L3:
	.loc 1 17 0 is_stmt 0 discriminator 3
	cmpl	$65535, -524344(%rbp)
	jg	.L2
	.loc 1 18 0 is_stmt 1 discriminator 2
	call	rand@PLT
	cvtsi2ss	%eax, %xmm0
	movl	-524344(%rbp), %eax
	cltq
	movss	%xmm0, -524304(%rbp,%rax,4)
	.loc 1 17 0 discriminator 2
	addl	$1, -524344(%rbp)
	jmp	.L3
.L2:
.LBE2:
	.loc 1 21 0
	call	clock@PLT
	movq	%rax, -524320(%rbp)
.LBB3:
	.loc 1 24 0
	movl	$0, -524340(%rbp)
.L7:
	.loc 1 24 0 is_stmt 0 discriminator 1
	cmpl	$65535, -524340(%rbp)
	jg	.L4
.LBB4:
.LBB5:
	.loc 1 25 0 is_stmt 1
	movl	$0, -524336(%rbp)
.L6:
	.loc 1 25 0 is_stmt 0 discriminator 3
	cmpl	$65535, -524336(%rbp)
	jg	.L5
	.loc 1 26 0 is_stmt 1 discriminator 2
	movl	-524336(%rbp), %eax
	cltq
	movss	-524304(%rbp,%rax,4), %xmm1
	movss	-524356(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movl	-524336(%rbp), %eax
	cltq
	movss	-524304(%rbp,%rax,4), %xmm2
	movss	-524352(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-524336(%rbp), %eax
	cltq
	movss	-524304(%rbp,%rax,4), %xmm2
	movss	-524348(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movl	-524336(%rbp), %eax
	cltq
	movss	%xmm0, -262160(%rbp,%rax,4)
	.loc 1 25 0 discriminator 2
	addl	$1, -524336(%rbp)
	jmp	.L6
.L5:
.LBE5:
.LBE4:
	.loc 1 24 0 discriminator 2
	addl	$1, -524340(%rbp)
	jmp	.L7
.L4:
.LBE3:
	.loc 1 30 0
	call	clock@PLT
	movq	%rax, -524312(%rbp)
	.loc 1 32 0
	movq	-524312(%rbp), %rax
	subq	-524320(%rbp), %rax
	cvtsi2ssq	%rax, %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -524324(%rbp)
	.loc 1 33 0
	cvtss2sd	-524324(%rbp), %xmm0
	leaq	.LC1(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 35 0
	movl	$0, %eax
	.loc 1 36 0
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1232348160
	.text
.Letext0:
	.file 2 "/usr/include/c++/7/cstdio"
	.file 3 "/usr/include/c++/7/cstdlib"
	.file 4 "/usr/include/c++/7/ctime"
	.file 5 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/_G_config.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 14 "/usr/include/stdlib.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 18 "/usr/include/time.h"
	.file 19 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf90
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF170
	.byte	0x4
	.long	.LASF171
	.long	.LASF172
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"std"
	.byte	0x13
	.byte	0
	.long	0x231
	.uleb128 0x3
	.long	.LASF1
	.byte	0x5
	.byte	0xfd
	.uleb128 0x4
	.byte	0x5
	.byte	0xfd
	.long	0x38
	.uleb128 0x5
	.byte	0x2
	.byte	0x62
	.long	0x4a0
	.uleb128 0x5
	.byte	0x2
	.byte	0x63
	.long	0x5d8
	.uleb128 0x5
	.byte	0x2
	.byte	0x65
	.long	0x640
	.uleb128 0x5
	.byte	0x2
	.byte	0x66
	.long	0x658
	.uleb128 0x5
	.byte	0x2
	.byte	0x67
	.long	0x66d
	.uleb128 0x5
	.byte	0x2
	.byte	0x68
	.long	0x683
	.uleb128 0x5
	.byte	0x2
	.byte	0x69
	.long	0x699
	.uleb128 0x5
	.byte	0x2
	.byte	0x6a
	.long	0x6ae
	.uleb128 0x5
	.byte	0x2
	.byte	0x6b
	.long	0x6c4
	.uleb128 0x5
	.byte	0x2
	.byte	0x6c
	.long	0x6e5
	.uleb128 0x5
	.byte	0x2
	.byte	0x6d
	.long	0x705
	.uleb128 0x5
	.byte	0x2
	.byte	0x71
	.long	0x71f
	.uleb128 0x5
	.byte	0x2
	.byte	0x72
	.long	0x744
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.long	0x763
	.uleb128 0x5
	.byte	0x2
	.byte	0x75
	.long	0x783
	.uleb128 0x5
	.byte	0x2
	.byte	0x76
	.long	0x7a4
	.uleb128 0x5
	.byte	0x2
	.byte	0x78
	.long	0x7ba
	.uleb128 0x5
	.byte	0x2
	.byte	0x79
	.long	0x7d0
	.uleb128 0x5
	.byte	0x2
	.byte	0x7e
	.long	0x7dc
	.uleb128 0x5
	.byte	0x2
	.byte	0x83
	.long	0x7ee
	.uleb128 0x5
	.byte	0x2
	.byte	0x84
	.long	0x803
	.uleb128 0x5
	.byte	0x2
	.byte	0x85
	.long	0x81d
	.uleb128 0x5
	.byte	0x2
	.byte	0x87
	.long	0x82f
	.uleb128 0x5
	.byte	0x2
	.byte	0x88
	.long	0x846
	.uleb128 0x5
	.byte	0x2
	.byte	0x8b
	.long	0x86b
	.uleb128 0x5
	.byte	0x2
	.byte	0x8d
	.long	0x876
	.uleb128 0x5
	.byte	0x2
	.byte	0x8f
	.long	0x88b
	.uleb128 0x5
	.byte	0x3
	.byte	0x7f
	.long	0x8f3
	.uleb128 0x5
	.byte	0x3
	.byte	0x80
	.long	0x923
	.uleb128 0x5
	.byte	0x3
	.byte	0x86
	.long	0x9b4
	.uleb128 0x5
	.byte	0x3
	.byte	0x89
	.long	0x9d1
	.uleb128 0x5
	.byte	0x3
	.byte	0x8c
	.long	0x9eb
	.uleb128 0x5
	.byte	0x3
	.byte	0x8d
	.long	0xa00
	.uleb128 0x5
	.byte	0x3
	.byte	0x8e
	.long	0xa15
	.uleb128 0x5
	.byte	0x3
	.byte	0x8f
	.long	0xa2a
	.uleb128 0x5
	.byte	0x3
	.byte	0x91
	.long	0xa54
	.uleb128 0x5
	.byte	0x3
	.byte	0x94
	.long	0xa6f
	.uleb128 0x5
	.byte	0x3
	.byte	0x96
	.long	0xa85
	.uleb128 0x5
	.byte	0x3
	.byte	0x99
	.long	0xaa0
	.uleb128 0x5
	.byte	0x3
	.byte	0x9a
	.long	0xabb
	.uleb128 0x5
	.byte	0x3
	.byte	0x9b
	.long	0xaed
	.uleb128 0x5
	.byte	0x3
	.byte	0x9d
	.long	0xb0d
	.uleb128 0x5
	.byte	0x3
	.byte	0xa0
	.long	0xb2e
	.uleb128 0x5
	.byte	0x3
	.byte	0xa3
	.long	0xb40
	.uleb128 0x5
	.byte	0x3
	.byte	0xa5
	.long	0xb4c
	.uleb128 0x5
	.byte	0x3
	.byte	0xa6
	.long	0xb5e
	.uleb128 0x5
	.byte	0x3
	.byte	0xa7
	.long	0xb7e
	.uleb128 0x5
	.byte	0x3
	.byte	0xa8
	.long	0xb9d
	.uleb128 0x5
	.byte	0x3
	.byte	0xa9
	.long	0xbbc
	.uleb128 0x5
	.byte	0x3
	.byte	0xab
	.long	0xbd2
	.uleb128 0x5
	.byte	0x3
	.byte	0xac
	.long	0xbf8
	.uleb128 0x5
	.byte	0x3
	.byte	0xf0
	.long	0x95a
	.uleb128 0x5
	.byte	0x3
	.byte	0xf5
	.long	0x27d
	.uleb128 0x5
	.byte	0x3
	.byte	0xf6
	.long	0xc13
	.uleb128 0x5
	.byte	0x3
	.byte	0xf8
	.long	0xc2e
	.uleb128 0x5
	.byte	0x3
	.byte	0xf9
	.long	0xc81
	.uleb128 0x5
	.byte	0x3
	.byte	0xfa
	.long	0xc43
	.uleb128 0x5
	.byte	0x3
	.byte	0xfb
	.long	0xc62
	.uleb128 0x5
	.byte	0x3
	.byte	0xfc
	.long	0xc9b
	.uleb128 0x5
	.byte	0x4
	.byte	0x3c
	.long	0x965
	.uleb128 0x5
	.byte	0x4
	.byte	0x3d
	.long	0x970
	.uleb128 0x5
	.byte	0x4
	.byte	0x3e
	.long	0xcb5
	.uleb128 0x5
	.byte	0x4
	.byte	0x40
	.long	0xda8
	.uleb128 0x5
	.byte	0x4
	.byte	0x41
	.long	0xdb3
	.uleb128 0x5
	.byte	0x4
	.byte	0x42
	.long	0xdcd
	.uleb128 0x5
	.byte	0x4
	.byte	0x43
	.long	0xde8
	.uleb128 0x5
	.byte	0x4
	.byte	0x44
	.long	0xe03
	.uleb128 0x5
	.byte	0x4
	.byte	0x45
	.long	0xe1e
	.uleb128 0x5
	.byte	0x4
	.byte	0x46
	.long	0xe39
	.uleb128 0x5
	.byte	0x4
	.byte	0x47
	.long	0xe4e
	.byte	0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x5
	.byte	0xff
	.long	0x298
	.uleb128 0x7
	.long	.LASF1
	.byte	0x5
	.value	0x101
	.uleb128 0x8
	.byte	0x5
	.value	0x101
	.long	0x23c
	.uleb128 0x5
	.byte	0x3
	.byte	0xc8
	.long	0x95a
	.uleb128 0x5
	.byte	0x3
	.byte	0xd8
	.long	0xc13
	.uleb128 0x5
	.byte	0x3
	.byte	0xe3
	.long	0xc2e
	.uleb128 0x5
	.byte	0x3
	.byte	0xe4
	.long	0xc43
	.uleb128 0x5
	.byte	0x3
	.byte	0xe5
	.long	0xc62
	.uleb128 0x5
	.byte	0x3
	.byte	0xe7
	.long	0xc81
	.uleb128 0x5
	.byte	0x3
	.byte	0xe8
	.long	0xc9b
	.uleb128 0x9
	.string	"div"
	.byte	0x3
	.byte	0xd5
	.long	.LASF173
	.long	0x95a
	.uleb128 0xa
	.long	0x953
	.uleb128 0xa
	.long	0x953
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF9
	.byte	0x6
	.byte	0xd8
	.long	0x2a3
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
	.long	0x2cd
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xb
	.long	.LASF10
	.byte	0x7
	.byte	0x8c
	.long	0x2d9
	.uleb128 0xb
	.long	.LASF11
	.byte	0x7
	.byte	0x8d
	.long	0x2d9
	.uleb128 0xb
	.long	.LASF12
	.byte	0x7
	.byte	0x90
	.long	0x2d9
	.uleb128 0xb
	.long	.LASF13
	.byte	0x7
	.byte	0x94
	.long	0x2d9
	.uleb128 0xf
	.byte	0x8
	.uleb128 0x10
	.byte	0x8
	.long	0x314
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0xe
	.long	0x314
	.uleb128 0x11
	.long	.LASF55
	.byte	0xd8
	.byte	0x8
	.byte	0xf5
	.long	0x4a0
	.uleb128 0x12
	.long	.LASF15
	.byte	0x8
	.byte	0xf6
	.long	0x2cd
	.byte	0
	.uleb128 0x12
	.long	.LASF16
	.byte	0x8
	.byte	0xfb
	.long	0x30e
	.byte	0x8
	.uleb128 0x12
	.long	.LASF17
	.byte	0x8
	.byte	0xfc
	.long	0x30e
	.byte	0x10
	.uleb128 0x12
	.long	.LASF18
	.byte	0x8
	.byte	0xfd
	.long	0x30e
	.byte	0x18
	.uleb128 0x12
	.long	.LASF19
	.byte	0x8
	.byte	0xfe
	.long	0x30e
	.byte	0x20
	.uleb128 0x12
	.long	.LASF20
	.byte	0x8
	.byte	0xff
	.long	0x30e
	.byte	0x28
	.uleb128 0x13
	.long	.LASF21
	.byte	0x8
	.value	0x100
	.long	0x30e
	.byte	0x30
	.uleb128 0x13
	.long	.LASF22
	.byte	0x8
	.value	0x101
	.long	0x30e
	.byte	0x38
	.uleb128 0x13
	.long	.LASF23
	.byte	0x8
	.value	0x102
	.long	0x30e
	.byte	0x40
	.uleb128 0x13
	.long	.LASF24
	.byte	0x8
	.value	0x104
	.long	0x30e
	.byte	0x48
	.uleb128 0x13
	.long	.LASF25
	.byte	0x8
	.value	0x105
	.long	0x30e
	.byte	0x50
	.uleb128 0x13
	.long	.LASF26
	.byte	0x8
	.value	0x106
	.long	0x30e
	.byte	0x58
	.uleb128 0x13
	.long	.LASF27
	.byte	0x8
	.value	0x108
	.long	0x572
	.byte	0x60
	.uleb128 0x13
	.long	.LASF28
	.byte	0x8
	.value	0x10a
	.long	0x578
	.byte	0x68
	.uleb128 0x13
	.long	.LASF29
	.byte	0x8
	.value	0x10c
	.long	0x2cd
	.byte	0x70
	.uleb128 0x13
	.long	.LASF30
	.byte	0x8
	.value	0x110
	.long	0x2cd
	.byte	0x74
	.uleb128 0x13
	.long	.LASF31
	.byte	0x8
	.value	0x112
	.long	0x2e0
	.byte	0x78
	.uleb128 0x13
	.long	.LASF32
	.byte	0x8
	.value	0x116
	.long	0x2b1
	.byte	0x80
	.uleb128 0x13
	.long	.LASF33
	.byte	0x8
	.value	0x117
	.long	0x2bf
	.byte	0x82
	.uleb128 0x13
	.long	.LASF34
	.byte	0x8
	.value	0x118
	.long	0x57e
	.byte	0x83
	.uleb128 0x13
	.long	.LASF35
	.byte	0x8
	.value	0x11c
	.long	0x58e
	.byte	0x88
	.uleb128 0x13
	.long	.LASF36
	.byte	0x8
	.value	0x125
	.long	0x2eb
	.byte	0x90
	.uleb128 0x13
	.long	.LASF37
	.byte	0x8
	.value	0x12d
	.long	0x30c
	.byte	0x98
	.uleb128 0x13
	.long	.LASF38
	.byte	0x8
	.value	0x12e
	.long	0x30c
	.byte	0xa0
	.uleb128 0x13
	.long	.LASF39
	.byte	0x8
	.value	0x12f
	.long	0x30c
	.byte	0xa8
	.uleb128 0x13
	.long	.LASF40
	.byte	0x8
	.value	0x130
	.long	0x30c
	.byte	0xb0
	.uleb128 0x13
	.long	.LASF41
	.byte	0x8
	.value	0x132
	.long	0x298
	.byte	0xb8
	.uleb128 0x13
	.long	.LASF42
	.byte	0x8
	.value	0x133
	.long	0x2cd
	.byte	0xc0
	.uleb128 0x13
	.long	.LASF43
	.byte	0x8
	.value	0x135
	.long	0x594
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x9
	.byte	0x7
	.long	0x320
	.uleb128 0x14
	.byte	0x8
	.byte	0xa
	.byte	0xe
	.long	.LASF50
	.long	0x4ef
	.uleb128 0x15
	.byte	0x4
	.byte	0xa
	.byte	0x11
	.long	0x4d6
	.uleb128 0x16
	.long	.LASF45
	.byte	0xa
	.byte	0x12
	.long	0x2b8
	.uleb128 0x16
	.long	.LASF46
	.byte	0xa
	.byte	0x13
	.long	0x4ef
	.byte	0
	.uleb128 0x12
	.long	.LASF47
	.byte	0xa
	.byte	0xf
	.long	0x2cd
	.byte	0
	.uleb128 0x12
	.long	.LASF48
	.byte	0xa
	.byte	0x14
	.long	0x4b7
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	0x314
	.long	0x4ff
	.uleb128 0x18
	.long	0x2a3
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF49
	.byte	0xa
	.byte	0x15
	.long	0x4ab
	.uleb128 0x14
	.byte	0x10
	.byte	0xb
	.byte	0x1b
	.long	.LASF51
	.long	0x52f
	.uleb128 0x12
	.long	.LASF52
	.byte	0xb
	.byte	0x1c
	.long	0x2e0
	.byte	0
	.uleb128 0x12
	.long	.LASF53
	.byte	0xb
	.byte	0x1d
	.long	0x4ff
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF54
	.byte	0xb
	.byte	0x1e
	.long	0x50a
	.uleb128 0x19
	.long	.LASF174
	.byte	0x8
	.byte	0x9a
	.uleb128 0x11
	.long	.LASF56
	.byte	0x18
	.byte	0x8
	.byte	0xa0
	.long	0x572
	.uleb128 0x12
	.long	.LASF57
	.byte	0x8
	.byte	0xa1
	.long	0x572
	.byte	0
	.uleb128 0x12
	.long	.LASF58
	.byte	0x8
	.byte	0xa2
	.long	0x578
	.byte	0x8
	.uleb128 0x12
	.long	.LASF59
	.byte	0x8
	.byte	0xa6
	.long	0x2cd
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x541
	.uleb128 0x10
	.byte	0x8
	.long	0x320
	.uleb128 0x17
	.long	0x314
	.long	0x58e
	.uleb128 0x18
	.long	0x2a3
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x53a
	.uleb128 0x17
	.long	0x314
	.long	0x5a4
	.uleb128 0x18
	.long	0x2a3
	.byte	0x13
	.byte	0
	.uleb128 0x1a
	.long	.LASF175
	.uleb128 0x1b
	.long	.LASF60
	.byte	0x8
	.value	0x13f
	.long	0x5a4
	.uleb128 0x1b
	.long	.LASF61
	.byte	0x8
	.value	0x140
	.long	0x5a4
	.uleb128 0x1b
	.long	.LASF62
	.byte	0x8
	.value	0x141
	.long	0x5a4
	.uleb128 0x10
	.byte	0x8
	.long	0x31b
	.uleb128 0xe
	.long	0x5cd
	.uleb128 0xb
	.long	.LASF63
	.byte	0xc
	.byte	0x4e
	.long	0x52f
	.uleb128 0xe
	.long	0x5d8
	.uleb128 0x1c
	.long	.LASF64
	.byte	0xc
	.byte	0x87
	.long	0x578
	.uleb128 0x1c
	.long	.LASF65
	.byte	0xc
	.byte	0x88
	.long	0x578
	.uleb128 0x1c
	.long	.LASF66
	.byte	0xc
	.byte	0x89
	.long	0x578
	.uleb128 0x1c
	.long	.LASF67
	.byte	0xd
	.byte	0x1a
	.long	0x2cd
	.uleb128 0x17
	.long	0x5d3
	.long	0x61f
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1c
	.long	.LASF68
	.byte	0xd
	.byte	0x1b
	.long	0x614
	.uleb128 0x1c
	.long	.LASF69
	.byte	0xd
	.byte	0x1e
	.long	0x2cd
	.uleb128 0x1c
	.long	.LASF70
	.byte	0xd
	.byte	0x1f
	.long	0x614
	.uleb128 0x1e
	.long	.LASF85
	.byte	0xc
	.value	0x2f5
	.long	0x652
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x4a0
	.uleb128 0x1f
	.long	.LASF71
	.byte	0xc
	.byte	0xc7
	.long	0x2cd
	.long	0x66d
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x20
	.long	.LASF72
	.byte	0xc
	.value	0x2f7
	.long	0x2cd
	.long	0x683
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x20
	.long	.LASF73
	.byte	0xc
	.value	0x2f9
	.long	0x2cd
	.long	0x699
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x1f
	.long	.LASF74
	.byte	0xc
	.byte	0xcc
	.long	0x2cd
	.long	0x6ae
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x20
	.long	.LASF75
	.byte	0xc
	.value	0x1dd
	.long	0x2cd
	.long	0x6c4
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x20
	.long	.LASF76
	.byte	0xc
	.value	0x2db
	.long	0x2cd
	.long	0x6df
	.uleb128 0xa
	.long	0x652
	.uleb128 0xa
	.long	0x6df
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x5d8
	.uleb128 0x20
	.long	.LASF77
	.byte	0xc
	.value	0x234
	.long	0x30e
	.long	0x705
	.uleb128 0xa
	.long	0x30e
	.uleb128 0xa
	.long	0x2cd
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x1f
	.long	.LASF78
	.byte	0xc
	.byte	0xe8
	.long	0x652
	.long	0x71f
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0x5cd
	.byte	0
	.uleb128 0x20
	.long	.LASF79
	.byte	0xc
	.value	0x286
	.long	0x298
	.long	0x744
	.uleb128 0xa
	.long	0x30c
	.uleb128 0xa
	.long	0x298
	.uleb128 0xa
	.long	0x298
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x1f
	.long	.LASF80
	.byte	0xc
	.byte	0xee
	.long	0x652
	.long	0x763
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x20
	.long	.LASF81
	.byte	0xc
	.value	0x2ac
	.long	0x2cd
	.long	0x783
	.uleb128 0xa
	.long	0x652
	.uleb128 0xa
	.long	0x2d9
	.uleb128 0xa
	.long	0x2cd
	.byte	0
	.uleb128 0x20
	.long	.LASF82
	.byte	0xc
	.value	0x2e0
	.long	0x2cd
	.long	0x79e
	.uleb128 0xa
	.long	0x652
	.uleb128 0xa
	.long	0x79e
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x5e3
	.uleb128 0x20
	.long	.LASF83
	.byte	0xc
	.value	0x2b1
	.long	0x2d9
	.long	0x7ba
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x20
	.long	.LASF84
	.byte	0xc
	.value	0x1de
	.long	0x2cd
	.long	0x7d0
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x21
	.long	.LASF92
	.byte	0xc
	.value	0x1e4
	.long	0x2cd
	.uleb128 0x1e
	.long	.LASF86
	.byte	0xc
	.value	0x307
	.long	0x7ee
	.uleb128 0xa
	.long	0x5cd
	.byte	0
	.uleb128 0x1f
	.long	.LASF87
	.byte	0xc
	.byte	0x90
	.long	0x2cd
	.long	0x803
	.uleb128 0xa
	.long	0x5cd
	.byte	0
	.uleb128 0x1f
	.long	.LASF88
	.byte	0xc
	.byte	0x92
	.long	0x2cd
	.long	0x81d
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0x5cd
	.byte	0
	.uleb128 0x1e
	.long	.LASF89
	.byte	0xc
	.value	0x2b6
	.long	0x82f
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0x1e
	.long	.LASF90
	.byte	0xc
	.value	0x122
	.long	0x846
	.uleb128 0xa
	.long	0x652
	.uleb128 0xa
	.long	0x30e
	.byte	0
	.uleb128 0x20
	.long	.LASF91
	.byte	0xc
	.value	0x126
	.long	0x2cd
	.long	0x86b
	.uleb128 0xa
	.long	0x652
	.uleb128 0xa
	.long	0x30e
	.uleb128 0xa
	.long	0x2cd
	.uleb128 0xa
	.long	0x298
	.byte	0
	.uleb128 0x22
	.long	.LASF93
	.byte	0xc
	.byte	0x9f
	.long	0x652
	.uleb128 0x1f
	.long	.LASF94
	.byte	0xc
	.byte	0xad
	.long	0x30e
	.long	0x88b
	.uleb128 0xa
	.long	0x30e
	.byte	0
	.uleb128 0x20
	.long	.LASF95
	.byte	0xc
	.value	0x27f
	.long	0x2cd
	.long	0x8a6
	.uleb128 0xa
	.long	0x2cd
	.uleb128 0xa
	.long	0x652
	.byte	0
	.uleb128 0xc
	.byte	0x20
	.byte	0x3
	.long	.LASF96
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.long	.LASF97
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.long	.LASF98
	.uleb128 0x23
	.long	0x8b4
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.long	.LASF99
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.long	.LASF100
	.uleb128 0x14
	.byte	0x8
	.byte	0xe
	.byte	0x3b
	.long	.LASF101
	.long	0x8f3
	.uleb128 0x12
	.long	.LASF102
	.byte	0xe
	.byte	0x3c
	.long	0x2cd
	.byte	0
	.uleb128 0x24
	.string	"rem"
	.byte	0xe
	.byte	0x3d
	.long	0x2cd
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF103
	.byte	0xe
	.byte	0x3e
	.long	0x8ce
	.uleb128 0x14
	.byte	0x10
	.byte	0xe
	.byte	0x43
	.long	.LASF104
	.long	0x923
	.uleb128 0x12
	.long	.LASF102
	.byte	0xe
	.byte	0x44
	.long	0x2d9
	.byte	0
	.uleb128 0x24
	.string	"rem"
	.byte	0xe
	.byte	0x45
	.long	0x2d9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF105
	.byte	0xe
	.byte	0x46
	.long	0x8fe
	.uleb128 0x14
	.byte	0x10
	.byte	0xe
	.byte	0x4d
	.long	.LASF106
	.long	0x953
	.uleb128 0x12
	.long	.LASF102
	.byte	0xe
	.byte	0x4e
	.long	0x953
	.byte	0
	.uleb128 0x24
	.string	"rem"
	.byte	0xe
	.byte	0x4f
	.long	0x953
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF107
	.uleb128 0xb
	.long	.LASF108
	.byte	0xe
	.byte	0x50
	.long	0x92e
	.uleb128 0xb
	.long	.LASF109
	.byte	0xf
	.byte	0x7
	.long	0x2f6
	.uleb128 0xb
	.long	.LASF110
	.byte	0x10
	.byte	0x7
	.long	0x301
	.uleb128 0xe
	.long	0x970
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF111
	.uleb128 0x25
	.long	.LASF112
	.byte	0xe
	.value	0x325
	.long	0x993
	.uleb128 0x10
	.byte	0x8
	.long	0x999
	.uleb128 0x26
	.long	0x2cd
	.long	0x9ad
	.uleb128 0xa
	.long	0x9ad
	.uleb128 0xa
	.long	0x9ad
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x9b3
	.uleb128 0x27
	.uleb128 0x20
	.long	.LASF113
	.byte	0xe
	.value	0x250
	.long	0x2cd
	.long	0x9ca
	.uleb128 0xa
	.long	0x9ca
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x9d0
	.uleb128 0x28
	.uleb128 0x29
	.long	.LASF176
	.byte	0xe
	.value	0x255
	.long	.LASF176
	.long	0x2cd
	.long	0x9eb
	.uleb128 0xa
	.long	0x9ca
	.byte	0
	.uleb128 0x1f
	.long	.LASF114
	.byte	0xe
	.byte	0x65
	.long	0x8c0
	.long	0xa00
	.uleb128 0xa
	.long	0x5cd
	.byte	0
	.uleb128 0x1f
	.long	.LASF115
	.byte	0xe
	.byte	0x68
	.long	0x2cd
	.long	0xa15
	.uleb128 0xa
	.long	0x5cd
	.byte	0
	.uleb128 0x1f
	.long	.LASF116
	.byte	0xe
	.byte	0x6b
	.long	0x2d9
	.long	0xa2a
	.uleb128 0xa
	.long	0x5cd
	.byte	0
	.uleb128 0x20
	.long	.LASF117
	.byte	0xe
	.value	0x331
	.long	0x30c
	.long	0xa54
	.uleb128 0xa
	.long	0x9ad
	.uleb128 0xa
	.long	0x9ad
	.uleb128 0xa
	.long	0x298
	.uleb128 0xa
	.long	0x298
	.uleb128 0xa
	.long	0x987
	.byte	0
	.uleb128 0x2a
	.string	"div"
	.byte	0xe
	.value	0x351
	.long	0x8f3
	.long	0xa6f
	.uleb128 0xa
	.long	0x2cd
	.uleb128 0xa
	.long	0x2cd
	.byte	0
	.uleb128 0x20
	.long	.LASF118
	.byte	0xe
	.value	0x277
	.long	0x30e
	.long	0xa85
	.uleb128 0xa
	.long	0x5cd
	.byte	0
	.uleb128 0x20
	.long	.LASF119
	.byte	0xe
	.value	0x353
	.long	0x923
	.long	0xaa0
	.uleb128 0xa
	.long	0x2d9
	.uleb128 0xa
	.long	0x2d9
	.byte	0
	.uleb128 0x20
	.long	.LASF120
	.byte	0xe
	.value	0x397
	.long	0x2cd
	.long	0xabb
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0x298
	.byte	0
	.uleb128 0x20
	.long	.LASF121
	.byte	0xe
	.value	0x3a2
	.long	0x298
	.long	0xadb
	.uleb128 0xa
	.long	0xadb
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0x298
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xae1
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.long	.LASF122
	.uleb128 0xe
	.long	0xae1
	.uleb128 0x20
	.long	.LASF123
	.byte	0xe
	.value	0x39a
	.long	0x2cd
	.long	0xb0d
	.uleb128 0xa
	.long	0xadb
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0x298
	.byte	0
	.uleb128 0x1e
	.long	.LASF124
	.byte	0xe
	.value	0x33b
	.long	0xb2e
	.uleb128 0xa
	.long	0x30c
	.uleb128 0xa
	.long	0x298
	.uleb128 0xa
	.long	0x298
	.uleb128 0xa
	.long	0x987
	.byte	0
	.uleb128 0x2b
	.long	.LASF125
	.byte	0xe
	.value	0x26c
	.long	0xb40
	.uleb128 0xa
	.long	0x2cd
	.byte	0
	.uleb128 0x21
	.long	.LASF126
	.byte	0xe
	.value	0x1c5
	.long	0x2cd
	.uleb128 0x1e
	.long	.LASF127
	.byte	0xe
	.value	0x1c7
	.long	0xb5e
	.uleb128 0xa
	.long	0x2b8
	.byte	0
	.uleb128 0x1f
	.long	.LASF128
	.byte	0xe
	.byte	0x75
	.long	0x8c0
	.long	0xb78
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0xb78
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x30e
	.uleb128 0x1f
	.long	.LASF129
	.byte	0xe
	.byte	0xb0
	.long	0x2d9
	.long	0xb9d
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0xb78
	.uleb128 0xa
	.long	0x2cd
	.byte	0
	.uleb128 0x1f
	.long	.LASF130
	.byte	0xe
	.byte	0xb4
	.long	0x2a3
	.long	0xbbc
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0xb78
	.uleb128 0xa
	.long	0x2cd
	.byte	0
	.uleb128 0x20
	.long	.LASF131
	.byte	0xe
	.value	0x30d
	.long	0x2cd
	.long	0xbd2
	.uleb128 0xa
	.long	0x5cd
	.byte	0
	.uleb128 0x20
	.long	.LASF132
	.byte	0xe
	.value	0x3a5
	.long	0x298
	.long	0xbf2
	.uleb128 0xa
	.long	0x30e
	.uleb128 0xa
	.long	0xbf2
	.uleb128 0xa
	.long	0x298
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xae8
	.uleb128 0x20
	.long	.LASF133
	.byte	0xe
	.value	0x39e
	.long	0x2cd
	.long	0xc13
	.uleb128 0xa
	.long	0x30e
	.uleb128 0xa
	.long	0xae1
	.byte	0
	.uleb128 0x20
	.long	.LASF134
	.byte	0xe
	.value	0x357
	.long	0x95a
	.long	0xc2e
	.uleb128 0xa
	.long	0x953
	.uleb128 0xa
	.long	0x953
	.byte	0
	.uleb128 0x1f
	.long	.LASF135
	.byte	0xe
	.byte	0x70
	.long	0x953
	.long	0xc43
	.uleb128 0xa
	.long	0x5cd
	.byte	0
	.uleb128 0x1f
	.long	.LASF136
	.byte	0xe
	.byte	0xc8
	.long	0x953
	.long	0xc62
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0xb78
	.uleb128 0xa
	.long	0x2cd
	.byte	0
	.uleb128 0x1f
	.long	.LASF137
	.byte	0xe
	.byte	0xcd
	.long	0x980
	.long	0xc81
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0xb78
	.uleb128 0xa
	.long	0x2cd
	.byte	0
	.uleb128 0x1f
	.long	.LASF138
	.byte	0xe
	.byte	0x7b
	.long	0x8b4
	.long	0xc9b
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0xb78
	.byte	0
	.uleb128 0x1f
	.long	.LASF139
	.byte	0xe
	.byte	0x7e
	.long	0x8c7
	.long	0xcb5
	.uleb128 0xa
	.long	0x5cd
	.uleb128 0xa
	.long	0xb78
	.byte	0
	.uleb128 0x2c
	.string	"tm"
	.byte	0x38
	.byte	0x11
	.byte	0x7
	.long	0xd45
	.uleb128 0x12
	.long	.LASF140
	.byte	0x11
	.byte	0x9
	.long	0x2cd
	.byte	0
	.uleb128 0x12
	.long	.LASF141
	.byte	0x11
	.byte	0xa
	.long	0x2cd
	.byte	0x4
	.uleb128 0x12
	.long	.LASF142
	.byte	0x11
	.byte	0xb
	.long	0x2cd
	.byte	0x8
	.uleb128 0x12
	.long	.LASF143
	.byte	0x11
	.byte	0xc
	.long	0x2cd
	.byte	0xc
	.uleb128 0x12
	.long	.LASF144
	.byte	0x11
	.byte	0xd
	.long	0x2cd
	.byte	0x10
	.uleb128 0x12
	.long	.LASF145
	.byte	0x11
	.byte	0xe
	.long	0x2cd
	.byte	0x14
	.uleb128 0x12
	.long	.LASF146
	.byte	0x11
	.byte	0xf
	.long	0x2cd
	.byte	0x18
	.uleb128 0x12
	.long	.LASF147
	.byte	0x11
	.byte	0x10
	.long	0x2cd
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF148
	.byte	0x11
	.byte	0x11
	.long	0x2cd
	.byte	0x20
	.uleb128 0x12
	.long	.LASF149
	.byte	0x11
	.byte	0x14
	.long	0x2d9
	.byte	0x28
	.uleb128 0x12
	.long	.LASF150
	.byte	0x11
	.byte	0x15
	.long	0x5cd
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	0xcb5
	.uleb128 0x17
	.long	0x30e
	.long	0xd5a
	.uleb128 0x18
	.long	0x2a3
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.long	.LASF151
	.byte	0x12
	.byte	0x9f
	.long	0xd4a
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x12
	.byte	0xa0
	.long	0x2cd
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x12
	.byte	0xa1
	.long	0x2d9
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x12
	.byte	0xa6
	.long	0xd4a
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x12
	.byte	0xae
	.long	0x2cd
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x12
	.byte	0xaf
	.long	0x2d9
	.uleb128 0x1b
	.long	.LASF157
	.byte	0x12
	.value	0x118
	.long	0x2cd
	.uleb128 0x22
	.long	.LASF158
	.byte	0x12
	.byte	0x48
	.long	0x965
	.uleb128 0x1f
	.long	.LASF159
	.byte	0x12
	.byte	0x4e
	.long	0x8c0
	.long	0xdcd
	.uleb128 0xa
	.long	0x970
	.uleb128 0xa
	.long	0x970
	.byte	0
	.uleb128 0x1f
	.long	.LASF160
	.byte	0x12
	.byte	0x52
	.long	0x970
	.long	0xde2
	.uleb128 0xa
	.long	0xde2
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xcb5
	.uleb128 0x1f
	.long	.LASF161
	.byte	0x12
	.byte	0x4b
	.long	0x970
	.long	0xdfd
	.uleb128 0xa
	.long	0xdfd
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x970
	.uleb128 0x1f
	.long	.LASF162
	.byte	0x12
	.byte	0x8b
	.long	0x30e
	.long	0xe18
	.uleb128 0xa
	.long	0xe18
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xd45
	.uleb128 0x1f
	.long	.LASF163
	.byte	0x12
	.byte	0x8e
	.long	0x30e
	.long	0xe33
	.uleb128 0xa
	.long	0xe33
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x97b
	.uleb128 0x1f
	.long	.LASF164
	.byte	0x12
	.byte	0x77
	.long	0xde2
	.long	0xe4e
	.uleb128 0xa
	.long	0xe33
	.byte	0
	.uleb128 0x1f
	.long	.LASF165
	.byte	0x12
	.byte	0x7b
	.long	0xde2
	.long	0xe63
	.uleb128 0xa
	.long	0xe33
	.byte	0
	.uleb128 0x2d
	.long	.LASF177
	.byte	0x1
	.byte	0x5
	.long	0x2cd
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xf7d
	.uleb128 0x2e
	.long	.LASF166
	.byte	0x1
	.byte	0x7
	.long	0x2d4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524348
	.uleb128 0x2f
	.string	"N"
	.byte	0x1
	.byte	0x8
	.long	0x2d4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524344
	.uleb128 0x2f
	.string	"a"
	.byte	0x1
	.byte	0xa
	.long	0x8bb
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524372
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.byte	0xb
	.long	0x8bb
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524368
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.byte	0xc
	.long	0x8bb
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524364
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.byte	0xe
	.long	0xf8e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524320
	.uleb128 0x2f
	.string	"y"
	.byte	0x1
	.byte	0xe
	.long	0xf8e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -262176
	.uleb128 0x2e
	.long	.LASF167
	.byte	0x1
	.byte	0x15
	.long	0x965
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524336
	.uleb128 0x2e
	.long	.LASF168
	.byte	0x1
	.byte	0x1e
	.long	0x965
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524328
	.uleb128 0x2e
	.long	.LASF169
	.byte	0x1
	.byte	0x20
	.long	0x8b4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524340
	.uleb128 0x30
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xf3c
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x11
	.long	0x2cd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524360
	.byte	0
	.uleb128 0x31
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.string	"j"
	.byte	0x1
	.byte	0x18
	.long	0x2cd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524356
	.uleb128 0x31
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x19
	.long	0x2cd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524352
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x8bb
	.long	0xf8e
	.uleb128 0x32
	.long	0x2a3
	.value	0xffff
	.byte	0
	.uleb128 0x23
	.long	0xf7d
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
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x16
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
	.uleb128 0x26
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
.LASF118:
	.string	"getenv"
.LASF166:
	.string	"LOOP"
.LASF115:
	.string	"atoi"
.LASF34:
	.string	"_shortbuf"
.LASF126:
	.string	"rand"
.LASF174:
	.string	"_IO_lock_t"
.LASF91:
	.string	"setvbuf"
.LASF160:
	.string	"mktime"
.LASF66:
	.string	"stderr"
.LASF131:
	.string	"system"
.LASF147:
	.string	"tm_yday"
.LASF23:
	.string	"_IO_buf_end"
.LASF74:
	.string	"fflush"
.LASF83:
	.string	"ftell"
.LASF120:
	.string	"mblen"
.LASF21:
	.string	"_IO_write_end"
.LASF5:
	.string	"unsigned int"
.LASF0:
	.string	"__gnu_cxx"
.LASF157:
	.string	"getdate_err"
.LASF15:
	.string	"_flags"
.LASF32:
	.string	"_cur_column"
.LASF122:
	.string	"wchar_t"
.LASF169:
	.string	"eTime"
.LASF27:
	.string	"_markers"
.LASF143:
	.string	"tm_mday"
.LASF69:
	.string	"_sys_nerr"
.LASF173:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF137:
	.string	"strtoull"
.LASF95:
	.string	"ungetc"
.LASF168:
	.string	"stopTime"
.LASF153:
	.string	"__timezone"
.LASF139:
	.string	"strtold"
.LASF136:
	.string	"strtoll"
.LASF59:
	.string	"_pos"
.LASF65:
	.string	"stdout"
.LASF123:
	.string	"mbtowc"
.LASF144:
	.string	"tm_mon"
.LASF26:
	.string	"_IO_save_end"
.LASF47:
	.string	"__count"
.LASF98:
	.string	"float"
.LASF76:
	.string	"fgetpos"
.LASF111:
	.string	"long long unsigned int"
.LASF133:
	.string	"wctomb"
.LASF163:
	.string	"ctime"
.LASF68:
	.string	"sys_errlist"
.LASF25:
	.string	"_IO_backup_base"
.LASF36:
	.string	"_offset"
.LASF161:
	.string	"time"
.LASF67:
	.string	"sys_nerr"
.LASF134:
	.string	"lldiv"
.LASF109:
	.string	"clock_t"
.LASF29:
	.string	"_fileno"
.LASF87:
	.string	"remove"
.LASF9:
	.string	"size_t"
.LASF127:
	.string	"srand"
.LASF18:
	.string	"_IO_read_base"
.LASF159:
	.string	"difftime"
.LASF117:
	.string	"bsearch"
.LASF167:
	.string	"startTime"
.LASF64:
	.string	"stdin"
.LASF57:
	.string	"_next"
.LASF97:
	.string	"__float128"
.LASF85:
	.string	"clearerr"
.LASF80:
	.string	"freopen"
.LASF48:
	.string	"__value"
.LASF14:
	.string	"char"
.LASF42:
	.string	"_mode"
.LASF101:
	.string	"5div_t"
.LASF152:
	.string	"__daylight"
.LASF73:
	.string	"ferror"
.LASF56:
	.string	"_IO_marker"
.LASF145:
	.string	"tm_year"
.LASF16:
	.string	"_IO_read_ptr"
.LASF107:
	.string	"long long int"
.LASF171:
	.string	"source.cpp"
.LASF125:
	.string	"quick_exit"
.LASF45:
	.string	"__wch"
.LASF102:
	.string	"quot"
.LASF110:
	.string	"time_t"
.LASF165:
	.string	"localtime"
.LASF88:
	.string	"rename"
.LASF52:
	.string	"__pos"
.LASF121:
	.string	"mbstowcs"
.LASF92:
	.string	"getchar"
.LASF19:
	.string	"_IO_write_base"
.LASF94:
	.string	"tmpnam"
.LASF60:
	.string	"_IO_2_1_stdin_"
.LASF90:
	.string	"setbuf"
.LASF86:
	.string	"perror"
.LASF61:
	.string	"_IO_2_1_stdout_"
.LASF24:
	.string	"_IO_save_base"
.LASF51:
	.string	"9_G_fpos_t"
.LASF162:
	.string	"asctime"
.LASF1:
	.string	"__cxx11"
.LASF81:
	.string	"fseek"
.LASF119:
	.string	"ldiv"
.LASF112:
	.string	"__compar_fn_t"
.LASF82:
	.string	"fsetpos"
.LASF96:
	.string	"__unknown__"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF12:
	.string	"__clock_t"
.LASF75:
	.string	"fgetc"
.LASF78:
	.string	"fopen"
.LASF33:
	.string	"_vtable_offset"
.LASF77:
	.string	"fgets"
.LASF49:
	.string	"__mbstate_t"
.LASF100:
	.string	"long double"
.LASF177:
	.string	"main"
.LASF156:
	.string	"timezone"
.LASF148:
	.string	"tm_isdst"
.LASF17:
	.string	"_IO_read_end"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF63:
	.string	"fpos_t"
.LASF79:
	.string	"fread"
.LASF50:
	.string	"11__mbstate_t"
.LASF113:
	.string	"atexit"
.LASF164:
	.string	"gmtime"
.LASF46:
	.string	"__wchb"
.LASF71:
	.string	"fclose"
.LASF175:
	.string	"_IO_FILE_plus"
.LASF105:
	.string	"ldiv_t"
.LASF89:
	.string	"rewind"
.LASF84:
	.string	"getc"
.LASF176:
	.string	"at_quick_exit"
.LASF54:
	.string	"_G_fpos_t"
.LASF35:
	.string	"_lock"
.LASF130:
	.string	"strtoul"
.LASF2:
	.string	"long unsigned int"
.LASF31:
	.string	"_old_offset"
.LASF55:
	.string	"_IO_FILE"
.LASF154:
	.string	"tzname"
.LASF141:
	.string	"tm_min"
.LASF150:
	.string	"tm_zone"
.LASF103:
	.string	"div_t"
.LASF3:
	.string	"unsigned char"
.LASF151:
	.string	"__tzname"
.LASF58:
	.string	"_sbuf"
.LASF93:
	.string	"tmpfile"
.LASF20:
	.string	"_IO_write_ptr"
.LASF128:
	.string	"strtod"
.LASF138:
	.string	"strtof"
.LASF72:
	.string	"feof"
.LASF142:
	.string	"tm_hour"
.LASF132:
	.string	"wcstombs"
.LASF129:
	.string	"strtol"
.LASF13:
	.string	"__time_t"
.LASF104:
	.string	"6ldiv_t"
.LASF135:
	.string	"atoll"
.LASF155:
	.string	"daylight"
.LASF146:
	.string	"tm_wday"
.LASF10:
	.string	"__off_t"
.LASF106:
	.string	"7lldiv_t"
.LASF6:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF140:
	.string	"tm_sec"
.LASF108:
	.string	"lldiv_t"
.LASF158:
	.string	"clock"
.LASF114:
	.string	"atof"
.LASF70:
	.string	"_sys_errlist"
.LASF170:
	.string	"GNU C++14 7.5.0 -mtune=generic -march=x86-64 -g -O0 -fstack-protector-strong"
.LASF116:
	.string	"atol"
.LASF99:
	.string	"double"
.LASF172:
	.string	"/home/ubuntu/github/kousokuka-nyumon/chapter2/compiler_option"
.LASF149:
	.string	"tm_gmtoff"
.LASF28:
	.string	"_chain"
.LASF44:
	.string	"FILE"
.LASF53:
	.string	"__state"
.LASF30:
	.string	"_flags2"
.LASF62:
	.string	"_IO_2_1_stderr_"
.LASF11:
	.string	"__off64_t"
.LASF43:
	.string	"_unused2"
.LASF22:
	.string	"_IO_buf_base"
.LASF124:
	.string	"qsort"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
