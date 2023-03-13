#include <cstdio>
#ifdef _OPENMP
#include <omp.h>
#endif // _OPENMP

int main()
{
    int a[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    int b[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

#pragma omp parallel for
    for (int i = 0; i < 10; i++) {
        b[i] = a[i];
#ifdef _OPENMP
        printf("i=%d, thread=%d\n", i, omp_get_thread_num());
#endif // _OPENMP
    }

    for (int i = 0; i < 10; i++) {
        printf("b[%d]=%d\n", i, b[i]);
    }

    return 0;
}
