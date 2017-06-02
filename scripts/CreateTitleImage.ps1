
    $Title = "Meeting Schedule"
    $lines = @()
    Add-Type -AssemblyName System.Drawing
    

    $bmp = new-object System.Drawing.Bitmap 1200, 250
    $font = new-object System.Drawing.Font 'Lucida Console ', 14
    $brushBg = [System.Drawing.SolidBrush]::new([System.Drawing.Color]::FromArgb(1, 36, 86))
    $brushFg = [System.Drawing.Brushes]::White 
    $graphics = [System.Drawing.Graphics]::FromImage($bmp) 
    $graphics.FillRectangle($brushBg, 0, 0, $bmp.Width, $bmp.Height) 

    $graphics.DrawString($Title, $font, $brushFg, 30, 30) 

    $font = new-object System.Drawing.Font 'Lucida Console ', 10 

    $lineNumber = 0
    foreach ($line in $lines)
    {
        $graphics.DrawString($line, $font, $brushFg, 10, (50 + $lineNumber * 30)) 
        $lineNumber += 1
    }

    $graphics.Dispose()

    $filename = 'C:\workspace\SoCalPowerShell.github.io\assets\schedule.png'
    $bmp.Save($filename) 
    $filename 



