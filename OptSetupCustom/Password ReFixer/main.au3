MsgBox(0, @ScriptName, "Use the ""EndTask"" button in the top left to exit without rebooting.")

$Pid = ShellExecute("refixer.exe", "", @ScriptDir)


$CloseForm = GUICreate("", 52, 18, 0, 0, 0x80000000)
$ForceCloseButton = GUICtrlCreateButton("EndTask", 0, 0, 52, 18)
GUISetState(@SW_SHOW, $CloseForm)
WinSetOnTop ($CloseForm, "", 1)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $ForceCloseButton
			ProcessClose($Pid)
			Exit
	EndSwitch

	If NOT ProcessExists($Pid) Then Exit

	Sleep(20)
Wend