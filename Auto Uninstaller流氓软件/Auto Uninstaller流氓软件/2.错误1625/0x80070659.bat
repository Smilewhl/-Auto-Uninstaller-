@echo off
cd /d "%~dp0"
title 系统策略禁止这个安装问题修复工具
echo 删除Installer组策略限制...
reg delete HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer /f
echo.
echo 备份Products注册表...
echo n|reg export HKCR\Installer\Products products备份.reg
regedit /s vbs.reg
echo.
MsiSrcCheck.exe
echo.&pause