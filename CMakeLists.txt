cmake_minimum_required(VERSION 3.17)
project(dummy_gpu_program CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(dummy_gpu_program main.cu)

set_target_properties(
        dummy_gpu_program
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
