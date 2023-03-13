#include <cstdio>

#include "util.hpp"

void verify(const int n, const float a, const float *x, const float *y)
{
    float *vY = new float[n];

    for (int i = 0; i < n; i++) {
        vY[i] = a * x[i];
    }

    for (int i = 0; i < n; i++) {
        if (y[i] != vY[i]) {
            printf("Error, i = %d, y = %f, vY = %f\n", i, y[i], vY[i]);
        }
    }

    delete[] vY;
}
