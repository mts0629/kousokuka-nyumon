#include <cstdio>
#include <cstdlib>
#include <ctime>

int main()
{
    const int LOOP = 65536;
    const int N = 65536;

    volatile int x[N], y[N];

    // Initialize
    for (int i = 0; i < N; i++) {
        x[i] = rand();
    }

    printf("Multiply by 2:\n");
    clock_t startTime = clock();

    // Main processing
    for (int j = 0; j < LOOP; j++) {
        for (int i = 0; i < N; i++) {
            y[i] =  x[i] * 4;
        }
    }

    clock_t stopTime = clock();

    float eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    printf("Left shift by 1:\n");
    startTime = clock();

    for (int j = 0; j < LOOP; j++) {
        for (int i = 0; i < N; i++) {
            y[i] =  x[i] << 2;
        }
    }

    stopTime = clock();

    eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    printf("Divide by 2:\n");
    startTime = clock();

    for (int j = 0; j < LOOP; j++) {
        for (int i = 0; i < N; i++) {
            y[i] =  x[i] / 4;
        }
    }

    stopTime = clock();

    eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    printf("Right shift by 1:\n");
    startTime = clock();

    for (int j = 0; j < LOOP; j++) {
        for (int i = 0; i < N; i++) {
            y[i] =  x[i] >> 2;
        }
    }

    stopTime = clock();

    eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    return 0;
}
