default: dummy_gpu_program
NVCC = nvcc
CUDA_LINK_FLAGS =  -rdc=true -gencode=arch=compute_61,code=sm_61 -Xcompiler '-fPIC'
CUDA_COMPILE_FLAGS = --device-c -gencode=arch=compute_61,code=sm_61 -Xcompiler '-fPIC' -O3

OBJS = main.o

dummy_gpu_program: $(OBJS)
	$(NVCC) ${CUDA_LINK_FLAGS} -o $@ $(OBJS)

main.o : main.cu
	${NVCC} ${CUDA_COMPILE_FLAGS} -c main.cu -o $@

clean:
	rm -f *.o dummy_gpu_program
