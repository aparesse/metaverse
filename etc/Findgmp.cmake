find_path(gmp_ROOT_DIR
    NAMES include/gmp.h
)
find_library(gmp_LIBRARIES
    NAMES gmp libgmp
    HINTS ${gmp_ROOT_DIR}/lib
)
find_path(gmp_INCLUDE_DIRS
    NAMES gmp.h
    HINTS ${gmp_ROOT_DIR}/include
)
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(gmp DEFAULT_MSG
    gmp_LIBRARIES
    gmp_INCLUDE_DIRS
)
mark_as_advanced(
    gmp_ROOT_DIR
    gmp_LIBRARIES
    gmp_INCLUDE_DIRS
)
