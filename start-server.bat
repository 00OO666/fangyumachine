@echo off
echo ========================================
echo   网站本地服务器启动脚本
echo ========================================
echo.
echo 正在启动PHP内置服务器...
echo.
echo 服务器地址: http://localhost:8000
echo.
echo 按 Ctrl+C 停止服务器
echo ========================================
echo.

cd /d "%~dp0"

php -S localhost:8000

pause


