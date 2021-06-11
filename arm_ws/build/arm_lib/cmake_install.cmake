<<<<<<< HEAD
# Install script for directory: /home/yididya/arm_ws/src/arm_lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yididya/arm_ws/install")
=======
# Install script for directory: /home/riyad/Downloads/Compressed/arm_ws/src/arm_lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/riyad/Downloads/Compressed/arm_ws/install")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
<<<<<<< HEAD
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yididya/arm_ws/build/arm_lib/catkin_generated/installspace/arm_lib.pc")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arm_lib/msg" TYPE FILE FILES "/home/riyad/Downloads/Compressed/arm_ws/src/arm_lib/msg/angle.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/riyad/Downloads/Compressed/arm_ws/build/arm_lib/catkin_generated/installspace/arm_lib.pc")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arm_lib/cmake" TYPE FILE FILES
<<<<<<< HEAD
    "/home/yididya/arm_ws/build/arm_lib/catkin_generated/installspace/arm_libConfig.cmake"
    "/home/yididya/arm_ws/build/arm_lib/catkin_generated/installspace/arm_libConfig-version.cmake"
=======
    "/home/riyad/Downloads/Compressed/arm_ws/build/arm_lib/catkin_generated/installspace/arm_libConfig.cmake"
    "/home/riyad/Downloads/Compressed/arm_ws/build/arm_lib/catkin_generated/installspace/arm_libConfig-version.cmake"
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
<<<<<<< HEAD
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arm_lib" TYPE FILE FILES "/home/yididya/arm_ws/src/arm_lib/package.xml")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arm_lib" TYPE FILE FILES "/home/riyad/Downloads/Compressed/arm_ws/src/arm_lib/package.xml")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
endif()

