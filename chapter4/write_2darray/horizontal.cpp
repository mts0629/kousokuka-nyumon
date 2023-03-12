#include <cstdio>
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

    clock_t startTime = clock();

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            a[i][j] = 10.0f;
        }
    }

    clock_t stopTime = clock();

    float eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    return 0;
}
