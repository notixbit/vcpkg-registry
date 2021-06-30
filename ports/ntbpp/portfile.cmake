if(VCPKG_CMAKE_SYSTEM_NAME STREQUAL "WindowsStore")
  message(FATAL_ERROR "${PORT} does not currently support UWP")
endif()

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO notixbit/ntbpp
    REF 1.0.0
    SHA512 44c831c33c3937f60099fc0f102953d83116bc9011762be85d3ced70f360c7b135e3c8cfa5aea916a3d9f281ff2bb07fccbf5952d6b5be3b4c04714f7cda157d
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")