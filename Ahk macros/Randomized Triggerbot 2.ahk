#NoEnv
SendMode Input
SetBatchLines -1
SetWorkingDir %A_ScriptDir%

; === Config ===
luminanceThreshold := 1      ; Detect brightness change
offsetX := 1
offsetY := 1
fireDelayMin := 0.45             ; ms
fireDelayMax := 0.75         ; ms
checkInterval := 0          ; ms between checks
whiteIgnoreThreshold := 80   ; Skip bright pixels

Shoot() {
    DllCall("mouse_event", "UInt", 0x02, "UInt", 0, "UInt", 0, "UInt", 0, "UPtr", 0)
    DllCall("mouse_event", "UInt", 0x04, "UInt", 0, "UInt", 0, "UInt", 0, "UPtr", 0)
}

GetLuminance(r, g, b) {
    return 0.2126 * r + 0.7152 * g + 0.0722 * b
}

*~$t::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, baseColor, MouseX + offsetX, MouseY + offsetY, RGB
    bR := (baseColor >> 16) & 0xFF
    bG := (baseColor >> 8) & 0xFF
    bB := baseColor & 0xFF
    baseLum := GetLuminance(bR, bG, bB)

    while GetKeyState("t", "P")
    {
        MouseGetPos, MouseX, MouseY
        PixelGetColor, currColor, MouseX + offsetX, MouseY + offsetY, RGB
        cR := (currColor >> 16) & 0xFF
        cG := (currColor >> 8) & 0xFF
        cB := currColor & 0xFF

        if (cR > whiteIgnoreThreshold && cG > whiteIgnoreThreshold && cB > whiteIgnoreThreshold)
            continue

        currLum := GetLuminance(cR, cG, cB)
        lumDiff := Abs(currLum - baseLum)

        if (lumDiff > luminanceThreshold)
        {
            Sleep, 1
            PixelGetColor, confirmColor, MouseX + offsetX, MouseY + offsetY, RGB
            cR2 := (confirmColor >> 16) & 0xFF
            cG2 := (confirmColor >> 8) & 0xFF
            cB2 := confirmColor & 0xFF

            confirmLum := GetLuminance(cR2, cG2, cB2)
            if (Abs(currLum - confirmLum) < 10)
            {
                Random, delay, %fireDelayMin%, %fireDelayMax%
                Shoot()
                Sleep, delay
            }
        }

        Sleep, checkInterval
    }
Return
