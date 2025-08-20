@echo off
setlocal

echo.
echo Which subtree do you want to push?
echo.
echo   [1] ToluaCode   (pushes to tolua_runtime.git)
echo   [2] ToluaUnity  (pushes to tolua.git)
echo.

set /p "choice=Enter your choice (1 or 2) and press Enter: "

if "%choice%"=="1" (
    echo.
    echo =================================================================
    echo Pushing local changes from 'ToluaCode' to remote 'tolua_runtime'...
    echo =================================================================
    git subtree push --prefix=ToluaCode https://github.com/edoublezh/tolua_runtime.git master
) else if "%choice%"=="2" (
    echo.
    echo =================================================================
    echo Pushing local changes from 'ToluaUnity' to remote 'tolua'...
    echo =================================================================
    git subtree push --prefix=ToluaUnity https://github.com/edoublezh/tolua.git master
) else (
    echo.
    echo Invalid choice. No action taken.
)


echo.
echo Script finished.
pause
endlocal
