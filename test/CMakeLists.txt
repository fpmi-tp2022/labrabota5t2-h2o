add_executable(${PROJECT_NAME}.test
        all_tests.cpp
        test_functional.cpp)
target_link_libraries(${PROJECT_NAME}.test
        functional menu gtest pthread)
target_compile_definitions(${PROJECT_NAME}.test
        PRIVATE TEST_DIR="${CMAKE_CURRENT_LIST_DIR}/test")

install(TARGETS ${PROJECT_NAME}.test
        DESTINATION "${tool_dest}")