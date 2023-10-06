@echo off
set "REG=%SystemRoot%\system32\reg.exe"
set "SH=%SystemRoot%\system32\netsh.exe"

"%SystemRoot%\system32\cacls.exe"   "%SystemRoot%\system32\drivers\etc\hosts" /C /E /P  "%USERNAME%":F    >nul
"%SystemRoot%\system32\cacls.exe"   "%SystemRoot%\system32\drivers\etc\hosts" /C /E /G  "%USERNAME%":F    >nul
"%SystemRoot%\system32\icacls.exe"  "%SystemRoot%\system32\drivers\etc\hosts" /remove:d "%USERNAME%" /C   >nul
"%SystemRoot%\system32\icacls.exe"  "%SystemRoot%\system32\drivers\etc\hosts" /grant:r  "%USERNAME%":F /C >nul
"%SystemRoot%\system32\takeown.exe" /f "%SystemRoot%\system32\drivers\etc\hosts"                          >nul
"%SystemRoot%\system32\attrib.exe"  -s -r -h "%SystemRoot%\system32\drivers\etc\hosts"                    >nul

"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v StrictTimeWaitSeqCheck    /t REG_DWORD /d 0x00000001 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v TCPMaxDataRetransmissions /t REG_DWORD /d 0x00000005 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v DefaultTTL                /t REG_DWORD /d 0x00000040 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v Tcp1323Opts               /t REG_DWORD /d 0x00000003 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v TcpNumConnections         /t REG_DWORD /d 0x00004000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v TcpTimedWaitDelay         /t REG_DWORD /d 0x0000001e /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v TcpWindowSize             /t REG_DWORD /d 0x0000faf0 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v MaxFreeTWTcbs             /t REG_DWORD /d 0x00004000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v MaxHashTableSize          /t REG_DWORD /d 0x00004000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v MaxFreeTcbs               /t REG_DWORD /d 0x00004000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters"      /v DisableTaskOffload        /t REG_DWORD /d 0x00000000 /f >nul

"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\ServiceProvider" /v LocalPriority             /t REG_DWORD /d 0x00000004 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\ServiceProvider" /v HostsPriority             /t REG_DWORD /d 0x00000005 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\ServiceProvider" /v DnsPriority               /t REG_DWORD /d 0x00000006 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\ServiceProvider" /v NetbtPriority             /t REG_DWORD /d 0x00000007 /f >nul

"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Dnscache\Parameters"   /v NegativeCacheTime         /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Dnscache\Parameters"   /v NetFailureCacheTime       /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Dnscache\Parameters"   /v NegativeSOACacheTime      /t REG_DWORD /d 0x00000000 /f >nul

"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters"        /v EnableDynamicBacklog      /t REG_DWORD /d 0x00000001 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters"        /v MinimumDynamicBacklog     /t REG_DWORD /d 0x00000014 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters"        /v MaximumDynamicBacklog     /t REG_DWORD /d 0x00004000 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters"        /v DynamicBacklogGrowthDelta /t REG_DWORD /d 0x0000000a /f >nul

"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TCPIP6\Parameters"     /v DisabledComponents        /t REG_DWORD /d 0x20       /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\QoS"             /v "Do not use NLA"          /t REG_SZ    /d "1"        /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSMQ\Parameters"                      /v TCPNoDelay                /t REG_DWORD /d 0x00000001 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched"              /v NonBestEffortLimit        /t REG_DWORD /d 0x00000000 /f >nul
"%REG%" ADD "HKEY_CURRENT_USER\Control Panel\Desktop"                                    /v AutoEndTasks              /t REG_SZ    /d 0          /f >nul
"%REG%" ADD "HKEY_CURRENT_USER\Control Panel\Desktop"                                    /v WaitToKillAppTimeout      /t REG_SZ    /d 30000      /f >nul
"%REG%" ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\BrowserEmulation"    /v IntranetCompatibilityMode /t REG_DWORD /d 0x00000000 /f >nul

"%REG%" ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters"             /v Size                   /t REG_DWORD /d 0x00000002 /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 0xffffffff /f >nul
"%REG%" ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness   /t REG_DWORD /d 0x0000000a /f >nul

"%SH%" int ipv4 set dynamicport tcp start=49152 num=16384 >nul
"%SH%" int ipv4 set dynamicport udp start=49152 num=16384 >nul

"%SH%" int tcp set global rss=enabled            >nul
"%SH%" int tcp set global netdma=enabled	     >nul
"%SH%" int tcp set global dca=enabled            >nul
"%SH%" int tcp set global timestamps=enabled     >nul
"%SH%" int tcp set global ecncapability=disabled >nul
"%SH%" int tcp set global autotuninglevel=normal >nul
"%SH%" int tcp set global initialRto=2000        >nul
"%SH%" int tcp set global rsc=disabled           >nul
"%SH%" int tcp set heuristics disabled           >nul
EXIT