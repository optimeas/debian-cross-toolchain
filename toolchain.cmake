set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR armhf)

set(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)

if(DEFINED ENV{DEB_CROSS_SYSROOT})
	set(CMAKE_SYSROOT "$ENV{DEB_CROSS_SYSROOT}")
else()
	message("DEB_CROSS_SYSROOT environment variable not set. Using original sysroot install location.")
	set(CMAKE_SYSROOT <<sysroot>>)
endif()

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(QT_MOC_EXECUTABLE /usr/bin/moc)
if (NOT TARGET Qt5::moc)
	add_executable(Qt5::moc IMPORTED)
endif()

set_property(TARGET Qt5::moc PROPERTY IMPORTED_LOCATION ${QT_MOC_EXECUTABLE})
