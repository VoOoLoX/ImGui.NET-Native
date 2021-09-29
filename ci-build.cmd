@setlocal
@echo off

call %~dp0build-native.cmd Release x64
mkdir %~dp0artifacts\win-x64
copy %~dp0build\x64\Release\cimgui.dll %~dp0artifacts\win-x64\cimgui.dll
copy %~dp0build\x64\Release\cimplot.dll %~dp0artifacts\win-x64\cimplot.dll
copy %~dp0build\x64\Release\cimnodes.dll %~dp0artifacts\win-x64\cimnodes.dll
copy %~dp0build\x64\Release\cimguizmo.dll %~dp0artifacts\win-x64\cimguizmo.dll

call %~dp0build-native.cmd Release x86
mkdir %~dp0artifacts\win-x86
copy %~dp0build\x86\Release\cimgui.dll %~dp0artifacts\win-x86\cimgui.dll
copy %~dp0build\x86\Release\cimplot.dll %~dp0artifacts\win-x86\cimplot.dll
copy %~dp0build\x86\Release\cimnodes.dll %~dp0artifacts\win-x86\cimnodes.dll
copy %~dp0build\x86\Release\cimguizmo.dll %~dp0artifacts\win-x86\cimguizmo.dll