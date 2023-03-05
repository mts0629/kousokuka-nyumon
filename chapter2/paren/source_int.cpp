#include <cstdio>
#include <cstdlib>
#include <ctime>

int main()
{
    const int LOOP = 65536;
    const int N = 65536;

    volatile int a = rand();
    volatile int b = rand();
    volatile int c = rand();

    volatile float x[N], y[N];

    // Initialize
    for (int i = 0; i < N; i++) {
        x[i] = rand();
    }

    clock_t startTime = clock();

    // Main processing
    for (int j = 0; j < LOOP; j++) {
        for (int i = 0; i < N; i++) {
            y[i] = a * x[i] + b * x[i] + c * x[i];
        }
    }

    clock_t stopTime = clock();

    float eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    return 0;
}
