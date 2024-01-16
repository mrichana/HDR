AutoHotKey script that toggles a virtual monitor, changes resolution to the client resolution and enables HDR on windows 11 machines for use with Sunshine streaming.

Takes two parameters with the first being start or stop to signify if starting or ending the stream 
and the second the state of the host HDR being either SDR or HDR.

It toggles the state only when the client asks a different state than the host.

There is a third optional parameter that can overide the resolution asked by the client in the format WIDTHxHEIGHTxFPS

hdr.exe start sdr [1920x1080x60]
hdr.exe stop sdr

The exe file should be placed in a PATH folder, where it can be found or any other folder when called with the complete path.

I have included the executable from [QRes](https://sourceforge.net/projects/qres/)https://sourceforge.net/projects/qres, that needs to also be available in the same dir.

Ii is meant to be used in conjunction with [IDD](https://github.com/itsmikethetech/Virtual-Display-Driver)https://github.com/itsmikethetech/Virtual-Display-Driver,
that also gets enabled before starting the stream and qres.
