::https://github.com/Allencutinha/camodocal-win.git
::https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.zip
::https://github.com/google/glog/archive/refs/tags/v0.3.5.zip
::https://github.com/gflags/gflags/archive/refs/tags/v2.2.2.zip
::https://github.com/ceres-solver/ceres-solver/archive/refs/tags/2.1.0.zip


::set proj_path=%cd%
::set third_party=%proj_path%/3rdparty
set opencv_path=D:\bin/opencv/build
::set cpp_flags=-G "Visual Studio 17 2022" -A x64 -DCMAKE_CXX_STANDARD=11  -DCMAKE_CXX_STANDARD_REQUIRED=ON
::
::cd %third_party%/eigen_build
::
::cmake %cpp_flags% -DBUILD_TESTING=OFF -DEIGEN_COMPILER_SUPPORT_CPP11=ON  ../eigen-3.4.0 -DCMAKE_INSTALL_PREFIX="%third_party%\eigen_install"
::
::cmake --build . --config Release
::
::cmake --install . --config Release
::
::
::cd  %third_party%/gflags_build
::
::
::cmake %cpp_flags% ../gflags-2.2.2 -DCMAKE_INSTALL_PREFIX="%third_party%/gflags_install"
::
::cmake --build . --config Release
::
::cmake --install . --config Release
::
::cd  %third_party%/glog_build
::
::cmake.exe %cpp_flags% ../glog-0.3.5 -DCMAKE_INSTALL_PREFIX="%third_party%/glog_install"
::
::cmake --build . --config Release
::
::cmake --install . --config Release
::
::
::cd %third_party%/ceres_build
::
::cmake.exe %cpp_flags% -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF -DBUILD_BENCHMARKS=OFF -DEigen3_DIR="../eigen_install/share/eigen3/cmake" -Dgflags_DIR="../gflags_install/lib/cmake/gflags" -Dglog_DIR="../glog_install/lib/cmake/glog" ../ceres-solver-2.1.0 -DCMAKE_INSTALL_PREFIX="%third_party%/ceres_install"
::
::cmake --build . --config Release
::
::cmake --install . --config Release

cd %proj_path%/
mkdir camodocal_build
cd camodocal_build

cmake.exe -G "Visual Studio 17 2022" -A x64 -DEigen3_DIR="%third_party%/eigen_install/share/eigen3/cmake" -Dgflags_DIR="%third_party%/gflags_install/lib/cmake/gflags" -Dglog_DIR="%third_party%/glog_install/lib/cmake/glog" -DCeres_DIR="%third_party%/ceres_install/lib/cmake/Ceres" -DOpenCV_DIR="%opencv_path%" ../ -DCMAKE_INSTALL_PREFIX="%proj_path%/camodocal_install"

cmake --build . --config Release

cmake --install . --config Release

cd %proj_path%/
