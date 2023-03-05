	.file	"source.cpp"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	_Z4multff
	.type	_Z4multff, @function
_Z4multff:
.LFB57:
	.file 1 "source.cpp"
	.loc 1 5 0
	.cfi_startproc
.LVL0:
	.loc 1 6 0
	mulss	%xmm1, %xmm0
.LVL1:
	.loc 1 7 0
	ret
	.cfi_endproc
.LFE57:
	.size	_Z4multff, .-_Z4multff
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Elapsed time = %15.7f sec\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB58:
	.loc 1 10 0
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB14:
	.loc 1 19 0
	xorl	%ebx, %ebx
.LBE14:
	.loc 1 10 0
	subq	$524320, %rsp
	.cfi_def_cfa_offset 524336
	.loc 1 10 0
	movq	%fs:40, %rax
	movq	%rax, 524312(%rsp)
	xorl	%eax, %eax
.LVL2:
	.loc 1 14 0
	call	rand@PLT
.LVL3:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 12(%rsp)
.LVL4:
	.p2align 4,,10
	.p2align 3
.L4:
.LBB15:
	.loc 1 20 0 discriminator 2
	call	rand@PLT
.LVL5:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movslq	%ebx, %rax
	.loc 1 19 0 discriminator 2
	addl	$1, %ebx
.LVL6:
	cmpl	$65536, %ebx
	.loc 1 20 0 discriminator 2
	movss	%xmm0, 16(%rsp,%rax,4)
	.loc 1 19 0 discriminator 2
	jne	.L4
.LBE15:
	.loc 1 23 0
	call	clock@PLT
.LVL7:
	movl	$65536, %ecx
	movq	%rax, %rbx
.LVL8:
	.p2align 4,,10
	.p2align 3
.L6:
.LBB16:
.LBB17:
	.loc 1 27 0
	xorl	%eax, %eax
.LVL9:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 1 28 0 discriminator 2
	movslq	%eax, %rdx
	.loc 1 27 0 discriminator 2
	addl	$1, %eax
.LVL10:
	.loc 1 28 0 discriminator 2
	movss	16(%rsp,%rdx,4), %xmm0
	.loc 1 27 0 discriminator 2
	cmpl	$65536, %eax
	.loc 1 28 0 discriminator 2
	movss	12(%rsp), %xmm1
.LVL11:
.LBB18:
.LBB19:
	.loc 1 6 0 discriminator 2
	mulss	%xmm1, %xmm0
.LVL12:
.LBE19:
.LBE18:
	.loc 1 28 0 discriminator 2
	movss	%xmm0, 262160(%rsp,%rdx,4)
	.loc 1 27 0 discriminator 2
	jne	.L5
.LVL13:
.LBE17:
	.loc 1 26 0 discriminator 2
	subl	$1, %ecx
.LVL14:
	jne	.L6
.LBE16:
	.loc 1 32 0
	call	clock@PLT
.LVL15:
	.loc 1 34 0
	pxor	%xmm0, %xmm0
	subq	%rbx, %rax
.LVL16:
.LBB20:
.LBB21:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
.LBE21:
.LBE20:
	.loc 1 34 0
	cvtsi2ssq	%rax, %xmm0
.LBB24:
.LBB22:
	.loc 2 104 0
	movl	$1, %eax
.LBE22:
.LBE24:
	.loc 1 34 0
	divss	.LC0(%rip), %xmm0
	.loc 1 35 0
	cvtss2sd	%xmm0, %xmm0
.LBB25:
.LBB23:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL17:
.LBE23:
.LBE25:
	.loc 1 38 0
	xorl	%eax, %eax
	movq	524312(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L12
	addq	$524320, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL18:
	ret
.LVL19:
.L12:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL20:
	.cfi_endproc
.LFE58:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1232348160
	.text
.Letext0:
	.file 3 "/usr/include/c++/7/cstdio"
	.file 4 "/usr/include/c++/7/cstdlib"
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
	.file 15 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
	.file 16 "/usr/include/stdlib.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/stdlib.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 23 "/usr/include/time.h"
	.file 24 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x109b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF174
	.byte	0x4
	.long	.LASF175
	.long	.LASF176
	.long	.Ldebug_ranges0+0x70
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
	.byte	0x18
	.byte	0
	.long	0x23b
	.uleb128 0x4
	.long	.LASF3
	.byte	0x6
	.byte	0xfd
	.uleb128 0x5
	.byte	0x6
	.byte	0xfd
	.long	0x42
	.uleb128 0x6
	.byte	0x3
	.byte	0x62
	.long	0x4a3
	.uleb128 0x6
	.byte	0x3
	.byte	0x63
	.long	0x5e0
	.uleb128 0x6
	.byte	0x3
	.byte	0x65
	.long	0x648
	.uleb128 0x6
	.byte	0x3
	.byte	0x66
	.long	0x660
	.uleb128 0x6
	.byte	0x3
	.byte	0x67
	.long	0x675
	.uleb128 0x6
	.byte	0x3
	.byte	0x68
	.long	0x68b
	.uleb128 0x6
	.byte	0x3
	.byte	0x69
	.long	0x6a1
	.uleb128 0x6
	.byte	0x3
	.byte	0x6a
	.long	0x6b6
	.uleb128 0x6
	.byte	0x3
	.byte	0x6b
	.long	0x6cc
	.uleb128 0x6
	.byte	0x3
	.byte	0x6c
	.long	0x6ed
	.uleb128 0x6
	.byte	0x3
	.byte	0x6d
	.long	0x70c
	.uleb128 0x6
	.byte	0x3
	.byte	0x71
	.long	0x726
	.uleb128 0x6
	.byte	0x3
	.byte	0x72
	.long	0x74b
	.uleb128 0x6
	.byte	0x3
	.byte	0x74
	.long	0x76a
	.uleb128 0x6
	.byte	0x3
	.byte	0x75
	.long	0x78a
	.uleb128 0x6
	.byte	0x3
	.byte	0x76
	.long	0x7ab
	.uleb128 0x6
	.byte	0x3
	.byte	0x78
	.long	0x7c1
	.uleb128 0x6
	.byte	0x3
	.byte	0x79
	.long	0x7d7
	.uleb128 0x6
	.byte	0x3
	.byte	0x7e
	.long	0x7e2
	.uleb128 0x6
	.byte	0x3
	.byte	0x83
	.long	0x7f4
	.uleb128 0x6
	.byte	0x3
	.byte	0x84
	.long	0x809
	.uleb128 0x6
	.byte	0x3
	.byte	0x85
	.long	0x823
	.uleb128 0x6
	.byte	0x3
	.byte	0x87
	.long	0x835
	.uleb128 0x6
	.byte	0x3
	.byte	0x88
	.long	0x84c
	.uleb128 0x6
	.byte	0x3
	.byte	0x8b
	.long	0x871
	.uleb128 0x6
	.byte	0x3
	.byte	0x8d
	.long	0x87c
	.uleb128 0x6
	.byte	0x3
	.byte	0x8f
	.long	0x891
	.uleb128 0x6
	.byte	0x4
	.byte	0x7f
	.long	0x8f7
	.uleb128 0x6
	.byte	0x4
	.byte	0x80
	.long	0x927
	.uleb128 0x6
	.byte	0x4
	.byte	0x86
	.long	0x9b8
	.uleb128 0x6
	.byte	0x4
	.byte	0x89
	.long	0x9d5
	.uleb128 0x6
	.byte	0x4
	.byte	0x8c
	.long	0x9ef
	.uleb128 0x6
	.byte	0x4
	.byte	0x8d
	.long	0xa04
	.uleb128 0x6
	.byte	0x4
	.byte	0x8e
	.long	0xa1a
	.uleb128 0x6
	.byte	0x4
	.byte	0x8f
	.long	0xa30
	.uleb128 0x6
	.byte	0x4
	.byte	0x91
	.long	0xa59
	.uleb128 0x6
	.byte	0x4
	.byte	0x94
	.long	0xa74
	.uleb128 0x6
	.byte	0x4
	.byte	0x96
	.long	0xa8a
	.uleb128 0x6
	.byte	0x4
	.byte	0x99
	.long	0xaa5
	.uleb128 0x6
	.byte	0x4
	.byte	0x9a
	.long	0xac0
	.uleb128 0x6
	.byte	0x4
	.byte	0x9b
	.long	0xaf1
	.uleb128 0x6
	.byte	0x4
	.byte	0x9d
	.long	0xb11
	.uleb128 0x6
	.byte	0x4
	.byte	0xa0
	.long	0xb32
	.uleb128 0x6
	.byte	0x4
	.byte	0xa3
	.long	0xb44
	.uleb128 0x6
	.byte	0x4
	.byte	0xa5
	.long	0xb50
	.uleb128 0x6
	.byte	0x4
	.byte	0xa6
	.long	0xb62
	.uleb128 0x6
	.byte	0x4
	.byte	0xa7
	.long	0xb82
	.uleb128 0x6
	.byte	0x4
	.byte	0xa8
	.long	0xba1
	.uleb128 0x6
	.byte	0x4
	.byte	0xa9
	.long	0xbc0
	.uleb128 0x6
	.byte	0x4
	.byte	0xab
	.long	0xbd6
	.uleb128 0x6
	.byte	0x4
	.byte	0xac
	.long	0xbfb
	.uleb128 0x6
	.byte	0x4
	.byte	0xf0
	.long	0x95e
	.uleb128 0x6
	.byte	0x4
	.byte	0xf5
	.long	0x287
	.uleb128 0x6
	.byte	0x4
	.byte	0xf6
	.long	0xc15
	.uleb128 0x6
	.byte	0x4
	.byte	0xf8
	.long	0xc30
	.uleb128 0x6
	.byte	0x4
	.byte	0xf9
	.long	0xc84
	.uleb128 0x6
	.byte	0x4
	.byte	0xfa
	.long	0xc46
	.uleb128 0x6
	.byte	0x4
	.byte	0xfb
	.long	0xc65
	.uleb128 0x6
	.byte	0x4
	.byte	0xfc
	.long	0xc9e
	.uleb128 0x6
	.byte	0x5
	.byte	0x3c
	.long	0x969
	.uleb128 0x6
	.byte	0x5
	.byte	0x3d
	.long	0x974
	.uleb128 0x6
	.byte	0x5
	.byte	0x3e
	.long	0xcb8
	.uleb128 0x6
	.byte	0x5
	.byte	0x40
	.long	0xdab
	.uleb128 0x6
	.byte	0x5
	.byte	0x41
	.long	0xdb6
	.uleb128 0x6
	.byte	0x5
	.byte	0x42
	.long	0xdd0
	.uleb128 0x6
	.byte	0x5
	.byte	0x43
	.long	0xdeb
	.uleb128 0x6
	.byte	0x5
	.byte	0x44
	.long	0xe06
	.uleb128 0x6
	.byte	0x5
	.byte	0x45
	.long	0xe21
	.uleb128 0x6
	.byte	0x5
	.byte	0x46
	.long	0xe3c
	.uleb128 0x6
	.byte	0x5
	.byte	0x47
	.long	0xe51
	.byte	0
	.uleb128 0x7
	.long	.LASF2
	.byte	0x6
	.byte	0xff
	.long	0x2a2
	.uleb128 0x8
	.long	.LASF3
	.byte	0x6
	.value	0x101
	.uleb128 0x9
	.byte	0x6
	.value	0x101
	.long	0x246
	.uleb128 0x6
	.byte	0x4
	.byte	0xc8
	.long	0x95e
	.uleb128 0x6
	.byte	0x4
	.byte	0xd8
	.long	0xc15
	.uleb128 0x6
	.byte	0x4
	.byte	0xe3
	.long	0xc30
	.uleb128 0x6
	.byte	0x4
	.byte	0xe4
	.long	0xc46
	.uleb128 0x6
	.byte	0x4
	.byte	0xe5
	.long	0xc65
	.uleb128 0x6
	.byte	0x4
	.byte	0xe7
	.long	0xc84
	.uleb128 0x6
	.byte	0x4
	.byte	0xe8
	.long	0xc9e
	.uleb128 0xa
	.string	"div"
	.byte	0x4
	.byte	0xd5
	.long	.LASF177
	.long	0x95e
	.uleb128 0xb
	.long	0x957
	.uleb128 0xb
	.long	0x957
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF10
	.byte	0x7
	.byte	0xd8
	.long	0x2ad
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
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
	.long	0x2d7
	.uleb128 0xc
	.long	.LASF11
	.byte	0x8
	.byte	0x8c
	.long	0x30
	.uleb128 0xc
	.long	.LASF12
	.byte	0x8
	.byte	0x8d
	.long	0x30
	.uleb128 0xc
	.long	.LASF13
	.byte	0x8
	.byte	0x90
	.long	0x30
	.uleb128 0xc
	.long	.LASF14
	.byte	0x8
	.byte	0x94
	.long	0x30
	.uleb128 0xf
	.byte	0x8
	.uleb128 0x10
	.byte	0x8
	.long	0x317
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0xe
	.long	0x317
	.uleb128 0x11
	.long	.LASF56
	.byte	0xd8
	.byte	0x9
	.byte	0xf5
	.long	0x4a3
	.uleb128 0x12
	.long	.LASF16
	.byte	0x9
	.byte	0xf6
	.long	0x2d7
	.byte	0
	.uleb128 0x12
	.long	.LASF17
	.byte	0x9
	.byte	0xfb
	.long	0x311
	.byte	0x8
	.uleb128 0x12
	.long	.LASF18
	.byte	0x9
	.byte	0xfc
	.long	0x311
	.byte	0x10
	.uleb128 0x12
	.long	.LASF19
	.byte	0x9
	.byte	0xfd
	.long	0x311
	.byte	0x18
	.uleb128 0x12
	.long	.LASF20
	.byte	0x9
	.byte	0xfe
	.long	0x311
	.byte	0x20
	.uleb128 0x12
	.long	.LASF21
	.byte	0x9
	.byte	0xff
	.long	0x311
	.byte	0x28
	.uleb128 0x13
	.long	.LASF22
	.byte	0x9
	.value	0x100
	.long	0x311
	.byte	0x30
	.uleb128 0x13
	.long	.LASF23
	.byte	0x9
	.value	0x101
	.long	0x311
	.byte	0x38
	.uleb128 0x13
	.long	.LASF24
	.byte	0x9
	.value	0x102
	.long	0x311
	.byte	0x40
	.uleb128 0x13
	.long	.LASF25
	.byte	0x9
	.value	0x104
	.long	0x311
	.byte	0x48
	.uleb128 0x13
	.long	.LASF26
	.byte	0x9
	.value	0x105
	.long	0x311
	.byte	0x50
	.uleb128 0x13
	.long	.LASF27
	.byte	0x9
	.value	0x106
	.long	0x311
	.byte	0x58
	.uleb128 0x13
	.long	.LASF28
	.byte	0x9
	.value	0x108
	.long	0x575
	.byte	0x60
	.uleb128 0x13
	.long	.LASF29
	.byte	0x9
	.value	0x10a
	.long	0x57b
	.byte	0x68
	.uleb128 0x13
	.long	.LASF30
	.byte	0x9
	.value	0x10c
	.long	0x2d7
	.byte	0x70
	.uleb128 0x13
	.long	.LASF31
	.byte	0x9
	.value	0x110
	.long	0x2d7
	.byte	0x74
	.uleb128 0x13
	.long	.LASF32
	.byte	0x9
	.value	0x112
	.long	0x2e3
	.byte	0x78
	.uleb128 0x13
	.long	.LASF33
	.byte	0x9
	.value	0x116
	.long	0x2bb
	.byte	0x80
	.uleb128 0x13
	.long	.LASF34
	.byte	0x9
	.value	0x117
	.long	0x2c9
	.byte	0x82
	.uleb128 0x13
	.long	.LASF35
	.byte	0x9
	.value	0x118
	.long	0x581
	.byte	0x83
	.uleb128 0x13
	.long	.LASF36
	.byte	0x9
	.value	0x11c
	.long	0x591
	.byte	0x88
	.uleb128 0x13
	.long	.LASF37
	.byte	0x9
	.value	0x125
	.long	0x2ee
	.byte	0x90
	.uleb128 0x13
	.long	.LASF38
	.byte	0x9
	.value	0x12d
	.long	0x30f
	.byte	0x98
	.uleb128 0x13
	.long	.LASF39
	.byte	0x9
	.value	0x12e
	.long	0x30f
	.byte	0xa0
	.uleb128 0x13
	.long	.LASF40
	.byte	0x9
	.value	0x12f
	.long	0x30f
	.byte	0xa8
	.uleb128 0x13
	.long	.LASF41
	.byte	0x9
	.value	0x130
	.long	0x30f
	.byte	0xb0
	.uleb128 0x13
	.long	.LASF42
	.byte	0x9
	.value	0x132
	.long	0x2a2
	.byte	0xb8
	.uleb128 0x13
	.long	.LASF43
	.byte	0x9
	.value	0x133
	.long	0x2d7
	.byte	0xc0
	.uleb128 0x13
	.long	.LASF44
	.byte	0x9
	.value	0x135
	.long	0x597
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF45
	.byte	0xa
	.byte	0x7
	.long	0x323
	.uleb128 0x14
	.byte	0x8
	.byte	0xb
	.byte	0xe
	.long	.LASF51
	.long	0x4f2
	.uleb128 0x15
	.byte	0x4
	.byte	0xb
	.byte	0x11
	.long	0x4d9
	.uleb128 0x16
	.long	.LASF46
	.byte	0xb
	.byte	0x12
	.long	0x2c2
	.uleb128 0x16
	.long	.LASF47
	.byte	0xb
	.byte	0x13
	.long	0x4f2
	.byte	0
	.uleb128 0x12
	.long	.LASF48
	.byte	0xb
	.byte	0xf
	.long	0x2d7
	.byte	0
	.uleb128 0x12
	.long	.LASF49
	.byte	0xb
	.byte	0x14
	.long	0x4ba
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	0x317
	.long	0x502
	.uleb128 0x18
	.long	0x2ad
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF50
	.byte	0xb
	.byte	0x15
	.long	0x4ae
	.uleb128 0x14
	.byte	0x10
	.byte	0xc
	.byte	0x1b
	.long	.LASF52
	.long	0x532
	.uleb128 0x12
	.long	.LASF53
	.byte	0xc
	.byte	0x1c
	.long	0x2e3
	.byte	0
	.uleb128 0x12
	.long	.LASF54
	.byte	0xc
	.byte	0x1d
	.long	0x502
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF55
	.byte	0xc
	.byte	0x1e
	.long	0x50d
	.uleb128 0x19
	.long	.LASF178
	.byte	0x9
	.byte	0x9a
	.uleb128 0x11
	.long	.LASF57
	.byte	0x18
	.byte	0x9
	.byte	0xa0
	.long	0x575
	.uleb128 0x12
	.long	.LASF58
	.byte	0x9
	.byte	0xa1
	.long	0x575
	.byte	0
	.uleb128 0x12
	.long	.LASF59
	.byte	0x9
	.byte	0xa2
	.long	0x57b
	.byte	0x8
	.uleb128 0x12
	.long	.LASF60
	.byte	0x9
	.byte	0xa6
	.long	0x2d7
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x544
	.uleb128 0x10
	.byte	0x8
	.long	0x323
	.uleb128 0x17
	.long	0x317
	.long	0x591
	.uleb128 0x18
	.long	0x2ad
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x53d
	.uleb128 0x17
	.long	0x317
	.long	0x5a7
	.uleb128 0x18
	.long	0x2ad
	.byte	0x13
	.byte	0
	.uleb128 0x1a
	.long	.LASF179
	.uleb128 0x1b
	.long	.LASF61
	.byte	0x9
	.value	0x13f
	.long	0x5a7
	.uleb128 0x1b
	.long	.LASF62
	.byte	0x9
	.value	0x140
	.long	0x5a7
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x9
	.value	0x141
	.long	0x5a7
	.uleb128 0x10
	.byte	0x8
	.long	0x31e
	.uleb128 0xe
	.long	0x5d0
	.uleb128 0x1c
	.long	0x5d0
	.uleb128 0xc
	.long	.LASF64
	.byte	0xd
	.byte	0x4e
	.long	0x532
	.uleb128 0xe
	.long	0x5e0
	.uleb128 0x1d
	.long	.LASF65
	.byte	0xd
	.byte	0x87
	.long	0x57b
	.uleb128 0x1d
	.long	.LASF66
	.byte	0xd
	.byte	0x88
	.long	0x57b
	.uleb128 0x1d
	.long	.LASF67
	.byte	0xd
	.byte	0x89
	.long	0x57b
	.uleb128 0x1d
	.long	.LASF68
	.byte	0xe
	.byte	0x1a
	.long	0x2d7
	.uleb128 0x17
	.long	0x5d6
	.long	0x627
	.uleb128 0x1e
	.byte	0
	.uleb128 0x1d
	.long	.LASF69
	.byte	0xe
	.byte	0x1b
	.long	0x61c
	.uleb128 0x1d
	.long	.LASF70
	.byte	0xe
	.byte	0x1e
	.long	0x2d7
	.uleb128 0x1d
	.long	.LASF71
	.byte	0xe
	.byte	0x1f
	.long	0x61c
	.uleb128 0x1f
	.long	.LASF86
	.byte	0xd
	.value	0x2f5
	.long	0x65a
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x4a3
	.uleb128 0x20
	.long	.LASF72
	.byte	0xd
	.byte	0xc7
	.long	0x2d7
	.long	0x675
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x21
	.long	.LASF73
	.byte	0xd
	.value	0x2f7
	.long	0x2d7
	.long	0x68b
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x21
	.long	.LASF74
	.byte	0xd
	.value	0x2f9
	.long	0x2d7
	.long	0x6a1
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x20
	.long	.LASF75
	.byte	0xd
	.byte	0xcc
	.long	0x2d7
	.long	0x6b6
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x21
	.long	.LASF76
	.byte	0xd
	.value	0x1dd
	.long	0x2d7
	.long	0x6cc
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x21
	.long	.LASF77
	.byte	0xd
	.value	0x2db
	.long	0x2d7
	.long	0x6e7
	.uleb128 0xb
	.long	0x65a
	.uleb128 0xb
	.long	0x6e7
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x5e0
	.uleb128 0x20
	.long	.LASF78
	.byte	0x2
	.byte	0xfc
	.long	0x311
	.long	0x70c
	.uleb128 0xb
	.long	0x311
	.uleb128 0xb
	.long	0x2d7
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x20
	.long	.LASF79
	.byte	0xd
	.byte	0xe8
	.long	0x65a
	.long	0x726
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x21
	.long	.LASF80
	.byte	0x2
	.value	0x119
	.long	0x2a2
	.long	0x74b
	.uleb128 0xb
	.long	0x30f
	.uleb128 0xb
	.long	0x2a2
	.uleb128 0xb
	.long	0x2a2
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x20
	.long	.LASF81
	.byte	0xd
	.byte	0xee
	.long	0x65a
	.long	0x76a
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x21
	.long	.LASF82
	.byte	0xd
	.value	0x2ac
	.long	0x2d7
	.long	0x78a
	.uleb128 0xb
	.long	0x65a
	.uleb128 0xb
	.long	0x30
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x21
	.long	.LASF83
	.byte	0xd
	.value	0x2e0
	.long	0x2d7
	.long	0x7a5
	.uleb128 0xb
	.long	0x65a
	.uleb128 0xb
	.long	0x7a5
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x5eb
	.uleb128 0x21
	.long	.LASF84
	.byte	0xd
	.value	0x2b1
	.long	0x30
	.long	0x7c1
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x21
	.long	.LASF85
	.byte	0xd
	.value	0x1de
	.long	0x2d7
	.long	0x7d7
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x22
	.long	.LASF93
	.byte	0xf
	.byte	0x2c
	.long	0x2d7
	.uleb128 0x1f
	.long	.LASF87
	.byte	0xd
	.value	0x307
	.long	0x7f4
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x20
	.long	.LASF88
	.byte	0xd
	.byte	0x90
	.long	0x2d7
	.long	0x809
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x20
	.long	.LASF89
	.byte	0xd
	.byte	0x92
	.long	0x2d7
	.long	0x823
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x1f
	.long	.LASF90
	.byte	0xd
	.value	0x2b6
	.long	0x835
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x1f
	.long	.LASF91
	.byte	0xd
	.value	0x122
	.long	0x84c
	.uleb128 0xb
	.long	0x65a
	.uleb128 0xb
	.long	0x311
	.byte	0
	.uleb128 0x21
	.long	.LASF92
	.byte	0xd
	.value	0x126
	.long	0x2d7
	.long	0x871
	.uleb128 0xb
	.long	0x65a
	.uleb128 0xb
	.long	0x311
	.uleb128 0xb
	.long	0x2d7
	.uleb128 0xb
	.long	0x2a2
	.byte	0
	.uleb128 0x22
	.long	.LASF94
	.byte	0xd
	.byte	0x9f
	.long	0x65a
	.uleb128 0x20
	.long	.LASF95
	.byte	0xd
	.byte	0xad
	.long	0x311
	.long	0x891
	.uleb128 0xb
	.long	0x311
	.byte	0
	.uleb128 0x21
	.long	.LASF96
	.byte	0xd
	.value	0x27f
	.long	0x2d7
	.long	0x8ac
	.uleb128 0xb
	.long	0x2d7
	.uleb128 0xb
	.long	0x65a
	.byte	0
	.uleb128 0x2
	.byte	0x20
	.byte	0x3
	.long	.LASF97
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF98
	.uleb128 0x23
	.long	0x29
	.uleb128 0xe
	.long	0x29
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF99
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF100
	.uleb128 0x14
	.byte	0x8
	.byte	0x10
	.byte	0x3b
	.long	.LASF101
	.long	0x8f7
	.uleb128 0x12
	.long	.LASF102
	.byte	0x10
	.byte	0x3c
	.long	0x2d7
	.byte	0
	.uleb128 0x24
	.string	"rem"
	.byte	0x10
	.byte	0x3d
	.long	0x2d7
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF103
	.byte	0x10
	.byte	0x3e
	.long	0x8d2
	.uleb128 0x14
	.byte	0x10
	.byte	0x10
	.byte	0x43
	.long	.LASF104
	.long	0x927
	.uleb128 0x12
	.long	.LASF102
	.byte	0x10
	.byte	0x44
	.long	0x30
	.byte	0
	.uleb128 0x24
	.string	"rem"
	.byte	0x10
	.byte	0x45
	.long	0x30
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF105
	.byte	0x10
	.byte	0x46
	.long	0x902
	.uleb128 0x14
	.byte	0x10
	.byte	0x10
	.byte	0x4d
	.long	.LASF106
	.long	0x957
	.uleb128 0x12
	.long	.LASF102
	.byte	0x10
	.byte	0x4e
	.long	0x957
	.byte	0
	.uleb128 0x24
	.string	"rem"
	.byte	0x10
	.byte	0x4f
	.long	0x957
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF107
	.uleb128 0xc
	.long	.LASF108
	.byte	0x10
	.byte	0x50
	.long	0x932
	.uleb128 0xc
	.long	.LASF109
	.byte	0x11
	.byte	0x7
	.long	0x2f9
	.uleb128 0xc
	.long	.LASF110
	.byte	0x12
	.byte	0x7
	.long	0x304
	.uleb128 0xe
	.long	0x974
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF111
	.uleb128 0x25
	.long	.LASF112
	.byte	0x10
	.value	0x325
	.long	0x997
	.uleb128 0x10
	.byte	0x8
	.long	0x99d
	.uleb128 0x26
	.long	0x2d7
	.long	0x9b1
	.uleb128 0xb
	.long	0x9b1
	.uleb128 0xb
	.long	0x9b1
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x9b7
	.uleb128 0x27
	.uleb128 0x21
	.long	.LASF113
	.byte	0x10
	.value	0x250
	.long	0x2d7
	.long	0x9ce
	.uleb128 0xb
	.long	0x9ce
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x9d4
	.uleb128 0x28
	.uleb128 0x29
	.long	.LASF170
	.byte	0x10
	.value	0x255
	.long	.LASF170
	.long	0x2d7
	.long	0x9ef
	.uleb128 0xb
	.long	0x9ce
	.byte	0
	.uleb128 0x20
	.long	.LASF114
	.byte	0x13
	.byte	0x19
	.long	0x8c4
	.long	0xa04
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x21
	.long	.LASF115
	.byte	0x10
	.value	0x169
	.long	0x2d7
	.long	0xa1a
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x21
	.long	.LASF116
	.byte	0x10
	.value	0x16e
	.long	0x30
	.long	0xa30
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x20
	.long	.LASF117
	.byte	0x14
	.byte	0x14
	.long	0x30f
	.long	0xa59
	.uleb128 0xb
	.long	0x9b1
	.uleb128 0xb
	.long	0x9b1
	.uleb128 0xb
	.long	0x2a2
	.uleb128 0xb
	.long	0x2a2
	.uleb128 0xb
	.long	0x98b
	.byte	0
	.uleb128 0x2a
	.string	"div"
	.byte	0x10
	.value	0x351
	.long	0x8f7
	.long	0xa74
	.uleb128 0xb
	.long	0x2d7
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x21
	.long	.LASF118
	.byte	0x10
	.value	0x277
	.long	0x311
	.long	0xa8a
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x21
	.long	.LASF119
	.byte	0x10
	.value	0x353
	.long	0x927
	.long	0xaa5
	.uleb128 0xb
	.long	0x30
	.uleb128 0xb
	.long	0x30
	.byte	0
	.uleb128 0x21
	.long	.LASF120
	.byte	0x10
	.value	0x397
	.long	0x2d7
	.long	0xac0
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0x2a2
	.byte	0
	.uleb128 0x20
	.long	.LASF121
	.byte	0x15
	.byte	0x71
	.long	0x2a2
	.long	0xadf
	.uleb128 0xb
	.long	0xadf
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0x2a2
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xae5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF122
	.uleb128 0xe
	.long	0xae5
	.uleb128 0x21
	.long	.LASF123
	.byte	0x10
	.value	0x39a
	.long	0x2d7
	.long	0xb11
	.uleb128 0xb
	.long	0xadf
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0x2a2
	.byte	0
	.uleb128 0x1f
	.long	.LASF124
	.byte	0x10
	.value	0x33b
	.long	0xb32
	.uleb128 0xb
	.long	0x30f
	.uleb128 0xb
	.long	0x2a2
	.uleb128 0xb
	.long	0x2a2
	.uleb128 0xb
	.long	0x98b
	.byte	0
	.uleb128 0x2b
	.long	.LASF125
	.byte	0x10
	.value	0x26c
	.long	0xb44
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x2c
	.long	.LASF126
	.byte	0x10
	.value	0x1c5
	.long	0x2d7
	.uleb128 0x1f
	.long	.LASF127
	.byte	0x10
	.value	0x1c7
	.long	0xb62
	.uleb128 0xb
	.long	0x2c2
	.byte	0
	.uleb128 0x20
	.long	.LASF128
	.byte	0x10
	.byte	0x75
	.long	0x8c4
	.long	0xb7c
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb7c
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x311
	.uleb128 0x20
	.long	.LASF129
	.byte	0x10
	.byte	0xb0
	.long	0x30
	.long	0xba1
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb7c
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x20
	.long	.LASF130
	.byte	0x10
	.byte	0xb4
	.long	0x2ad
	.long	0xbc0
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb7c
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x21
	.long	.LASF131
	.byte	0x10
	.value	0x30d
	.long	0x2d7
	.long	0xbd6
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x20
	.long	.LASF132
	.byte	0x15
	.byte	0x90
	.long	0x2a2
	.long	0xbf5
	.uleb128 0xb
	.long	0x311
	.uleb128 0xb
	.long	0xbf5
	.uleb128 0xb
	.long	0x2a2
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xaec
	.uleb128 0x20
	.long	.LASF133
	.byte	0x15
	.byte	0x53
	.long	0x2d7
	.long	0xc15
	.uleb128 0xb
	.long	0x311
	.uleb128 0xb
	.long	0xae5
	.byte	0
	.uleb128 0x21
	.long	.LASF134
	.byte	0x10
	.value	0x357
	.long	0x95e
	.long	0xc30
	.uleb128 0xb
	.long	0x957
	.uleb128 0xb
	.long	0x957
	.byte	0
	.uleb128 0x21
	.long	.LASF135
	.byte	0x10
	.value	0x175
	.long	0x957
	.long	0xc46
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x20
	.long	.LASF136
	.byte	0x10
	.byte	0xc8
	.long	0x957
	.long	0xc65
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb7c
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x20
	.long	.LASF137
	.byte	0x10
	.byte	0xcd
	.long	0x984
	.long	0xc84
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb7c
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x20
	.long	.LASF138
	.byte	0x10
	.byte	0x7b
	.long	0x29
	.long	0xc9e
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb7c
	.byte	0
	.uleb128 0x20
	.long	.LASF139
	.byte	0x10
	.byte	0x7e
	.long	0x8cb
	.long	0xcb8
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb7c
	.byte	0
	.uleb128 0x2d
	.string	"tm"
	.byte	0x38
	.byte	0x16
	.byte	0x7
	.long	0xd48
	.uleb128 0x12
	.long	.LASF140
	.byte	0x16
	.byte	0x9
	.long	0x2d7
	.byte	0
	.uleb128 0x12
	.long	.LASF141
	.byte	0x16
	.byte	0xa
	.long	0x2d7
	.byte	0x4
	.uleb128 0x12
	.long	.LASF142
	.byte	0x16
	.byte	0xb
	.long	0x2d7
	.byte	0x8
	.uleb128 0x12
	.long	.LASF143
	.byte	0x16
	.byte	0xc
	.long	0x2d7
	.byte	0xc
	.uleb128 0x12
	.long	.LASF144
	.byte	0x16
	.byte	0xd
	.long	0x2d7
	.byte	0x10
	.uleb128 0x12
	.long	.LASF145
	.byte	0x16
	.byte	0xe
	.long	0x2d7
	.byte	0x14
	.uleb128 0x12
	.long	.LASF146
	.byte	0x16
	.byte	0xf
	.long	0x2d7
	.byte	0x18
	.uleb128 0x12
	.long	.LASF147
	.byte	0x16
	.byte	0x10
	.long	0x2d7
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF148
	.byte	0x16
	.byte	0x11
	.long	0x2d7
	.byte	0x20
	.uleb128 0x12
	.long	.LASF149
	.byte	0x16
	.byte	0x14
	.long	0x30
	.byte	0x28
	.uleb128 0x12
	.long	.LASF150
	.byte	0x16
	.byte	0x15
	.long	0x5d0
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	0xcb8
	.uleb128 0x17
	.long	0x311
	.long	0xd5d
	.uleb128 0x18
	.long	0x2ad
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.long	.LASF151
	.byte	0x17
	.byte	0x9f
	.long	0xd4d
	.uleb128 0x1d
	.long	.LASF152
	.byte	0x17
	.byte	0xa0
	.long	0x2d7
	.uleb128 0x1d
	.long	.LASF153
	.byte	0x17
	.byte	0xa1
	.long	0x30
	.uleb128 0x1d
	.long	.LASF154
	.byte	0x17
	.byte	0xa6
	.long	0xd4d
	.uleb128 0x1d
	.long	.LASF155
	.byte	0x17
	.byte	0xae
	.long	0x2d7
	.uleb128 0x1d
	.long	.LASF156
	.byte	0x17
	.byte	0xaf
	.long	0x30
	.uleb128 0x1b
	.long	.LASF157
	.byte	0x17
	.value	0x118
	.long	0x2d7
	.uleb128 0x22
	.long	.LASF158
	.byte	0x17
	.byte	0x48
	.long	0x969
	.uleb128 0x20
	.long	.LASF159
	.byte	0x17
	.byte	0x4e
	.long	0x8c4
	.long	0xdd0
	.uleb128 0xb
	.long	0x974
	.uleb128 0xb
	.long	0x974
	.byte	0
	.uleb128 0x20
	.long	.LASF160
	.byte	0x17
	.byte	0x52
	.long	0x974
	.long	0xde5
	.uleb128 0xb
	.long	0xde5
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xcb8
	.uleb128 0x20
	.long	.LASF161
	.byte	0x17
	.byte	0x4b
	.long	0x974
	.long	0xe00
	.uleb128 0xb
	.long	0xe00
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x974
	.uleb128 0x20
	.long	.LASF162
	.byte	0x17
	.byte	0x8b
	.long	0x311
	.long	0xe1b
	.uleb128 0xb
	.long	0xe1b
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xd48
	.uleb128 0x20
	.long	.LASF163
	.byte	0x17
	.byte	0x8e
	.long	0x311
	.long	0xe36
	.uleb128 0xb
	.long	0xe36
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x97f
	.uleb128 0x20
	.long	.LASF164
	.byte	0x17
	.byte	0x77
	.long	0xde5
	.long	0xe51
	.uleb128 0xb
	.long	0xe36
	.byte	0
	.uleb128 0x20
	.long	.LASF165
	.byte	0x17
	.byte	0x7b
	.long	0xde5
	.long	0xe66
	.uleb128 0xb
	.long	0xe36
	.byte	0
	.uleb128 0x2e
	.long	.LASF180
	.byte	0x1
	.byte	0x9
	.long	0x2d7
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x1000
	.uleb128 0x2f
	.long	.LASF166
	.byte	0x1
	.byte	0xb
	.long	0x2de
	.long	0x10000
	.uleb128 0x30
	.string	"N"
	.byte	0x1
	.byte	0xc
	.long	0x2de
	.long	0x10000
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.byte	0xe
	.long	0x8ba
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524324
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.byte	0x10
	.long	0x1011
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524320
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.byte	0x10
	.long	0x1011
	.uleb128 0x4
	.byte	0x91
	.sleb128 -262176
	.uleb128 0x32
	.long	.LASF167
	.byte	0x1
	.byte	0x17
	.long	0x969
	.long	.LLST1
	.uleb128 0x32
	.long	.LASF168
	.byte	0x1
	.byte	0x20
	.long	0x969
	.long	.LLST2
	.uleb128 0x32
	.long	.LASF169
	.byte	0x1
	.byte	0x22
	.long	0x29
	.long	.LLST3
	.uleb128 0x33
	.long	.Ldebug_ranges0+0
	.long	0xf1e
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.byte	0x13
	.long	0x2d7
	.long	.LLST4
	.uleb128 0x35
	.quad	.LVL5
	.long	0xb44
	.byte	0
	.uleb128 0x36
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0xf8a
	.uleb128 0x34
	.string	"j"
	.byte	0x1
	.byte	0x1a
	.long	0x2d7
	.long	.LLST5
	.uleb128 0x37
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.long	0x2d7
	.long	.LLST6
	.uleb128 0x38
	.long	0x1016
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x1c
	.uleb128 0x39
	.long	0x1033
	.long	.LLST7
	.uleb128 0x39
	.long	0x102a
	.long	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x103d
	.quad	.LBB20
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x23
	.long	0xfcb
	.uleb128 0x39
	.long	0x104d
	.long	.LLST9
	.uleb128 0x3b
	.quad	.LVL17
	.long	0x108a
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL3
	.long	0xb44
	.uleb128 0x35
	.quad	.LVL7
	.long	0xdab
	.uleb128 0x35
	.quad	.LVL15
	.long	0xdab
	.uleb128 0x35
	.quad	.LVL20
	.long	0x1095
	.byte	0
	.uleb128 0x17
	.long	0x8ba
	.long	0x1011
	.uleb128 0x3d
	.long	0x2ad
	.value	0xffff
	.byte	0
	.uleb128 0x23
	.long	0x1000
	.uleb128 0x3e
	.long	.LASF171
	.byte	0x1
	.byte	0x5
	.long	.LASF181
	.long	0x29
	.byte	0x1
	.long	0x103d
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.byte	0x5
	.long	0x8bf
	.uleb128 0x3f
	.string	"x"
	.byte	0x1
	.byte	0x5
	.long	0x29
	.byte	0
	.uleb128 0x40
	.long	.LASF172
	.byte	0x2
	.byte	0x66
	.long	0x2d7
	.byte	0x3
	.long	0x105a
	.uleb128 0x41
	.long	.LASF173
	.byte	0x2
	.byte	0x66
	.long	0x5db
	.uleb128 0x42
	.byte	0
	.uleb128 0x43
	.long	0x1016
	.long	.LASF181
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x108a
	.uleb128 0x39
	.long	0x102a
	.long	.LLST0
	.uleb128 0x44
	.long	0x1033
	.uleb128 0x1
	.byte	0x62
	.byte	0
	.uleb128 0x45
	.long	.LASF182
	.long	.LASF182
	.byte	0x2
	.byte	0x57
	.uleb128 0x46
	.long	.LASF183
	.long	.LASF183
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
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
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.quad	.LVL8
	.quad	.LVL18
	.value	0x1
	.byte	0x53
	.quad	.LVL19
	.quad	.LFE58
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL15
	.quad	.LVL16
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL15
	.quad	.LVL16
	.value	0x12
	.byte	0x70
	.sleb128 0
	.byte	0x73
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
.LLST4:
	.quad	.LVL4
	.quad	.LVL8
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL8
	.quad	.LVL13
	.value	0x7
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0x9
	.byte	0xc
	.long	0x10001
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL15-1
	.value	0x7
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL8
	.quad	.LVL9
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL9
	.quad	.LVL10
	.value	0x1
	.byte	0x50
	.quad	.LVL10
	.quad	.LVL12
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL12
	.quad	.LVL15-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL15
	.quad	.LVL17
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x61
	.quad	.LVL1
	.quad	.LFE57
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB14
	.quad	.LBE14
	.quad	.LBB15
	.quad	.LBE15
	.quad	0
	.quad	0
	.quad	.LBB20
	.quad	.LBE20
	.quad	.LBB24
	.quad	.LBE24
	.quad	.LBB25
	.quad	.LBE25
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB58
	.quad	.LFE58
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF118:
	.string	"getenv"
.LASF166:
	.string	"LOOP"
.LASF35:
	.string	"_shortbuf"
.LASF126:
	.string	"rand"
.LASF178:
	.string	"_IO_lock_t"
.LASF92:
	.string	"setvbuf"
.LASF160:
	.string	"mktime"
.LASF67:
	.string	"stderr"
.LASF131:
	.string	"system"
.LASF147:
	.string	"tm_yday"
.LASF24:
	.string	"_IO_buf_end"
.LASF75:
	.string	"fflush"
.LASF171:
	.string	"mult"
.LASF84:
	.string	"ftell"
.LASF120:
	.string	"mblen"
.LASF22:
	.string	"_IO_write_end"
.LASF7:
	.string	"unsigned int"
.LASF2:
	.string	"__gnu_cxx"
.LASF157:
	.string	"getdate_err"
.LASF16:
	.string	"_flags"
.LASF33:
	.string	"_cur_column"
.LASF122:
	.string	"wchar_t"
.LASF169:
	.string	"eTime"
.LASF28:
	.string	"_markers"
.LASF143:
	.string	"tm_mday"
.LASF70:
	.string	"_sys_nerr"
.LASF177:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF137:
	.string	"strtoull"
.LASF96:
	.string	"ungetc"
.LASF168:
	.string	"stopTime"
.LASF153:
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
.LASF144:
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
.LASF181:
	.string	"_Z4multff"
.LASF133:
	.string	"wctomb"
.LASF163:
	.string	"ctime"
.LASF69:
	.string	"sys_errlist"
.LASF26:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_offset"
.LASF161:
	.string	"time"
.LASF68:
	.string	"sys_nerr"
.LASF134:
	.string	"lldiv"
.LASF109:
	.string	"clock_t"
.LASF30:
	.string	"_fileno"
.LASF88:
	.string	"remove"
.LASF10:
	.string	"size_t"
.LASF127:
	.string	"srand"
.LASF19:
	.string	"_IO_read_base"
.LASF159:
	.string	"difftime"
.LASF117:
	.string	"bsearch"
.LASF167:
	.string	"startTime"
.LASF65:
	.string	"stdin"
.LASF58:
	.string	"_next"
.LASF98:
	.string	"__float128"
.LASF86:
	.string	"clearerr"
.LASF173:
	.string	"__fmt"
.LASF81:
	.string	"freopen"
.LASF49:
	.string	"__value"
.LASF15:
	.string	"char"
.LASF43:
	.string	"_mode"
.LASF101:
	.string	"5div_t"
.LASF152:
	.string	"__daylight"
.LASF74:
	.string	"ferror"
.LASF57:
	.string	"_IO_marker"
.LASF145:
	.string	"tm_year"
.LASF17:
	.string	"_IO_read_ptr"
.LASF107:
	.string	"long long int"
.LASF175:
	.string	"source.cpp"
.LASF125:
	.string	"quick_exit"
.LASF46:
	.string	"__wch"
.LASF102:
	.string	"quot"
.LASF110:
	.string	"time_t"
.LASF165:
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
.LASF61:
	.string	"_IO_2_1_stdin_"
.LASF91:
	.string	"setbuf"
.LASF87:
	.string	"perror"
.LASF172:
	.string	"printf"
.LASF62:
	.string	"_IO_2_1_stdout_"
.LASF25:
	.string	"_IO_save_base"
.LASF52:
	.string	"9_G_fpos_t"
.LASF182:
	.string	"__printf_chk"
.LASF162:
	.string	"asctime"
.LASF3:
	.string	"__cxx11"
.LASF82:
	.string	"fseek"
.LASF119:
	.string	"ldiv"
.LASF112:
	.string	"__compar_fn_t"
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
.LASF174:
	.string	"GNU C++14 7.5.0 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF180:
	.string	"main"
.LASF156:
	.string	"timezone"
.LASF148:
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
.LASF183:
	.string	"__stack_chk_fail"
.LASF51:
	.string	"11__mbstate_t"
.LASF113:
	.string	"atexit"
.LASF164:
	.string	"gmtime"
.LASF47:
	.string	"__wchb"
.LASF72:
	.string	"fclose"
.LASF179:
	.string	"_IO_FILE_plus"
.LASF105:
	.string	"ldiv_t"
.LASF90:
	.string	"rewind"
.LASF85:
	.string	"getc"
.LASF170:
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
.LASF154:
	.string	"tzname"
.LASF141:
	.string	"tm_min"
.LASF150:
	.string	"tm_zone"
.LASF103:
	.string	"div_t"
.LASF5:
	.string	"unsigned char"
.LASF151:
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
.LASF142:
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
.LASF155:
	.string	"daylight"
.LASF146:
	.string	"tm_wday"
.LASF11:
	.string	"__off_t"
.LASF106:
	.string	"7lldiv_t"
.LASF8:
	.string	"signed char"
.LASF6:
	.string	"short unsigned int"
.LASF140:
	.string	"tm_sec"
.LASF108:
	.string	"lldiv_t"
.LASF158:
	.string	"clock"
.LASF114:
	.string	"atof"
.LASF71:
	.string	"_sys_errlist"
.LASF115:
	.string	"atoi"
.LASF116:
	.string	"atol"
.LASF99:
	.string	"double"
.LASF149:
	.string	"tm_gmtoff"
.LASF176:
	.string	"/home/ubuntu/github/kousokuka-nyumon/chapter2/inline_expansion"
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
