@echo off
chcp 65001 >nul
title ĐẨY BÀI TẬP CS3 LÊN REPO fmft-cs3 (STANDALONE)
echo ==============================================================================
echo       HỆ THỐNG ĐẨY BÀI TẬP CS3 ĐỘC LẬP LÊN GITHUB (fmft-cs3)
echo       Trang đích: https://cmubeta2.github.io/fmft-cs3/
echo ==============================================================================
echo.
cd /d "%~dp0"

echo [*] Đang kiểm tra kết nối tới GitHub...
git push -u origin main 2>nul
if %ERRORLEVEL% EQU 0 (
    echo.
    echo [THÀNH CÔNG] Đã đẩy mã nguồn lên https://github.com/cmubeta2/fmft-cs3 thành công!
    goto :pages_guide
)

echo.
echo [THÔNG BÁO] Repo cmubeta2/fmft-cs3 chưa tồn tại trên GitHub hoặc chưa có quyền đẩy.
echo Đang kiểm tra đăng nhập GitHub CLI...
"C:\Program Files\GitHub CLI\gh.exe" auth status >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Cửa sổ trình duyệt sẽ mở để xác thực tài khoản GitHub (cmubeta2)...
    "C:\Program Files\GitHub CLI\gh.exe" auth login -h github.com -p https -w
)

echo.
echo [*] Đang tự động tạo repo fmft-cs3 (Public) và đẩy toàn bộ dữ liệu lên...
"C:\Program Files\GitHub CLI\gh.exe" repo create cmubeta2/fmft-cs3 --public --source=. --remote=origin --push
if %ERRORLEVEL% EQU 0 (
    echo.
    echo [THÀNH CÔNG RỰC RỠ] Đã tạo repo fmft-cs3 và đẩy mã nguồn thành công!
    goto :pages_guide
) else (
    echo.
    echo [THỬ LẠI VỚI GIT PUSH]...
    git push -u origin main
    if %ERRORLEVEL% EQU 0 goto :pages_guide
    echo.
    echo [HƯỚNG DẪN 30 GIÂY]:
    echo 1. Vào trình duyệt mở link: https://github.com/new
    echo 2. Repository name điền: fmft-cs3, chọn Public rồi bấm "Create repository"
    echo 3. Nhấp đúp lại file này là xong ngay!
    goto :end
)

:pages_guide
echo.
echo ==============================================================================
echo KÍCH HOẠT GITHUB PAGES (CHỈ CẦN LÀM 1 LẦN DUY NHẤT):
echo 1. Vào: https://github.com/cmubeta2/fmft-cs3/settings/pages
echo 2. Tại phần "Build and deployment" -^> "Source": chọn "Deploy from a branch"
echo 3. "Branch": chọn "main" / thư mục: "/ (root)" -^> bấm [Save]
echo.
echo 🌐 TRANG WEB BÀI TẬP CS3 SẼ HOẠT ĐỘNG TẠI:
echo    https://cmubeta2.github.io/fmft-cs3/
echo ==============================================================================

:end
echo.
pause
