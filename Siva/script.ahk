;Make sure to change it to the application name this will make it so the script will only work if you are inside of the applciation
#If WinActive("Destiny 2")
#MaxThreadsPerHotkey 25
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

IniRead, vHotkey11, settings.ini, Binds, key11
Hotkey, % vHotkey11, Hotkey11

IniRead, vHotkey12, settings.ini, Binds, key12
Hotkey, % vHotkey12, Hotkey12

IniRead, vline, settings.ini, Functions, line
Hotkey, % vline, line

IniRead, vGround, settings.ini, Functions, floor
Hotkey, % vGround, Ground

IniRead, vMacroM, settings.ini, Binds, macromenu
Hotkey, % vMacroM, MacroM

IniRead, vPauser, settings.ini, Binds, pauser
Hotkey, % vPauser, Pauser

IniRead, vKeybindM, settings.ini, Binds, input
Hotkey, % vKeybindM, KeybindM

IniRead, vWishWall, settings.ini, Binds, wishwall
Hotkey, % vWishWall, WishWall

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
    loop, 6
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
	}
	
Return

;This Should Auto Finisher Limits
Hotkey12:
    {
        send %vfinisher%
	sleep 500
        run "C:\Program Files\NetBalancer\nbcmd.exe" settings files rules load C:\Users\%A_UserName%\Documents\Ports\27k.xml, ,hide
    sleep 3000
       run "C:\Program Files\NetBalancer\nbcmd.exe" settings reset, ,hide
    }
IniRead, vHotkey12, settings.ini, Binds, key12
IniRead, vfinisher, settings.ini, Binds, finisher
Return

;This is Well/Shatterline Macro
line:
IniRead, vHotkey13, settings.ini, Binds, skate
IniRead, vLine, settings.ini, Functions, line
IniRead, vClass, settings.ini, Functions, class
    {
        Send {Rbutton}
        Sleep, 75   
        Send {space}   
        Send %vClass%
	}
Return


;This is Well/Shatterline Ground Macro
Ground:
IniRead, vFloor, settings.ini, Functions, floor
IniRead, vClass, settings.ini, Functions, class
    {
        Send {Space} 
        Sleep, 65 
        Send {Lbutton}
        Send {space}      
        Send %vClass%
	}
Return

BindsList:
    {
        Gui, Destroy
        Gui -MinimizeBox
        Gui -MaximizeBox
        Gui, Add, Text, w240 , - Pressing %vHotkey1% Will Limit Download Full Game
        IniRead, vHotkey1, settings.ini, Binds, key1
        Gui, Add, Text, w240 , - Pressing %vHotkey2% Will Limit Upload Full Game
	    IniRead, vHotkey2, settings.ini, Binds, key2
        Gui, Add, Text, w240 , - Pressing %vHotkey3% Will Limit 3074
	    IniRead, vHotkey3, settings.ini, Binds, key3
        Gui, Add, Text, w240 , - Pressing %vHotkey4% Will Limit 30k
	    IniRead, vHotkey4, settings.ini, Binds, key4
        Gui, Add, Text, w240 , - Pressing %vHotkey5% Will Limit 27k
	    IniRead, vHotkey5, settings.ini, Binds, key5
        Gui, Add, Text, w240 , - Pressing %vHotkey6% Will Limit 7k
	    IniRead, vHotkey6, settings.ini, Binds, key6
        Gui, Add, Text, w240 , - Pressing %vHotkey8% Will Buffer 3074 Limit
	    IniRead, vHotkey8, settings.ini, Binds, key8
        Gui, Add, Text, w240 , - Pressing %vHotkey9% Will Kill All Active Limits
	    IniRead, vHotkey9, settings.ini, Binds, key9
        Gui, Add, Text, w240 , - Pressing %vHotkey12% Will Do Finisher Limits
        IniRead, vHotkey12, settings.ini, Binds, key12
        Gui, Add, Text, w240 , - Pressing %vPauser% Toggle Game Pauser
	    IniRead, vPauser, settings.ini, Binds, pauser
        Gui, Add, Text, w240 , - Pressing %vMacroMenu% Brings Up The Skate Macro Menu
        IniRead, vMacroMenu, settings.ini, Binds, macromenu
        Gui, Add, Text, w240 , - Pressing %vSkate% Macro Well/Skatterline
        IniRead, vSkate, settings.ini, Binds, skate
        Gui, Add, Text, w240 , - Pressing %vGround% Macro Ground Skates
        IniRead, vGround, settings.ini, Binds, ground
        Gui, Add, Text, w240 , - Pressing %vInput% Brings Up Keybinds Menu
	    IniRead, vInput, settings.ini, Binds, input
        Gui, Add, Text, w240 , - Pressing %vHotkey11% Will Close Siva
	    IniRead, vHotkey11, settings.ini, Binds, key11
        Gui, Add, Button, w120 gKeyBindM, Go Back
        Gui, Show,, Siva
    }
        
Return

MacroM:
    {
        Gui, Destroy
        Gui -MinimizeBox
        Gui -MaximizeBox
        Gui, Add, Button, w120 gWarlock, Warlock
        Gui, Add, Button, w120 gWarlockGround, Warlock w/Floor
        Gui, Add, Button, w120 gHunter, Hunter
        Gui, Add, Button, w120 gHunterGround, Hunter w/Ground
        Gui, Add, Button, w120 gNull, No Macros
        Gui, Show,, Siva
    }

Return

Warlock:
    {
        IniRead, vHotkey13, settings.ini, Binds, skate
        IniRead, vSuper, settings.ini, Binds, super
        IniWrite, %vSuper%, settings.ini, Functions, class
        IniWrite, %vHotkey13%, settings.ini, Functions, line
        IniWrite, <>, settings.ini, Functions, floor
        Gui, Hide
        reload
    }

Return

WarlockGround:
    {
        IniRead, vGround, settings.ini, Binds, ground
        IniRead, vHotkey13, settings.ini, Binds, skate
        IniRead, vFloor, settings.ini, Function, floor
        IniRead, vSuper, settings.ini, Binds, super
        IniWrite, %vSuper%, settings.ini, Functions, class
        IniWrite, %vHotkey13%, settings.ini, Functions, line
        IniWrite, %vGround%, settings.ini, Functions, floor
        Gui, Hide
        reload
    }

Return

Hunter:
    {
        IniRead, vHotkey13, settings.ini, Binds, skate
        IniRead, vShatterdive, settings.ini, Binds, shatterdive
        IniWrite, %vShatterdive%, settings.ini, Functions, class
        IniWrite, %vHotkey13%, settings.ini, Functions, line
        Gui, Hide
        reload
    }

Return

HunterGround:
    {
        IniRead, vGround, settings.ini, Binds, ground
        IniRead, vHotkey13, settings.ini, Binds, skate
        IniRead, vFloor, settings.ini, Function, floor
        IniRead, vShatterdive, settings.ini, Binds, shatterdive
        IniWrite, %vShatterdive%, settings.ini, Functions, class
        IniWrite, %vHotkey13%, settings.ini, Functions, line
        IniWrite, %vGround%, settings.ini, Functions, floor
        Gui, Hide
        reload
    }

Return

Null:
    {
        IniWrite, <>, settings.ini, Functions, class
        IniWrite, <>, settings.ini, Functions, line
        IniWrite, <>, settings.ini, Functions, floor
        Gui, Hide
        reload
    }

Return

Pauser:
if (toggle := !toggle) 
	{
	Process_Suspend("Destiny2.exe")
	}
else
	{
	Process_Resume("Destiny2.exe")
	}

Process_Suspend(PID_or_Name){
    PID := (InStr(PID_or_Name,".")) ? ProcExist(PID_or_Name) : PID_or_Name
    h:=DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
    If !h   
        Return -1
    DllCall("ntdll.dll\NtSuspendProcess", "Int", h)
    DllCall("CloseHandle", "Int", h)
	Return
	}
 
Process_Resume(PID_or_Name){
    PID := (InStr(PID_or_Name,".")) ? ProcExist(PID_or_Name) : PID_or_Name
    h:=DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
    If !h   
        Return -1
    DllCall("ntdll.dll\NtResumeProcess", "Int", h)
    DllCall("CloseHandle", "Int", h)
	}

ProcExist(PID_or_Name=""){
    Process, Exist, % (PID_or_Name="") ? DllCall("GetCurrentProcessID") : PID_or_Name
    Return Errorlevel
}
return


;Below is Binds Change Menu
KeybindM:
    {
        Gui, Destroy
        Gui -MinimizeBox
        Gui -MaximizeBox
        Gui, Add, Button, w120 gLimitMenu, Limit Menu
        Gui, Add, Button, w120 gMacroMenu, Macro Menu
        Gui, Add, Button, w120 gSivaMenu, Siva Binds
        Gui, Add, Button, w120 gDestinyBinds, Game Binds
        Gui, Add, Button, w120 gBindsList, Binds List
        Gui, Show,, Siva
    }
Return

DestinyBinds:
    {
        Gui, Destroy
        Gui -MinimizeBox
        Gui -MaximizeBox
        Gui, Add, Button, w120 gFinisher2, Finisher
        Gui, Add, Button, w120 gSuper2, Super
        Gui, Add, Button, w120 gAirmove, Airmove
        Gui, Add, Button, w50 gKeybindM, Go Back
        Gui, Show,, Siva
    }
Return

SivaMenu:
    {
        Gui, Destroy
        Gui -MinimizeBox
        Gui -MaximizeBox
        Gui, Add, Button, w120 gExitApp, Bind to Close Siva
        Gui, Add, Button, w120 gBinds, List Of All Binds
        Gui, Add, Button, w120 gChangeBinds, Change Binds Menu
        Gui, Add, Button, w50 gKeybindM, Go Back
        Gui, Show,, Siva
    }
Return

MacroMenu:
    {
        Gui, Destroy
        Gui -MinimizeBox
        Gui -MaximizeBox
        Gui, Add, Button, w120 gSkateMacros, Skate Macros Menu
        Gui, Add, Button, w120 gNormalSkate, Well/Shatterline Bind
        Gui, Add, Button, w120 gGroundSkate, Ground Skate Bind
        Gui, Add, Button, w120 gwishmacro, Wish Wall Macro
        Gui, Add, Button, w50 gKeybindM, Go Back
        Gui, Show,, Siva
    }
 Return

LimitMenu:
    {
        Gui Destroy
        Gui -MinimizeBox
        Gui -MaximizeBox
        Gui, Add, Button, w120 gFullGameDown, Full Game Down
        Gui, Add, Button, w120 gFullGameUp, Full Game Upload
        Gui, Add, Button, w120 g3074, 3074 Limit
        Gui, Add, Button, w120 gLimit30k, 30k Limit
        Gui, Add, Button, w120 gLimit27k, 27k Limit
        Gui, Add, Button, w120 gLimit7k, 7k Limit
        Gui, Add, Button, w120 gB3074, Buffer Limit 3074
        Gui, Add, Button, w120 gKillActive, Kills All Active Limits
        Gui, Add, Button, w120 gFinisher, Ammo Finisher Limit
        Gui, Add, Button, w120 gGamePauser, Suspends Destiny 2 "Game Pauser"
        Gui, Add, Button, w50 gKeybindM, Go Back
        Gui, Show,, Siva

    }
Return

FullGameDown:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key1
        Gui, Hide
        Reload
    }
Return

FullGameUp:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key2
        Gui, Hide
        Reload
    }
Return


3074:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key3
        Gui, Hide
        Reload
    }
Return

Limit30k:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key4
        Gui, Hide
        Reload
    }
Return

Limit27k:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key5
        Gui, Hide
        Reload
    }
Return

Limit7k:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key6
        Gui, Hide
        Reload
    }
Return

B3074:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key8
        Gui, Hide
        Reload
    }
Return

KillActive:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key9
        Gui, Hide
        Reload
    }
Return

Binds:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key10
        Gui, Hide
        Reload
    }
Return

ExitApp:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key11
        Gui, Hide
        Reload
    }
Return

Finisher:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, key12
        Gui, Hide
        Reload
    }
Return

NormalSkate:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, skate
        Gui, Hide
        Reload
    }
Return

GroundSkate:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, ground
        Gui, Hide
        Reload
    }
Return

SkateMacros:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, macromenu
        Gui, Hide
        Reload
    }
Return

GamePauser:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, pauser
        Gui, Hide
        Reload
    }
Return

ChangeBinds:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use. 
        IniWrite, %input%, settings.ini, Binds, input
        Gui, Hide
        Reload
    }
Return

wishmacro:
    {
        InputBox, input, Siva By Reaver, Enter the bind you wish to use.
        IniWrite, %input%, settings.ini, Binds, wishwall
        Gui, Hide
        Reload
    }
Return

Finisher2:
    {
        InputBox, input, Siva By Reaver, Please Enter Your Finisher Key In-Game
        IniWrite, %input%, settings.ini, Binds, finisher
        Gui, Hide
        Reload
    }
Return

Super2:
    {
        InputBox, input, Siva By Reaver, Please Enter Your Super Key In-Game 
        IniWrite, %input%, settings.ini, Binds, super
        Gui, Hide
        Reload
    }
Return

Airmove:
    {
        InputBox, input, Siva By Reaver, Please Enter Your Airmove Key In-Game 
        IniWrite, %input%, settings.ini, Binds, shatterdive
        Gui, Hide
        Reload
    }
Return






WishWall:

global pos_x := 0.0
global pos_y := 0.0
global cycle_time := 55.0
global res_scalar := 1.0

FileRead, sens, C:\Users\%A_UserName%\Documents\Ports\wall_sens.txt
if ErrorLevel {
	MsgBox, No wall_sens.txt found, use option 15
}
global sens_scalar := sens / 8.0
global recoil := 2.9999 / sens_scalar

switch %A_ScreenHeight%
{
	case 720:
	res_scalar := 1.5
	
	case 1080:
	res_scalar := 1.3
	
	case 1440:
	res_scalar := 1
	
	case 2160:
	res_scalar := 0.75
}

global WishNumber
InputBox, WishNumber, Wish wall menu, 1. Ethereal Key (once per account)`n2. Glittering Key chest spawn`n3. Numbers of Power emblem`n4. Shuro Chi encounter`n5. Morgeth encounter`n6. Vault encounter`n7. Riven encounter`n8. Hope for the Future song`n9. Failsafe dialogue`n10. Drifter dialogue`n11. Party effect on precision kills`n12. Random effect around players' heads`n13. Petra's Run`n14. Corrupted Eggs spawn`n15. Change sensitivity,,300,365

Sleep, 200

switch WishNumber
{
	case 1:
	key()	
	
	case 2:
	chest()
	
	case 3:
	emblem()
	
	case 4:
	shuro()
	
	case 5:
	morgeth()
	
	case 6:
	vault()
	
	case 7:
	riven()
	
	case 8:
	song()
	
	case 9:
	failsafe()
	
	case 10:
	drifter()
	
	case 11:
	party()
	
	case 12:
	halo()
	
	case 13:
	petra()
	
	case 14:
	eggs()
	
	case 15:
	change_sens()
	
	default:
	MsgBox, Invalid menu option
}

key()
{
	Array := [3, 4, 5, 9, 10, 18, 11, 12, 16, 1]
	shoot(Array, 1)
	Array := [3, 4, 5, 9, 10, 18, 12, 16, 17, 2]
	shoot(Array, 1)
	Array := [3, 4, 5, 9, 10, 18, 11, 16, 17, 6]
	shoot(Array, 1)
	Array := [3, 4, 5, 9, 10, 18, 11, 12, 17, 7]
	shoot(Array, 1)
	Array := [3, 4, 5, 9, 10, 18, 14, 15, 19, 20]
	shoot(Array, 4)
	Array := [3, 4, 5, 9, 10, 18, 11, 12, 16, 17]
	shoot(Array, 2)
	Array := [3, 4, 5, 9, 10, 11, 0, 0, 0, 0]
	shoot(Array, 1)
	Array := [3, 4, 5, 9, 10, 12, 0, 0, 0, 0]
	shoot(Array, 1)
	Array := [3, 4, 5, 9, 10, 16, 0, 0, 0, 0]
	shoot(Array, 1)
	Array := [3, 4, 5, 9, 10, 17]
	shoot(Array, 1)
	done()
}

chest()
{
	Array := [3, 8, 13, 18, 20, 1, 6, 5, 10, 15]
	shoot(Array, 3)
	Array := [3, 8, 13, 18, 20, 1, 6, 11, 16, 0]
	shoot(Array, 1)
	Array := [3, 8, 13, 18, 20, 11, 16, 0, 0, 0]
	shoot(Array, 1)
	Array := [3, 8, 13, 18, 0, 0, 0, 0, 0, 0]
	shoot(Array, 5)
	Array := [3, 8]
	shoot(Array, 1)	
	done()
}

emblem()
{
	Array := [17, 19, 11, 13, 15, 7, 9, 1, 3, 5]
	shoot(Array, 1)
	Array := [17, 19, 11, 13, 15, 0, 0, 0, 0, 0]
	shoot(Array, 8)
	Array := [17, 19, 7, 9, 0, 0, 0, 0, 0, 0]
	shoot(Array, 4)
	done()
}

shuro()
{
	Array := [2, 3, 4, 1, 7, 14, 20, 5, 9, 12]
	shoot(Array, 2)
	Array := [2, 3, 4, 1, 7, 14, 20, 9, 12, 16]
	shoot(Array, 2)
	Array := [2, 3, 4, 1, 7, 14, 20, 5, 12, 16]
	shoot(Array, 2)
	Array := [2, 3, 4, 1, 7, 14, 20, 5, 9, 16]
	shoot(Array, 2)
	Array := [2, 3, 4, 1, 7, 14, 20, 5, 9, 8]
	shoot(Array, 3)
	DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 30)
	Send, R
	Sleep, 2000
	Array := [2, 3, 4, 12, 16, 8, 6, 10, 11, 15]
	shoot(Array, 3)
	Array := [2, 3, 1, 7, 14, 20, 5, 17, 18, 19]
	shoot(Array, 2)
	Array := [9, 12, 16, 6, 10, 11, 15, 17, 18, 19]
	shoot(Array, 2)
	Array := [4, 1, 7, 14, 20, 5, 9, 12, 16, 8]
	shoot(Array, 2)
	Array := [6, 10, 11, 15, 17, 18, 19, 0, 0]
	shoot(Array, 2)
	; done()
}

morgeth()
{
	Array := [8, 3, 13, 18, 2, 4, 17, 19, 7, 9]
	shoot(Array, 4)
	Array := [8, 3, 13, 18, 2, 4, 17, 19, 12, 14]
	shoot(Array, 4)
	Array := [8, 3, 13, 18, 2, 4, 7, 9, 12, 14]
	shoot(Array, 3)
	Array := [8, 3, 13, 18, 17, 19, 1, 5, 16, 20]
	shoot(Array, 3)
	Array := [8, 2, 7, 9, 12, 14, 1, 5, 16, 20]
	shoot(Array, 1)
	Array := [8, 3, 13, 18, 4, 17, 19, 7, 9, 12]
	shoot(Array, 1)
	Array := [14, 1, 5, 16, 20]
	shoot(Array, 1)
	done()
}

vault()
{
	Array := [3, 2, 4, 16, 17, 18, 19, 20, 1, 5]
	shoot(Array, 5)
	Array := [3, 2, 4, 16, 17, 18, 19, 20, 7, 9]
	shoot(Array, 5)
	Array := [3, 2, 4, 16, 17, 18, 1, 5, 7, 9]
	shoot(Array, 1)
	Array := [3, 2, 4, 19, 20, 1, 5, 7, 9, 6]
	shoot(Array, 1)
	Array := [3, 2, 4, 1, 5, 7, 9, 10, 11, 15]
	shoot(Array, 1)
	Array := [3, 1, 5, 7, 9, 0, 0, 0, 0, 0]
	shoot(Array, 2)
	Array := [3]
	shoot(Array, 1)
	done()
}

riven()
{
	Array := [1, 16, 10, 15, 13, 3, 18, 6, 11, 9]
	shoot(Array, 2)
	Array := [1, 16, 10, 15, 13, 3, 18, 6, 11, 14]
	shoot(Array, 2)
	Array := [1, 16, 10, 15, 13, 3, 18, 6, 11, 5]
	shoot(Array, 2)
	Array := [1, 16, 10, 15, 13, 3, 18, 9, 14, 20]
	shoot(Array, 2)
	Array := [1, 16, 10, 15, 13, 3, 18, 5, 2, 17]
	shoot(Array, 2)
	Array := [1, 16, 10, 15, 13, 3, 18, 6, 11, 20]
	shoot(Array, 2)
	Array := [1, 16, 10, 15, 13, 9, 14, 5, 2, 17]
	shoot(Array, 1)
	Array := [1, 16, 10, 15, 13, 9, 14, 20, 2, 17]
	shoot(Array, 1)
	Array := [1, 16, 10, 15, 6, 11, 5, 0, 0, 0]
	shoot(Array, 1)
	Array := [1, 16, 9, 14, 20]
	shoot(Array, 1)
	done()
}

song()
{
	Array := [13, 3, 8, 18, 2, 7, 12, 17, 4, 9]
	shoot(Array, 4)
	Array := [13, 3, 8, 18, 2, 7, 12, 17, 14, 19]
	shoot(Array, 4)
	Array := [13, 3, 8, 18, 2, 7, 4, 9, 14, 19]
	shoot(Array, 2)
	Array := [13, 3, 2, 7, 12, 17, 4, 9, 14, 19]
	shoot(Array, 2)
	Array := [13, 3, 8, 18, 12, 17, 4, 9, 14, 19]
	shoot(Array, 2)
	Array := [13, 8, 18, 4, 9, 14, 19, 0, 0, 0]
	shoot(Array, 1)
	Array := [13, 8, 18]
	shoot(Array, 1)
	done()
}

failsafe()
{
	Array := [14, 7, 8, 9, 12, 13, 0, 0, 0, 0]
	shoot(Array, 2)
	Array := [14, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	shoot(Array, 12)
	done()
}

drifter()
{
	Array := [7, 8, 13, 14, 10, 15, 19, 20, 1, 2]
	shoot(Array, 2)
	Array := [7, 8, 13, 14, 10, 15, 19, 5, 6, 11]
	shoot(Array, 2)
	Array := [7, 8, 13, 14, 20, 0, 0, 0, 0, 0]
	shoot(Array, 2)
	Array := [7, 8, 13, 14, 0, 0, 0, 0, 0, 0]
	shoot(Array, 1)
	Array := [7, 8, 0, 0, 0, 0, 0, 0, 0, 0]
	shoot(Array, 5)
	done()
}

party()
{
	Array := [4, 5, 10, 11, 16, 17, 15, 19, 20, 9]
	shoot(Array, 1)
	Array := [4, 5, 10, 1, 2, 6, 11, 16, 17, 15]
	shoot(Array, 5)
	Array := [4, 5, 10, 1, 2, 6, 11, 16, 17, 9]
	shoot(Array, 3)
	Array := [4, 5, 10, 1, 2, 6, 19, 20, 9, 0]
	shoot(Array, 1)
	Array := [4, 5, 10, 1, 2, 6, 19, 20, 13, 0]
	shoot(Array, 2)
	Array := [4, 5, 10, 1, 2, 6, 19, 0, 0, 0]
	shoot(Array, 2)
	Array := [4, 5, 10, 1, 2, 6, 20, 8, 0, 0]
	shoot(Array, 2)
	done()
}

halo()
{
	Array := [14, 15, 20, 13, 5, 8, 9, 10, 1, 6]
	shoot(Array, 1)
	Array := [14, 15, 20, 13, 5, 8, 9, 10, 11, 7]
	shoot(Array, 1)
	Array := [14, 15, 20, 13, 5, 8, 9, 10, 12, 16]
	shoot(Array, 2)
	Array := [14, 15, 20, 13, 5, 8, 9, 10, 11, 12]
	shoot(Array, 2)
	Array := [14, 15, 20, 13, 5, 8, 9, 10, 11, 16]
	shoot(Array, 1)
	Array := [14, 15, 20, 13, 5, 8, 9, 10, 16, 0]
	shoot(Array, 1)
	Array := [14, 15, 20, 13, 5, 8, 9, 10, 0, 0]
	shoot(Array, 1)
	Array := [14, 15, 20, 13, 0, 0, 0, 0, 0, 0]
	shoot(Array, 3)
	Array := [14, 15, 20, 0, 0, 0, 0, 0, 0, 0]
	shoot(Array, 3)
	done()
}

petra()
{
	Array := [4, 9, 12, 17, 3, 1, 6, 15, 20, 5]
	shoot(Array, 2)
	Array := [4, 9, 12, 17, 3, 1, 6, 15, 20, 10]
	shoot(Array, 2)
	Array := [4, 9, 12, 17, 3, 1, 6, 15, 20, 11]
	shoot(Array, 2)
	Array := [4, 9, 12, 17, 3, 1, 6, 15, 20, 16]
	shoot(Array, 2)
	Array := [4, 9, 12, 17, 3, 5, 10, 11, 16, 2]
	shoot(Array, 2)
	Array := [4, 9, 12, 17, 1, 6, 15, 20, 7, 14]
	shoot(Array, 2)
	Array := [4, 9, 12, 17, 3, 5, 10, 11, 16, 19]
	shoot(Array, 2)
	Array := [1, 6, 15, 20, 3, 5, 10, 11, 16, 0]
	shoot(Array, 2)
	Array := [4, 9, 12, 17, 1, 6, 15, 20, 0, 0]
	shoot(Array, 1)
	done()
}

eggs()
{
	Array := [8, 3, 17, 20, 2, 4, 14, 13, 1, 11]
	shoot(Array, 1)
	Array := [8, 3, 17, 20, 2, 4, 14, 13, 5, 16]
	shoot(Array, 5)
	Array := [8, 3, 17, 20, 2, 4, 14, 1, 0, 0]
	shoot(Array, 2)
	Array := [8, 3, 17, 20, 2, 4, 1, 0, 0, 0]
	shoot(Array, 1)
	Array := [8, 3, 17, 20, 2, 1, 0, 0, 0, 0]
	shoot(Array, 1)
	Array := [8, 3, 17, 20, 0, 0, 0, 0, 0, 0]
	shoot(Array, 1)
	Array := [8, 3, 17, 0, 0, 0, 0, 0, 0, 0]
	shoot(Array, 1)
	Array := [8, 3, 0, 0, 0, 0, 0, 0, 0, 0]
	shoot(Array, 2)
	Array := [8, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	shoot(Array, 2)
	done()
}

change_sens()
{
	InputBox, new_sens,, Input new sens:,,150,130
	if new_sens is integer
	{
		if (new_sens > 0 && new_sens < 101) {
			FileDelete, %A_ScriptDir%\wall_sens.txt
			FileAppend, %new_sens%, %A_ScriptDir%\wall_sens.txt
			Return
		}
	}
	MsgBox, Invalid sens value
}

Return

shoot(Array, LoopCount)
{
	Loop %LoopCount%
	{
		i := 1
		Loop 10
		{
			switch Array[i]
			{
				case 0:
				column := column
				row := row
			
				case 1:
				column := -410
				row := -255
		
				case 2:
				column := -215
				row := -280
		
				case 3:
				column := 0
				row := -285
		
				case 4:
				column := 215
				row := -280
		
				case 5:
				column := 410
				row := -255
		
				case 6:
				column := -410
				row := -80
		
				case 7:
				column := -215
				row := -100
		
				case 8:
				column := 0
				row := -100
		
				case 9:
				column := 215
				row := -100
		
				case 10:
				column := 410
				row := -80
		
				case 11:
				column := -410
				row := 110
		
				case 12:
				column := -210
				row := 100
		
				case 13:
				column := 0
				row := 100
		
				case 14:
				column := 210
				row := 100
		
				case 15:
				column := 410
				row := 110
		
				case 16:
				column := -410
				row := 310
		
				case 17:
				column := -210
				row := 310
		
				case 18:
				column := 0
				row := 310
		
				case 19:
				column := 210
				row := 310
		
				case 20:
				column := 410
				row := 310
			}
			
			if (Array[i] == 0) {
				DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 0 - recoil / 4)
				Sleep, 85			
			} else if (Array[i] == "") {
			} else {
				DllCall("mouse_event", "UInt", 0x01, "UInt", column * res_scalar / sens_scalar - pos_x, "UInt", row * res_scalar / sens_scalar - pos_y + recoil)
				Sleep, cycle_time
				Click
			}
	
			pos_x := column * res_scalar / sens_scalar
			pos_y := row * res_scalar / sens_scalar
			i++
		}
	}
}

done()
{
	Send, r
	DllCall("mouse_event", "UInt", 0x01, "UInt", 0 - pos_x, "UInt", 0 - pos_y)
	Send, {w down}
	Sleep, 200
	Send, {w up}
	Sleep, 600
	Send, {s down}
	Sleep, 230
	Send, {s up}
}

;closes the exe
Hotkey11:
ExitApp