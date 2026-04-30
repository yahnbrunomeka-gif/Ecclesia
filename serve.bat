@echo off
echo ========================================
echo    Ecclesia - Local Dev Server
echo ========================================
echo.
echo Server starting at: http://localhost:3000
echo.
echo Press Ctrl+C to stop the server
echo.
python -m http.server 3000
pause
