# - Find readline
#
#  LIBAO_INCLUDE_DIRS - where to find curl/curl.h, etc.
#  LIBAO_LIBRARIES    - List of libraries when using curl.
#  LIBAO_FOUND        - True if curl found.

# Look for the header file.
FIND_PATH(LIBAO_INCLUDE_DIR NAMES ao/ao.h)
MARK_AS_ADVANCED(LIBAO_INCLUDE_DIR)

# Look for the library.
FIND_LIBRARY(LIBAO_LIBRARY NAMES ao)
MARK_AS_ADVANCED(LIBAO_LIBRARY)

# Copy the results to the output variables.
IF(LIBAO_INCLUDE_DIR AND LIBAO_LIBRARY)
  SET(LIBAO_FOUND 1)
  SET(LIBAO_LIBRARIES ${LIBAO_LIBRARY})
  SET(LIBAO_INCLUDE_DIRS ${LIBAO_INCLUDE_DIR})
ELSE(LIBAO_INCLUDE_DIR AND LIBAO_LIBRARY)
  SET(LIBAO_FOUND 0)
  SET(LIBAO_LIBRARIES)
  SET(LIBAO_INCLUDE_DIRS)
ENDIF(LIBAO_INCLUDE_DIR AND LIBAO_LIBRARY)

# Report the results.
IF(NOT LIBAO_FOUND)
  SET(LIBAO_DIR_MESSAGE
    "LIBAO was not found. Make sure LIBAO_LIBRARY and LIBAO_INCLUDE_DIR are set.")
  IF(NOT LIBAO_FIND_QUIETLY)
    MESSAGE(STATUS "${LIBAO_DIR_MESSAGE}")
  ELSE(NOT LIBAO_FIND_QUIETLY)
    IF(LIBAO_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "${LIBAO_DIR_MESSAGE}")
    ENDIF(LIBAO_FIND_REQUIRED)
  ENDIF(NOT LIBAO_FIND_QUIETLY)
ENDIF(NOT LIBAO_FOUND)