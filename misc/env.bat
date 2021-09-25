@echo off

REM pushd .
call "c:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
REM popd

set path=C:\Program Files (x86)\GnuWin32\bin\;C:\Program Files\Sublime Text 3\;%path%

set _NO_DEBUG_HEAP=1

cd ..
subl *.sublime-project
cmd.exe