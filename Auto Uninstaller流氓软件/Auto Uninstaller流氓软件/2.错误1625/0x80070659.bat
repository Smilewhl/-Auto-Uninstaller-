@echo off
cd /d "%~dp0"
title ϵͳ���Խ�ֹ�����װ�����޸�����
echo ɾ��Installer���������...
reg delete HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer /f
echo.
echo ����Productsע���...
echo n|reg export HKCR\Installer\Products products����.reg
regedit /s vbs.reg
echo.
MsiSrcCheck.exe
echo.&pause