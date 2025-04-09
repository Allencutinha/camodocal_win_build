set proj_path=%cd%
set third_party=%proj_path%/3rdparty

cd %third_party%/
mkdir ceres_build
mkdir ceres_install
cd ceres_build

cmake.exe -G "Visual Studio 17 2022" -A x64 -DCMAKE_CXX_STANDARD=11  -DCMAKE_CXX_STANDARD_REQUIRED=ON -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF -DBUILD_BENCHMARKS=OFF -DEigen3_DIR="%third_party%/eigen_install/share/eigen3/cmake" -Dgflags_DIR="%third_party%/gflags_install/lib/cmake/gflags" -Dglog_DIR="%third_party%/glog_install/lib/cmake/glog" ../ceres-solver-2.1.0 -DCMAKE_INSTALL_PREFIX="%third_party%/ceres_install"

cmake --build . --config Release

cmake --install . --config Release

echo !!!! CERES BUILT AND INSTALLED !!!

cd %proj_path%