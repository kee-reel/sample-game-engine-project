# Install script for directory: /home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so.5.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/bin/libassimp.so.5.1.0"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/bin/libassimp.so.5"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so.5.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so.5"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/bin/libassimp.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xassimp-devx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp" TYPE FILE FILES
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/anim.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/aabb.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/ai_assert.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/camera.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/color4.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/color4.inl"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/config.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/ColladaMetaData.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/commonMetaData.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/defs.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/cfileio.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/light.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/material.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/material.inl"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/matrix3x3.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/matrix3x3.inl"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/matrix4x4.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/matrix4x4.inl"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/mesh.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/pbrmaterial.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/GltfMaterial.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/postprocess.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/quaternion.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/quaternion.inl"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/scene.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/metadata.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/texture.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/types.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/vector2.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/vector2.inl"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/vector3.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/vector3.inl"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/version.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/cimport.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/importerdesc.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Importer.hpp"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/DefaultLogger.hpp"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/ProgressHandler.hpp"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/IOStream.hpp"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/IOSystem.hpp"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Logger.hpp"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/LogStream.hpp"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/NullLogger.hpp"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/cexport.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Exporter.hpp"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/DefaultIOStream.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/DefaultIOSystem.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/ZipArchiveIOSystem.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/SceneCombiner.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/fast_atof.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/qnan.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/BaseImporter.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Hash.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/MemoryIOWrapper.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/ParsingUtils.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/StreamReader.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/StreamWriter.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/StringComparison.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/StringUtils.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/SGSpatialSort.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/GenericProperty.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/SpatialSort.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/SkeletonMeshBuilder.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/SmallVector.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/SmoothingGroups.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/SmoothingGroups.inl"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/StandardShapes.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/RemoveComments.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Subdivision.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Vertex.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/LineSplitter.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/TinyFormatter.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Profiler.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/LogAux.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Bitmap.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/XMLTools.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/IOStreamBuffer.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/CreateAnimMesh.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/XmlParser.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/BlobIOSystem.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/MathFunctions.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Exceptional.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/ByteSwapper.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xassimp-devx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp/Compiler" TYPE FILE FILES
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Compiler/pushpack1.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Compiler/poppack1.h"
    "/home/keereel/proj/sample-ogl/libs/assimp-5.1.2/code/../include/assimp/Compiler/pstdint.h"
    )
endif()

