<<<<<<< HEAD
# Install script for directory: /home/yididya/arm_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yididya/arm_ws/install")
=======
# Install script for directory: /home/riyad/Downloads/Compressed/arm_ws/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/yididya/arm_ws/install/_setup_util.py")
=======
   "/home/riyad/Downloads/Compressed/arm_ws/install/_setup_util.py")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/yididya/arm_ws/install" TYPE PROGRAM FILES "/home/yididya/arm_ws/build/catkin_generated/installspace/_setup_util.py")
=======
file(INSTALL DESTINATION "/home/riyad/Downloads/Compressed/arm_ws/install" TYPE PROGRAM FILES "/home/riyad/Downloads/Compressed/arm_ws/build/catkin_generated/installspace/_setup_util.py")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/yididya/arm_ws/install/env.sh")
=======
   "/home/riyad/Downloads/Compressed/arm_ws/install/env.sh")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/yididya/arm_ws/install" TYPE PROGRAM FILES "/home/yididya/arm_ws/build/catkin_generated/installspace/env.sh")
=======
file(INSTALL DESTINATION "/home/riyad/Downloads/Compressed/arm_ws/install" TYPE PROGRAM FILES "/home/riyad/Downloads/Compressed/arm_ws/build/catkin_generated/installspace/env.sh")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/yididya/arm_ws/install/setup.bash;/home/yididya/arm_ws/install/local_setup.bash")
=======
   "/home/riyad/Downloads/Compressed/arm_ws/install/setup.bash;/home/riyad/Downloads/Compressed/arm_ws/install/local_setup.bash")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/yididya/arm_ws/install" TYPE FILE FILES
    "/home/yididya/arm_ws/build/catkin_generated/installspace/setup.bash"
    "/home/yididya/arm_ws/build/catkin_generated/installspace/local_setup.bash"
=======
file(INSTALL DESTINATION "/home/riyad/Downloads/Compressed/arm_ws/install" TYPE FILE FILES
    "/home/riyad/Downloads/Compressed/arm_ws/build/catkin_generated/installspace/setup.bash"
    "/home/riyad/Downloads/Compressed/arm_ws/build/catkin_generated/installspace/local_setup.bash"
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/yididya/arm_ws/install/setup.sh;/home/yididya/arm_ws/install/local_setup.sh")
=======
   "/home/riyad/Downloads/Compressed/arm_ws/install/setup.sh;/home/riyad/Downloads/Compressed/arm_ws/install/local_setup.sh")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/yididya/arm_ws/install" TYPE FILE FILES
    "/home/yididya/arm_ws/build/catkin_generated/installspace/setup.sh"
    "/home/yididya/arm_ws/build/catkin_generated/installspace/local_setup.sh"
=======
file(INSTALL DESTINATION "/home/riyad/Downloads/Compressed/arm_ws/install" TYPE FILE FILES
    "/home/riyad/Downloads/Compressed/arm_ws/build/catkin_generated/installspace/setup.sh"
    "/home/riyad/Downloads/Compressed/arm_ws/build/catkin_generated/installspace/local_setup.sh"
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/yididya/arm_ws/install/setup.zsh;/home/yididya/arm_ws/install/local_setup.zsh")
=======
   "/home/riyad/Downloads/Compressed/arm_ws/install/setup.zsh;/home/riyad/Downloads/Compressed/arm_ws/install/local_setup.zsh")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/yididya/arm_ws/install" TYPE FILE FILES
    "/home/yididya/arm_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/yididya/arm_ws/build/catkin_generated/installspace/local_setup.zsh"
=======
file(INSTALL DESTINATION "/home/riyad/Downloads/Compressed/arm_ws/install" TYPE FILE FILES
    "/home/riyad/Downloads/Compressed/arm_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/riyad/Downloads/Compressed/arm_ws/build/catkin_generated/installspace/local_setup.zsh"
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/yididya/arm_ws/install/.rosinstall")
=======
   "/home/riyad/Downloads/Compressed/arm_ws/install/.rosinstall")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/yididya/arm_ws/install" TYPE FILE FILES "/home/yididya/arm_ws/build/catkin_generated/installspace/.rosinstall")
=======
file(INSTALL DESTINATION "/home/riyad/Downloads/Compressed/arm_ws/install" TYPE FILE FILES "/home/riyad/Downloads/Compressed/arm_ws/build/catkin_generated/installspace/.rosinstall")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
<<<<<<< HEAD
  include("/home/yididya/arm_ws/build/gtest/cmake_install.cmake")
  include("/home/yididya/arm_ws/build/arm_description/cmake_install.cmake")
  include("/home/yididya/arm_ws/build/arm_lib/cmake_install.cmake")
  include("/home/yididya/arm_ws/build/arm_gazebo/cmake_install.cmake")
=======
  include("/home/riyad/Downloads/Compressed/arm_ws/build/gtest/cmake_install.cmake")
  include("/home/riyad/Downloads/Compressed/arm_ws/build/arm_description/cmake_install.cmake")
  include("/home/riyad/Downloads/Compressed/arm_ws/build/arm_lib/cmake_install.cmake")
  include("/home/riyad/Downloads/Compressed/arm_ws/build/arm_gazebo/cmake_install.cmake")
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
<<<<<<< HEAD
file(WRITE "/home/yididya/arm_ws/build/${CMAKE_INSTALL_MANIFEST}"
=======
file(WRITE "/home/riyad/Downloads/Compressed/arm_ws/build/${CMAKE_INSTALL_MANIFEST}"
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
