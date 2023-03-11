# キャッシュメモリ

## 2次元配列の総和

2次元配列の総和を計算する。
このとき、配列の各要素に対するアクセスの方向（順序）によってキャッシュミスの発生頻度が変わり、性能に影響する可能性がある。

- 垂直方向（メモリアドレス非連続）

    アドレス空間上の離れた位置にアクセスするため、キャッシュミスが頻発しやすく、性能が劣化しやすい。

    ```cpp
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            sum += a[j][i];
        }
    }
    ```

- 水平方向（メモリアドレス連続）

    アドレス空間上の連続位置にアクセスするため、キャッシュミスの頻度が垂直方向よりも減り、性能が劣化しにくい。

    ```cpp
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            sum += a[i][j];
        }
    }
    ```

アクセス順序により性能が大きく変動する。

```sh
./bin/vertical
sum = 36028797018963968.000000

elapsed time =       0.7000420 sec

./bin/horizontal
sum = 36028797018963968.000000

elapsed time =       0.0698980 sec
```

## 2次元配列への書き込み

参照と同様に、2次元配列への書き込み動作もアクセス方向により性能が変動する。

```sh
./bin/horizontal
elapsed time =       0.0245710 sec

./bin/vertical
elapsed time =       0.8166950 sec
```

## サブブロックへ分割

対象の二次元配列を小サイズのサブブロックへ分割して処理する（ストリップマイニング）と、キャッシュラインに乗っているデータを再度参照でき、キャッシュヒットミスの回数を削減できる。

最適な分割単位は、キャッシュメモリの容量やキャッシュラインのサイズなどによって変わる。
ここでは 16x16 の単位に分割している。

```cpp
for (int jOffset = 0; jOffset < N; jOffset += 16) {
    for (int iOffset = 0; iOffset < N; iOffset += 16) {
        for (int i = iOffset; i < (iOffset + 16); i++) {
            for (int j = jOffset; j < (jOffset + 16); j++) {
                sum += a[j][i];
            }
        }
    }
}
```

最内ループが垂直方向への参照となっているが、キャッシュを参照できているために速度が上がっている。

```sh
./bin/subblock
sum = 36028797018963968.000000

elapsed time =       0.0716790 sec
```

## プリフェッチ

行列演算にループアンローリングを適用して高速化したプログラムに対して、キャッシュヒットミスを低減させるため、プリフェッチを適用してみる。
行列積 C=AB の行列 B で発生する列方向のアクセスに対して、プリフェッチを適用する。

- `<immintrin.h>` は x86 (x86_64) アーキテクチャの組み込み関数 (intrinsic) が宣言されたヘッダ。AVX, AVX2, FMA 系列のSIMD命令セットが宣言されているとのこと。
    - [/* SIMDの組み込み関数のことはじめ */](https://koturn.hatenablog.com/entry/2016/07/18/090000)
- `_mm_prefetch()` は指定したアドレスのデータをキャッシュメモリにフェッチする命令。 `_MM_HINT_2` は L0, L1 以外のキャッシュにデータを読み込む指定。
    - [Intel Intrinsics Guide](https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html#ig_expand=5627,5626,5628&text=_mm_prefetch)
    - [SIMD 演算におけるキャッシュ制御方法とか](https://kawa0810.hateblo.jp/entry/20120328/1332871369)

CPUの演算は高速であり、プリフェッチがデータ要求に間に合わない可能性があるため、直後に使うデータでなく、アンロールされた後半の4要素を対象とする。

最適な命令の発行タイミングは、命令それ自体の負荷と、やはりキャッシュラインのサイズを考慮して決定する必要がある。

```cpp
#ifdef USE_PREFETCH
#include <immintrin.h>
#endif // USE_PREFETCH

...

    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j += 8) {
            for (k = 0; k < N; k++) {
#ifdef USE_PREFETCH
                _mm_prefetch(reinterpret_cast<char*>(&b[k + 4][j]), _MM_HINT_T2);
#endif // USE_PREFETCH

                c[i][j] += a[i][k] * b[k][j];
                c[i][j + 1] += a[i][k] * b[k][j + 1];
                c[i][j + 2] += a[i][k] * b[k][j + 2];
                c[i][j + 3] += a[i][k] * b[k][j + 3];
                c[i][j + 4] += a[i][k] * b[k][j + 4];
                c[i][j + 5] += a[i][k] * b[k][j + 5];
                c[i][j + 6] += a[i][k] * b[k][j + 6];
                c[i][j + 7] += a[i][k] * b[k][j + 7];
            }
        }
    }
```

プリフェッチにより性能の向上が確認できる。

```sh
./bin/prefetch
Elapsed time =       4.3942170 sec
./bin/prefetch-DUSE_PREFETCH
Elapsed time =       3.9177041 sec
```

- ちなみに、O2 最適化を適用した場合逆に性能の劣化がみられた。プリフェッチのコストが顕在化している？

    ```sh
    ./bin/prefetch
    Elapsed time =       0.8240010 sec
    ./bin/prefetch-DUSE_PREFETCH
    Elapsed time =       0.9451270 sec
    ```
