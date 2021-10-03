@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019 By MBAH GADGET" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
curl -o "C:\Users\Public\Desktop\App-Windows.bat" https://raw.githubusercontent.com/Motdulieu/App-Windows/main/App-Windows.bat > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\AirExplorer2.8.1.exe" https://raw.githubusercontent.com/Motdulieu/App-Windows/main/AirExplorer2.8.1.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\FshareSetup_5.3.0.174.exe" https://raw.githubusercontent.com/Motdulieu/App-Windows/main/FshareSetup_5.3.0.174.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\rclone-v1.56.2-windows-amd64.zip" https://raw.githubusercontent.com/Motdulieu/App-Windows/main/rclone-v1.56.2-windows-amd64.zip > out.txt 2>&1
net user administrator Motdulieu2021 /add >nul
net localgroup administrators administrator /add >nul
net user administrator /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
echo Success!
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
echo Username: administrator
echo Password: Motdulieu2021
echo You can login now.
ping -n 10 127.0.0.1 >nul
