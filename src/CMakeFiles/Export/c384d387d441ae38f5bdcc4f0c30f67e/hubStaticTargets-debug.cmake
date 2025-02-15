#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "hub_static" for configuration "Debug"
set_property(TARGET hub_static APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hub_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/x64/lib/libhubd.a"
  )

list(APPEND _cmake_import_check_targets hub_static )
list(APPEND _cmake_import_check_files_for_hub_static "${_IMPORT_PREFIX}/x64/lib/libhubd.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
