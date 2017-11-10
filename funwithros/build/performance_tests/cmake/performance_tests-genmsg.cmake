# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "performance_tests: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iperformance_tests:/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(performance_tests_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg" NAME_WE)
add_custom_target(_performance_tests_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "performance_tests" "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(performance_tests
  "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/performance_tests
)

### Generating Services

### Generating Module File
_generate_module_cpp(performance_tests
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/performance_tests
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(performance_tests_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(performance_tests_generate_messages performance_tests_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg" NAME_WE)
add_dependencies(performance_tests_generate_messages_cpp _performance_tests_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(performance_tests_gencpp)
add_dependencies(performance_tests_gencpp performance_tests_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS performance_tests_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(performance_tests
  "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/performance_tests
)

### Generating Services

### Generating Module File
_generate_module_eus(performance_tests
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/performance_tests
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(performance_tests_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(performance_tests_generate_messages performance_tests_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg" NAME_WE)
add_dependencies(performance_tests_generate_messages_eus _performance_tests_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(performance_tests_geneus)
add_dependencies(performance_tests_geneus performance_tests_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS performance_tests_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(performance_tests
  "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/performance_tests
)

### Generating Services

### Generating Module File
_generate_module_lisp(performance_tests
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/performance_tests
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(performance_tests_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(performance_tests_generate_messages performance_tests_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg" NAME_WE)
add_dependencies(performance_tests_generate_messages_lisp _performance_tests_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(performance_tests_genlisp)
add_dependencies(performance_tests_genlisp performance_tests_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS performance_tests_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(performance_tests
  "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/performance_tests
)

### Generating Services

### Generating Module File
_generate_module_nodejs(performance_tests
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/performance_tests
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(performance_tests_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(performance_tests_generate_messages performance_tests_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg" NAME_WE)
add_dependencies(performance_tests_generate_messages_nodejs _performance_tests_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(performance_tests_gennodejs)
add_dependencies(performance_tests_gennodejs performance_tests_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS performance_tests_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(performance_tests
  "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/performance_tests
)

### Generating Services

### Generating Module File
_generate_module_py(performance_tests
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/performance_tests
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(performance_tests_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(performance_tests_generate_messages performance_tests_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bonolo/Documents/CV/Robotics/BlueOceanRobotics/Assignment/FunWithROS/funwithros/src/performance_tests/msg/SuperAwesome.msg" NAME_WE)
add_dependencies(performance_tests_generate_messages_py _performance_tests_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(performance_tests_genpy)
add_dependencies(performance_tests_genpy performance_tests_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS performance_tests_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/performance_tests)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/performance_tests
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(performance_tests_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/performance_tests)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/performance_tests
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(performance_tests_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/performance_tests)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/performance_tests
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(performance_tests_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/performance_tests)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/performance_tests
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(performance_tests_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/performance_tests)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/performance_tests\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/performance_tests
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(performance_tests_generate_messages_py std_msgs_generate_messages_py)
endif()
