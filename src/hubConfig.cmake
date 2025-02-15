

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was Config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

####################################################################################

if (ON)
    include ( "${CMAKE_CURRENT_LIST_DIR}/hubStaticTargets.cmake" )
endif()
if (ON)
    include ( "${CMAKE_CURRENT_LIST_DIR}/hubSharedTargets.cmake" )
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if(UNIX)
    find_package(Threads REQUIRED)
endif()

if (1)
    find_package(TBB REQUIRED)
endif()

set(HUB_INCLUDE_DIR ${PACKAGE_PREFIX_DIR}/include)

set (HUB_VERSION "2.0.0")

message(STATUS "Hub found: ${PACKAGE_PREFIX_DIR} (version \"${HUB_VERSION}\")")

if(TARGET hub_shared OR TARGET hub_static)

    if(TARGET hub_shared AND TARGET hub_static)
        # add_library(hub ALIAS hub_static)
        add_library(hub ALIAS hub_shared)
    elseif(TARGET hub_shared)
        add_definitions(-DSRC_IMPORTS) # Import dll only for external use
        add_library(hub ALIAS hub_shared)
    else()
        add_library(hub ALIAS hub_static)
    endif()
else()
    message(FATAL_ERROR "static or shared library are not installed")
endif()


