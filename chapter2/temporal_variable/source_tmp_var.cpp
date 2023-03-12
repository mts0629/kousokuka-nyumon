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
        float cosd = cos(radian[i]);
        x[i] = a * cosd;
        y[i] = b * cosd;
    }

    clock_t stopTime = clock();

    float eTime = (float)(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    delete[] x;
    delete[] y;
    delete[] radian;

    return 0;
}
