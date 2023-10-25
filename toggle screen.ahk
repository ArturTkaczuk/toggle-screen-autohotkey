#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


screenToggle := false

#f2:: ; <- change this (currently shortcut is shift & f2)
	screenToggle := !screenToggle
	setTimer, screenOff, % screenToggle ? 250 : "off" ; % sign is for accessing variables
	return

screenOff(){
	postMessage,0x112,0xF170,2,,Program Manager
	return
}
