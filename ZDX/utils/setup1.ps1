$autologon = "C:\Autologon64.exe"
$username = "zdx"
$domain = hostname
$password = "PASSHERE"
$file = "C:\Users\zdx\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\rebooter.bat"

# Basic Setup 

Invoke-WebRequest -Uri  https://download.sysinternals.com/files/AutoLogon.zip -UseBasicParsing -OutFile 'C:\\auto.zip'
Expand-Archive -Path 'C:\\auto.zip' -DestinationPath 'C:\\Users\\zdx\\desktop\\' -Force
Invoke-WebRequest -Uri  https://d32a6ru7mhaq0c.cloudfront.net/Zscaler-windows-4.3.0.121-installer-x64.msi -UseBasicParsing -OutFile 'C:\\zinstaller.msi'
msiexec /i C:\zinstaller.msi /quiet CLOUDNAME=zscalerthree HIDEAPPONLAUNCHUI=1 USERDOMAIN=thezerotrustexchange.com

# Creating startup file 
New-Item $file -ItemType File -Value "timeout /t 86400 /nobreak`n"
Add-Content $file "shutdown -r"

Start-Process $autologon -ArgumentList $username,$domain,$password
