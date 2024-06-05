echo on

cmake %CMAKE_ARGS% ^
    -G "Ninja" ^
    -DLLVM_DIR=%LIBRARY_PREFIX%\cmake\llvm ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DLLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=%LIBRARY_PREFIX% ^
    -S . -B ./build
if %ERRORLEVEL% neq 0 exit 1

cmake --build ./build
if %ERRORLEVEL% neq 0 exit 1
