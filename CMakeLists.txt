cmake_minimum_required (VERSION 3.10.2)
project (labrabota5t2-h2o)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --coverage -O3 -g")
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage -O3 -g")

set(tool_dest "bin")
set(lib_dest "lib")
set(include_dest "include")

add_subdirectory(src)
add_subdirectory(test)
