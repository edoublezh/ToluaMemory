@echo off
setlocal

:: 检查是否提供了参数
if "%~1"=="" (
    echo.
    echo Usage: %~n0 [ToluaCode ^| ToluaUnity]
    echo Example: %~n0 ToluaCode
    goto :eof
)

:: 检查要推送哪个子树 (不区分大小写)
if /I "%~1"=="ToluaCode" (
    echo.
    echo =================================================================
    echo Pushing local changes from 'ToluaCode' to remote 'tolua_runtime'...
    echo =================================================================
    git subtree push --prefix=ToluaCode https://github.com/edoublezh/tolua_runtime.git master
) else if /I "%~1"=="ToluaUnity" (
    echo.
    echo =================================================================
    echo Pushing local changes from 'ToluaUnity' to remote 'tolua'...
    echo =================================================================
    git subtree push --prefix=ToluaUnity https://github.com/edoublezh/tolua.git master
) else (
    echo.
    echo Error: Invalid argument. Please use 'ToluaCode' or 'ToluaUnity'.
)


echo.
echo Script finished.
pause
endlocal
