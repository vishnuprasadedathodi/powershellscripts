#TASK2
Get-CimInstance -ClassName Win32_ComputerSystem
Get-CimInstance -ClassName Win32_ComputerSystem| Select-Object UserName
Get-CimInstance -ClassName Win32_LogicalDisk| select-object DeviceID,FreeSpace
