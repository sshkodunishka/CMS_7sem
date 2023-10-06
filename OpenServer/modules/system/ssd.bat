@echo off
set "REG=%SystemRoot%\system32\reg.exe"
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v DisableDeleteNotification                                  /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v ClearPageFileAtShutdown             /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache                    /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0x00000000 /f >nul
EXIT