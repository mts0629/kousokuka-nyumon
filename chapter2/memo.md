# 単純な最適化

## コンパイラオプション

コンパイラの最適化オプションを適用し、出力する命令列の最適化を行う。

gcc/g++ の最適化オプションには次のようなものがある。

- `-O0`: 最適化を行わない
- `-O1`: 基本的な最適化を行う
- `-O2`: 最適化を行う
- `-O3`: 追加の最適化を行う
- `-Os`: バイナリサイズの最適化を行う

## 括弧でくくる

次のような複数回の乗算が現れる式について、

```cpp
y = a * x + b * x + c * x
```

式を括弧でくくり、乗算の回数を減らす。

```cpp
y = (a + b + c) * x
```

括弧なし：乗算3回、加算2回

```asm
.LVL10:
	.loc 1 29 0 discriminator 2
	movss	16(%rsp,%rax,4), %xmm0
	.loc 1 28 0 discriminator 2
	cmpl	$65536, %edx
	.loc 1 29 0 discriminator 2
	movss	4(%rsp), %xmm5
	movss	16(%rsp,%rax,4), %xmm2
	mulss	%xmm5, %xmm0
	movss	8(%rsp), %xmm4
	mulss	%xmm4, %xmm2
	movss	16(%rsp,%rax,4), %xmm1
	movss	12(%rsp), %xmm3
	mulss	%xmm3, %xmm1
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 262160(%rsp,%rax,4)
```

括弧あり：乗算1回、加算2回

```asm
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
```
