AutoHotKey script that toggles HDR on windows 11 machines.
Takes two parameters with the first being the state of the host machine HDR as true/false 
and the second of the client's HDR again as true/false.
It toggles the state only when the client asks a different state than the host.

hdr.exe HostHdr ClientHdr

Useful in Sunshine streaming server in the form "hdr.exe false SUNSHINE_CLIENT_HDR"
as a Do and Undo command as it allows to turn HDR on on HDR enabled displays and off when the stream stops or 
if the host device has HDR enabled in the form "hdr.exe true SUNSHINE_CLIENT_HDR"

The exe file should be placed in a PATH folder, where it can be found or any other folder when called with the complete path.

I use it in conjunction with [IDD](https://github.com/itsmikethetech/Virtual-Display-Driver)https://github.com/itsmikethetech/Virtual-Display-Driver,
that also gets enabled before starting the stream and qres.


Example for a host with a 1080p non HDR monitor and a virtual monitor streaming to a 4K HDR TV

Do DisplaySwitch.exe /external and Undo DisplaySwitch.exe /internal,
Do cmd /C qres.exe /x:%SUNSHINE_CLIENT_WIDTH% /y:%SUNSHINE_CLIENT_HEIGHT% /r:%SUNSHINE_CLIENT_FPS% and Undo cmd /C qres.exe /x:1920 /y:1080 /r:60
Do hdr false true and Undo hdr false true
