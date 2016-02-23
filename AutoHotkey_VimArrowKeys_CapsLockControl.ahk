#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Capslock::
   Gui, 93:+Owner ; prevent display of taskbar button
   Gui, 93:Show, y-99999 NA, Enable nav-hotkeys: hjkl
   Send {LCtrl Down}
   KeyWait, Capslock ; wait until the Capslock button is released
   Gui, 93:Cancel
   Send, {LCtrl Up}
Return

#IfWinExist, Enable nav-hotkeys: hjkl

   *h::Send {Blind}{LCtrl Up}{Left}{LCtrl Down}
   *j::Send {Blind}{LCtrl Up}{Down}{LCtrl Down}
   *k::Send {Blind}{LCtrl Up}{Up}{LCtrl Down}
   *l::Send {Blind}{LCtrl Up}{Right}{LCtrl Down}

#IfWinExist, ; end context-sensitive block
