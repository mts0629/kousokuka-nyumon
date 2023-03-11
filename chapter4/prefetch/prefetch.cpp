#include <cstdio>
#include <cstdlib>
#include <ctime>
#ifdef USE_PREFETCH
#include <immintrin.h>
#endif // USE_PREFETCH

int main()
{
    // const int N = 1024;
    const int N = 1024;
    int i, j, k;

    // Initialize
    float **a = new float*[N];
    float **b = new float*[N];
    float **c = new float*[N];
    for (i = 0; i < N; i++) {
        a[i] = new float[N];
        b[i] = new float[N];
        c[i] = new float[N];
        for (j = 0; j < N; j++) {
            a[i][j] = static_cast<float>(rand() / 4096);
            b[i][j] = static_cast<float>(rand() / 4096);
            c[i][j] = 0.0f;
        }
    }

    clock_t startTime = clock();

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

    clock_t stopTime = clock();

    float eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;

    printf("Elapsed time = %15.7f sec\n", eTime);

    for (int i = 0; i < N; i++) {
        delete[] a[i];
        delete[] b[i];
        delete[] c[i];
    }
    delete[] a;
    delete[] b;
    delete[] c;

    return 0;
}
