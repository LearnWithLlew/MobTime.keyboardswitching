FileRead, OutputVar, keyboard.txt
keyboard := A_Args[1]
;Print(keyboard)
If (OutputVar != keyboard)
{
	Send {Control Down}{Shift Down}{Shift Up}{Control Up}
	FileDelete, keyboard.txt
	FileAppend, %keyboard%, keyboard.txt
}


Print(string){
	ListVars
	WinWait ahk_id %A_ScriptHwnd%
	ControlSetText Edit1, %string%
	WinWaitClose
}