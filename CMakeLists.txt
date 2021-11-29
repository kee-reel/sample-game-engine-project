# CMake entry point
cmake_minimum_required (VERSION 3.16)

set( PROJECT_NAME SampleOGL )
project( ${PROJECT_NAME} )

find_package( OpenGL REQUIRED )


if( CMAKE_BINARY_DIR STREQUAL CMAKE_SOURCE_DIR )
    message( FATAL_ERROR "Please select another Build Directory ! (and give it a clever name, like bin_Visual2012_64bits/)" )
endif()
if( CMAKE_SOURCE_DIR MATCHES " " )
	message( "Your Source Directory contains spaces. If you experience problems when compiling, this can be the cause." )
endif()
if( CMAKE_BINARY_DIR MATCHES " " )
	message( "Your Build Directory contains spaces. If you experience problems when compiling, this can be the cause." )
endif()

add_subdirectory (external)
include_directories(
	external/glfw/include/
	external/glew/include/
	external/glm/
)

add_definitions(
	-DTW_STATIC
	-DTW_NO_LIB_PRAGMA
	-DTW_NO_DIRECT3D
	-DGLEW_STATIC
	-D_CRT_SECURE_NO_WARNINGS
)

set( HEADERS
	src/model.h
	src/shader.h
)

set( SOURCES
	src/main.cpp
	src/model.h
	src/model.cpp
	src/shader.h
	src/shader.cpp
)

add_executable( ${PROJECT_NAME} ${HEADERS} ${SOURCES} )
target_link_libraries( ${PROJECT_NAME}
	glfw
	GLEW
)

