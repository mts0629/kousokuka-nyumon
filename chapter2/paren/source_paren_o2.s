	.file	"source_paren.cpp"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Elapsed time = %15.7f sec\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB57:
	.file 1 "source_paren.cpp"
	.loc 1 8 0
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB7:
	.loc 1 19 0
	xorl	%ebx, %ebx
.LBE7:
	.loc 1 8 0
	subq	$524320, %rsp
	.cfi_def_cfa_offset 524336
	.loc 1 8 0
	movq	%fs:40, %rax
	movq	%rax, 524312(%rsp)
	xorl	%eax, %eax
.LVL0:
	.loc 1 12 0
	call	rand@PLT
.LVL1:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 4(%rsp)
	.loc 1 13 0
	call	rand@PLT
.LVL2:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 8(%rsp)
	.loc 1 14 0
	call	rand@PLT
.LVL3:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 12(%rsp)
.LVL4:
	.p2align 4,,10
	.p2align 3
.L2:
.LBB8:
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
	jne	.L2
.LBE8:
	.loc 1 23 0
	call	clock@PLT
.LVL7:
	movl	$65536, %ecx
	movq	%rax, %rbx
.LVL8:
	.p2align 4,,10
	.p2align 3
.L4:
.LBB9:
.LBB10:
	.loc 1 28 0
	xorl	%eax, %eax
.LVL9:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 29 0 discriminator 2
	movss	4(%rsp), %xmm0
	movslq	%eax, %rdx
	.loc 1 28 0 discriminator 2
	addl	$1, %eax
.LVL10:
	.loc 1 29 0 discriminator 2
	movss	8(%rsp), %xmm3
	.loc 1 28 0 discriminator 2
	cmpl	$65536, %eax
	.loc 1 29 0 discriminator 2
	addss	%xmm3, %xmm0
	movss	12(%rsp), %xmm2
	movss	16(%rsp,%rdx,4), %xmm1
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 262160(%rsp,%rdx,4)
	.loc 1 28 0 discriminator 2
	jne	.L3
.LVL11:
.LBE10:
	.loc 1 27 0 discriminator 2
	subl	$1, %ecx
.LVL12:
	jne	.L4
.LBE9:
	.loc 1 33 0
	call	clock@PLT
.LVL13:
	.loc 1 35 0
	pxor	%xmm0, %xmm0
	subq	%rbx, %rax
.LVL14:
.LBB11:
.LBB12:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
.LBE12:
.LBE11:
	.loc 1 35 0
	cvtsi2ssq	%rax, %xmm0
.LBB15:
.LBB13:
	.loc 2 104 0
	movl	$1, %eax
.LBE13:
.LBE15:
	.loc 1 35 0
	divss	.LC0(%rip), %xmm0
	.loc 1 36 0
	cvtss2sd	%xmm0, %xmm0
.LBB16:
.LBB14:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL15:
.LBE14:
.LBE16:
	.loc 1 39 0
	xorl	%eax, %eax
	movq	524312(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L11
	addq	$524320, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL16:
	ret
.LVL17:
.L11:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL18:
	.cfi_endproc
.LFE57:
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
	.long	0x104b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF172
	.byte	0x4
	.long	.LASF173
	.long	.LASF174
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
	.long	0x8f2
	.uleb128 0x6
	.byte	0x4
	.byte	0x80
	.long	0x922
	.uleb128 0x6
	.byte	0x4
	.byte	0x86
	.long	0x9b3
	.uleb128 0x6
	.byte	0x4
	.byte	0x89
	.long	0x9d0
	.uleb128 0x6
	.byte	0x4
	.byte	0x8c
	.long	0x9ea
	.uleb128 0x6
	.byte	0x4
	.byte	0x8d
	.long	0x9ff
	.uleb128 0x6
	.byte	0x4
	.byte	0x8e
	.long	0xa15
	.uleb128 0x6
	.byte	0x4
	.byte	0x8f
	.long	0xa2b
	.uleb128 0x6
	.byte	0x4
	.byte	0x91
	.long	0xa54
	.uleb128 0x6
	.byte	0x4
	.byte	0x94
	.long	0xa6f
	.uleb128 0x6
	.byte	0x4
	.byte	0x96
	.long	0xa85
	.uleb128 0x6
	.byte	0x4
	.byte	0x99
	.long	0xaa0
	.uleb128 0x6
	.byte	0x4
	.byte	0x9a
	.long	0xabb
	.uleb128 0x6
	.byte	0x4
	.byte	0x9b
	.long	0xaec
	.uleb128 0x6
	.byte	0x4
	.byte	0x9d
	.long	0xb0c
	.uleb128 0x6
	.byte	0x4
	.byte	0xa0
	.long	0xb2d
	.uleb128 0x6
	.byte	0x4
	.byte	0xa3
	.long	0xb3f
	.uleb128 0x6
	.byte	0x4
	.byte	0xa5
	.long	0xb4b
	.uleb128 0x6
	.byte	0x4
	.byte	0xa6
	.long	0xb5d
	.uleb128 0x6
	.byte	0x4
	.byte	0xa7
	.long	0xb7d
	.uleb128 0x6
	.byte	0x4
	.byte	0xa8
	.long	0xb9c
	.uleb128 0x6
	.byte	0x4
	.byte	0xa9
	.long	0xbbb
	.uleb128 0x6
	.byte	0x4
	.byte	0xab
	.long	0xbd1
	.uleb128 0x6
	.byte	0x4
	.byte	0xac
	.long	0xbf6
	.uleb128 0x6
	.byte	0x4
	.byte	0xf0
	.long	0x959
	.uleb128 0x6
	.byte	0x4
	.byte	0xf5
	.long	0x287
	.uleb128 0x6
	.byte	0x4
	.byte	0xf6
	.long	0xc10
	.uleb128 0x6
	.byte	0x4
	.byte	0xf8
	.long	0xc2b
	.uleb128 0x6
	.byte	0x4
	.byte	0xf9
	.long	0xc7f
	.uleb128 0x6
	.byte	0x4
	.byte	0xfa
	.long	0xc41
	.uleb128 0x6
	.byte	0x4
	.byte	0xfb
	.long	0xc60
	.uleb128 0x6
	.byte	0x4
	.byte	0xfc
	.long	0xc99
	.uleb128 0x6
	.byte	0x5
	.byte	0x3c
	.long	0x964
	.uleb128 0x6
	.byte	0x5
	.byte	0x3d
	.long	0x96f
	.uleb128 0x6
	.byte	0x5
	.byte	0x3e
	.long	0xcb3
	.uleb128 0x6
	.byte	0x5
	.byte	0x40
	.long	0xda6
	.uleb128 0x6
	.byte	0x5
	.byte	0x41
	.long	0xdb1
	.uleb128 0x6
	.byte	0x5
	.byte	0x42
	.long	0xdcb
	.uleb128 0x6
	.byte	0x5
	.byte	0x43
	.long	0xde6
	.uleb128 0x6
	.byte	0x5
	.byte	0x44
	.long	0xe01
	.uleb128 0x6
	.byte	0x5
	.byte	0x45
	.long	0xe1c
	.uleb128 0x6
	.byte	0x5
	.byte	0x46
	.long	0xe37
	.uleb128 0x6
	.byte	0x5
	.byte	0x47
	.long	0xe4c
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
	.long	0x959
	.uleb128 0x6
	.byte	0x4
	.byte	0xd8
	.long	0xc10
	.uleb128 0x6
	.byte	0x4
	.byte	0xe3
	.long	0xc2b
	.uleb128 0x6
	.byte	0x4
	.byte	0xe4
	.long	0xc41
	.uleb128 0x6
	.byte	0x4
	.byte	0xe5
	.long	0xc60
	.uleb128 0x6
	.byte	0x4
	.byte	0xe7
	.long	0xc7f
	.uleb128 0x6
	.byte	0x4
	.byte	0xe8
	.long	0xc99
	.uleb128 0xa
	.string	"div"
	.byte	0x4
	.byte	0xd5
	.long	.LASF175
	.long	0x959
	.uleb128 0xb
	.long	0x952
	.uleb128 0xb
	.long	0x952
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
	.long	.LASF176
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
	.long	.LASF177
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
	.long	0x8f2
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
	.long	0x8cd
	.uleb128 0x14
	.byte	0x10
	.byte	0x10
	.byte	0x43
	.long	.LASF104
	.long	0x922
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
	.long	0x8fd
	.uleb128 0x14
	.byte	0x10
	.byte	0x10
	.byte	0x4d
	.long	.LASF106
	.long	0x952
	.uleb128 0x12
	.long	.LASF102
	.byte	0x10
	.byte	0x4e
	.long	0x952
	.byte	0
	.uleb128 0x24
	.string	"rem"
	.byte	0x10
	.byte	0x4f
	.long	0x952
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
	.long	0x92d
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
	.long	0x96f
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF111
	.uleb128 0x25
	.long	.LASF112
	.byte	0x10
	.value	0x325
	.long	0x992
	.uleb128 0x10
	.byte	0x8
	.long	0x998
	.uleb128 0x26
	.long	0x2d7
	.long	0x9ac
	.uleb128 0xb
	.long	0x9ac
	.uleb128 0xb
	.long	0x9ac
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x9b2
	.uleb128 0x27
	.uleb128 0x21
	.long	.LASF113
	.byte	0x10
	.value	0x250
	.long	0x2d7
	.long	0x9c9
	.uleb128 0xb
	.long	0x9c9
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x9cf
	.uleb128 0x28
	.uleb128 0x29
	.long	.LASF170
	.byte	0x10
	.value	0x255
	.long	.LASF170
	.long	0x2d7
	.long	0x9ea
	.uleb128 0xb
	.long	0x9c9
	.byte	0
	.uleb128 0x20
	.long	.LASF114
	.byte	0x13
	.byte	0x19
	.long	0x8bf
	.long	0x9ff
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x21
	.long	.LASF115
	.byte	0x10
	.value	0x169
	.long	0x2d7
	.long	0xa15
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x21
	.long	.LASF116
	.byte	0x10
	.value	0x16e
	.long	0x30
	.long	0xa2b
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x20
	.long	.LASF117
	.byte	0x14
	.byte	0x14
	.long	0x30f
	.long	0xa54
	.uleb128 0xb
	.long	0x9ac
	.uleb128 0xb
	.long	0x9ac
	.uleb128 0xb
	.long	0x2a2
	.uleb128 0xb
	.long	0x2a2
	.uleb128 0xb
	.long	0x986
	.byte	0
	.uleb128 0x2a
	.string	"div"
	.byte	0x10
	.value	0x351
	.long	0x8f2
	.long	0xa6f
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
	.long	0xa85
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x21
	.long	.LASF119
	.byte	0x10
	.value	0x353
	.long	0x922
	.long	0xaa0
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
	.long	0xabb
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
	.long	0xada
	.uleb128 0xb
	.long	0xada
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0x2a2
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xae0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF122
	.uleb128 0xe
	.long	0xae0
	.uleb128 0x21
	.long	.LASF123
	.byte	0x10
	.value	0x39a
	.long	0x2d7
	.long	0xb0c
	.uleb128 0xb
	.long	0xada
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0x2a2
	.byte	0
	.uleb128 0x1f
	.long	.LASF124
	.byte	0x10
	.value	0x33b
	.long	0xb2d
	.uleb128 0xb
	.long	0x30f
	.uleb128 0xb
	.long	0x2a2
	.uleb128 0xb
	.long	0x2a2
	.uleb128 0xb
	.long	0x986
	.byte	0
	.uleb128 0x2b
	.long	.LASF125
	.byte	0x10
	.value	0x26c
	.long	0xb3f
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
	.long	0xb5d
	.uleb128 0xb
	.long	0x2c2
	.byte	0
	.uleb128 0x20
	.long	.LASF128
	.byte	0x10
	.byte	0x75
	.long	0x8bf
	.long	0xb77
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb77
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x311
	.uleb128 0x20
	.long	.LASF129
	.byte	0x10
	.byte	0xb0
	.long	0x30
	.long	0xb9c
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb77
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x20
	.long	.LASF130
	.byte	0x10
	.byte	0xb4
	.long	0x2ad
	.long	0xbbb
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb77
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x21
	.long	.LASF131
	.byte	0x10
	.value	0x30d
	.long	0x2d7
	.long	0xbd1
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x20
	.long	.LASF132
	.byte	0x15
	.byte	0x90
	.long	0x2a2
	.long	0xbf0
	.uleb128 0xb
	.long	0x311
	.uleb128 0xb
	.long	0xbf0
	.uleb128 0xb
	.long	0x2a2
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xae7
	.uleb128 0x20
	.long	.LASF133
	.byte	0x15
	.byte	0x53
	.long	0x2d7
	.long	0xc10
	.uleb128 0xb
	.long	0x311
	.uleb128 0xb
	.long	0xae0
	.byte	0
	.uleb128 0x21
	.long	.LASF134
	.byte	0x10
	.value	0x357
	.long	0x959
	.long	0xc2b
	.uleb128 0xb
	.long	0x952
	.uleb128 0xb
	.long	0x952
	.byte	0
	.uleb128 0x21
	.long	.LASF135
	.byte	0x10
	.value	0x175
	.long	0x952
	.long	0xc41
	.uleb128 0xb
	.long	0x5d0
	.byte	0
	.uleb128 0x20
	.long	.LASF136
	.byte	0x10
	.byte	0xc8
	.long	0x952
	.long	0xc60
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb77
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x20
	.long	.LASF137
	.byte	0x10
	.byte	0xcd
	.long	0x97f
	.long	0xc7f
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb77
	.uleb128 0xb
	.long	0x2d7
	.byte	0
	.uleb128 0x20
	.long	.LASF138
	.byte	0x10
	.byte	0x7b
	.long	0x29
	.long	0xc99
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb77
	.byte	0
	.uleb128 0x20
	.long	.LASF139
	.byte	0x10
	.byte	0x7e
	.long	0x8c6
	.long	0xcb3
	.uleb128 0xb
	.long	0x5d0
	.uleb128 0xb
	.long	0xb77
	.byte	0
	.uleb128 0x2d
	.string	"tm"
	.byte	0x38
	.byte	0x16
	.byte	0x7
	.long	0xd43
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
	.long	0xcb3
	.uleb128 0x17
	.long	0x311
	.long	0xd58
	.uleb128 0x18
	.long	0x2ad
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.long	.LASF151
	.byte	0x17
	.byte	0x9f
	.long	0xd48
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
	.long	0xd48
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
	.long	0x964
	.uleb128 0x20
	.long	.LASF159
	.byte	0x17
	.byte	0x4e
	.long	0x8bf
	.long	0xdcb
	.uleb128 0xb
	.long	0x96f
	.uleb128 0xb
	.long	0x96f
	.byte	0
	.uleb128 0x20
	.long	.LASF160
	.byte	0x17
	.byte	0x52
	.long	0x96f
	.long	0xde0
	.uleb128 0xb
	.long	0xde0
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xcb3
	.uleb128 0x20
	.long	.LASF161
	.byte	0x17
	.byte	0x4b
	.long	0x96f
	.long	0xdfb
	.uleb128 0xb
	.long	0xdfb
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x96f
	.uleb128 0x20
	.long	.LASF162
	.byte	0x17
	.byte	0x8b
	.long	0x311
	.long	0xe16
	.uleb128 0xb
	.long	0xe16
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0xd43
	.uleb128 0x20
	.long	.LASF163
	.byte	0x17
	.byte	0x8e
	.long	0x311
	.long	0xe31
	.uleb128 0xb
	.long	0xe31
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x97a
	.uleb128 0x20
	.long	.LASF164
	.byte	0x17
	.byte	0x77
	.long	0xde0
	.long	0xe4c
	.uleb128 0xb
	.long	0xe31
	.byte	0
	.uleb128 0x20
	.long	.LASF165
	.byte	0x17
	.byte	0x7b
	.long	0xde0
	.long	0xe61
	.uleb128 0xb
	.long	0xe31
	.byte	0
	.uleb128 0x2e
	.long	.LASF178
	.byte	0x1
	.byte	0x7
	.long	0x2d7
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1007
	.uleb128 0x2f
	.long	.LASF166
	.byte	0x1
	.byte	0x9
	.long	0x2de
	.long	0x10000
	.uleb128 0x30
	.string	"N"
	.byte	0x1
	.byte	0xa
	.long	0x2de
	.long	0x10000
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.byte	0xc
	.long	0x8ba
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524332
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.byte	0xd
	.long	0x8ba
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524328
	.uleb128 0x31
	.string	"c"
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
	.long	0x1018
	.uleb128 0x4
	.byte	0x91
	.sleb128 -524320
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.byte	0x10
	.long	0x1018
	.uleb128 0x4
	.byte	0x91
	.sleb128 -262176
	.uleb128 0x32
	.long	.LASF167
	.byte	0x1
	.byte	0x17
	.long	0x964
	.long	.LLST0
	.uleb128 0x32
	.long	.LASF168
	.byte	0x1
	.byte	0x21
	.long	0x964
	.long	.LLST1
	.uleb128 0x32
	.long	.LASF169
	.byte	0x1
	.byte	0x23
	.long	0x29
	.long	.LLST2
	.uleb128 0x33
	.long	.Ldebug_ranges0+0
	.long	0xf35
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.byte	0x13
	.long	0x2d7
	.long	.LLST3
	.uleb128 0x35
	.quad	.LVL5
	.long	0xb3f
	.byte	0
	.uleb128 0x36
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xf77
	.uleb128 0x34
	.string	"j"
	.byte	0x1
	.byte	0x1b
	.long	0x2d7
	.long	.LLST4
	.uleb128 0x37
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.byte	0x1c
	.long	0x2d7
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	0x101d
	.quad	.LBB11
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x24
	.long	0xfb8
	.uleb128 0x39
	.long	0x102d
	.long	.LLST6
	.uleb128 0x3a
	.quad	.LVL15
	.long	0x103a
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
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL1
	.long	0xb3f
	.uleb128 0x35
	.quad	.LVL2
	.long	0xb3f
	.uleb128 0x35
	.quad	.LVL3
	.long	0xb3f
	.uleb128 0x35
	.quad	.LVL7
	.long	0xda6
	.uleb128 0x35
	.quad	.LVL13
	.long	0xda6
	.uleb128 0x35
	.quad	.LVL18
	.long	0x1045
	.byte	0
	.uleb128 0x17
	.long	0x8ba
	.long	0x1018
	.uleb128 0x3c
	.long	0x2ad
	.value	0xffff
	.byte	0
	.uleb128 0x23
	.long	0x1007
	.uleb128 0x3d
	.long	.LASF171
	.byte	0x2
	.byte	0x66
	.long	0x2d7
	.byte	0x3
	.long	0x103a
	.uleb128 0x3e
	.long	.LASF179
	.byte	0x2
	.byte	0x66
	.long	0x5db
	.uleb128 0x3f
	.byte	0
	.uleb128 0x40
	.long	.LASF180
	.long	.LASF180
	.byte	0x2
	.byte	0x57
	.uleb128 0x41
	.long	.LASF181
	.long	.LASF181
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL8
	.quad	.LVL16
	.value	0x1
	.byte	0x53
	.quad	.LVL17
	.quad	.LFE57
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL13
	.quad	.LVL14
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
.LLST3:
	.quad	.LVL4
	.quad	.LVL8
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL8
	.quad	.LVL11
	.value	0x7
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL12
	.value	0x9
	.byte	0xc
	.long	0x10001
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL12
	.quad	.LVL13-1
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
.LLST5:
	.quad	.LVL8
	.quad	.LVL9
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL9
	.quad	.LVL13-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL13
	.quad	.LVL15
	.value	0xa
	.byte	0x3
	.quad	.LC1
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
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB7
	.quad	.LBE7
	.quad	.LBB8
	.quad	.LBE8
	.quad	0
	.quad	0
	.quad	.LBB11
	.quad	.LBE11
	.quad	.LBB15
	.quad	.LBE15
	.quad	.LBB16
	.quad	.LBE16
	.quad	0
	.quad	0
	.quad	.LFB57
	.quad	.LFE57
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF118:
	.string	"getenv"
.LASF173:
	.string	"source_paren.cpp"
.LASF166:
	.string	"LOOP"
.LASF35:
	.string	"_shortbuf"
.LASF126:
	.string	"rand"
.LASF176:
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
.LASF175:
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
.LASF133:
	.string	"wctomb"
.LASF134:
	.string	"lldiv"
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
.LASF52:
	.string	"9_G_fpos_t"
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
.LASF179:
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
.LASF171:
	.string	"printf"
.LASF62:
	.string	"_IO_2_1_stdout_"
.LASF25:
	.string	"_IO_save_base"
.LASF174:
	.string	"/home/ubuntu/github/kousokuka-nyumon/chapter2/paren"
.LASF180:
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
.LASF172:
	.string	"GNU C++14 7.5.0 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF178:
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
.LASF181:
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
.LASF177:
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
