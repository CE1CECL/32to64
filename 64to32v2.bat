copy /Y %SystemDrive%\64to32v2\32\PIDGEN.DLL %SystemDrive%\64to32v2\32\I386\PIDGEN.DLL
copy /Y %SystemDrive%\64to32v2\32\I386\PIDGEN.DLL %SystemDrive%\64to32v2\32\PIDGEN.DLL
copy /Y %SystemDrive%\64to32v2\64\AMD64\PIDGEN.DLL %SystemDrive%\64to32v2\32\I386\PIDGEN.DLL
copy /Y %SystemDrive%\64to32v2\64\AMD64\WINNT32.EXE %SystemDrive%\64to32v2\32\I386\WINNT32.EXE
copy /Y %SystemDrive%\64to32v2\64\AMD64\WINNT32U.DLL %SystemDrive%\64to32v2\32\I386\WINNT32U.DLL
copy /Y %SystemDrive%\64to32v2\64\AMD64\WINNTUPG\NETUPGRD.DLL %SystemDrive%\64to32v2\32\I386\WINNTUPG\NETUPGRD.DLL
copy /Y %SystemDrive%\64to32v2\32\I386\SETUPLDR.BIN %SystemDrive%\$LDR$
%SystemDrive%\64to32v2\32\I386\winnt32.exe /noreboot
expand %SystemDrive%\64to32v2\32\I386\driver.cab -F:* %SystemDrive%\$WIN_NT$.~LS\I386\
mkdir %SystemDrive%\$WIN_NT$.~LS\AMD64\
copy /Y %SystemDrive%\64to32v2\32\AMD64\* %SystemDrive%\$WIN_NT$.~LS\AMD64\
mkdir %SystemDrive%\$WIN_NT$.~LS\I386\
copy /Y %SystemDrive%\64to32v2\32\I386\* %SystemDrive%\$WIN_NT$.~LS\I386\
copy /Y %SystemDrive%\64to32v2\32\PIDGEN.DLL %SystemDrive%\$WIN_NT$.~LS\I386\PIDGEN.DLL
echo REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Network /va /f > %SystemDrive%\a.bat
del /F %windir%\system32\fntcache.dat
shutdown /r /t 0 /f