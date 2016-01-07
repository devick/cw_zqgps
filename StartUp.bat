@echo off
echo ========================================
echo E456 GPSCW_Bak（车旺GPS设备）模块
echo JDK需要1.6以上
echo 请设置好JAVA_HOME的环境变量
echo ========================================

@echo off
title GpscwServer_New(3day)

color 0A
rem color 0E 

if "%OS%" == "Windows_NT" setlocal



set CURRENT_DIR=%cd%                                   
if not "%JAVA_HOME%" == "" goto gotHome            
set JAVA_HOME=C:\java\jdk1.6.0_02
	
:gotHome
setlocal enabledelayedexpansion
set classpath=.
for %%c in (lib\*.jar) do set classpath=!classpath!;%%c
rem echo %classpath%
set classpath=%classpath%;./bin;

if exist "%JAVA_HOME%\bin\GpscwServer_Bak.exe" goto exec

if not exist "%JAVA_HOME%\bin\java.exe" goto end

copy "%JAVA_HOME%\bin\java.exe" "%JAVA_HOME%\bin\GpscwServer_Bak.exe"


:exec
"%JAVA_HOME%\bin\GpscwServer_Bak" -server -Xmx1024m -Xms256m -cp "%classpath%"  com.httpclient.system.StartServer

:end

pause
