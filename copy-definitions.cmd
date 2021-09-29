@setlocal
@echo off

mkdir %~dp0artifacts\definitions\cimgui
mkdir %~dp0artifacts\definitions\cimguizmo
mkdir %~dp0artifacts\definitions\cimnodes
mkdir %~dp0artifacts\definitions\cimplot

copy %~dp0cimgui\generator\output\*.json %~dp0artifacts\definitions\cimgui
copy %~dp0cimguizmo\generator\output\*.json %~dp0artifacts\definitions\cimguizmo
copy %~dp0cimnodes\generator\output\*.json %~dp0artifacts\definitions\cimnodes
copy %~dp0cimplot\generator\output\*.json %~dp0artifacts\definitions\cimplot

exit 0