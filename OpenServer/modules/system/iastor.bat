@echo off
set "REG=%SystemRoot%\system32\reg.exe"
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port0" /v DIPM      /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port0" /v LPM       /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port0" /v LPMDSTATE /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port1" /v DIPM      /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port1" /v LPM       /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port1" /v LPMDSTATE /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port2" /v DIPM      /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port2" /v LPM       /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port2" /v LPMDSTATE /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port3" /v DIPM      /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port3" /v LPM       /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port3" /v LPMDSTATE /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port4" /v DIPM      /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port4" /v LPM       /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port4" /v LPMDSTATE /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port5" /v DIPM      /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port5" /v LPM       /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\iaStor\Parameters\Port5" /v LPMDSTATE /t REG_DWORD /d 0x00000000 /f >nul
EXIT