set path=%path%;C:\data\bin\opencv\build\x64\vc16\bin
set proj_path=%cd%
cd %proj_path%\camodocal_install\bin\
intrinsic_calib.exe -i=%proj_path%\data\images -p=img -e=.bmp -w=9 -h=6 -s=120 --camera-model=kannala-brandt --opencv=true --view-results=true -v=true

cd %proj_path%