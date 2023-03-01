#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <ctime>

int main()
{
    const int N = 16777216;
    volatile float a = 2.2f, b = 3.6f;

    float *radian = new float[N];
    float *x = new float[N];
    float *y = new float[N];

    for (int i = 0; i < N; i++) {
        radian[i] = (float)rand();
    }

    clock_t startTime = clock();

    for (int i = 0; i < N; i++) {
        x[i] = a * cos(radian[i]);
        y[i] = b * cos(radian[i]);
    }

    clock_t stopTime = clock();

    float eTime = (float)(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    delete[] x;
    delete[] y;
    delete[] radian;

    return 0;
}
