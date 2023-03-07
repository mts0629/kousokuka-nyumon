# ループの高速化

## ループアンロール

ループ処理中の命令を展開することで、ループ処理に伴うポインタやインデックスのインクリメントおよび終了条件判定の回数を減らし、オーバーヘッドを削減する。

下のプログラムは、マクロ `UNROLL` の値によって展開回数を変更する（1、2、4、8）。

```cpp
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j += UNROLL) {
            for (int k = 0; k < N; k++) {
                c[i][j] += a[i][k] * b[k][j];
#if (UNROLL == 2)
                c[i][j + 1] += a[i][k] * b[k][j + 1];
            }
#elif (UNROLL == 4)
                c[i][j + 2] += a[i][k] * b[k][j + 2];
                c[i][j + 3] += a[i][k] * b[k][j + 3];
            }
#elif (UNROLL == 8)
                c[i][j + 4] += a[i][k] * b[k][j + 4];
                c[i][j + 5] += a[i][k] * b[k][j + 5];
                c[i][j + 6] += a[i][k] * b[k][j + 6];
                c[i][j + 7] += a[i][k] * b[k][j + 7];
            }
#else
            }
#endif // (UNROLL != 1)
        }
    }
```

O2最適化適用時の実行時間を確認すると、アンロール数に伴って性能が向上している。

```sh
./bin/source
Elapsed time =       1.2021410 sec
./bin/source-DUNROLL=2
Elapsed time =       0.8704390 sec
./bin/source-DUNROLL=4
Elapsed time =       0.6476470 sec
./bin/source-DUNROLL=8
Elapsed time =       0.5390590 sec
```
