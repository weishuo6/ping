@echo off
set path_=d:\test.txt
for /f "delims=" %%a in (%path_%) do (
    title 测试:%%a
    for /f "tokens=1" %%b in ('ping /n 1 %%a') do (
        if "%%b"=="来自" echo %%a  >> d:\ok.txt
    )
)
echo end...
pause
