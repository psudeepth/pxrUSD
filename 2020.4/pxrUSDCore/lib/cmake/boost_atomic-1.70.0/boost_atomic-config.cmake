# Generated by Boost 1.70.0

if(TARGET Boost::atomic)
  return()
endif()

message(STATUS "Found boost_atomic ${boost_atomic_VERSION} at ${boost_atomic_DIR}")

# Compute the include and library directories relative to this file.
get_filename_component(_BOOST_CMAKEDIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)
get_filename_component(_BOOST_INCLUDEDIR "${_BOOST_CMAKEDIR}/../../include/boost-1_70/" ABSOLUTE)
get_filename_component(_BOOST_LIBDIR "${_BOOST_CMAKEDIR}/../" ABSOLUTE)

# Create imported target Boost::atomic
add_library(Boost::atomic UNKNOWN IMPORTED)

set_target_properties(Boost::atomic PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_BOOST_INCLUDEDIR}"
  INTERFACE_COMPILE_DEFINITIONS "BOOST_ALL_NO_LIB"
)

include(${CMAKE_CURRENT_LIST_DIR}/../BoostDetectToolset-1.70.0.cmake)

if(Boost_DEBUG)
  message(STATUS "Scanning ${CMAKE_CURRENT_LIST_DIR}/libboost_atomic-variant*.cmake")
endif()

file(GLOB __boost_variants "${CMAKE_CURRENT_LIST_DIR}/libboost_atomic-variant*.cmake")

macro(_BOOST_SKIPPED fname reason)
  if(Boost_DEBUG)
    message(STATUS "  ... skipped ${fname} (${reason})")
  endif()
  list(APPEND __boost_skipped "${fname} (${reason})")
endmacro()

foreach(f IN LISTS __boost_variants)
  if(Boost_DEBUG)
    message(STATUS "  Including ${f}")
  endif()
  include(${f})
endforeach()

unset(_BOOST_LIBDIR)
unset(_BOOST_INCLUDEDIR)
unset(_BOOST_CMAKEDIR)

get_target_property(__boost_configs Boost::atomic IMPORTED_CONFIGURATIONS)

if(__boost_variants AND NOT __boost_configs)
  message(STATUS "No suitable boost_atomic variant has been identified!")
  if(NOT Boost_DEBUG)
    foreach(s IN LISTS __boost_skipped)
      message(STATUS "  ${s}")
    endforeach()
  endif()
  set(boost_atomic_FOUND 0)
  set(boost_atomic_NOT_FOUND_MESSAGE "No suitable build variant has been found.")
  unset(__boost_skipped)
  unset(__boost_configs)
  unset(__boost_variants)
  unset(_BOOST_ATOMIC_DEPS)
  return()
endif()

unset(__boost_skipped)
unset(__boost_configs)
unset(__boost_variants)

if(_BOOST_ATOMIC_DEPS)
  list(REMOVE_DUPLICATES _BOOST_ATOMIC_DEPS)
  message(STATUS "Adding boost_atomic dependencies: ${_BOOST_ATOMIC_DEPS}")
endif()

foreach(dep_boost_atomic IN LISTS _BOOST_ATOMIC_DEPS)
  set(_BOOST_QUIET)
  if(boost_atomic_FIND_QUIETLY)
    set(_BOOST_QUIET QUIET)
  endif()
  set(_BOOST_REQUIRED)
  if(boost_atomic_FIND_REQUIRED)
    set(_BOOST_REQUIRED REQUIRED)
  endif()
  get_filename_component(_BOOST_CMAKEDIR "${CMAKE_CURRENT_LIST_DIR}/../" ABSOLUTE)
  find_package(boost_${dep_boost_atomic} 1.70.0 EXACT CONFIG ${_BOOST_REQUIRED} ${_BOOST_QUIET} HINTS ${_BOOST_CMAKEDIR})
  set_property(TARGET Boost::atomic APPEND PROPERTY INTERFACE_LINK_LIBRARIES Boost::${dep_boost_atomic})
  unset(_BOOST_QUIET)
  unset(_BOOST_REQUIRED)
  unset(_BOOST_CMAKEDIR)
  if(NOT boost_${dep_boost_atomic}_FOUND)
    set(boost_atomic_FOUND 0)
    set(boost_atomic_NOT_FOUND_MESSAGE "A required dependency, boost_${dep_boost_atomic}, has not been found.")
    unset(_BOOST_ATOMIC_DEPS)
    return()
  endif()
endforeach()

unset(_BOOST_ATOMIC_DEPS)
