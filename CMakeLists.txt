CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

ADD_SUBDIRECTORY(googletest)

SET(CMAKE_CXX_STANDARD 11)

ADD_EXECUTABLE(rshell
	src/main.cpp
	src/connector.cpp
	src/command.cpp
	src/and.cpp
	src/or.cpp
	src/semiColon.cpp
	src/exit.cpp
	src/paren.cpp
	src/test.cpp
	src/redirection.cpp
	src/left.cpp
	src/right.cpp
	src/pipe.cpp
)

ADD_EXECUTABLE(test
	unit_tests/unit_test.cpp
	src/connector.cpp
	src/command.cpp
	src/and.cpp
	src/or.cpp
	src/semiColon.cpp
	src/exit.cpp
	src/paren.cpp
	src/test.cpp
	src/redirection.cpp
        src/left.cpp
        src/right.cpp
        src/pipe.cpp
)

TARGET_LINK_LIBRARIES(test gtest)
TARGET_COMPILE_DEFINITIONS(test PRIVATE gtest_disable_pthreads=ON)
