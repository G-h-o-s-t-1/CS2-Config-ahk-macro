ConfigFile:= "config.ini"

; Read key bindings from the config file
IniRead, key_M4A4, %ConfigFile%, KeyBinds, M4A4
IniRead, key_AK, %ConfigFile%, KeyBinds, AK
IniRead, key_off, %ConfigFile%, KeyBinds, off
IniRead, key_exit, %ConfigFile%, KeyBinds, exit
IniRead, key_shoot, %ConfigFile%, KeyBinds, shoot
IniRead, sens, %ConfigFile%, Settings, sens

; Calculate the modifier based on sensitivity
modifier:= 2.52/sens

; Initialize random seed
Random, RandomSeed, 1, 1000000
Random, , RandomSeed

; Function to add randomness to the mouse movement
AddRandomness(value, randomnessRange) {
    Random, rand, -randomnessRange, randomnessRange
    return value + rand
}

loop {
    sleep 1

    ; Check if AK-47 key is pressed
    if GetKeyState(key_AK)
    {
        ak:=true
        m4a4:=false
    }

    ; Check if M4A4 key is pressed
    if GetKeyState(key_M4A4)
    {
        m4a4:=true
        ak:=false
    }

    ; Exit the script if the exit key is pressed
    if GetKeyState(key_exit)
    {
        sleep 2000
        ExitApp
    }

    ; Turn off recoil control if the off key is pressed
    if GetKeyState(key_off)
    {
        ak:=false
        m4a4:=false
    }

    ; Recoil control for AK-47
    if GetKeyState(key_shoot) && ak
    {
        loop
        {
            DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
            sleep 50
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-4*modifier, 2), "UInt", AddRandomness(7*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(4*modifier, 2), "UInt", AddRandomness(19*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-3*modifier, 2), "UInt", AddRandomness(29*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-1*modifier, 2), "UInt", AddRandomness(31*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(13*modifier, 2), "UInt", AddRandomness(31*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(8*modifier, 2), "UInt", AddRandomness(28*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(13*modifier, 2), "UInt", AddRandomness(21*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-17*modifier, 2), "UInt", AddRandomness(12*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-42*modifier, 2), "UInt", AddRandomness(-3*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-21*modifier, 2), "UInt", AddRandomness(2*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(12*modifier, 2), "UInt", AddRandomness(11*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-15*modifier, 2), "UInt", AddRandomness(7*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-26*modifier, 2), "UInt", AddRandomness(-8*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-3*modifier, 2), "UInt", AddRandomness(4*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(40*modifier, 2), "UInt", AddRandomness(1*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(19*modifier, 2), "UInt", AddRandomness(7*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(14*modifier, 2), "UInt", AddRandomness(10*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(27*modifier, 2), "UInt", AddRandomness(0*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(33*modifier, 2), "UInt", AddRandomness(-10*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-21*modifier, 2), "UInt", AddRandomness(-2*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(7*modifier, 2), "UInt", AddRandomness(3*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-7*modifier, 2), "UInt", AddRandomness(9*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-8*modifier, 2), "UInt", AddRandomness(4*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(19*modifier, 2), "UInt", AddRandomness(-3*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(5*modifier, 2), "UInt", AddRandomness(6*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-20*modifier, 2), "UInt", AddRandomness(-1*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-33*modifier, 2), "UInt", AddRandomness(-4*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-45*modifier, 2), "UInt", AddRandomness(-21*modifier, 2))
            sleep 99
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-14*modifier, 2), "UInt", AddRandomness(1*modifier, 2))
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            sleep 80
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            sleep 1000
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
        }
    }

    ; Recoil control for M4A4
    if GetKeyState(key_shoot) && m4a4
    {
        loop
        {
            DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
            sleep 15
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(2*modifier, 2), "UInt", AddRandomness(7*modifier, 2))
            sleep 88
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(0*modifier, 2), "UInt", AddRandomness(9*modifier, 2))
            sleep 87
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-6*modifier, 2), "UInt", AddRandomness(16*modifier, 2))
            sleep 87
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
                        DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(7*modifier, 2), "UInt", AddRandomness(21*modifier, 2))
            sleep 87
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-9*modifier, 2), "UInt", AddRandomness(23*modifier, 2))
            sleep 87
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-5*modifier, 2), "UInt", AddRandomness(27*modifier, 2))
            sleep 87
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(16*modifier, 2), "UInt", AddRandomness(15*modifier, 2))
            sleep 88
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(11*modifier, 2), "UInt", AddRandomness(13*modifier, 2))
            sleep 88
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(22*modifier, 2), "UInt", AddRandomness(5*modifier, 2))
            sleep 88
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-4*modifier, 2), "UInt", AddRandomness(11*modifier, 2))
            sleep 88
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-18*modifier, 2), "UInt", AddRandomness(6*modifier, 2))
            sleep 88
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-30*modifier, 2), "UInt", AddRandomness(-4*modifier, 2))
            sleep 88
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-24*modifier, 2), "UInt", AddRandomness(0*modifier, 2))
            sleep 88
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(-25*modifier, 2), "UInt", AddRandomness(-6*modifier, 2))
            sleep 88
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(0*modifier, 2), "UInt", AddRandomness(4*modifier, 2))
            sleep 87
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", "UInt", 0x01, "UInt", AddRandomness(1*modifier, 2), "UInt", AddRandomness(1*modifier, 2))
            sleep 88
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
            DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
            sleep 1000
            if !GetKeyState(key_shoot)
            {
                DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
                break
            }
        }
    }
}

^q::
MsgBox, Are you sure you want to exit?
ExitApp

