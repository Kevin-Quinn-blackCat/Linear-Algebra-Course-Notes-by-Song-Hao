@echo off
set /p folderName="请输入名称（例如 A）："

if not defined folderName (
    echo 名称不能为空。
    pause
    goto :eof
)

echo 正在创建文件夹：%folderName%
mkdir "%folderName%"

if exist "%folderName%" (
    echo 文件夹 "%folderName%" 已创建成功。
    cd "%folderName%"
    echo 正在创建文件：%folderName%.md
    echo. > "%folderName%.md"
    if exist "%folderName%.md" (
        echo 文件 "%folderName%.md" 已创建成功。
    ) else (
        echo 无法创建文件 "%folderName%.md"。
    )
    cd ..
) else (
    echo 无法创建文件夹 "%folderName%"。
)

pause