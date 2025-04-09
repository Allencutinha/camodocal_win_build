set proj_path=%cd%
set third_party=%proj_path%/3rdparty

cd %third_party%/
mkdir gflags_build
mkdir gflags_install
cd gflags_build

cmake -G "Visual Studio 17 2022" -A x64 -DCMAKE_CXX_STANDARD=11  -DCMAKE_CXX_STANDARD_REQUIRED=ON -DBUILD_TESTING=OFF -DEIGEN_COMPILER_SUPPORT_CPP11=ON  ../gflags-2.2.2 -DCMAKE_INSTALL_PREFIX="%third_party%/gflags_install"

cmake --build . --config Release

cmake --install . --config Release

cd %proj_path%
echo !!!GFLAGS built and installed!!!

