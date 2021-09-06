# - Configuration file for the pxr project
# Defines the following variables:
# PXR_MAJOR_VERSION - Major version number.
# PXR_MINOR_VERSION - Minor version number.
# PXR_PATCH_VERSION - Patch version number.
# PXR_VERSION       - Complete pxr version string.
# PXR_INCLUDE_DIRS  - Root include directory for the installed project.
# PXR_LIBRARIES     - List of all libraries, by target name.
# PXR_foo_LIBRARY   - Absolute path to individual libraries.
# The preprocessor definition PXR_STATIC will be defined if appropriate

get_filename_component(PXR_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

set(PXR_MAJOR_VERSION "0")
set(PXR_MINOR_VERSION "21")
set(PXR_PATCH_VERSION "8")
set(PXR_VERSION "2108")

include("${PXR_CMAKE_DIR}/cmake/pxrTargets.cmake")
set(libs "arch;tf;gf;js;trace;work;plug;vt;ar;kind;sdf;ndr;sdr;pcp;usd;usdGeom;usdVol;usdMedia;usdShade;usdLux;usdRender;usdHydra;usdRi;usdSkel;usdUI;usdUtils;usdPhysics;garch;hf;hio;cameraUtil;pxOsd;glf;hgi;hgiGL;hgiInterop;hd;hdSt;hdx;usdImaging;usdImagingGL;usdRiImaging;usdSkelImaging;usdVolImaging;usdAppUtils;usdviewq")
set(PXR_LIBRARIES "")
set(PXR_INCLUDE_DIRS "${PXR_CMAKE_DIR}/include")
string(REPLACE " " ";" libs "${libs}")
foreach(lib ${libs})
    get_target_property(location ${lib} LOCATION)
    set(PXR_${lib}_LIBRARY ${location})
    list(APPEND PXR_LIBRARIES ${lib})
endforeach()
if(NOT ON)
    if(WIN32)
        list(APPEND PXR_LIBRARIES Shlwapi.lib)
        list(APPEND PXR_LIBRARIES Dbghelp.lib)
    endif()
    add_definitions(-DPXR_STATIC)
endif()
