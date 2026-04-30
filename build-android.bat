@echo off
echo ========================================
echo    Ecclesia - Android Build Script
echo ========================================
echo.

echo [1/5] Checking Node.js installation...
node -v >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed!
    echo Download from: https://nodejs.org
    pause
    exit /b 1
)
echo ✓ Node.js found

echo.
echo [2/5] Installing dependencies...
call npm install
if errorlevel 1 (
    echo ERROR: npm install failed!
    pause
    exit /b 1
)
echo ✓ Dependencies installed

echo.
echo [3/5] Adding Android platform...
npx cap add android
if errorlevel 1 (
    echo Android platform already exists or error occurred
)

echo.
echo [4/5] Syncing files...
npx cap sync
if errorlevel 1 (
    echo ERROR: cap sync failed!
    pause
    exit /b 1
)
echo ✓ Files synced

echo.
echo [5/5] Opening Android Studio...
npx cap open android
echo.
echo ========================================
echo Build complete!
echo In Android Studio:
echo   1. Build > Generate Signed Bundle/APK
echo   2. Follow the wizard to create your APK
echo ========================================
pause
