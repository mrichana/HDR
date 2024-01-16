#Requires AutoHotkey v2.0
width := EnvGet("SUNSHINE_CLIENT_WIDTH")
height := EnvGet("SUNSHINE_CLIENT_HEIGHT")
fps := EnvGet("SUNSHINE_CLIENT_FPS")
hdr := EnvGet("SUNSHINE_CLIENT_HDR")
localhdr := ""
if (A_Args.Length < 2) 
{
    ExitApp
}

if (A_Args.has(3))
{
    overridesettings(StrLower(A_Args[3]))
}

if (StrLower(A_Args[1])="start") 
{
    RunWait("DisplaySwitch.exe /external")
    RunWait("qres.exe /x:" width " /y:" height " /r:" fps) 
}
else
{
    RunWait("DisplaySwitch.exe /internal")
}

localhdr := StrLower(A_Args[2])

if ((localhdr = "sdr" and hdr = "true") or (localhdr = "hdr" and hdr = "false")) 
{
    Send "!#b"
}

ExitApp


overridesettings(str)
{
    parameters := StrSplit(str, "x")
    if (parameters.has(3))
    {
        width := parameters[1]
        height := parameters[2]
        fps := parameters[3]
        return
    }

    if (parameters.has(2))
    {
        width := parameters[1]
        height := parameters[2]
        return
    }
    
    if (parameters.has(1))
    {
        fps := parameters[1]
    }
}