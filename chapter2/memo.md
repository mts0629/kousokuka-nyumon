# 単純な最適化

## コンパイラオプション

コンパイラの最適化オプションを適用し、出力する命令列の最適化を行う。

GCC (GNU Compiler Collection) の最適化オプションには次のようなものがある。

- `-O0`: 最適化を行わない。
- `-O1`: コンパイル時間の増大しない、基本的な最適化を行う。
- `-O2`: 追加の最適化を行う。コンパイル時間とパフォーマンスが増大する。
- `-O3`: さらに最適化を行う。
- `-Os`: バイナリサイズの最適化を行う。コードサイズの増加しないO2最適化が適用される。
- `-Ofast`: O3最適化に加えて、言語規格への準拠を無視した、さらなる最適化を行う。

[3.10 Options That Control Optimization/Using the GNU Compiler Collection (GCC) (GCC 7.5.0)](https://gcc.gnu.org/onlinedocs/gcc-7.5.0/gcc/Optimize-Options.html#Optimize-Options)

下記の計算処理に対して、最適化オプションを変更した状態でのアセンブリ出力を確認してみる。

```cpp
// Main processing
for (int j = 0; j < LOOP; j++) {
    for (int i = 0; i < N; i++) {
        y[i] = a * x[i] + b * x[i] + c * x[i];
    }
}
```

- `-O0`
    
    ```asm
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
    ```

- `-O2`

    ```asm
    .L4:
    .LBB9:
    .LBB10:
    	.loc 1 25 0
    	xorl	%edx, %edx
    .LVL9:
    	.p2align 4,,10
    	.p2align 3
    .L3:
    	.loc 1 26 0 discriminator 2
    	movslq	%edx, %rax
    	.loc 1 25 0 discriminator 2
    	addl	$1, %edx
    .LVL10:
    	.loc 1 26 0 discriminator 2
    	movss	16(%rsp,%rax,4), %xmm0
    	.loc 1 25 0 discriminator 2
    	cmpl	$65536, %edx
    	.loc 1 26 0 discriminator 2
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
    	.loc 1 25 0 discriminator 2
    	jne	.L3
    .LVL11:
    .LBE10:
    	.loc 1 24 0 discriminator 2
    	subl	$1, %ecx
    .LVL12:
    	jne	.L4
    ```

演算処理箇所 (ソース26行目、 `loc 1 26 0 is_stmt 1 discriminator 2` ）のアセンブリコードが短縮されている。

実行時間は、O1適用により半減し下げ止まっている。

（O2以上でむしろ実行時間の悪化が見られる。コード規模が小さく、投棄実行のペナルティなどが影響している？）

```sh
./bin/source-O0
Elapsed time =       9.2107420 sec
./bin/source-O1
Elapsed time =       4.1276460 sec
./bin/source-O2
Elapsed time =       4.4569058 sec
./bin/source-O3
Elapsed time =       4.4259219 sec
./bin/source-Ofast
Elapsed time =       4.3948269 sec
./bin/source-Os
Elapsed time =       4.4080281 sec
```

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

## 一時変数の使用

冗長な演算の繰り返しが発生する際、一時変数に値を格納して再利用する。

```c
float x = a * cos(rad);
float y = b * cos(rad);
```

```c
float cos_r = cos(rad);
float x = a * cos_r
float y = b * cos_r
```

