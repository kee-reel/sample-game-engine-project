# CMake entry point
cmake_minimum_required (VERSION 3.16)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set( PROJECT_NAME sample-game-engine-project )
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

add_definitions(
	-DTW_STATIC
	-DTW_NO_LIB_PRAGMA
	-DTW_NO_DIRECT3D
	-DGLEW_STATIC
	-D_CRT_SECURE_NO_WARNINGS
)

add_subdirectory( sample-game-engine )

add_executable( ${PROJECT_NAME}
	src/main.cpp
	sample-game-engine/src/sge.h
)

target_link_libraries( ${PROJECT_NAME} 
	sample-game-engine
)

include_directories(
	sample-game-engine/src/
	sample-game-engine/src/
	sample-game-engine/libs/glm/
)
