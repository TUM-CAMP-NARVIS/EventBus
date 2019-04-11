# CPack Configuration
function(enable_cpack generator)
    set(CPACK_PACKAGE_VERSION ${PROJECT_VERSION})
    set(CPACK_GENERATOR ${generator})
    set(CPACK_PACKAGE_NAME ${PROJECT_NAME})
    set(CPACK_PACKAGE_RELEASE 1)
    set(CPACK_PACKAGE_CONTACT "gelldur")
    set(CPACK_PACKAGE_VENDOR "gelldur")
    set(CPACK_PACKAGING_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX})
    set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}-${CPACK_PACKAGE_RELEASE}.${CMAKE_SYSTEM_PROCESSOR}")
    set(CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST_ADDITION
            "${CMAKE_INSTALL_PREFIX}"
            "${CMAKE_INSTALL_PREFIX}/include"
            "${CMAKE_INSTALL_PREFIX}/lib64"
            "${CMAKE_INSTALL_PREFIX}/lib"
            )
    include(CPack)
endfunction()
