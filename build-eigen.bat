set proj_path=%cd%
set third_party=%proj_path%/3rdparty

pushd %cd%
cd %third_party%/
::rmdir /s /q eigen_build
mkdir eigen_build
mkdir eigen_install
cd eigen_build

cmake -G "Visual Studio 17 2022" -A x64 -DCMAKE_CXX_STANDARD=11  -DCMAKE_CXX_STANDARD_REQUIRED=ON -DBUILD_TESTING=OFF -DEIGEN_COMPILER_SUPPORT_CPP11=ON  ../eigen-3.4.0 -DCMAKE_INSTALL_PREFIX="%third_party%\eigen_install"

cmake --build . --config Release

cmake --install . --config Release
echo !!!EIGEN3 built and installed!!!

popd
