#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "hub_shared" for configuration "Debug"
set_property(TARGET hub_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hub_shared PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "TBB::tbb"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/x64/lib/libhubd.so.2.0.0"
  IMPORTED_SONAME_DEBUG "libhubd.so.2"
  )

list(APPEND _cmake_import_check_targets hub_shared )
list(APPEND _cmake_import_check_files_for_hub_shared "${_IMPORT_PREFIX}/x64/lib/libhubd.so.2.0.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
