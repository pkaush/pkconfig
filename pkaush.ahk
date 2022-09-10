#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



;-------------------------------------------------------------------------
; CapsLock to ctrl when pressed and Esc when clicked
CapsLock::Ctrl
~CapsLock Up::Send % "{Ctrl up}" (A_PriorKey = "CapsLock" ? "{Esc}" : "")


;-----------------------------------------------------------------------
; Esc to capslock
$Esc::Capslock



;-----------------------------------------------------------------------
; Ctrl Left/right to change the virtual desktop
^Left::Send ^#{Left}        ; ^ = Control and # = Windows Key
^Right::Send ^#{Right}
; {LControl}{Left}::^#{Left}
; LCtrl{Right}::^#{Right}
; RCtrl{Left}::^#{Left}
; RCtrl{Right}::^#{Right}
PgDn::Send ^#{Left}        ; ^ = Control and # = Windows Key
PgUp::Send ^#{Right}



-------------------------------------------------------------------------
; Old Examples

-------------------------------------------------------------------------
; Switch ctrl and capslock. When the original ctrl key is pressed it works as ctrl but 
; press and go works as capslock
; CapsLock::Ctrl
; ~Ctrl Up::
; If Instr(A_PriorKey, "Control")
;  SetCapsLockState % !GetKeyState("CapsLock", "T")
; Return
