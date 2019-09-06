# general commands all Windows devs should know

## scripting security policies
Set-ExeccutionPolicy Restricted # locks PowerShell down (default)
Set-ExecutionPolicy RemoteSigned # only local ps1 scripts will run
Set-ExecutionPolicy AllSigned # allow trusted publisher scripts to run
Set-ExecutionPolicy Unrestricted # allow all ps1 scripts to run

## view event logs
Get-EventLog -List # list of local events
Get-EventLog -LogName System -Newest 10 # get event list by specific name / limit output
Get-EventLog -LogName Security -EntryType Error # get event list by specific name && type
Get-EventLog -LogName System -UserName NT* | Group-Object -Property UserName -NoElement | Select-Object -Property Count, Name # get event list & group by a property (i.e username)

## control process(es)
Start-Process notepad.exe # start an new instance of a process
Get-Process # list all system processes
Stop-Process -Name notepad # stop an active process