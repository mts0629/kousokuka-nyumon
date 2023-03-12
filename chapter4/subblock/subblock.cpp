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

    for (int jOffset = 0; jOffset < N; jOffset += 16) {
        for (int iOffset = 0; iOffset < N; iOffset += 16) {
            for (int i = iOffset; i < (iOffset + 16); i++) {
                for (int j = jOffset; j < (jOffset + 16); j++) {
                    sum += a[j][i];
                }
            }
        }
    }

    clock_t stopTime = clock();

    printf("Sum = %f\n\n", sum);

    float eTime = static_cast<float>(stopTime - startTime) / CLOCKS_PER_SEC;
    printf("Elapsed time = %15.7f sec\n", eTime);

    return 0;
}
