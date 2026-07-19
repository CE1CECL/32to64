copy /Y %SystemDrive%\64to64v2\64\PIDGEN.DLL %SystemDrive%\64to64v2\64\AMD64\PIDGEN.DLL
copy /Y %SystemDrive%\64to64v2\64\AMD64\PIDGEN.DLL %SystemDrive%\64to64v2\64\PIDGEN.DLL
copy /Y %SystemDrive%\64to64v2\64\AMD64\PIDGEN.DLL %SystemDrive%\64to64v2\64\AMD64\PIDGEN.DLL
copy /Y %SystemDrive%\64to64v2\64\AMD64\WINNT32.EXE %SystemDrive%\64to64v2\64\AMD64\WINNT32.EXE
copy /Y %SystemDrive%\64to64v2\64\AMD64\WINNT32U.DLL %SystemDrive%\64to64v2\64\AMD64\WINNT32U.DLL
copy /Y %SystemDrive%\64to64v2\64\AMD64\WINNTUPG\NETUPGRD.DLL %SystemDrive%\64to64v2\64\AMD64\WINNTUPG\NETUPGRD.DLL
copy /Y %SystemDrive%\64to64v2\64\AMD64\SETUPLDR.BIN %SystemDrive%\$LDR$
%SystemDrive%\64to64v2\64\AMD64\winnt32.exe /noreboot
expand %SystemDrive%\64to64v2\64\AMD64\driver.cab -F:* %SystemDrive%\$WIN_NT$.~LS\AMD64\
mkdir %SystemDrive%\$WIN_NT$.~LS\AMD64\
copy /Y %SystemDrive%\64to64v2\64\AMD64\* %SystemDrive%\$WIN_NT$.~LS\AMD64\
mkdir %SystemDrive%\$WIN_NT$.~LS\I386\
copy /Y %SystemDrive%\64to64v2\64\I386\* %SystemDrive%\$WIN_NT$.~LS\I386\
copy /Y %SystemDrive%\64to64v2\64\PIDGEN.DLL %SystemDrive%\$WIN_NT$.~LS\AMD64\PIDGEN.DLL
echo @REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Network /va /f > %SystemDrive%\a.bat
echo @REGEDIT /E %%SystemDrive%%\Enum.reg HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum >> %SystemDrive%\a.bat
echo @ECHO Once The Product Key Window Appears: >> %SystemDrive%\a.bat
echo @PAUSE >> %SystemDrive%\a.bat
echo :LOOP >> %SystemDrive%\a.bat
echo @TIMEOUT /T 1 >> %SystemDrive%\a.bat
echo @REGEDIT /S %%SystemDrive%%\Enum.reg >> %SystemDrive%\a.bat
echo @GOTO LOOP >> %SystemDrive%\a.bat
del /F %windir%\system32\fntcache.dat
shutdown /r /t 0 /f