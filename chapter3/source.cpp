#include <cstdio>
#include <cstdlib>
#include <ctime>

// The number of loop unrolling
#ifndef UNROLL
#define UNROLL 1
#endif // UNROOL

// Matrix multiplication with loop unrolling
static inline float matmul(float **a, float **b, float **c, const int N) {
    clock_t startTime = clock();

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

    clock_t stopTime = clock();

    return static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
}

int main()
{
    const int N = 1024;

    // Initialize
    float **a = new float*[N];
    float **b = new float*[N];
    float **c = new float*[N];
    for (int i = 0; i < N; i++) {
        a[i] = new float[N];
        b[i] = new float[N];
        c[i] = new float[N];
        for (int j = 0; j < N; j++) {
            a[i][j] = static_cast<float>(rand() / 4096);
            b[i][j] = static_cast<float>(rand() / 4096);
            c[i][j] = 0.0f;
        }
    }

    float eTime = matmul(a, b, c, N);

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
