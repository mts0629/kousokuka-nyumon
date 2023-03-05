#include <cstdio>
#include <cstdlib>
#include <ctime>

int main()
{
    const int LOOP = 65536;
    const int N = 65536;

    volatile float a = 1.0f / static_cast<float>(rand());
    volatile float b = 1.0f / static_cast<float>(rand());
    volatile float c = 1.0f / static_cast<float>(rand());

    volatile float x[N], y[N];

    // Initialize
    for (int i = 0; i < N; i++) {
        x[i] = static_cast<float>(rand());
    }

    clock_t startTime = clock();

    // Main processing
    for (int j = 0; j < LOOP; j++) {
        for (int i = 0; i < N; i++) {
            y[i] =  x[i] * a * b;
        }
    }

    clock_t stopTime = clock();

    float eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    return 0;
}
