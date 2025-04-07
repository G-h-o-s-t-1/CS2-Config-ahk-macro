#NoEnv
*Xbutton2::
Loop
{
    GetKeyState, state, Xbutton2, P
    if state = U
        break

Send {Space}
Sleep, 1.132
Send {Space}
Sleep, 1.173
Send {Space}
Sleep, 1.184
Send {Space}
Sleep, 1.293
Send {Space}
Sleep, 1.981
Send {Space}
Sleep, 1.234
Send {Space}
Sleep, 1.1
}
return

F9::
    ; Select grenade (e.g. 8 for molly, 7 for flash, etc.)
    Send, x ; 8 for molly, change if necessary
    Sleep, 500  ; Allow time for grenade selection

    ; Jump and prime the grenade
    Send, {Lbutton down}  ; Start jump
    Sleep, 900
    Send, {Space down}  ; Release jump
    Sleep, 1
    Send, {Space up}

    Sleep, 50  ; Adjust this sleep to your preferred throwing speed
    Send, {LButton up}  ; Release fire button

Sleep, 50

 
