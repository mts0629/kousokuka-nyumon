#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <vector>

int main()
{
    const int N = 8192;

    std::vector<std::vector<float>> a;
    a.resize(N);
    for (int i = 0; i < N; i++) {
        a[i].resize(N);
    }

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            a[j][i] = static_cast<float>(rand());
        }
    }

    float sum = 0.0f;

    clock_t startTime = clock();

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            sum += a[i][j];
        }
    }

    clock_t stopTime = clock();

    printf("sum = %f\n\n", sum);

    float eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("elapsed time = %15.7f sec\n", eTime);

    return 0;
}
