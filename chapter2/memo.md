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

演算処理箇所 (ソース26行目、 `loc 1 26 0 is_stmt 1 discriminator 2` 以降）のアセンブリコードが短縮されている（ `movl` によるレジスタへの転送と、 `cltq` によるビット幅変換が削減されている）。

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

## 初歩的な最適化

### 括弧でくくる

式中の同類項をまとめ、乗算の回数を減らす。

```cpp
// Main processing
for (int j = 0; j < LOOP; j++) {
    for (int i = 0; i < N; i++) {
        y[i] = (a + b + c) * x[i];
    }
}
```

```asm
.L4:
.LBB9:
.LBB10:
	.loc 1 25 0
	xorl	%eax, %eax
.LVL9:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 26 0 discriminator 2
	movss	4(%rsp), %xmm0
	movslq	%eax, %rdx
	.loc 1 25 0 discriminator 2
	addl	$1, %eax
.LVL10:
	.loc 1 26 0 discriminator 2
	movss	8(%rsp), %xmm3
	.loc 1 25 0 discriminator 2
	cmpl	$65536, %eax
	.loc 1 26 0 discriminator 2
	addss	%xmm3, %xmm0
	movss	12(%rsp), %xmm2
	movss	16(%rsp,%rdx,4), %xmm1
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 262160(%rsp,%rdx,4)
	.loc 1 25 0 discriminator 2
	jne	.L3
.LVL11:
.LBE10:
	.loc 1 24 0 discriminator 2
	subl	$1, %ecx
.LVL12:
	jne	.L4
```

`mulss` による乗算回数が1回に減り、実行時間も短縮されている。

```
$ ../compiler_option/bin/source-O2 
Elapsed time =       4.4682999 sec
$ ./bin/source-O2 
Elapsed time =       3.3563571 sec
```

ただし、浮動小数点演算は演算順序により結果に誤差が生じる場合があり、精度が求められる場合注意が必要である。

- 整数演算の場合は誤差が生じないため、コンパイラにより自動的に最適化されるケースがあるようだが、再現しなかった。

### 除算を避ける

```sh
./bin/source-O0
Elapsed time =       7.4927301 sec
./bin/source_inv-O0
Elapsed time =       7.4681492 sec
```

```sh
./bin/source-O2
Elapsed time =       3.3651979 sec
./bin/source_inv-O2
Elapsed time =       2.2465329 sec
```

### 除算を減らす

除算は乗算と比較して低速であるため、逆数の乗算として計算することで性能が向上する（演算誤差が問題とならない場合）。

```cpp
volatile float a = static_cast<float>(rand());
volatile float b = static_cast<float>(rand());
volatile float c = static_cast<float>(rand());

...

for (int j = 0; j < LOOP; j++) {
    for (int i = 0; i < N; i++) {
        y[i] =  x[i] / a / b / c;
    }
}
```

```cpp
volatile float a = 1.0f / static_cast<float>(rand());
volatile float b = 1.0f / static_cast<float>(rand());
volatile float c = 1.0f / static_cast<float>(rand());

...

for (int j = 0; j < LOOP; j++) {
    for (int i = 0; i < N; i++) {
        y[i] =  x[i] * a * b * c;
    }
}
```

乗算への置き換えにより性能が向上している。

```sh
./bin/source-O0
Elapsed time =      10.1370296 sec
./bin/source_inv-O0
Elapsed time =       8.3921661 sec
# O2最適化
./bin/source-O2
Elapsed time =      10.0872240 sec
./bin/source_inv-O2
Elapsed time =       2.8016469 se
```

- 自環境では、除算を3回実行してやっと性能差が見えた。O2最適化により削減されるビット幅変換命令、ロード命令の影響が大きい？

### 整数の乗除算

2のべき乗の数値による乗除算は左 / 右シフト演算へ変更することにより高速化できる。

- 自環境では、最適化なしの状態でも最適化が行われているようで、効果は確認できなかった。

    ```sh
    ./bin/source_int-O0
    Multiply by 2:
    Elapsed time =       8.2388964 sec
    Left shift by 1:
    Elapsed time =       8.3699636 sec
    Divide by 2:
    Elapsed time =       7.5083861 sec
    Right shift by 1:
    Elapsed time =       8.4448786 sec
    ```

### 半精度浮動小数点数

精度が問題でなければ、半精度浮動小数点数 (binary16) を使用して実数計算を高速化できるかもしれない。
- 現状 C/C++ ではサポートされていない。

### インライン展開

関数の呼び出し側にコードを展開（インライン展開）し、関数呼び出しのオーバーヘッドを削減する。

C++では、 `inline` キーワードと最適化の適用によりインライン展開を実施できる（確実に適用されるとは限らない）。

```cpp
static inline float mult(const float a, float x) {
    return a * x;
}

int main()
{
    ...

    // Main processing
    for (int j = 0; j < LOOP; j++) {
        for (int i = 0; i < N; i++) {
            y[i] = mult(a, x[i]);
        }
    }
```

- `inline` 付加、最適化なし

    ```sh
    .loc 1 28 0 is_stmt 1 discriminator 2
    movl	-524336(%rbp), %eax
    cltq
    movss	-524304(%rbp,%rax,4), %xmm0
    movl	-524348(%rbp), %eax
    movaps	%xmm0, %xmm1
    movl	%eax, -524356(%rbp)
    movss	-524356(%rbp), %xmm0
    call	_ZL4multff
    movd	%xmm0, %edx
    movl	-524336(%rbp), %eax
    ```

- `inline` 付加、O2最適化

    ```sh
    .L3:
    	.loc 1 28 0 discriminator 2
    	movslq	%eax, %rdx
    	.loc 1 27 0 discriminator 2
    	addl	$1, %eax
    .LVL8:
    	.loc 1 28 0 discriminator 2
    	movss	16(%rsp,%rdx,4), %xmm0
    	.loc 1 27 0 discriminator 2
    	cmpl	$65536, %eax
    	.loc 1 28 0 discriminator 2
    	movss	12(%rsp), %xmm1
    .LVL9:
    .LBB18:
    .LBB19:
    	.loc 1 6 0 discriminator 2
    	mulss	%xmm1, %xmm0
    .LVL10:
    .LBE19:
    .LBE18:
    	.loc 1 28 0 discriminator 2
    	movss	%xmm0, 262160(%rsp,%rdx,4)
    	.loc 1 27 0 discriminator 2
    ```

関数呼び出し `call` が消え、内部の乗算 `mulss` が展開されている。

（おそらくO2最適化による他の影響も含まれるが）実行速度が向上している。

```sh
./bin/source_inline-O0
Elapsed time =      10.8331232 sec
./bin/source_inline-O2
Elapsed time =       2.2335141 sec
```

- 関数の規模によるのか、この程度の最適化であれば `inline` を付加しなくてもO2最適化で実施されるようである。

    ```sh
    ./bin/source-O0
    Elapsed time =      10.8611364 sec
    ./bin/source-O2
    Elapsed time =       2.2272439 sec
    ```

    インライン展開によりコードサイズが増大しコンパイル時間が増加するはずなので、関数の規模や最適化レベルにより変わるかもしれない。

### 一時変数を用いた最適化

冗長な演算の繰り返しが発生する際、一時変数に値を格納して再利用する。

```cpp
for (int i = 0; i < N; i++) {
    x[i] = a * cos(radian[i]);
    y[i] = b * cos(radian[i]);
}
```

```cpp
for (int i = 0; i < N; i++) {
    float cosd = cos(radian[i]);
    x[i] = a * cosd;
    y[i] = b * cosd;
}
```

- 一時変数なし、 最適化なし

    ```asm
    .loc 1 22 0 is_stmt 1 discriminator 2
    movss	-64(%rbp), %xmm0
    cvtss2sd	%xmm0, %xmm2
    movsd	%xmm2, -72(%rbp)
    movl	-52(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-40(%rbp), %rax
    addq	%rdx, %rax
    movss	(%rax), %xmm0
    cvtss2sd	%xmm0, %xmm0
    call	cos@PLT
    mulsd	-72(%rbp), %xmm0
    movl	-52(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    cvtsd2ss	%xmm0, %xmm0
    movss	%xmm0, (%rax)
    .loc 1 23 0 discriminator 2
    movss	-60(%rbp), %xmm0
    cvtss2sd	%xmm0, %xmm3
    movsd	%xmm3, -72(%rbp)
    movl	-52(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-40(%rbp), %rax
    addq	%rdx, %rax
    movss	(%rax), %xmm0
    cvtss2sd	%xmm0, %xmm0
    call	cos@PLT
    mulsd	-72(%rbp), %xmm0
    movl	-52(%rbp), %eax
    cltq
    leaq	0(,%rax,4), %rdx
    movq	-24(%rbp), %rax
    addq	%rdx, %rax
    cvtsd2ss	%xmm0, %xmm0
    movss	%xmm0, (%rax)
    ```

- 一時変数あり、 最適化なし

    ```asm
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
    ```

`cos` 呼び出しが一回のみになり実行時間が削減される。

```sh
$ ./build.sh 
./bin/source-O0
Elapsed time =       0.9035570 sec
./bin/source_tmp_var-O0
Elapsed time =       0.5402640 sec
```

- O2最適化により自動的に適用された。

    ```sh
    ./bin/source-O2
    Elapsed time =       0.4927140 sec
    ./bin/source_tmp_var-O2
    Elapsed time =       0.4698930 sec
    ```
