$vlcExe = "C:\Program Files\VideoLAN\VLC\vlc.exe"

# See below comment.
$hackFlag = $true

$videoVolume = '0.700000'
$videoArg1 = '--no-volume-save'
$videoArg2 = '--mmdevice-volume='+$videoVolume
$videoArg3 = '-f'

$audioVolume = '1.000000'
$audioArg1 = '--no-volume-save'
$audioArg2 = '--mmdevice-volume='+$audioVolume
# Bad hack - VLC does not honor WindowStyle. Autoclose to remove large number of instances.
$audioArg3 = '--qt-start-minimized'
$audioArg4 = '--play-and-exit'

$videoArg4 = Read-Host -Prompt "Drag and drop the video file to be played: "

$audioArg5 = Read-Host -Prompt "Drag and drop the audio file to be played: "

if ($hackFlag) {
	Start-Process -FilePath $vlcExe -ArgumentList $audioArg1,$audioArg2,$audioArg3,$audioArg4,$audioArg5
} else {
	Start-Process -FilePath $vlcExe -ArgumentList $audioArg1,$audioArg2,$audioArg5
}
Start-Process -FilePath $vlcExe -ArgumentList $videoArg1,$videoArg2,$videoArg3,$videoArg4
