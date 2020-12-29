#include <cstdio>

int main(int argc, char **argv) {
    const int N = 1024;
    char *tmpPtr;
    char tmpBuffer[N];
    cudaMalloc(&tmpPtr, N);
    cudaMemcpy(tmpPtr, tmpBuffer, N, cudaMemcpyHostToDevice);

    while(getchar() != EOF);
}
