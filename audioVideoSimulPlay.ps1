$vlcExe = "C:\Program Files\VideoLAN\VLC\vlc.exe"

$videoVolume = '0.700000'
$videoArg1 = '--no-volume-save'
$videoArg2 = '--mmdevice-volume='+$videoVolume
$videoArg3 = '-f'

$audioVolume = '1.000000'
$audioArg1 = '--no-volume-save'
$audioArg2 = '--mmdevice-volume='+$audioVolume

$videoArg4 = Read-Host -Prompt "Drag and drop the video file to be played: "

$audioArg3 = Read-Host -Prompt "Drag and drop the audio file to be played: "

& $vlcExe $audioArg1 $audioArg2 $audioArg3
& $vlcExe $videoArg1 $videoArg2 $videoArg3 $videoArg4
