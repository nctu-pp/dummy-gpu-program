Clion CMake options:
```
-DCMAKE_CUDA_COMPILER=/usr/local/cuda/bin/nvcc
-DCMAKE_CUDA_FLAGS="-arch=sm_61"
-DCMAKE_LINKER=/usr/local/cuda/bin/nvcc
-DCMAKE_CXX_LINK_EXECUTABLE="<CMAKE_LINKER> <FLAGS> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>"
-DCMAKE_C_LINK_EXECUTABLE="<CMAKE_LINKER> <FLAGS> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>"
```