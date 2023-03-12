#include <cstdio>
#include <cstdlib>
#include <ctime>
#ifdef _OPENMP
#include <omp.h>
#endif // _OPENMP

#include "util.hpp"

int main()
{
    const int LOOP = 65536, N = 65536;

    volatile float a = static_cast<float>(rand());
    float x[N], y[N];

    for (int i = 0; i < N; i++) {
        x[i] = static_cast<float>(rand());
    }

    clock_t startTime = clock();

    // Loop for benchmarking
    for (int j = 0; j < LOOP; j++) {
#pragma omp parallel for
        for (int i = 0; i < N; i++) {
            y[i] = a * x[i];
        }
    }

    clock_t stopTime = clock();

    float eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    return 0;
}
