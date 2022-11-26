;Make sure to change it to the application name this will make it so the script will only work if you are inside of the applciation
#If WinActive("Destiny 2")
#MaxThreadsPerHotkey 2
#SingleInstance, Force

;keybinds settings
IniRead, vHotkey1, settings.ini, Binds, key1
Hotkey, % vHotkey1, Hotkey1

IniRead, vHotkey2, settings.ini, Binds, key2
Hotkey, % vHotkey2, Hotkey2

IniRead, vHotkey3, settings.ini, Binds, key3
Hotkey, % vHotkey3, Hotkey3

IniRead, vHotkey4, settings.ini, Binds, key4
Hotkey, % vHotkey4, Hotkey4

IniRead, vHotkey5, settings.ini, Binds, key5
Hotkey, % vHotkey5, Hotkey5

IniRead, vHotkey6, settings.ini, Binds, key6
Hotkey, % vHotkey6, Hotkey6

IniRead, vHotkey7, settings.ini, Binds, key7
Hotkey, % vHotkey7, Hotkey7

IniRead, vHotkey8, settings.ini, Binds, key8
Hotkey, % vHotkey8, Hotkey8

IniRead, vHotkey9, settings.ini, Binds, key9
Hotkey, % vHotkey9, Hotkey9

IniRead, vHotkey10, settings.ini, Binds, key10
Hotkey, % vHotkey10, Hotkey10

IniRead, vHotkey11, settings.ini, Binds, key11
Hotkey, % vHotkey11, Hotkey11
Return

;This should limit your full game to 1kb
Hotkey1:
toggle := !toggle
    {
        if toggle
        {
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings priorities edit destiny2.exe  Limited Normal 1000 1000000 true, ,hide
        }
        else
        { 
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
        }
    }

Return

;This should limit upload on full game to 1kb
Hotkey2:
toggle := !toggle
    {
        if toggle
        {
            run "C:\Program Files\NetBalancer\nbcmd.exe" edit destiny2.exe  Normal Limited 100000 1 true, ,hide
        }
        else
        { 
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
        }
    }

Return


;This should limit 3074 to 1b
Hotkey3:
toggle := !toggle
    {
        if toggle
        {
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings files rules load C:\Users\%A_UserName%\Documents\Ports\3074.xml, ,hide
        }
        else
        { 
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
        }
    }

Return

;This should limit 30k to 1b
Hotkey4:
toggle := !toggle
    {
        if toggle
        {
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings files rules load C:\Users\%A_UserName%\Documents\Ports\30k.xml, ,hide
        }
        else
        { 
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
        }
    }

Return

;This should limit 27k
Hotkey5:
toggle := !toggle
    {
        if toggle
        {
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings files rules load C:\Users\%A_UserName%\Documents\Ports\27k.xml, ,hide
        }
        else
        { 
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
        }
    }

Return

;This should limit 7k to 1b
Hotkey6:
toggle := !toggle
    {
        if toggle
        {
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings files rules load C:\Users\%A_UserName%\Documents\Ports\7k.xml, ,hide
        }
        else
        { 
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
        }
    }

Return

;This Should Turn On Auto Deposit 6 Time And Turn Off (for gos)
Hotkey7:
    {
        run "C:\Program Files\NetBalancer\nbcmd.exe" settings priorities edit destiny2.exe  Limited Normal 1000 1000000 true, ,hide
	sleep 500
    }
    loop, 7
    {
        send {e down}
        sleep 850
        send {e up}
	sleep 550
    }
    {
       run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
    }

Return

;This should buffer limit 3074
Hotkey8:
toggle := !toggle
Loop,
    {
        if toggle
        {
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings files rules load C:\Users\%A_UserName%\Documents\Ports\3074.xml, ,hide
            sleep 10000
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
            sleep 500
        }
        else
        { 
            run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
            break
        }
    }

Return

;This Should Kill All Active Limits
Hotkey9:
	{
	    run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
        Reload
	}
	
Return

Hotkey10:
    {
        Gui, Add, Text, x2 y10 w240 h20 , - Pressing %vHotkey1% Will Limit Download Full Game
        IniRead, vHotkey1, settings.ini, Binds, key1
        Gui, Add, Text, x2 y29 w240 h20 , - Pressing %vHotkey2% Will Limit Upload Full Game
	    IniRead, vHotkey2, settings.ini, Binds, key2
        Gui, Add, Text, x2 y49 w240 h20 , - Pressing %vHotkey3% Will Limit 3074
	    IniRead, vHotkey3, settings.ini, Binds, key3
        Gui, Add, Text, x2 y69 w240 h20 , - Pressing %vHotkey4% Will Buffer Limit 30k
	    IniRead, vHotkey4, settings.ini, Binds, key4
        Gui, Add, Text, x2 y89 w240 h30 , - Pressing %vHotkey5% Will Limit 27k
	    IniRead, vHotkey5, settings.ini, Binds, key5
        Gui, Add, Text, x2 y109 w240 h20 , - Pressing %vHotkey6% Will Limit 7k
	    IniRead, vHotkey6, settings.ini, Binds, key6
        Gui, Add, Text, x2 y129 w240 h20 , - Pressing %vHotkey7% Will Limit Deposit 6 Then Unlimit
	    IniRead, vHotkey7, settings.ini, Binds, key7
        Gui, Add, Text, x2 y149 w240 h20 , - Pressing %vHotkey8% Will Buffer 3074 Limit
	    IniRead, vHotkey8, settings.ini, Binds, key8
        Gui, Add, Text, x2 y169 w240 h20 , - Pressing %vHotkey9% Will Kill All Active Limits
	    IniRead, vHotkey9, settings.ini, Binds, key9
        Gui, Add, Text, x2 y219 w240 h20 , - Pressing %vHotkey10% Will Show All Keybinds
	    IniRead, vHotkey10, settings.ini, Binds, key10
        Gui, Add, Text, x2 y239 w240 h20 , - Pressing %vHotkey11% Will Close Artice
	    IniRead, vHotkey11, settings.ini, Binds, key11
        Gui, Show, x375 y232 h263 w245, Arcite
    }
        
Return

;closes the exe
Hotkey11:
ExitApp