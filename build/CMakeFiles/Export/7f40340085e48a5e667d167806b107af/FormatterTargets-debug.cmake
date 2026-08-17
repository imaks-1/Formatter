#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Formatter::Formatter" for configuration "Debug"
set_property(TARGET Formatter::Formatter APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Formatter::Formatter PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/Formatter.lib"
  )

list(APPEND _cmake_import_check_targets Formatter::Formatter )
list(APPEND _cmake_import_check_files_for_Formatter::Formatter "${_IMPORT_PREFIX}/lib/Formatter.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
