@echo off
call compile.cmd
mkdir release
xcopy /Y t2-output\win32-msvc-release-default\aliasIsolation.dll release
xcopy /Y t2-output\win32-msvc-release-default\aliasIsolation.pdb release
xcopy /Y t2-output\win32-msvc-release-default\aliasIsolationInjector.exe release
xcopy /Y t2-output\win32-msvc-release-default\aliasIsolationInjector.pdb release
xcopy /Y t2-output\win32-msvc-release-default\aliasIsolationInjectorGui.exe release
xcopy /Y t2-output\win32-msvc-release-default\aliasIsolationInjectorGui.pdb release
xcopy /Y t2-output\win32-msvc-release-default\cinematicTools.dll release
xcopy /Y t2-output\win32-msvc-release-default\cinematicTools.pdb release
mkdir release\data
xcopy /Y /S /E data release\data
xcopy /Y README.txt release
echo aliasIsolationInjector detach > release\detachAll.cmd
pause