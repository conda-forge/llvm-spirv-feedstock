echo on

cmake --install ./build --prefix %LIBRARY_PREFIX%
if %ERRORLEVEL% neq 0 exit 1

move %LIBRARY_BIN%\llvm-spirv.exe %LIBRARY_BIN%\llvm-spirv-%MAJOR_VERSION%.exe
if %ERRORLEVEL% neq 0 exit 1

mklink /h %LIBRARY_BIN%\llvm-spirv.exe %LIBRARY_BIN%\llvm-spirv-%MAJOR_VERSION%.exe
if %ERRORLEVEL% neq 0 exit 1
