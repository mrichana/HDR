#Requires AutoHotkey v2.0
if (A_Args.Length > 1)
{
    if ((A_Args[1] = "false" and A_Args[2] = "true") or (A_Args[1] = "true" and A_Args[2] = "false")) 
    {
        Send "!#b"
    }
}

