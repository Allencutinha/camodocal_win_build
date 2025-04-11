set repo=https://github.com/Allencutinha/camodocal-win.git
set eigen=https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.zip
set glog=https://github.com/google/glog/archive/refs/tags/v0.3.5.zip
set gflags=https://github.com/gflags/gflags/archive/refs/tags/v2.2.2.zip
set ceres=https://github.com/ceres-solver/ceres-solver/archive/refs/tags/2.1.0.zip
rmdir /q %1
git clone %repo%  %1
cd %1
wget -P ./3rdparty/ %eigen% %glog% %gflags% %ceres%

cd 3rdparty
unzip eigen-3.4.0.zip 

unzip 2.1.0.zip 

unzip v0.3.5.zip 

unzip v2.2.2.zip 
echo !!! folder setup completed!!!
cd ..

::..\build-camodocal.bat



