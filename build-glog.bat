set proj_path=%cd%
set third_party=%proj_path%/3rdparty

cd %third_party%/
mkdir glog_build
mkdir glog_install
cd glog_build

cmake -G "Visual Studio 17 2022" -A x64 -DCMAKE_CXX_STANDARD=11  ../glog-0.3.5 -DCMAKE_INSTALL_PREFIX="%third_party%/glog_install"

cmake --build . --config Release

cmake --install . --config Release

cd %proj_path%
echo !!!GLOG built and installed!!!