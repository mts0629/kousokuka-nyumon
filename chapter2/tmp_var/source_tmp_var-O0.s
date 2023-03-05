	.file	"source_tmp_var.cpp"
	.text
.Ltext0:
	.section	.rodata
.LC3:
	.string	"Elapsed time = %15.7f sec\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB247:
	.file 1 "source_tmp_var.cpp"
	.loc 1 7 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.loc 1 8 0
	movl	$16777216, -52(%rbp)
	.loc 1 9 0
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	.loc 1 11 0
	movl	$67108864, %edi
	call	_Znam@PLT
	movq	%rax, -40(%rbp)
	.loc 1 12 0
	movl	$67108864, %edi
	call	_Znam@PLT
	movq	%rax, -32(%rbp)
	.loc 1 13 0
	movl	$67108864, %edi
	call	_Znam@PLT
	movq	%rax, -24(%rbp)
.LBB2:
	.loc 1 15 0
	movl	$0, -60(%rbp)
.L3:
	.loc 1 15 0 is_stmt 0 discriminator 3
	cmpl	$16777215, -60(%rbp)
	jg	.L2
	.loc 1 16 0 is_stmt 1 discriminator 2
	call	rand@PLT
	movl	%eax, %ecx
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cvtsi2ss	%ecx, %xmm0
	movss	%xmm0, (%rax)
	.loc 1 15 0 discriminator 2
	addl	$1, -60(%rbp)
	jmp	.L3
.L2:
.LBE2:
	.loc 1 19 0
	call	clock@PLT
	movq	%rax, -16(%rbp)
.LBB3:
	.loc 1 21 0
	movl	$0, -56(%rbp)
.L5:
	.loc 1 21 0 is_stmt 0 discriminator 3
	cmpl	$16777215, -56(%rbp)
	jg	.L4
.LBB4:
	.loc 1 22 0 is_stmt 1 discriminator 2
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	cos@PLT
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -48(%rbp)
	.loc 1 23 0 discriminator 2
	movss	-68(%rbp), %xmm0
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	mulss	-48(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 1 24 0 discriminator 2
	movss	-64(%rbp), %xmm0
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	mulss	-48(%rbp), %xmm0
	movss	%xmm0, (%rax)
.LBE4:
	.loc 1 21 0 discriminator 2
	addl	$1, -56(%rbp)
	jmp	.L5
.L4:
.LBE3:
	.loc 1 27 0
	call	clock@PLT
	movq	%rax, -8(%rbp)
	.loc 1 29 0
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	cvtsi2ssq	%rax, %xmm0
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	.loc 1 30 0
	cvtss2sd	-44(%rbp), %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 32 0
	cmpq	$0, -32(%rbp)
	je	.L6
	.loc 1 32 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L6:
	.loc 1 33 0 is_stmt 1
	cmpq	$0, -24(%rbp)
	je	.L7
	.loc 1 33 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L7:
	.loc 1 34 0 is_stmt 1
	cmpq	$0, -40(%rbp)
	je	.L8
	.loc 1 34 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L8:
	.loc 1 36 0 is_stmt 1
	movl	$0, %eax
	.loc 1 37 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE247:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1074580685
	.align 4
.LC1:
	.long	1080452710
	.align 4
.LC2:
	.long	1232348160
	.text
.Letext0:
	.file 2 "/usr/include/c++/7/cstdio"
	.file 3 "/usr/include/c++/7/cstdlib"
	.file 4 "/usr/include/c++/7/cmath"
	.file 5 "/usr/include/c++/7/ctime"
	.file 6 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/_G_config.h"
	.file 13 "/usr/include/stdio.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 15 "/usr/include/stdlib.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 18 "/usr/include/math.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 20 "/usr/include/time.h"
	.file 21 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf93
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF174
	.byte	0x4
	.long	.LASF175
	.long	.LASF176
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"std"
	.byte	0x15
	.byte	0
	.long	0x241
	.uleb128 0x3
	.long	.LASF1
	.byte	0x6
	.byte	0xfd
	.uleb128 0x4
	.byte	0x6
	.byte	0xfd
	.long	0x38
	.uleb128 0x5
	.byte	0x2
	.byte	0x62
	.long	0x4b0
	.uleb128 0x5
	.byte	0x2
	.byte	0x63
	.long	0x5e8
	.uleb128 0x5
	.byte	0x2
	.byte	0x65
	.long	0x650
	.uleb128 0x5
	.byte	0x2
	.byte	0x66
	.long	0x668
	.uleb128 0x5
	.byte	0x2
	.byte	0x67
	.long	0x67d
	.uleb128 0x5
	.byte	0x2
	.byte	0x68
	.long	0x693
	.uleb128 0x5
	.byte	0x2
	.byte	0x69
	.long	0x6a9
	.uleb128 0x5
	.byte	0x2
	.byte	0x6a
	.long	0x6be
	.uleb128 0x5
	.byte	0x2
	.byte	0x6b
	.long	0x6d4
	.uleb128 0x5
	.byte	0x2
	.byte	0x6c
	.long	0x6f5
	.uleb128 0x5
	.byte	0x2
	.byte	0x6d
	.long	0x715
	.uleb128 0x5
	.byte	0x2
	.byte	0x71
	.long	0x72f
	.uleb128 0x5
	.byte	0x2
	.byte	0x72
	.long	0x754
	.uleb128 0x5
	.byte	0x2
	.byte	0x74
	.long	0x773
	.uleb128 0x5
	.byte	0x2
	.byte	0x75
	.long	0x793
	.uleb128 0x5
	.byte	0x2
	.byte	0x76
	.long	0x7b4
	.uleb128 0x5
	.byte	0x2
	.byte	0x78
	.long	0x7ca
	.uleb128 0x5
	.byte	0x2
	.byte	0x79
	.long	0x7e0
	.uleb128 0x5
	.byte	0x2
	.byte	0x7e
	.long	0x7ec
	.uleb128 0x5
	.byte	0x2
	.byte	0x83
	.long	0x7fe
	.uleb128 0x5
	.byte	0x2
	.byte	0x84
	.long	0x813
	.uleb128 0x5
	.byte	0x2
	.byte	0x85
	.long	0x82d
	.uleb128 0x5
	.byte	0x2
	.byte	0x87
	.long	0x83f
	.uleb128 0x5
	.byte	0x2
	.byte	0x88
	.long	0x856
	.uleb128 0x5
	.byte	0x2
	.byte	0x8b
	.long	0x87b
	.uleb128 0x5
	.byte	0x2
	.byte	0x8d
	.long	0x886
	.uleb128 0x5
	.byte	0x2
	.byte	0x8f
	.long	0x89b
	.uleb128 0x5
	.byte	0x3
	.byte	0x7f
	.long	0x903
	.uleb128 0x5
	.byte	0x3
	.byte	0x80
	.long	0x933
	.uleb128 0x5
	.byte	0x3
	.byte	0x86
	.long	0x9c4
	.uleb128 0x5
	.byte	0x3
	.byte	0x89
	.long	0x9e1
	.uleb128 0x5
	.byte	0x3
	.byte	0x8c
	.long	0x9fb
	.uleb128 0x5
	.byte	0x3
	.byte	0x8d
	.long	0xa10
	.uleb128 0x5
	.byte	0x3
	.byte	0x8e
	.long	0xa25
	.uleb128 0x5
	.byte	0x3
	.byte	0x8f
	.long	0xa3a
	.uleb128 0x5
	.byte	0x3
	.byte	0x91
	.long	0xa64
	.uleb128 0x5
	.byte	0x3
	.byte	0x94
	.long	0xa7f
	.uleb128 0x5
	.byte	0x3
	.byte	0x96
	.long	0xa95
	.uleb128 0x5
	.byte	0x3
	.byte	0x99
	.long	0xab0
	.uleb128 0x5
	.byte	0x3
	.byte	0x9a
	.long	0xacb
	.uleb128 0x5
	.byte	0x3
	.byte	0x9b
	.long	0xafd
	.uleb128 0x5
	.byte	0x3
	.byte	0x9d
	.long	0xb1d
	.uleb128 0x5
	.byte	0x3
	.byte	0xa0
	.long	0xb3e
	.uleb128 0x5
	.byte	0x3
	.byte	0xa3
	.long	0xb50
	.uleb128 0x5
	.byte	0x3
	.byte	0xa5
	.long	0xb5c
	.uleb128 0x5
	.byte	0x3
	.byte	0xa6
	.long	0xb6e
	.uleb128 0x5
	.byte	0x3
	.byte	0xa7
	.long	0xb8e
	.uleb128 0x5
	.byte	0x3
	.byte	0xa8
	.long	0xbad
	.uleb128 0x5
	.byte	0x3
	.byte	0xa9
	.long	0xbcc
	.uleb128 0x5
	.byte	0x3
	.byte	0xab
	.long	0xbe2
	.uleb128 0x5
	.byte	0x3
	.byte	0xac
	.long	0xc08
	.uleb128 0x5
	.byte	0x3
	.byte	0xf0
	.long	0x96a
	.uleb128 0x5
	.byte	0x3
	.byte	0xf5
	.long	0x28d
	.uleb128 0x5
	.byte	0x3
	.byte	0xf6
	.long	0xc23
	.uleb128 0x5
	.byte	0x3
	.byte	0xf8
	.long	0xc3e
	.uleb128 0x5
	.byte	0x3
	.byte	0xf9
	.long	0xc91
	.uleb128 0x5
	.byte	0x3
	.byte	0xfa
	.long	0xc53
	.uleb128 0x5
	.byte	0x3
	.byte	0xfb
	.long	0xc72
	.uleb128 0x5
	.byte	0x3
	.byte	0xfc
	.long	0xcab
	.uleb128 0x6
	.byte	0x4
	.value	0x438
	.long	0xcd0
	.uleb128 0x6
	.byte	0x4
	.value	0x439
	.long	0xcc5
	.uleb128 0x5
	.byte	0x5
	.byte	0x3c
	.long	0x975
	.uleb128 0x5
	.byte	0x5
	.byte	0x3d
	.long	0x980
	.uleb128 0x5
	.byte	0x5
	.byte	0x3e
	.long	0xce7
	.uleb128 0x5
	.byte	0x5
	.byte	0x40
	.long	0xdda
	.uleb128 0x5
	.byte	0x5
	.byte	0x41
	.long	0xde5
	.uleb128 0x5
	.byte	0x5
	.byte	0x42
	.long	0xdff
	.uleb128 0x5
	.byte	0x5
	.byte	0x43
	.long	0xe1a
	.uleb128 0x5
	.byte	0x5
	.byte	0x44
	.long	0xe35
	.uleb128 0x5
	.byte	0x5
	.byte	0x45
	.long	0xe50
	.uleb128 0x5
	.byte	0x5
	.byte	0x46
	.long	0xe6b
	.uleb128 0x5
	.byte	0x5
	.byte	0x47
	.long	0xe80
	.byte	0
	.uleb128 0x7
	.long	.LASF0
	.byte	0x6
	.byte	0xff
	.long	0x2a8
	.uleb128 0x8
	.long	.LASF1
	.byte	0x6
	.value	0x101
	.uleb128 0x9
	.byte	0x6
	.value	0x101
	.long	0x24c
	.uleb128 0x5
	.byte	0x3
	.byte	0xc8
	.long	0x96a
	.uleb128 0x5
	.byte	0x3
	.byte	0xd8
	.long	0xc23
	.uleb128 0x5
	.byte	0x3
	.byte	0xe3
	.long	0xc3e
	.uleb128 0x5
	.byte	0x3
	.byte	0xe4
	.long	0xc53
	.uleb128 0x5
	.byte	0x3
	.byte	0xe5
	.long	0xc72
	.uleb128 0x5
	.byte	0x3
	.byte	0xe7
	.long	0xc91
	.uleb128 0x5
	.byte	0x3
	.byte	0xe8
	.long	0xcab
	.uleb128 0xa
	.string	"div"
	.byte	0x3
	.byte	0xd5
	.long	.LASF177
	.long	0x96a
	.uleb128 0xb
	.long	0x963
	.uleb128 0xb
	.long	0x963
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF9
	.byte	0x7
	.byte	0xd8
	.long	0x2b3
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.long	0x2dd
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xc
	.long	.LASF10
	.byte	0x8
	.byte	0x8c
	.long	0x2e9
	.uleb128 0xc
	.long	.LASF11
	.byte	0x8
	.byte	0x8d
	.long	0x2e9
	.uleb128 0xc
	.long	.LASF12
	.byte	0x8
	.byte	0x90
	.long	0x2e9
	.uleb128 0xc
	.long	.LASF13
	.byte	0x8
	.byte	0x94
	.long	0x2e9
	.uleb128 0x10
	.byte	0x8
	.uleb128 0x11
	.byte	0x8
	.long	0x324
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0xf
	.long	0x324
	.uleb128 0x12
	.long	.LASF55
	.byte	0xd8
	.byte	0x9
	.byte	0xf5
	.long	0x4b0
	.uleb128 0x13
	.long	.LASF15
	.byte	0x9
	.byte	0xf6
	.long	0x2dd
	.byte	0
	.uleb128 0x13
	.long	.LASF16
	.byte	0x9
	.byte	0xfb
	.long	0x31e
	.byte	0x8
	.uleb128 0x13
	.long	.LASF17
	.byte	0x9
	.byte	0xfc
	.long	0x31e
	.byte	0x10
	.uleb128 0x13
	.long	.LASF18
	.byte	0x9
	.byte	0xfd
	.long	0x31e
	.byte	0x18
	.uleb128 0x13
	.long	.LASF19
	.byte	0x9
	.byte	0xfe
	.long	0x31e
	.byte	0x20
	.uleb128 0x13
	.long	.LASF20
	.byte	0x9
	.byte	0xff
	.long	0x31e
	.byte	0x28
	.uleb128 0x14
	.long	.LASF21
	.byte	0x9
	.value	0x100
	.long	0x31e
	.byte	0x30
	.uleb128 0x14
	.long	.LASF22
	.byte	0x9
	.value	0x101
	.long	0x31e
	.byte	0x38
	.uleb128 0x14
	.long	.LASF23
	.byte	0x9
	.value	0x102
	.long	0x31e
	.byte	0x40
	.uleb128 0x14
	.long	.LASF24
	.byte	0x9
	.value	0x104
	.long	0x31e
	.byte	0x48
	.uleb128 0x14
	.long	.LASF25
	.byte	0x9
	.value	0x105
	.long	0x31e
	.byte	0x50
	.uleb128 0x14
	.long	.LASF26
	.byte	0x9
	.value	0x106
	.long	0x31e
	.byte	0x58
	.uleb128 0x14
	.long	.LASF27
	.byte	0x9
	.value	0x108
	.long	0x582
	.byte	0x60
	.uleb128 0x14
	.long	.LASF28
	.byte	0x9
	.value	0x10a
	.long	0x588
	.byte	0x68
	.uleb128 0x14
	.long	.LASF29
	.byte	0x9
	.value	0x10c
	.long	0x2dd
	.byte	0x70
	.uleb128 0x14
	.long	.LASF30
	.byte	0x9
	.value	0x110
	.long	0x2dd
	.byte	0x74
	.uleb128 0x14
	.long	.LASF31
	.byte	0x9
	.value	0x112
	.long	0x2f0
	.byte	0x78
	.uleb128 0x14
	.long	.LASF32
	.byte	0x9
	.value	0x116
	.long	0x2c1
	.byte	0x80
	.uleb128 0x14
	.long	.LASF33
	.byte	0x9
	.value	0x117
	.long	0x2cf
	.byte	0x82
	.uleb128 0x14
	.long	.LASF34
	.byte	0x9
	.value	0x118
	.long	0x58e
	.byte	0x83
	.uleb128 0x14
	.long	.LASF35
	.byte	0x9
	.value	0x11c
	.long	0x59e
	.byte	0x88
	.uleb128 0x14
	.long	.LASF36
	.byte	0x9
	.value	0x125
	.long	0x2fb
	.byte	0x90
	.uleb128 0x14
	.long	.LASF37
	.byte	0x9
	.value	0x12d
	.long	0x31c
	.byte	0x98
	.uleb128 0x14
	.long	.LASF38
	.byte	0x9
	.value	0x12e
	.long	0x31c
	.byte	0xa0
	.uleb128 0x14
	.long	.LASF39
	.byte	0x9
	.value	0x12f
	.long	0x31c
	.byte	0xa8
	.uleb128 0x14
	.long	.LASF40
	.byte	0x9
	.value	0x130
	.long	0x31c
	.byte	0xb0
	.uleb128 0x14
	.long	.LASF41
	.byte	0x9
	.value	0x132
	.long	0x2a8
	.byte	0xb8
	.uleb128 0x14
	.long	.LASF42
	.byte	0x9
	.value	0x133
	.long	0x2dd
	.byte	0xc0
	.uleb128 0x14
	.long	.LASF43
	.byte	0x9
	.value	0x135
	.long	0x5a4
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF44
	.byte	0xa
	.byte	0x7
	.long	0x330
	.uleb128 0x15
	.byte	0x8
	.byte	0xb
	.byte	0xe
	.long	.LASF50
	.long	0x4ff
	.uleb128 0x16
	.byte	0x4
	.byte	0xb
	.byte	0x11
	.long	0x4e6
	.uleb128 0x17
	.long	.LASF45
	.byte	0xb
	.byte	0x12
	.long	0x2c8
	.uleb128 0x17
	.long	.LASF46
	.byte	0xb
	.byte	0x13
	.long	0x4ff
	.byte	0
	.uleb128 0x13
	.long	.LASF47
	.byte	0xb
	.byte	0xf
	.long	0x2dd
	.byte	0
	.uleb128 0x13
	.long	.LASF48
	.byte	0xb
	.byte	0x14
	.long	0x4c7
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.long	0x324
	.long	0x50f
	.uleb128 0x19
	.long	0x2b3
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF49
	.byte	0xb
	.byte	0x15
	.long	0x4bb
	.uleb128 0x15
	.byte	0x10
	.byte	0xc
	.byte	0x1b
	.long	.LASF51
	.long	0x53f
	.uleb128 0x13
	.long	.LASF52
	.byte	0xc
	.byte	0x1c
	.long	0x2f0
	.byte	0
	.uleb128 0x13
	.long	.LASF53
	.byte	0xc
	.byte	0x1d
	.long	0x50f
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF54
	.byte	0xc
	.byte	0x1e
	.long	0x51a
	.uleb128 0x1a
	.long	.LASF178
	.byte	0x9
	.byte	0x9a
	.uleb128 0x12
	.long	.LASF56
	.byte	0x18
	.byte	0x9
	.byte	0xa0
	.long	0x582
	.uleb128 0x13
	.long	.LASF57
	.byte	0x9
	.byte	0xa1
	.long	0x582
	.byte	0
	.uleb128 0x13
	.long	.LASF58
	.byte	0x9
	.byte	0xa2
	.long	0x588
	.byte	0x8
	.uleb128 0x13
	.long	.LASF59
	.byte	0x9
	.byte	0xa6
	.long	0x2dd
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x551
	.uleb128 0x11
	.byte	0x8
	.long	0x330
	.uleb128 0x18
	.long	0x324
	.long	0x59e
	.uleb128 0x19
	.long	0x2b3
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x54a
	.uleb128 0x18
	.long	0x324
	.long	0x5b4
	.uleb128 0x19
	.long	0x2b3
	.byte	0x13
	.byte	0
	.uleb128 0x1b
	.long	.LASF179
	.uleb128 0x1c
	.long	.LASF60
	.byte	0x9
	.value	0x13f
	.long	0x5b4
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x9
	.value	0x140
	.long	0x5b4
	.uleb128 0x1c
	.long	.LASF62
	.byte	0x9
	.value	0x141
	.long	0x5b4
	.uleb128 0x11
	.byte	0x8
	.long	0x32b
	.uleb128 0xf
	.long	0x5dd
	.uleb128 0xc
	.long	.LASF63
	.byte	0xd
	.byte	0x4e
	.long	0x53f
	.uleb128 0xf
	.long	0x5e8
	.uleb128 0x1d
	.long	.LASF64
	.byte	0xd
	.byte	0x87
	.long	0x588
	.uleb128 0x1d
	.long	.LASF65
	.byte	0xd
	.byte	0x88
	.long	0x588
	.uleb128 0x1d
	.long	.LASF66
	.byte	0xd
	.byte	0x89
	.long	0x588
	.uleb128 0x1d
	.long	.LASF67
	.byte	0xe
	.byte	0x1a
	.long	0x2dd
	.uleb128 0x18
	.long	0x5e3
	.long	0x62f
	.uleb128 0x1e
	.byte	0
	.uleb128 0x1d
	.long	.LASF68
	.byte	0xe
	.byte	0x1b
	.long	0x624
	.uleb128 0x1d
	.long	.LASF69
	.byte	0xe
	.byte	0x1e
	.long	0x2dd
	.uleb128 0x1d
	.long	.LASF70
	.byte	0xe
	.byte	0x1f
	.long	0x624
	.uleb128 0x1f
	.long	.LASF85
	.byte	0xd
	.value	0x2f5
	.long	0x662
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x4b0
	.uleb128 0x20
	.long	.LASF71
	.byte	0xd
	.byte	0xc7
	.long	0x2dd
	.long	0x67d
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x21
	.long	.LASF72
	.byte	0xd
	.value	0x2f7
	.long	0x2dd
	.long	0x693
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x21
	.long	.LASF73
	.byte	0xd
	.value	0x2f9
	.long	0x2dd
	.long	0x6a9
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x20
	.long	.LASF74
	.byte	0xd
	.byte	0xcc
	.long	0x2dd
	.long	0x6be
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x21
	.long	.LASF75
	.byte	0xd
	.value	0x1dd
	.long	0x2dd
	.long	0x6d4
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x21
	.long	.LASF76
	.byte	0xd
	.value	0x2db
	.long	0x2dd
	.long	0x6ef
	.uleb128 0xb
	.long	0x662
	.uleb128 0xb
	.long	0x6ef
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x5e8
	.uleb128 0x21
	.long	.LASF77
	.byte	0xd
	.value	0x234
	.long	0x31e
	.long	0x715
	.uleb128 0xb
	.long	0x31e
	.uleb128 0xb
	.long	0x2dd
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x20
	.long	.LASF78
	.byte	0xd
	.byte	0xe8
	.long	0x662
	.long	0x72f
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0x5dd
	.byte	0
	.uleb128 0x21
	.long	.LASF79
	.byte	0xd
	.value	0x286
	.long	0x2a8
	.long	0x754
	.uleb128 0xb
	.long	0x31c
	.uleb128 0xb
	.long	0x2a8
	.uleb128 0xb
	.long	0x2a8
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x20
	.long	.LASF80
	.byte	0xd
	.byte	0xee
	.long	0x662
	.long	0x773
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x21
	.long	.LASF81
	.byte	0xd
	.value	0x2ac
	.long	0x2dd
	.long	0x793
	.uleb128 0xb
	.long	0x662
	.uleb128 0xb
	.long	0x2e9
	.uleb128 0xb
	.long	0x2dd
	.byte	0
	.uleb128 0x21
	.long	.LASF82
	.byte	0xd
	.value	0x2e0
	.long	0x2dd
	.long	0x7ae
	.uleb128 0xb
	.long	0x662
	.uleb128 0xb
	.long	0x7ae
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x5f3
	.uleb128 0x21
	.long	.LASF83
	.byte	0xd
	.value	0x2b1
	.long	0x2e9
	.long	0x7ca
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x21
	.long	.LASF84
	.byte	0xd
	.value	0x1de
	.long	0x2dd
	.long	0x7e0
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x22
	.long	.LASF92
	.byte	0xd
	.value	0x1e4
	.long	0x2dd
	.uleb128 0x1f
	.long	.LASF86
	.byte	0xd
	.value	0x307
	.long	0x7fe
	.uleb128 0xb
	.long	0x5dd
	.byte	0
	.uleb128 0x20
	.long	.LASF87
	.byte	0xd
	.byte	0x90
	.long	0x2dd
	.long	0x813
	.uleb128 0xb
	.long	0x5dd
	.byte	0
	.uleb128 0x20
	.long	.LASF88
	.byte	0xd
	.byte	0x92
	.long	0x2dd
	.long	0x82d
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0x5dd
	.byte	0
	.uleb128 0x1f
	.long	.LASF89
	.byte	0xd
	.value	0x2b6
	.long	0x83f
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0x1f
	.long	.LASF90
	.byte	0xd
	.value	0x122
	.long	0x856
	.uleb128 0xb
	.long	0x662
	.uleb128 0xb
	.long	0x31e
	.byte	0
	.uleb128 0x21
	.long	.LASF91
	.byte	0xd
	.value	0x126
	.long	0x2dd
	.long	0x87b
	.uleb128 0xb
	.long	0x662
	.uleb128 0xb
	.long	0x31e
	.uleb128 0xb
	.long	0x2dd
	.uleb128 0xb
	.long	0x2a8
	.byte	0
	.uleb128 0x23
	.long	.LASF93
	.byte	0xd
	.byte	0x9f
	.long	0x662
	.uleb128 0x20
	.long	.LASF94
	.byte	0xd
	.byte	0xad
	.long	0x31e
	.long	0x89b
	.uleb128 0xb
	.long	0x31e
	.byte	0
	.uleb128 0x21
	.long	.LASF95
	.byte	0xd
	.value	0x27f
	.long	0x2dd
	.long	0x8b6
	.uleb128 0xb
	.long	0x2dd
	.uleb128 0xb
	.long	0x662
	.byte	0
	.uleb128 0xd
	.byte	0x20
	.byte	0x3
	.long	.LASF96
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.long	.LASF97
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.long	.LASF98
	.uleb128 0x24
	.long	0x8c4
	.uleb128 0xd
	.byte	0x8
	.byte	0x4
	.long	.LASF99
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.long	.LASF100
	.uleb128 0x15
	.byte	0x8
	.byte	0xf
	.byte	0x3b
	.long	.LASF101
	.long	0x903
	.uleb128 0x13
	.long	.LASF102
	.byte	0xf
	.byte	0x3c
	.long	0x2dd
	.byte	0
	.uleb128 0x25
	.string	"rem"
	.byte	0xf
	.byte	0x3d
	.long	0x2dd
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF103
	.byte	0xf
	.byte	0x3e
	.long	0x8de
	.uleb128 0x15
	.byte	0x10
	.byte	0xf
	.byte	0x43
	.long	.LASF104
	.long	0x933
	.uleb128 0x13
	.long	.LASF102
	.byte	0xf
	.byte	0x44
	.long	0x2e9
	.byte	0
	.uleb128 0x25
	.string	"rem"
	.byte	0xf
	.byte	0x45
	.long	0x2e9
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF105
	.byte	0xf
	.byte	0x46
	.long	0x90e
	.uleb128 0x15
	.byte	0x10
	.byte	0xf
	.byte	0x4d
	.long	.LASF106
	.long	0x963
	.uleb128 0x13
	.long	.LASF102
	.byte	0xf
	.byte	0x4e
	.long	0x963
	.byte	0
	.uleb128 0x25
	.string	"rem"
	.byte	0xf
	.byte	0x4f
	.long	0x963
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF107
	.uleb128 0xc
	.long	.LASF108
	.byte	0xf
	.byte	0x50
	.long	0x93e
	.uleb128 0xc
	.long	.LASF109
	.byte	0x10
	.byte	0x7
	.long	0x306
	.uleb128 0xc
	.long	.LASF110
	.byte	0x11
	.byte	0x7
	.long	0x311
	.uleb128 0xf
	.long	0x980
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF111
	.uleb128 0x26
	.long	.LASF112
	.byte	0xf
	.value	0x325
	.long	0x9a3
	.uleb128 0x11
	.byte	0x8
	.long	0x9a9
	.uleb128 0x27
	.long	0x2dd
	.long	0x9bd
	.uleb128 0xb
	.long	0x9bd
	.uleb128 0xb
	.long	0x9bd
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x9c3
	.uleb128 0x28
	.uleb128 0x21
	.long	.LASF113
	.byte	0xf
	.value	0x250
	.long	0x2dd
	.long	0x9da
	.uleb128 0xb
	.long	0x9da
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x9e0
	.uleb128 0x29
	.uleb128 0x2a
	.long	.LASF180
	.byte	0xf
	.value	0x255
	.long	.LASF180
	.long	0x2dd
	.long	0x9fb
	.uleb128 0xb
	.long	0x9da
	.byte	0
	.uleb128 0x20
	.long	.LASF114
	.byte	0xf
	.byte	0x65
	.long	0x8d0
	.long	0xa10
	.uleb128 0xb
	.long	0x5dd
	.byte	0
	.uleb128 0x20
	.long	.LASF115
	.byte	0xf
	.byte	0x68
	.long	0x2dd
	.long	0xa25
	.uleb128 0xb
	.long	0x5dd
	.byte	0
	.uleb128 0x20
	.long	.LASF116
	.byte	0xf
	.byte	0x6b
	.long	0x2e9
	.long	0xa3a
	.uleb128 0xb
	.long	0x5dd
	.byte	0
	.uleb128 0x21
	.long	.LASF117
	.byte	0xf
	.value	0x331
	.long	0x31c
	.long	0xa64
	.uleb128 0xb
	.long	0x9bd
	.uleb128 0xb
	.long	0x9bd
	.uleb128 0xb
	.long	0x2a8
	.uleb128 0xb
	.long	0x2a8
	.uleb128 0xb
	.long	0x997
	.byte	0
	.uleb128 0x2b
	.string	"div"
	.byte	0xf
	.value	0x351
	.long	0x903
	.long	0xa7f
	.uleb128 0xb
	.long	0x2dd
	.uleb128 0xb
	.long	0x2dd
	.byte	0
	.uleb128 0x21
	.long	.LASF118
	.byte	0xf
	.value	0x277
	.long	0x31e
	.long	0xa95
	.uleb128 0xb
	.long	0x5dd
	.byte	0
	.uleb128 0x21
	.long	.LASF119
	.byte	0xf
	.value	0x353
	.long	0x933
	.long	0xab0
	.uleb128 0xb
	.long	0x2e9
	.uleb128 0xb
	.long	0x2e9
	.byte	0
	.uleb128 0x21
	.long	.LASF120
	.byte	0xf
	.value	0x397
	.long	0x2dd
	.long	0xacb
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0x2a8
	.byte	0
	.uleb128 0x21
	.long	.LASF121
	.byte	0xf
	.value	0x3a2
	.long	0x2a8
	.long	0xaeb
	.uleb128 0xb
	.long	0xaeb
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0x2a8
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0xaf1
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.long	.LASF122
	.uleb128 0xf
	.long	0xaf1
	.uleb128 0x21
	.long	.LASF123
	.byte	0xf
	.value	0x39a
	.long	0x2dd
	.long	0xb1d
	.uleb128 0xb
	.long	0xaeb
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0x2a8
	.byte	0
	.uleb128 0x1f
	.long	.LASF124
	.byte	0xf
	.value	0x33b
	.long	0xb3e
	.uleb128 0xb
	.long	0x31c
	.uleb128 0xb
	.long	0x2a8
	.uleb128 0xb
	.long	0x2a8
	.uleb128 0xb
	.long	0x997
	.byte	0
	.uleb128 0x2c
	.long	.LASF125
	.byte	0xf
	.value	0x26c
	.long	0xb50
	.uleb128 0xb
	.long	0x2dd
	.byte	0
	.uleb128 0x22
	.long	.LASF126
	.byte	0xf
	.value	0x1c5
	.long	0x2dd
	.uleb128 0x1f
	.long	.LASF127
	.byte	0xf
	.value	0x1c7
	.long	0xb6e
	.uleb128 0xb
	.long	0x2c8
	.byte	0
	.uleb128 0x20
	.long	.LASF128
	.byte	0xf
	.byte	0x75
	.long	0x8d0
	.long	0xb88
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0xb88
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x31e
	.uleb128 0x20
	.long	.LASF129
	.byte	0xf
	.byte	0xb0
	.long	0x2e9
	.long	0xbad
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0xb88
	.uleb128 0xb
	.long	0x2dd
	.byte	0
	.uleb128 0x20
	.long	.LASF130
	.byte	0xf
	.byte	0xb4
	.long	0x2b3
	.long	0xbcc
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0xb88
	.uleb128 0xb
	.long	0x2dd
	.byte	0
	.uleb128 0x21
	.long	.LASF131
	.byte	0xf
	.value	0x30d
	.long	0x2dd
	.long	0xbe2
	.uleb128 0xb
	.long	0x5dd
	.byte	0
	.uleb128 0x21
	.long	.LASF132
	.byte	0xf
	.value	0x3a5
	.long	0x2a8
	.long	0xc02
	.uleb128 0xb
	.long	0x31e
	.uleb128 0xb
	.long	0xc02
	.uleb128 0xb
	.long	0x2a8
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0xaf8
	.uleb128 0x21
	.long	.LASF133
	.byte	0xf
	.value	0x39e
	.long	0x2dd
	.long	0xc23
	.uleb128 0xb
	.long	0x31e
	.uleb128 0xb
	.long	0xaf1
	.byte	0
	.uleb128 0x21
	.long	.LASF134
	.byte	0xf
	.value	0x357
	.long	0x96a
	.long	0xc3e
	.uleb128 0xb
	.long	0x963
	.uleb128 0xb
	.long	0x963
	.byte	0
	.uleb128 0x20
	.long	.LASF135
	.byte	0xf
	.byte	0x70
	.long	0x963
	.long	0xc53
	.uleb128 0xb
	.long	0x5dd
	.byte	0
	.uleb128 0x20
	.long	.LASF136
	.byte	0xf
	.byte	0xc8
	.long	0x963
	.long	0xc72
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0xb88
	.uleb128 0xb
	.long	0x2dd
	.byte	0
	.uleb128 0x20
	.long	.LASF137
	.byte	0xf
	.byte	0xcd
	.long	0x990
	.long	0xc91
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0xb88
	.uleb128 0xb
	.long	0x2dd
	.byte	0
	.uleb128 0x20
	.long	.LASF138
	.byte	0xf
	.byte	0x7b
	.long	0x8c4
	.long	0xcab
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0xb88
	.byte	0
	.uleb128 0x20
	.long	.LASF139
	.byte	0xf
	.byte	0x7e
	.long	0x8d7
	.long	0xcc5
	.uleb128 0xb
	.long	0x5dd
	.uleb128 0xb
	.long	0xb88
	.byte	0
	.uleb128 0xc
	.long	.LASF140
	.byte	0x12
	.byte	0x95
	.long	0x8c4
	.uleb128 0xc
	.long	.LASF141
	.byte	0x12
	.byte	0x96
	.long	0x8d0
	.uleb128 0x1c
	.long	.LASF142
	.byte	0x12
	.value	0x1e9
	.long	0x2dd
	.uleb128 0x2d
	.string	"tm"
	.byte	0x38
	.byte	0x13
	.byte	0x7
	.long	0xd77
	.uleb128 0x13
	.long	.LASF143
	.byte	0x13
	.byte	0x9
	.long	0x2dd
	.byte	0
	.uleb128 0x13
	.long	.LASF144
	.byte	0x13
	.byte	0xa
	.long	0x2dd
	.byte	0x4
	.uleb128 0x13
	.long	.LASF145
	.byte	0x13
	.byte	0xb
	.long	0x2dd
	.byte	0x8
	.uleb128 0x13
	.long	.LASF146
	.byte	0x13
	.byte	0xc
	.long	0x2dd
	.byte	0xc
	.uleb128 0x13
	.long	.LASF147
	.byte	0x13
	.byte	0xd
	.long	0x2dd
	.byte	0x10
	.uleb128 0x13
	.long	.LASF148
	.byte	0x13
	.byte	0xe
	.long	0x2dd
	.byte	0x14
	.uleb128 0x13
	.long	.LASF149
	.byte	0x13
	.byte	0xf
	.long	0x2dd
	.byte	0x18
	.uleb128 0x13
	.long	.LASF150
	.byte	0x13
	.byte	0x10
	.long	0x2dd
	.byte	0x1c
	.uleb128 0x13
	.long	.LASF151
	.byte	0x13
	.byte	0x11
	.long	0x2dd
	.byte	0x20
	.uleb128 0x13
	.long	.LASF152
	.byte	0x13
	.byte	0x14
	.long	0x2e9
	.byte	0x28
	.uleb128 0x13
	.long	.LASF153
	.byte	0x13
	.byte	0x15
	.long	0x5dd
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	0xce7
	.uleb128 0x18
	.long	0x31e
	.long	0xd8c
	.uleb128 0x19
	.long	0x2b3
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.long	.LASF154
	.byte	0x14
	.byte	0x9f
	.long	0xd7c
	.uleb128 0x1d
	.long	.LASF155
	.byte	0x14
	.byte	0xa0
	.long	0x2dd
	.uleb128 0x1d
	.long	.LASF156
	.byte	0x14
	.byte	0xa1
	.long	0x2e9
	.uleb128 0x1d
	.long	.LASF157
	.byte	0x14
	.byte	0xa6
	.long	0xd7c
	.uleb128 0x1d
	.long	.LASF158
	.byte	0x14
	.byte	0xae
	.long	0x2dd
	.uleb128 0x1d
	.long	.LASF159
	.byte	0x14
	.byte	0xaf
	.long	0x2e9
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x14
	.value	0x118
	.long	0x2dd
	.uleb128 0x23
	.long	.LASF161
	.byte	0x14
	.byte	0x48
	.long	0x975
	.uleb128 0x20
	.long	.LASF162
	.byte	0x14
	.byte	0x4e
	.long	0x8d0
	.long	0xdff
	.uleb128 0xb
	.long	0x980
	.uleb128 0xb
	.long	0x980
	.byte	0
	.uleb128 0x20
	.long	.LASF163
	.byte	0x14
	.byte	0x52
	.long	0x980
	.long	0xe14
	.uleb128 0xb
	.long	0xe14
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0xce7
	.uleb128 0x20
	.long	.LASF164
	.byte	0x14
	.byte	0x4b
	.long	0x980
	.long	0xe2f
	.uleb128 0xb
	.long	0xe2f
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x980
	.uleb128 0x20
	.long	.LASF165
	.byte	0x14
	.byte	0x8b
	.long	0x31e
	.long	0xe4a
	.uleb128 0xb
	.long	0xe4a
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0xd77
	.uleb128 0x20
	.long	.LASF166
	.byte	0x14
	.byte	0x8e
	.long	0x31e
	.long	0xe65
	.uleb128 0xb
	.long	0xe65
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x98b
	.uleb128 0x20
	.long	.LASF167
	.byte	0x14
	.byte	0x77
	.long	0xe14
	.long	0xe80
	.uleb128 0xb
	.long	0xe65
	.byte	0
	.uleb128 0x20
	.long	.LASF168
	.byte	0x14
	.byte	0x7b
	.long	0xe14
	.long	0xe95
	.uleb128 0xb
	.long	0xe65
	.byte	0
	.uleb128 0x2e
	.long	.LASF181
	.byte	0x1
	.byte	0x6
	.long	0x2dd
	.quad	.LFB247
	.quad	.LFE247-.LFB247
	.uleb128 0x1
	.byte	0x9c
	.long	0xf90
	.uleb128 0x2f
	.string	"N"
	.byte	0x1
	.byte	0x8
	.long	0x2e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.string	"a"
	.byte	0x1
	.byte	0x9
	.long	0x8cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.byte	0x9
	.long	0x8cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF169
	.byte	0x1
	.byte	0xb
	.long	0xf90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.byte	0xc
	.long	0xf90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"y"
	.byte	0x1
	.byte	0xd
	.long	0xf90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF170
	.byte	0x1
	.byte	0x13
	.long	0x975
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF171
	.byte	0x1
	.byte	0x1b
	.long	0x975
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF172
	.byte	0x1
	.byte	0x1d
	.long	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xf50
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0xf
	.long	0x2dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x32
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x15
	.long	0x2dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x30
	.long	.LASF173
	.byte	0x1
	.byte	0x16
	.long	0x8c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x8c4
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
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x32
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
.LASF118:
	.string	"getenv"
.LASF115:
	.string	"atoi"
.LASF34:
	.string	"_shortbuf"
.LASF126:
	.string	"rand"
.LASF178:
	.string	"_IO_lock_t"
.LASF91:
	.string	"setvbuf"
.LASF163:
	.string	"mktime"
.LASF66:
	.string	"stderr"
.LASF131:
	.string	"system"
.LASF150:
	.string	"tm_yday"
.LASF23:
	.string	"_IO_buf_end"
.LASF74:
	.string	"fflush"
.LASF83:
	.string	"ftell"
.LASF142:
	.string	"signgam"
.LASF120:
	.string	"mblen"
.LASF21:
	.string	"_IO_write_end"
.LASF5:
	.string	"unsigned int"
.LASF0:
	.string	"__gnu_cxx"
.LASF160:
	.string	"getdate_err"
.LASF15:
	.string	"_flags"
.LASF32:
	.string	"_cur_column"
.LASF122:
	.string	"wchar_t"
.LASF172:
	.string	"eTime"
.LASF27:
	.string	"_markers"
.LASF146:
	.string	"tm_mday"
.LASF69:
	.string	"_sys_nerr"
.LASF177:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF137:
	.string	"strtoull"
.LASF95:
	.string	"ungetc"
.LASF171:
	.string	"stopTime"
.LASF156:
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
.LASF147:
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
.LASF166:
	.string	"ctime"
.LASF68:
	.string	"sys_errlist"
.LASF25:
	.string	"_IO_backup_base"
.LASF36:
	.string	"_offset"
.LASF164:
	.string	"time"
.LASF67:
	.string	"sys_nerr"
.LASF134:
	.string	"lldiv"
.LASF109:
	.string	"clock_t"
.LASF29:
	.string	"_fileno"
.LASF175:
	.string	"source_tmp_var.cpp"
.LASF9:
	.string	"size_t"
.LASF127:
	.string	"srand"
.LASF18:
	.string	"_IO_read_base"
.LASF162:
	.string	"difftime"
.LASF117:
	.string	"bsearch"
.LASF170:
	.string	"startTime"
.LASF64:
	.string	"stdin"
.LASF57:
	.string	"_next"
.LASF173:
	.string	"cosd"
.LASF97:
	.string	"__float128"
.LASF85:
	.string	"clearerr"
.LASF80:
	.string	"freopen"
.LASF48:
	.string	"__value"
.LASF140:
	.string	"float_t"
.LASF14:
	.string	"char"
.LASF42:
	.string	"_mode"
.LASF101:
	.string	"5div_t"
.LASF155:
	.string	"__daylight"
.LASF73:
	.string	"ferror"
.LASF56:
	.string	"_IO_marker"
.LASF148:
	.string	"tm_year"
.LASF16:
	.string	"_IO_read_ptr"
.LASF107:
	.string	"long long int"
.LASF176:
	.string	"/home/ubuntu/github/kousokuka-nyumon/chapter2/tmp_var"
.LASF125:
	.string	"quick_exit"
.LASF45:
	.string	"__wch"
.LASF102:
	.string	"quot"
.LASF110:
	.string	"time_t"
.LASF168:
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
.LASF169:
	.string	"radian"
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
.LASF165:
	.string	"asctime"
.LASF1:
	.string	"__cxx11"
.LASF81:
	.string	"fseek"
.LASF119:
	.string	"ldiv"
.LASF112:
	.string	"__compar_fn_t"
.LASF87:
	.string	"remove"
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
.LASF181:
	.string	"main"
.LASF159:
	.string	"timezone"
.LASF151:
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
.LASF167:
	.string	"gmtime"
.LASF46:
	.string	"__wchb"
.LASF71:
	.string	"fclose"
.LASF179:
	.string	"_IO_FILE_plus"
.LASF105:
	.string	"ldiv_t"
.LASF89:
	.string	"rewind"
.LASF84:
	.string	"getc"
.LASF180:
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
.LASF157:
	.string	"tzname"
.LASF144:
	.string	"tm_min"
.LASF153:
	.string	"tm_zone"
.LASF103:
	.string	"div_t"
.LASF3:
	.string	"unsigned char"
.LASF154:
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
.LASF145:
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
.LASF158:
	.string	"daylight"
.LASF149:
	.string	"tm_wday"
.LASF10:
	.string	"__off_t"
.LASF106:
	.string	"7lldiv_t"
.LASF6:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF143:
	.string	"tm_sec"
.LASF108:
	.string	"lldiv_t"
.LASF161:
	.string	"clock"
.LASF114:
	.string	"atof"
.LASF70:
	.string	"_sys_errlist"
.LASF174:
	.string	"GNU C++14 7.5.0 -mtune=generic -march=x86-64 -g -O0 -fstack-protector-strong"
.LASF116:
	.string	"atol"
.LASF141:
	.string	"double_t"
.LASF99:
	.string	"double"
.LASF152:
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
