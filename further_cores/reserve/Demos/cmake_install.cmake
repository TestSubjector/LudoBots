# Install script for directory: /home/testsubjector/application/bullet-2.82-r2704/Demos

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/HelloWorld/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/OpenGL/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/AllBulletDemos/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/ConvexDecompositionDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/CcdPhysicsDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/BulletXmlImportDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/ConstraintDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/SliderConstraintDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/GenericJointDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/Raytracer/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/RagdollDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/ForkLiftDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/BasicDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/FeatherstoneMultiBodyDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/RollingFrictionDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/RaytestDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/VoronoiFractureDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/GyroscopicDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/FractureDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/Box2dDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/BspDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/MovingConcaveDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/VehicleDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/UserCollisionAlgorithm/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/CharacterDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/SoftDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/CollisionInterfaceDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/ConcaveConvexcastDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/SimplexDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/DynamicControlDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/ConvexHullDistance/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/DoublePrecisionDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/ConcaveDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/CollisionDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/ContinuousConvexCollision/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/ConcaveRaycastDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/GjkConvexCastDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/MultiMaterialDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/SerializeDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/InternalEdgeDemo/cmake_install.cmake")
  INCLUDE("/home/testsubjector/application/bullet-2.82-r2704/Demos/Benchmarks/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

