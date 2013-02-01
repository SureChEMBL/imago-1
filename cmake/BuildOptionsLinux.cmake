find_package(Threads REQUIRED)

if(SUBSYSTEM_NAME STREQUAL "x86")	
	set(IMAGO_C_FLAGS "-m32")
elseif(SUBSYSTEM_NAME STREQUAL "x64")
	set(IMAGO_C_FLAGS "-fPIC -m64")
else()
	message(FATAL_ERROR "Unknown subsystem name!")
endif()

add_definitions("${IMAGO_C_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS ${CMAKE_EXE_LINKER_FLAGS_INIT} ${IMAGO_C_FLAGS})
set(CMAKE_SHARED_LINKER_FLAGS ${CMAKE_SHARED_LINKER_FLAGS_INIT} ${IMAGO_C_FLAGS})
set(LINK_FLAGS "${LINK_FLAGS} ${IMAGO_C_FLAGS}")