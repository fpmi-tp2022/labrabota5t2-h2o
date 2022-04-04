set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_MODULE_PATH}/cmake")
set(header_path "${${PROJECT_NAME}_SOURCE_DIR}/include/")
set(header_functional ${header_path}/functional.h)
set(src_functional functional.c)
set(header_menu ${header_path}/menu.h)
set(src_menu menu.c)


add_library(functional SHARED
  ${header_functional}
  ${src_functional})
target_include_directories(functional
  PUBLIC ${CMAKE_CURRENT_BINARY_DIR}
         ${${PROJECT_NAME}_SOURCE_DIR}/include)
target_link_libraries(functional
  pthread)
find_package(SQLite3)
if(SQLite3_FOUND)
	include_directories(${SQLite3_INCLUDE_DIRS})
	target_link_libraries(functional ${SQLite3_LIBRARIES})
endif()

add_library(menu SHARED
		${header_menu}
		${src_menu})
target_include_directories(menu
		PUBLIC ${CMAKE_CURRENT_BINARY_DIR}
		${${PROJECT_NAME}_SOURCE_DIR}/include)
target_link_libraries(menu functional
		pthread)

add_executable(${PROJECT_NAME}.main main.c)
target_include_directories(${PROJECT_NAME}.main
  PUBLIC ${CMAKE_CURRENT_BINARY_DIR}
         ${${PROJECT_NAME}_SOURCE_DIR}/include)
target_link_libraries(${PROJECT_NAME}.main
  functional menu)



install(TARGETS menu
		LIBRARY DESTINATION "${lib_dest}"
		ARCHIVE DESTINATION "${lib_dest}"
		COMPONENT library)
install(TARGETS functional
		LIBRARY DESTINATION "${lib_dest}"
    ARCHIVE DESTINATION "${lib_dest}"
    COMPONENT library)
install(TARGETS ${PROJECT_NAME}.main
		RUNTIME DESTINATION "${tool_dest}"
    COMPONENT library)
install(FILES ${header} DESTINATION "${include_dest}")
