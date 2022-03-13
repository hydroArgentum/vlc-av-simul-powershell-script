# vlc-av-simul-powershell-script
VLC play media simultaneously functionality is broken (at least on Windows). Powershell workaround by opening two instances as close to as simultaneously as possible.

## Requirements
Only tested on Powershell Core 7.2.1 for Windows. That being said, it should work on Powershell for Windows and Powershell Core for Windows in general.

This script uses the standard VLC installation location at "C:\Program Files\VideoLAN\VLC\vlc.exe", but you can change this by modifying the $vlcExe variable.

## Usage
Open Powershell and run the file. (Typing/drag and drop should be acceptable.)

You may have to modify your execution policy for the session, or you can try copy+pasting and saving as a ps1 file.

## Motivations
VLC's handling of paths for options are optimized for URLs for remote servers. However, it seems to have difficulty converting local paths to URL encoding and back.

If special characters like whitespaces are present in the path, VLC will most likely be unable to find the resource that the option is pointing to.

This is the standard behavior of VLC: Going to Media -> Open Multiple Files and Play another media synchonously will exhibit this behavior.
