Hidden = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
SSHidden = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"
set Command = WScript.CreateObject("WScript.Shell")

Check = Command.RegRead(Hidden)
if Check = 2 then
	Command.RegWrite Hidden, 1, "REG_DWORD"
	Command.RegWrite SSHidden, 1, "REG_DWORD"
else
	Command.RegWrite Hidden, 2, "REG_DWORD"
	Command.RegWrite SSHidden, 0, "REG_DWORD"
end if
Command.SendKeys "{F5}"