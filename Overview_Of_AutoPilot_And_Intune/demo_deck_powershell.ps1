Live demo 

MUST BE RUN FROM POWERSHELL 5.1 

# PowerShell
SHIFT + F10

Powershell

# Configure Powershell Execution Policy
Set-ExecutionPolicy –ExecutionPolicy ‘RemoteSigned’

# Create Working Folder
New-Item -ItemType 'Directory' -Path ‘C:\DeviceHash’

# Download Setup Script
Save-Script -Name 'Get-WindowsAutoPilotInfo' -Path 'C:\DeviceHash’

# Nuget will prompt for update

# Execute Device Hash – Export to CSV
$Serial = (Get-ComputerInfo).BiosSeralNumber
C:\DeviceHash\Get-WindowsAutoPilotInfo.ps1 –OutputFile C:\DeviceHash\$($Serial)_DeviceCapture.csv
notepad C:\DeviceHash\*.csv

# Execute Device Hash – Direct Upload
C:\DeviceHash\Get-WindowsAutoPilotInfo.ps1 -Online

Enter Hyper-V Lab Administrator Details (Store in Clip Board)

Log into Intune and Show PC. 

