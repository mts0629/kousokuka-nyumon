	.file	"source_tmp_var.cpp"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Elapsed time = %15.7f sec\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB290:
	.file 1 "source_tmp_var.cpp"
	.loc 1 7 0
	.cfi_startproc
.LVL0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	.loc 1 11 0
	movl	$67108864, %edi
	.loc 1 7 0
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 9 0
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 8(%rsp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, 12(%rsp)
	.loc 1 11 0
	call	_Znam@PLT
.LVL1:
	.loc 1 12 0
	movl	$67108864, %edi
	.loc 1 11 0
	movq	%rax, %rbp
.LVL2:
	leaq	67108864(%rbp), %r14
	movq	%rbp, %rbx
	.loc 1 12 0
	call	_Znam@PLT
.LVL3:
	.loc 1 13 0
	movl	$67108864, %edi
	.loc 1 12 0
	movq	%rax, %r13
.LVL4:
	.loc 1 13 0
	call	_Znam@PLT
.LVL5:
	movq	%rax, %r12
.LVL6:
	.p2align 4,,10
	.p2align 3
.L2:
.LBB7:
	.loc 1 16 0 discriminator 2
	call	rand@PLT
.LVL7:
	pxor	%xmm0, %xmm0
	addq	$4, %rbx
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -4(%rbx)
	.loc 1 15 0 discriminator 2
	cmpq	%r14, %rbx
	jne	.L2
.LBE7:
	.loc 1 19 0
	call	clock@PLT
.LVL8:
	xorl	%ebx, %ebx
	movq	%rax, %r14
.LVL9:
	.p2align 4,,10
	.p2align 3
.L3:
.LBB8:
.LBB9:
	.loc 1 22 0 discriminator 2
	pxor	%xmm0, %xmm0
	cvtss2sd	0(%rbp,%rbx), %xmm0
	call	cos@PLT
.LVL10:
	cvtsd2ss	%xmm0, %xmm0
.LVL11:
	.loc 1 23 0 discriminator 2
	movss	8(%rsp), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 0(%r13,%rbx)
	.loc 1 24 0 discriminator 2
	movss	12(%rsp), %xmm1
	mulss	%xmm1, %xmm0
.LVL12:
	movss	%xmm0, (%r12,%rbx)
	addq	$4, %rbx
.LBE9:
	.loc 1 21 0 discriminator 2
	cmpq	$67108864, %rbx
	jne	.L3
.LBE8:
	.loc 1 27 0
	call	clock@PLT
.LVL13:
	.loc 1 29 0
	pxor	%xmm0, %xmm0
	subq	%r14, %rax
.LVL14:
.LBB10:
.LBB11:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
.LBE11:
.LBE10:
	.loc 1 29 0
	cvtsi2ssq	%rax, %xmm0
.LBB14:
.LBB12:
	.loc 2 104 0
	movl	$1, %eax
.LBE12:
.LBE14:
	.loc 1 29 0
	divss	.LC2(%rip), %xmm0
	.loc 1 30 0
	cvtss2sd	%xmm0, %xmm0
.LBB15:
.LBB13:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL15:
.LBE13:
.LBE15:
	.loc 1 32 0
	movq	%r13, %rdi
	call	_ZdaPv@PLT
.LVL16:
	.loc 1 33 0
	movq	%r12, %rdi
	call	_ZdaPv@PLT
.LVL17:
	.loc 1 34 0
	movq	%rbp, %rdi
	call	_ZdaPv@PLT
.LVL18:
	.loc 1 37 0
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL19:
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL20:
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL21:
	popq	%r14
	.cfi_def_cfa_offset 8
.LVL22:
	ret
	.cfi_endproc
.LFE290:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
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
	.file 3 "/usr/include/c++/7/cstdio"
	.file 4 "/usr/include/c++/7/cstdlib"
	.file 5 "/usr/include/c++/7/cmath"
	.file 6 "/usr/include/c++/7/ctime"
	.file 7 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/_G_config.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.file 17 "/usr/include/stdlib.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/stdlib.h"
	.file 23 "/usr/include/math.h"
	.file 24 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 25 "/usr/include/time.h"
	.file 26 "<built-in>"
	.file 27 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10e3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF181
	.byte	0x4
	.long	.LASF182
	.long	.LASF183
	.long	.Ldebug_ranges0+0x40
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.string	"std"
	.byte	0x1a
	.byte	0
	.long	0x24b
	.uleb128 0x4
	.long	.LASF3
	.byte	0x7
	.byte	0xfd
	.uleb128 0x5
	.byte	0x7
	.byte	0xfd
	.long	0x42
	.uleb128 0x6
	.byte	0x3
	.byte	0x62
	.long	0x4b3
	.uleb128 0x6
	.byte	0x3
	.byte	0x63
	.long	0x5f0
	.uleb128 0x6
	.byte	0x3
	.byte	0x65
	.long	0x658
	.uleb128 0x6
	.byte	0x3
	.byte	0x66
	.long	0x670
	.uleb128 0x6
	.byte	0x3
	.byte	0x67
	.long	0x685
	.uleb128 0x6
	.byte	0x3
	.byte	0x68
	.long	0x69b
	.uleb128 0x6
	.byte	0x3
	.byte	0x69
	.long	0x6b1
	.uleb128 0x6
	.byte	0x3
	.byte	0x6a
	.long	0x6c6
	.uleb128 0x6
	.byte	0x3
	.byte	0x6b
	.long	0x6dc
	.uleb128 0x6
	.byte	0x3
	.byte	0x6c
	.long	0x6fd
	.uleb128 0x6
	.byte	0x3
	.byte	0x6d
	.long	0x71c
	.uleb128 0x6
	.byte	0x3
	.byte	0x71
	.long	0x736
	.uleb128 0x6
	.byte	0x3
	.byte	0x72
	.long	0x75b
	.uleb128 0x6
	.byte	0x3
	.byte	0x74
	.long	0x77a
	.uleb128 0x6
	.byte	0x3
	.byte	0x75
	.long	0x79a
	.uleb128 0x6
	.byte	0x3
	.byte	0x76
	.long	0x7bb
	.uleb128 0x6
	.byte	0x3
	.byte	0x78
	.long	0x7d1
	.uleb128 0x6
	.byte	0x3
	.byte	0x79
	.long	0x7e7
	.uleb128 0x6
	.byte	0x3
	.byte	0x7e
	.long	0x7f2
	.uleb128 0x6
	.byte	0x3
	.byte	0x83
	.long	0x804
	.uleb128 0x6
	.byte	0x3
	.byte	0x84
	.long	0x819
	.uleb128 0x6
	.byte	0x3
	.byte	0x85
	.long	0x833
	.uleb128 0x6
	.byte	0x3
	.byte	0x87
	.long	0x845
	.uleb128 0x6
	.byte	0x3
	.byte	0x88
	.long	0x85c
	.uleb128 0x6
	.byte	0x3
	.byte	0x8b
	.long	0x881
	.uleb128 0x6
	.byte	0x3
	.byte	0x8d
	.long	0x88c
	.uleb128 0x6
	.byte	0x3
	.byte	0x8f
	.long	0x8a1
	.uleb128 0x6
	.byte	0x4
	.byte	0x7f
	.long	0x902
	.uleb128 0x6
	.byte	0x4
	.byte	0x80
	.long	0x932
	.uleb128 0x6
	.byte	0x4
	.byte	0x86
	.long	0x9c3
	.uleb128 0x6
	.byte	0x4
	.byte	0x89
	.long	0x9e0
	.uleb128 0x6
	.byte	0x4
	.byte	0x8c
	.long	0x9fa
	.uleb128 0x6
	.byte	0x4
	.byte	0x8d
	.long	0xa0f
	.uleb128 0x6
	.byte	0x4
	.byte	0x8e
	.long	0xa25
	.uleb128 0x6
	.byte	0x4
	.byte	0x8f
	.long	0xa3b
	.uleb128 0x6
	.byte	0x4
	.byte	0x91
	.long	0xa64
	.uleb128 0x6
	.byte	0x4
	.byte	0x94
	.long	0xa7f
	.uleb128 0x6
	.byte	0x4
	.byte	0x96
	.long	0xa95
	.uleb128 0x6
	.byte	0x4
	.byte	0x99
	.long	0xab0
	.uleb128 0x6
	.byte	0x4
	.byte	0x9a
	.long	0xacb
	.uleb128 0x6
	.byte	0x4
	.byte	0x9b
	.long	0xafc
	.uleb128 0x6
	.byte	0x4
	.byte	0x9d
	.long	0xb1c
	.uleb128 0x6
	.byte	0x4
	.byte	0xa0
	.long	0xb3d
	.uleb128 0x6
	.byte	0x4
	.byte	0xa3
	.long	0xb4f
	.uleb128 0x6
	.byte	0x4
	.byte	0xa5
	.long	0xb5b
	.uleb128 0x6
	.byte	0x4
	.byte	0xa6
	.long	0xb6d
	.uleb128 0x6
	.byte	0x4
	.byte	0xa7
	.long	0xb8d
	.uleb128 0x6
	.byte	0x4
	.byte	0xa8
	.long	0xbac
	.uleb128 0x6
	.byte	0x4
	.byte	0xa9
	.long	0xbcb
	.uleb128 0x6
	.byte	0x4
	.byte	0xab
	.long	0xbe1
	.uleb128 0x6
	.byte	0x4
	.byte	0xac
	.long	0xc06
	.uleb128 0x6
	.byte	0x4
	.byte	0xf0
	.long	0x969
	.uleb128 0x6
	.byte	0x4
	.byte	0xf5
	.long	0x297
	.uleb128 0x6
	.byte	0x4
	.byte	0xf6
	.long	0xc20
	.uleb128 0x6
	.byte	0x4
	.byte	0xf8
	.long	0xc3b
	.uleb128 0x6
	.byte	0x4
	.byte	0xf9
	.long	0xc8f
	.uleb128 0x6
	.byte	0x4
	.byte	0xfa
	.long	0xc51
	.uleb128 0x6
	.byte	0x4
	.byte	0xfb
	.long	0xc70
	.uleb128 0x6
	.byte	0x4
	.byte	0xfc
	.long	0xca9
	.uleb128 0x7
	.byte	0x5
	.value	0x438
	.long	0xcce
	.uleb128 0x7
	.byte	0x5
	.value	0x439
	.long	0xcc3
	.uleb128 0x6
	.byte	0x6
	.byte	0x3c
	.long	0x974
	.uleb128 0x6
	.byte	0x6
	.byte	0x3d
	.long	0x97f
	.uleb128 0x6
	.byte	0x6
	.byte	0x3e
	.long	0xce5
	.uleb128 0x6
	.byte	0x6
	.byte	0x40
	.long	0xdd8
	.uleb128 0x6
	.byte	0x6
	.byte	0x41
	.long	0xde3
	.uleb128 0x6
	.byte	0x6
	.byte	0x42
	.long	0xdfd
	.uleb128 0x6
	.byte	0x6
	.byte	0x43
	.long	0xe18
	.uleb128 0x6
	.byte	0x6
	.byte	0x44
	.long	0xe33
	.uleb128 0x6
	.byte	0x6
	.byte	0x45
	.long	0xe4e
	.uleb128 0x6
	.byte	0x6
	.byte	0x46
	.long	0xe69
	.uleb128 0x6
	.byte	0x6
	.byte	0x47
	.long	0xe7e
	.byte	0
	.uleb128 0x8
	.long	.LASF2
	.byte	0x7
	.byte	0xff
	.long	0x2b2
	.uleb128 0x9
	.long	.LASF3
	.byte	0x7
	.value	0x101
	.uleb128 0xa
	.byte	0x7
	.value	0x101
	.long	0x256
	.uleb128 0x6
	.byte	0x4
	.byte	0xc8
	.long	0x969
	.uleb128 0x6
	.byte	0x4
	.byte	0xd8
	.long	0xc20
	.uleb128 0x6
	.byte	0x4
	.byte	0xe3
	.long	0xc3b
	.uleb128 0x6
	.byte	0x4
	.byte	0xe4
	.long	0xc51
	.uleb128 0x6
	.byte	0x4
	.byte	0xe5
	.long	0xc70
	.uleb128 0x6
	.byte	0x4
	.byte	0xe7
	.long	0xc8f
	.uleb128 0x6
	.byte	0x4
	.byte	0xe8
	.long	0xca9
	.uleb128 0xb
	.string	"div"
	.byte	0x4
	.byte	0xd5
	.long	.LASF184
	.long	0x969
	.uleb128 0xc
	.long	0x962
	.uleb128 0xc
	.long	0x962
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF10
	.byte	0x8
	.byte	0xd8
	.long	0x2bd
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.long	0x2e7
	.uleb128 0xd
	.long	.LASF11
	.byte	0x9
	.byte	0x8c
	.long	0x30
	.uleb128 0xd
	.long	.LASF12
	.byte	0x9
	.byte	0x8d
	.long	0x30
	.uleb128 0xd
	.long	.LASF13
	.byte	0x9
	.byte	0x90
	.long	0x30
	.uleb128 0xd
	.long	.LASF14
	.byte	0x9
	.byte	0x94
	.long	0x30
	.uleb128 0x10
	.byte	0x8
	.uleb128 0x11
	.byte	0x8
	.long	0x327
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0xf
	.long	0x327
	.uleb128 0x12
	.long	.LASF56
	.byte	0xd8
	.byte	0xa
	.byte	0xf5
	.long	0x4b3
	.uleb128 0x13
	.long	.LASF16
	.byte	0xa
	.byte	0xf6
	.long	0x2e7
	.byte	0
	.uleb128 0x13
	.long	.LASF17
	.byte	0xa
	.byte	0xfb
	.long	0x321
	.byte	0x8
	.uleb128 0x13
	.long	.LASF18
	.byte	0xa
	.byte	0xfc
	.long	0x321
	.byte	0x10
	.uleb128 0x13
	.long	.LASF19
	.byte	0xa
	.byte	0xfd
	.long	0x321
	.byte	0x18
	.uleb128 0x13
	.long	.LASF20
	.byte	0xa
	.byte	0xfe
	.long	0x321
	.byte	0x20
	.uleb128 0x13
	.long	.LASF21
	.byte	0xa
	.byte	0xff
	.long	0x321
	.byte	0x28
	.uleb128 0x14
	.long	.LASF22
	.byte	0xa
	.value	0x100
	.long	0x321
	.byte	0x30
	.uleb128 0x14
	.long	.LASF23
	.byte	0xa
	.value	0x101
	.long	0x321
	.byte	0x38
	.uleb128 0x14
	.long	.LASF24
	.byte	0xa
	.value	0x102
	.long	0x321
	.byte	0x40
	.uleb128 0x14
	.long	.LASF25
	.byte	0xa
	.value	0x104
	.long	0x321
	.byte	0x48
	.uleb128 0x14
	.long	.LASF26
	.byte	0xa
	.value	0x105
	.long	0x321
	.byte	0x50
	.uleb128 0x14
	.long	.LASF27
	.byte	0xa
	.value	0x106
	.long	0x321
	.byte	0x58
	.uleb128 0x14
	.long	.LASF28
	.byte	0xa
	.value	0x108
	.long	0x585
	.byte	0x60
	.uleb128 0x14
	.long	.LASF29
	.byte	0xa
	.value	0x10a
	.long	0x58b
	.byte	0x68
	.uleb128 0x14
	.long	.LASF30
	.byte	0xa
	.value	0x10c
	.long	0x2e7
	.byte	0x70
	.uleb128 0x14
	.long	.LASF31
	.byte	0xa
	.value	0x110
	.long	0x2e7
	.byte	0x74
	.uleb128 0x14
	.long	.LASF32
	.byte	0xa
	.value	0x112
	.long	0x2f3
	.byte	0x78
	.uleb128 0x14
	.long	.LASF33
	.byte	0xa
	.value	0x116
	.long	0x2cb
	.byte	0x80
	.uleb128 0x14
	.long	.LASF34
	.byte	0xa
	.value	0x117
	.long	0x2d9
	.byte	0x82
	.uleb128 0x14
	.long	.LASF35
	.byte	0xa
	.value	0x118
	.long	0x591
	.byte	0x83
	.uleb128 0x14
	.long	.LASF36
	.byte	0xa
	.value	0x11c
	.long	0x5a1
	.byte	0x88
	.uleb128 0x14
	.long	.LASF37
	.byte	0xa
	.value	0x125
	.long	0x2fe
	.byte	0x90
	.uleb128 0x14
	.long	.LASF38
	.byte	0xa
	.value	0x12d
	.long	0x31f
	.byte	0x98
	.uleb128 0x14
	.long	.LASF39
	.byte	0xa
	.value	0x12e
	.long	0x31f
	.byte	0xa0
	.uleb128 0x14
	.long	.LASF40
	.byte	0xa
	.value	0x12f
	.long	0x31f
	.byte	0xa8
	.uleb128 0x14
	.long	.LASF41
	.byte	0xa
	.value	0x130
	.long	0x31f
	.byte	0xb0
	.uleb128 0x14
	.long	.LASF42
	.byte	0xa
	.value	0x132
	.long	0x2b2
	.byte	0xb8
	.uleb128 0x14
	.long	.LASF43
	.byte	0xa
	.value	0x133
	.long	0x2e7
	.byte	0xc0
	.uleb128 0x14
	.long	.LASF44
	.byte	0xa
	.value	0x135
	.long	0x5a7
	.byte	0xc4
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0xb
	.byte	0x7
	.long	0x333
	.uleb128 0x15
	.byte	0x8
	.byte	0xc
	.byte	0xe
	.long	.LASF51
	.long	0x502
	.uleb128 0x16
	.byte	0x4
	.byte	0xc
	.byte	0x11
	.long	0x4e9
	.uleb128 0x17
	.long	.LASF46
	.byte	0xc
	.byte	0x12
	.long	0x2d2
	.uleb128 0x17
	.long	.LASF47
	.byte	0xc
	.byte	0x13
	.long	0x502
	.byte	0
	.uleb128 0x13
	.long	.LASF48
	.byte	0xc
	.byte	0xf
	.long	0x2e7
	.byte	0
	.uleb128 0x13
	.long	.LASF49
	.byte	0xc
	.byte	0x14
	.long	0x4ca
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.long	0x327
	.long	0x512
	.uleb128 0x19
	.long	0x2bd
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF50
	.byte	0xc
	.byte	0x15
	.long	0x4be
	.uleb128 0x15
	.byte	0x10
	.byte	0xd
	.byte	0x1b
	.long	.LASF52
	.long	0x542
	.uleb128 0x13
	.long	.LASF53
	.byte	0xd
	.byte	0x1c
	.long	0x2f3
	.byte	0
	.uleb128 0x13
	.long	.LASF54
	.byte	0xd
	.byte	0x1d
	.long	0x512
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF55
	.byte	0xd
	.byte	0x1e
	.long	0x51d
	.uleb128 0x1a
	.long	.LASF185
	.byte	0xa
	.byte	0x9a
	.uleb128 0x12
	.long	.LASF57
	.byte	0x18
	.byte	0xa
	.byte	0xa0
	.long	0x585
	.uleb128 0x13
	.long	.LASF58
	.byte	0xa
	.byte	0xa1
	.long	0x585
	.byte	0
	.uleb128 0x13
	.long	.LASF59
	.byte	0xa
	.byte	0xa2
	.long	0x58b
	.byte	0x8
	.uleb128 0x13
	.long	.LASF60
	.byte	0xa
	.byte	0xa6
	.long	0x2e7
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x554
	.uleb128 0x11
	.byte	0x8
	.long	0x333
	.uleb128 0x18
	.long	0x327
	.long	0x5a1
	.uleb128 0x19
	.long	0x2bd
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x54d
	.uleb128 0x18
	.long	0x327
	.long	0x5b7
	.uleb128 0x19
	.long	0x2bd
	.byte	0x13
	.byte	0
	.uleb128 0x1b
	.long	.LASF186
	.uleb128 0x1c
	.long	.LASF61
	.byte	0xa
	.value	0x13f
	.long	0x5b7
	.uleb128 0x1c
	.long	.LASF62
	.byte	0xa
	.value	0x140
	.long	0x5b7
	.uleb128 0x1c
	.long	.LASF63
	.byte	0xa
	.value	0x141
	.long	0x5b7
	.uleb128 0x11
	.byte	0x8
	.long	0x32e
	.uleb128 0xf
	.long	0x5e0
	.uleb128 0x1d
	.long	0x5e0
	.uleb128 0xd
	.long	.LASF64
	.byte	0xe
	.byte	0x4e
	.long	0x542
	.uleb128 0xf
	.long	0x5f0
	.uleb128 0x1e
	.long	.LASF65
	.byte	0xe
	.byte	0x87
	.long	0x58b
	.uleb128 0x1e
	.long	.LASF66
	.byte	0xe
	.byte	0x88
	.long	0x58b
	.uleb128 0x1e
	.long	.LASF67
	.byte	0xe
	.byte	0x89
	.long	0x58b
	.uleb128 0x1e
	.long	.LASF68
	.byte	0xf
	.byte	0x1a
	.long	0x2e7
	.uleb128 0x18
	.long	0x5e6
	.long	0x637
	.uleb128 0x1f
	.byte	0
	.uleb128 0x1e
	.long	.LASF69
	.byte	0xf
	.byte	0x1b
	.long	0x62c
	.uleb128 0x1e
	.long	.LASF70
	.byte	0xf
	.byte	0x1e
	.long	0x2e7
	.uleb128 0x1e
	.long	.LASF71
	.byte	0xf
	.byte	0x1f
	.long	0x62c
	.uleb128 0x20
	.long	.LASF86
	.byte	0xe
	.value	0x2f5
	.long	0x66a
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x4b3
	.uleb128 0x21
	.long	.LASF72
	.byte	0xe
	.byte	0xc7
	.long	0x2e7
	.long	0x685
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x22
	.long	.LASF73
	.byte	0xe
	.value	0x2f7
	.long	0x2e7
	.long	0x69b
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x22
	.long	.LASF74
	.byte	0xe
	.value	0x2f9
	.long	0x2e7
	.long	0x6b1
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x21
	.long	.LASF75
	.byte	0xe
	.byte	0xcc
	.long	0x2e7
	.long	0x6c6
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x22
	.long	.LASF76
	.byte	0xe
	.value	0x1dd
	.long	0x2e7
	.long	0x6dc
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x22
	.long	.LASF77
	.byte	0xe
	.value	0x2db
	.long	0x2e7
	.long	0x6f7
	.uleb128 0xc
	.long	0x66a
	.uleb128 0xc
	.long	0x6f7
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x5f0
	.uleb128 0x21
	.long	.LASF78
	.byte	0x2
	.byte	0xfc
	.long	0x321
	.long	0x71c
	.uleb128 0xc
	.long	0x321
	.uleb128 0xc
	.long	0x2e7
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x21
	.long	.LASF79
	.byte	0xe
	.byte	0xe8
	.long	0x66a
	.long	0x736
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0x22
	.long	.LASF80
	.byte	0x2
	.value	0x119
	.long	0x2b2
	.long	0x75b
	.uleb128 0xc
	.long	0x31f
	.uleb128 0xc
	.long	0x2b2
	.uleb128 0xc
	.long	0x2b2
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x21
	.long	.LASF81
	.byte	0xe
	.byte	0xee
	.long	0x66a
	.long	0x77a
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x22
	.long	.LASF82
	.byte	0xe
	.value	0x2ac
	.long	0x2e7
	.long	0x79a
	.uleb128 0xc
	.long	0x66a
	.uleb128 0xc
	.long	0x30
	.uleb128 0xc
	.long	0x2e7
	.byte	0
	.uleb128 0x22
	.long	.LASF83
	.byte	0xe
	.value	0x2e0
	.long	0x2e7
	.long	0x7b5
	.uleb128 0xc
	.long	0x66a
	.uleb128 0xc
	.long	0x7b5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x5fb
	.uleb128 0x22
	.long	.LASF84
	.byte	0xe
	.value	0x2b1
	.long	0x30
	.long	0x7d1
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x22
	.long	.LASF85
	.byte	0xe
	.value	0x1de
	.long	0x2e7
	.long	0x7e7
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x23
	.long	.LASF93
	.byte	0x10
	.byte	0x2c
	.long	0x2e7
	.uleb128 0x20
	.long	.LASF87
	.byte	0xe
	.value	0x307
	.long	0x804
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0x21
	.long	.LASF88
	.byte	0xe
	.byte	0x90
	.long	0x2e7
	.long	0x819
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0x21
	.long	.LASF89
	.byte	0xe
	.byte	0x92
	.long	0x2e7
	.long	0x833
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0x20
	.long	.LASF90
	.byte	0xe
	.value	0x2b6
	.long	0x845
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x20
	.long	.LASF91
	.byte	0xe
	.value	0x122
	.long	0x85c
	.uleb128 0xc
	.long	0x66a
	.uleb128 0xc
	.long	0x321
	.byte	0
	.uleb128 0x22
	.long	.LASF92
	.byte	0xe
	.value	0x126
	.long	0x2e7
	.long	0x881
	.uleb128 0xc
	.long	0x66a
	.uleb128 0xc
	.long	0x321
	.uleb128 0xc
	.long	0x2e7
	.uleb128 0xc
	.long	0x2b2
	.byte	0
	.uleb128 0x23
	.long	.LASF94
	.byte	0xe
	.byte	0x9f
	.long	0x66a
	.uleb128 0x21
	.long	.LASF95
	.byte	0xe
	.byte	0xad
	.long	0x321
	.long	0x8a1
	.uleb128 0xc
	.long	0x321
	.byte	0
	.uleb128 0x22
	.long	.LASF96
	.byte	0xe
	.value	0x27f
	.long	0x2e7
	.long	0x8bc
	.uleb128 0xc
	.long	0x2e7
	.uleb128 0xc
	.long	0x66a
	.byte	0
	.uleb128 0x2
	.byte	0x20
	.byte	0x3
	.long	.LASF97
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF98
	.uleb128 0x24
	.long	0x29
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF99
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF100
	.uleb128 0x15
	.byte	0x8
	.byte	0x11
	.byte	0x3b
	.long	.LASF101
	.long	0x902
	.uleb128 0x13
	.long	.LASF102
	.byte	0x11
	.byte	0x3c
	.long	0x2e7
	.byte	0
	.uleb128 0x25
	.string	"rem"
	.byte	0x11
	.byte	0x3d
	.long	0x2e7
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF103
	.byte	0x11
	.byte	0x3e
	.long	0x8dd
	.uleb128 0x15
	.byte	0x10
	.byte	0x11
	.byte	0x43
	.long	.LASF104
	.long	0x932
	.uleb128 0x13
	.long	.LASF102
	.byte	0x11
	.byte	0x44
	.long	0x30
	.byte	0
	.uleb128 0x25
	.string	"rem"
	.byte	0x11
	.byte	0x45
	.long	0x30
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF105
	.byte	0x11
	.byte	0x46
	.long	0x90d
	.uleb128 0x15
	.byte	0x10
	.byte	0x11
	.byte	0x4d
	.long	.LASF106
	.long	0x962
	.uleb128 0x13
	.long	.LASF102
	.byte	0x11
	.byte	0x4e
	.long	0x962
	.byte	0
	.uleb128 0x25
	.string	"rem"
	.byte	0x11
	.byte	0x4f
	.long	0x962
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF107
	.uleb128 0xd
	.long	.LASF108
	.byte	0x11
	.byte	0x50
	.long	0x93d
	.uleb128 0xd
	.long	.LASF109
	.byte	0x12
	.byte	0x7
	.long	0x309
	.uleb128 0xd
	.long	.LASF110
	.byte	0x13
	.byte	0x7
	.long	0x314
	.uleb128 0xf
	.long	0x97f
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF111
	.uleb128 0x26
	.long	.LASF112
	.byte	0x11
	.value	0x325
	.long	0x9a2
	.uleb128 0x11
	.byte	0x8
	.long	0x9a8
	.uleb128 0x27
	.long	0x2e7
	.long	0x9bc
	.uleb128 0xc
	.long	0x9bc
	.uleb128 0xc
	.long	0x9bc
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x9c2
	.uleb128 0x28
	.uleb128 0x22
	.long	.LASF113
	.byte	0x11
	.value	0x250
	.long	0x2e7
	.long	0x9d9
	.uleb128 0xc
	.long	0x9d9
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x9df
	.uleb128 0x29
	.uleb128 0x2a
	.long	.LASF174
	.byte	0x11
	.value	0x255
	.long	.LASF174
	.long	0x2e7
	.long	0x9fa
	.uleb128 0xc
	.long	0x9d9
	.byte	0
	.uleb128 0x21
	.long	.LASF114
	.byte	0x14
	.byte	0x19
	.long	0x8cf
	.long	0xa0f
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0x22
	.long	.LASF115
	.byte	0x11
	.value	0x169
	.long	0x2e7
	.long	0xa25
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0x22
	.long	.LASF116
	.byte	0x11
	.value	0x16e
	.long	0x30
	.long	0xa3b
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0x21
	.long	.LASF117
	.byte	0x15
	.byte	0x14
	.long	0x31f
	.long	0xa64
	.uleb128 0xc
	.long	0x9bc
	.uleb128 0xc
	.long	0x9bc
	.uleb128 0xc
	.long	0x2b2
	.uleb128 0xc
	.long	0x2b2
	.uleb128 0xc
	.long	0x996
	.byte	0
	.uleb128 0x2b
	.string	"div"
	.byte	0x11
	.value	0x351
	.long	0x902
	.long	0xa7f
	.uleb128 0xc
	.long	0x2e7
	.uleb128 0xc
	.long	0x2e7
	.byte	0
	.uleb128 0x22
	.long	.LASF118
	.byte	0x11
	.value	0x277
	.long	0x321
	.long	0xa95
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0x22
	.long	.LASF119
	.byte	0x11
	.value	0x353
	.long	0x932
	.long	0xab0
	.uleb128 0xc
	.long	0x30
	.uleb128 0xc
	.long	0x30
	.byte	0
	.uleb128 0x22
	.long	.LASF120
	.byte	0x11
	.value	0x397
	.long	0x2e7
	.long	0xacb
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0x2b2
	.byte	0
	.uleb128 0x21
	.long	.LASF121
	.byte	0x16
	.byte	0x71
	.long	0x2b2
	.long	0xaea
	.uleb128 0xc
	.long	0xaea
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0x2b2
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0xaf0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF122
	.uleb128 0xf
	.long	0xaf0
	.uleb128 0x22
	.long	.LASF123
	.byte	0x11
	.value	0x39a
	.long	0x2e7
	.long	0xb1c
	.uleb128 0xc
	.long	0xaea
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0x2b2
	.byte	0
	.uleb128 0x20
	.long	.LASF124
	.byte	0x11
	.value	0x33b
	.long	0xb3d
	.uleb128 0xc
	.long	0x31f
	.uleb128 0xc
	.long	0x2b2
	.uleb128 0xc
	.long	0x2b2
	.uleb128 0xc
	.long	0x996
	.byte	0
	.uleb128 0x2c
	.long	.LASF125
	.byte	0x11
	.value	0x26c
	.long	0xb4f
	.uleb128 0xc
	.long	0x2e7
	.byte	0
	.uleb128 0x2d
	.long	.LASF126
	.byte	0x11
	.value	0x1c5
	.long	0x2e7
	.uleb128 0x20
	.long	.LASF127
	.byte	0x11
	.value	0x1c7
	.long	0xb6d
	.uleb128 0xc
	.long	0x2d2
	.byte	0
	.uleb128 0x21
	.long	.LASF128
	.byte	0x11
	.byte	0x75
	.long	0x8cf
	.long	0xb87
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0xb87
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x321
	.uleb128 0x21
	.long	.LASF129
	.byte	0x11
	.byte	0xb0
	.long	0x30
	.long	0xbac
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0xb87
	.uleb128 0xc
	.long	0x2e7
	.byte	0
	.uleb128 0x21
	.long	.LASF130
	.byte	0x11
	.byte	0xb4
	.long	0x2bd
	.long	0xbcb
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0xb87
	.uleb128 0xc
	.long	0x2e7
	.byte	0
	.uleb128 0x22
	.long	.LASF131
	.byte	0x11
	.value	0x30d
	.long	0x2e7
	.long	0xbe1
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0x21
	.long	.LASF132
	.byte	0x16
	.byte	0x90
	.long	0x2b2
	.long	0xc00
	.uleb128 0xc
	.long	0x321
	.uleb128 0xc
	.long	0xc00
	.uleb128 0xc
	.long	0x2b2
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0xaf7
	.uleb128 0x21
	.long	.LASF133
	.byte	0x16
	.byte	0x53
	.long	0x2e7
	.long	0xc20
	.uleb128 0xc
	.long	0x321
	.uleb128 0xc
	.long	0xaf0
	.byte	0
	.uleb128 0x22
	.long	.LASF134
	.byte	0x11
	.value	0x357
	.long	0x969
	.long	0xc3b
	.uleb128 0xc
	.long	0x962
	.uleb128 0xc
	.long	0x962
	.byte	0
	.uleb128 0x22
	.long	.LASF135
	.byte	0x11
	.value	0x175
	.long	0x962
	.long	0xc51
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0x21
	.long	.LASF136
	.byte	0x11
	.byte	0xc8
	.long	0x962
	.long	0xc70
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0xb87
	.uleb128 0xc
	.long	0x2e7
	.byte	0
	.uleb128 0x21
	.long	.LASF137
	.byte	0x11
	.byte	0xcd
	.long	0x98f
	.long	0xc8f
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0xb87
	.uleb128 0xc
	.long	0x2e7
	.byte	0
	.uleb128 0x21
	.long	.LASF138
	.byte	0x11
	.byte	0x7b
	.long	0x29
	.long	0xca9
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0xb87
	.byte	0
	.uleb128 0x21
	.long	.LASF139
	.byte	0x11
	.byte	0x7e
	.long	0x8d6
	.long	0xcc3
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0xb87
	.byte	0
	.uleb128 0xd
	.long	.LASF140
	.byte	0x17
	.byte	0x95
	.long	0x29
	.uleb128 0xd
	.long	.LASF141
	.byte	0x17
	.byte	0x96
	.long	0x8cf
	.uleb128 0x1c
	.long	.LASF142
	.byte	0x17
	.value	0x1e9
	.long	0x2e7
	.uleb128 0x2e
	.string	"tm"
	.byte	0x38
	.byte	0x18
	.byte	0x7
	.long	0xd75
	.uleb128 0x13
	.long	.LASF143
	.byte	0x18
	.byte	0x9
	.long	0x2e7
	.byte	0
	.uleb128 0x13
	.long	.LASF144
	.byte	0x18
	.byte	0xa
	.long	0x2e7
	.byte	0x4
	.uleb128 0x13
	.long	.LASF145
	.byte	0x18
	.byte	0xb
	.long	0x2e7
	.byte	0x8
	.uleb128 0x13
	.long	.LASF146
	.byte	0x18
	.byte	0xc
	.long	0x2e7
	.byte	0xc
	.uleb128 0x13
	.long	.LASF147
	.byte	0x18
	.byte	0xd
	.long	0x2e7
	.byte	0x10
	.uleb128 0x13
	.long	.LASF148
	.byte	0x18
	.byte	0xe
	.long	0x2e7
	.byte	0x14
	.uleb128 0x13
	.long	.LASF149
	.byte	0x18
	.byte	0xf
	.long	0x2e7
	.byte	0x18
	.uleb128 0x13
	.long	.LASF150
	.byte	0x18
	.byte	0x10
	.long	0x2e7
	.byte	0x1c
	.uleb128 0x13
	.long	.LASF151
	.byte	0x18
	.byte	0x11
	.long	0x2e7
	.byte	0x20
	.uleb128 0x13
	.long	.LASF152
	.byte	0x18
	.byte	0x14
	.long	0x30
	.byte	0x28
	.uleb128 0x13
	.long	.LASF153
	.byte	0x18
	.byte	0x15
	.long	0x5e0
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	0xce5
	.uleb128 0x18
	.long	0x321
	.long	0xd8a
	.uleb128 0x19
	.long	0x2bd
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.long	.LASF154
	.byte	0x19
	.byte	0x9f
	.long	0xd7a
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x19
	.byte	0xa0
	.long	0x2e7
	.uleb128 0x1e
	.long	.LASF156
	.byte	0x19
	.byte	0xa1
	.long	0x30
	.uleb128 0x1e
	.long	.LASF157
	.byte	0x19
	.byte	0xa6
	.long	0xd7a
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x19
	.byte	0xae
	.long	0x2e7
	.uleb128 0x1e
	.long	.LASF159
	.byte	0x19
	.byte	0xaf
	.long	0x30
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x19
	.value	0x118
	.long	0x2e7
	.uleb128 0x23
	.long	.LASF161
	.byte	0x19
	.byte	0x48
	.long	0x974
	.uleb128 0x21
	.long	.LASF162
	.byte	0x19
	.byte	0x4e
	.long	0x8cf
	.long	0xdfd
	.uleb128 0xc
	.long	0x97f
	.uleb128 0xc
	.long	0x97f
	.byte	0
	.uleb128 0x21
	.long	.LASF163
	.byte	0x19
	.byte	0x52
	.long	0x97f
	.long	0xe12
	.uleb128 0xc
	.long	0xe12
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0xce5
	.uleb128 0x21
	.long	.LASF164
	.byte	0x19
	.byte	0x4b
	.long	0x97f
	.long	0xe2d
	.uleb128 0xc
	.long	0xe2d
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x97f
	.uleb128 0x21
	.long	.LASF165
	.byte	0x19
	.byte	0x8b
	.long	0x321
	.long	0xe48
	.uleb128 0xc
	.long	0xe48
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0xd75
	.uleb128 0x21
	.long	.LASF166
	.byte	0x19
	.byte	0x8e
	.long	0x321
	.long	0xe63
	.uleb128 0xc
	.long	0xe63
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x98a
	.uleb128 0x21
	.long	.LASF167
	.byte	0x19
	.byte	0x77
	.long	0xe12
	.long	0xe7e
	.uleb128 0xc
	.long	0xe63
	.byte	0
	.uleb128 0x21
	.long	.LASF168
	.byte	0x19
	.byte	0x7b
	.long	0xe12
	.long	0xe93
	.uleb128 0xc
	.long	0xe63
	.byte	0
	.uleb128 0x2f
	.long	.LASF187
	.byte	0x1
	.byte	0x6
	.long	0x2e7
	.quad	.LFB290
	.quad	.LFE290-.LFB290
	.uleb128 0x1
	.byte	0x9c
	.long	0x1093
	.uleb128 0x30
	.string	"N"
	.byte	0x1
	.byte	0x8
	.long	0x2ee
	.long	0x1000000
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.byte	0x9
	.long	0x8ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.byte	0x9
	.long	0x8ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF169
	.byte	0x1
	.byte	0xb
	.long	0x1093
	.long	.LLST0
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.byte	0xc
	.long	0x1093
	.long	.LLST1
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.byte	0xd
	.long	0x1093
	.long	.LLST2
	.uleb128 0x32
	.long	.LASF170
	.byte	0x1
	.byte	0x13
	.long	0x974
	.long	.LLST3
	.uleb128 0x32
	.long	.LASF171
	.byte	0x1
	.byte	0x1b
	.long	0x974
	.long	.LLST4
	.uleb128 0x32
	.long	.LASF172
	.byte	0x1
	.byte	0x1d
	.long	0x29
	.long	.LLST5
	.uleb128 0x34
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0xf5b
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.byte	0xf
	.long	0x2e7
	.uleb128 0x36
	.quad	.LVL7
	.long	0xb4f
	.byte	0
	.uleb128 0x34
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xfa8
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.byte	0x15
	.long	0x2e7
	.uleb128 0x37
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x32
	.long	.LASF173
	.byte	0x1
	.byte	0x16
	.long	0x29
	.long	.LLST6
	.uleb128 0x36
	.quad	.LVL10
	.long	0x10b6
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	0x1099
	.quad	.LBB10
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1e
	.long	0xfe9
	.uleb128 0x39
	.long	0x10a9
	.long	.LLST7
	.uleb128 0x3a
	.quad	.LVL15
	.long	0x10c1
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x3c
	.quad	.LVL1
	.long	0x10cc
	.long	0x1002
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0
	.uleb128 0x3c
	.quad	.LVL3
	.long	0x10cc
	.long	0x101b
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0
	.uleb128 0x3c
	.quad	.LVL5
	.long	0x10cc
	.long	0x1034
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0
	.uleb128 0x36
	.quad	.LVL8
	.long	0xdd8
	.uleb128 0x36
	.quad	.LVL13
	.long	0xdd8
	.uleb128 0x3c
	.quad	.LVL16
	.long	0x10d9
	.long	0x1066
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.quad	.LVL17
	.long	0x10d9
	.long	0x107e
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.quad	.LVL18
	.long	0x10d9
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.long	0x29
	.uleb128 0x3d
	.long	.LASF175
	.byte	0x2
	.byte	0x66
	.long	0x2e7
	.byte	0x3
	.long	0x10b6
	.uleb128 0x3e
	.long	.LASF188
	.byte	0x2
	.byte	0x66
	.long	0x5eb
	.uleb128 0x3f
	.byte	0
	.uleb128 0x40
	.string	"cos"
	.string	"cos"
	.byte	0x1b
	.byte	0x3e
	.uleb128 0x41
	.long	.LASF176
	.long	.LASF176
	.byte	0x2
	.byte	0x57
	.uleb128 0x42
	.long	.LASF177
	.long	.LASF179
	.long	.LASF177
	.uleb128 0x42
	.long	.LASF178
	.long	.LASF180
	.long	.LASF178
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL2
	.quad	.LVL3-1
	.value	0x1
	.byte	0x50
	.quad	.LVL3-1
	.quad	.LVL6
	.value	0x1
	.byte	0x53
	.quad	.LVL6
	.quad	.LVL19
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL4
	.quad	.LVL5-1
	.value	0x1
	.byte	0x50
	.quad	.LVL5-1
	.quad	.LVL21
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL6
	.quad	.LVL20
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL9
	.quad	.LVL22
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x12
	.byte	0x70
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x49742400
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL13
	.quad	.LVL15
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB290
	.quad	.LFE290-.LFB290
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB10
	.quad	.LBE10
	.quad	.LBB14
	.quad	.LBE14
	.quad	.LBB15
	.quad	.LBE15
	.quad	0
	.quad	0
	.quad	.LFB290
	.quad	.LFE290
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF118:
	.string	"getenv"
.LASF179:
	.string	"operator new []"
.LASF35:
	.string	"_shortbuf"
.LASF126:
	.string	"rand"
.LASF185:
	.string	"_IO_lock_t"
.LASF92:
	.string	"setvbuf"
.LASF163:
	.string	"mktime"
.LASF67:
	.string	"stderr"
.LASF131:
	.string	"system"
.LASF150:
	.string	"tm_yday"
.LASF24:
	.string	"_IO_buf_end"
.LASF75:
	.string	"fflush"
.LASF84:
	.string	"ftell"
.LASF142:
	.string	"signgam"
.LASF120:
	.string	"mblen"
.LASF22:
	.string	"_IO_write_end"
.LASF7:
	.string	"unsigned int"
.LASF2:
	.string	"__gnu_cxx"
.LASF160:
	.string	"getdate_err"
.LASF16:
	.string	"_flags"
.LASF33:
	.string	"_cur_column"
.LASF122:
	.string	"wchar_t"
.LASF172:
	.string	"eTime"
.LASF28:
	.string	"_markers"
.LASF146:
	.string	"tm_mday"
.LASF70:
	.string	"_sys_nerr"
.LASF184:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF137:
	.string	"strtoull"
.LASF96:
	.string	"ungetc"
.LASF171:
	.string	"stopTime"
.LASF178:
	.string	"_ZdaPv"
.LASF156:
	.string	"__timezone"
.LASF139:
	.string	"strtold"
.LASF136:
	.string	"strtoll"
.LASF60:
	.string	"_pos"
.LASF66:
	.string	"stdout"
.LASF123:
	.string	"mbtowc"
.LASF147:
	.string	"tm_mon"
.LASF27:
	.string	"_IO_save_end"
.LASF48:
	.string	"__count"
.LASF0:
	.string	"float"
.LASF77:
	.string	"fgetpos"
.LASF111:
	.string	"long long unsigned int"
.LASF133:
	.string	"wctomb"
.LASF166:
	.string	"ctime"
.LASF69:
	.string	"sys_errlist"
.LASF26:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_offset"
.LASF164:
	.string	"time"
.LASF68:
	.string	"sys_nerr"
.LASF134:
	.string	"lldiv"
.LASF109:
	.string	"clock_t"
.LASF30:
	.string	"_fileno"
.LASF182:
	.string	"source_tmp_var.cpp"
.LASF10:
	.string	"size_t"
.LASF127:
	.string	"srand"
.LASF19:
	.string	"_IO_read_base"
.LASF162:
	.string	"difftime"
.LASF117:
	.string	"bsearch"
.LASF170:
	.string	"startTime"
.LASF65:
	.string	"stdin"
.LASF180:
	.string	"operator delete []"
.LASF58:
	.string	"_next"
.LASF173:
	.string	"cosd"
.LASF98:
	.string	"__float128"
.LASF86:
	.string	"clearerr"
.LASF188:
	.string	"__fmt"
.LASF81:
	.string	"freopen"
.LASF49:
	.string	"__value"
.LASF140:
	.string	"float_t"
.LASF15:
	.string	"char"
.LASF43:
	.string	"_mode"
.LASF101:
	.string	"5div_t"
.LASF155:
	.string	"__daylight"
.LASF74:
	.string	"ferror"
.LASF57:
	.string	"_IO_marker"
.LASF148:
	.string	"tm_year"
.LASF17:
	.string	"_IO_read_ptr"
.LASF107:
	.string	"long long int"
.LASF183:
	.string	"/home/ubuntu/github/kousokuka-nyumon/chapter2/tmp_var"
.LASF125:
	.string	"quick_exit"
.LASF46:
	.string	"__wch"
.LASF102:
	.string	"quot"
.LASF110:
	.string	"time_t"
.LASF168:
	.string	"localtime"
.LASF89:
	.string	"rename"
.LASF53:
	.string	"__pos"
.LASF121:
	.string	"mbstowcs"
.LASF93:
	.string	"getchar"
.LASF20:
	.string	"_IO_write_base"
.LASF95:
	.string	"tmpnam"
.LASF169:
	.string	"radian"
.LASF61:
	.string	"_IO_2_1_stdin_"
.LASF91:
	.string	"setbuf"
.LASF87:
	.string	"perror"
.LASF175:
	.string	"printf"
.LASF62:
	.string	"_IO_2_1_stdout_"
.LASF25:
	.string	"_IO_save_base"
.LASF52:
	.string	"9_G_fpos_t"
.LASF176:
	.string	"__printf_chk"
.LASF165:
	.string	"asctime"
.LASF3:
	.string	"__cxx11"
.LASF177:
	.string	"_Znam"
.LASF82:
	.string	"fseek"
.LASF119:
	.string	"ldiv"
.LASF112:
	.string	"__compar_fn_t"
.LASF88:
	.string	"remove"
.LASF83:
	.string	"fsetpos"
.LASF97:
	.string	"__unknown__"
.LASF38:
	.string	"__pad1"
.LASF39:
	.string	"__pad2"
.LASF40:
	.string	"__pad3"
.LASF41:
	.string	"__pad4"
.LASF42:
	.string	"__pad5"
.LASF13:
	.string	"__clock_t"
.LASF76:
	.string	"fgetc"
.LASF79:
	.string	"fopen"
.LASF34:
	.string	"_vtable_offset"
.LASF78:
	.string	"fgets"
.LASF50:
	.string	"__mbstate_t"
.LASF100:
	.string	"long double"
.LASF181:
	.string	"GNU C++14 7.5.0 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF187:
	.string	"main"
.LASF159:
	.string	"timezone"
.LASF151:
	.string	"tm_isdst"
.LASF18:
	.string	"_IO_read_end"
.LASF9:
	.string	"short int"
.LASF1:
	.string	"long int"
.LASF64:
	.string	"fpos_t"
.LASF80:
	.string	"fread"
.LASF51:
	.string	"11__mbstate_t"
.LASF113:
	.string	"atexit"
.LASF167:
	.string	"gmtime"
.LASF47:
	.string	"__wchb"
.LASF72:
	.string	"fclose"
.LASF186:
	.string	"_IO_FILE_plus"
.LASF105:
	.string	"ldiv_t"
.LASF90:
	.string	"rewind"
.LASF85:
	.string	"getc"
.LASF174:
	.string	"at_quick_exit"
.LASF55:
	.string	"_G_fpos_t"
.LASF36:
	.string	"_lock"
.LASF130:
	.string	"strtoul"
.LASF4:
	.string	"long unsigned int"
.LASF32:
	.string	"_old_offset"
.LASF56:
	.string	"_IO_FILE"
.LASF157:
	.string	"tzname"
.LASF144:
	.string	"tm_min"
.LASF153:
	.string	"tm_zone"
.LASF103:
	.string	"div_t"
.LASF5:
	.string	"unsigned char"
.LASF154:
	.string	"__tzname"
.LASF59:
	.string	"_sbuf"
.LASF94:
	.string	"tmpfile"
.LASF21:
	.string	"_IO_write_ptr"
.LASF128:
	.string	"strtod"
.LASF138:
	.string	"strtof"
.LASF73:
	.string	"feof"
.LASF145:
	.string	"tm_hour"
.LASF132:
	.string	"wcstombs"
.LASF129:
	.string	"strtol"
.LASF14:
	.string	"__time_t"
.LASF104:
	.string	"6ldiv_t"
.LASF135:
	.string	"atoll"
.LASF158:
	.string	"daylight"
.LASF149:
	.string	"tm_wday"
.LASF11:
	.string	"__off_t"
.LASF106:
	.string	"7lldiv_t"
.LASF8:
	.string	"signed char"
.LASF6:
	.string	"short unsigned int"
.LASF143:
	.string	"tm_sec"
.LASF108:
	.string	"lldiv_t"
.LASF161:
	.string	"clock"
.LASF114:
	.string	"atof"
.LASF71:
	.string	"_sys_errlist"
.LASF115:
	.string	"atoi"
.LASF116:
	.string	"atol"
.LASF141:
	.string	"double_t"
.LASF99:
	.string	"double"
.LASF152:
	.string	"tm_gmtoff"
.LASF29:
	.string	"_chain"
.LASF45:
	.string	"FILE"
.LASF54:
	.string	"__state"
.LASF31:
	.string	"_flags2"
.LASF63:
	.string	"_IO_2_1_stderr_"
.LASF12:
	.string	"__off64_t"
.LASF44:
	.string	"_unused2"
.LASF23:
	.string	"_IO_buf_base"
.LASF124:
	.string	"qsort"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
