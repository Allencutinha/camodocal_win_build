setup the repo structure
-----
in a batch file 
´´´bash
setup-folders.bat project_folder_name
´´´

- cd into the project folder  and run the scripts in the following order
´´´ bash
project_folder$..\build-eigen.bat
project_folder$..\build-gflags.bat
project_folder$..\build-glog.bat
project_folder$..\build-ceres.bat
project_folder$..\build-camodocal.bat
project_folder$..\run-instrics-calib-example.bat
´´´
