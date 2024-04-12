# PowerShell Script to Restore Old Context Menu in Windows 11

<# 
    Script Name: RestoreOldContextMenu.ps1
    Description: This script restores the old right-click context menu in Windows 11 by modifying
                 a specific registry key. After updating the registry, it restarts the File Explorer
                 to apply the changes. Please run this script with administrative privileges.
    Author: Aviad Ofek
    Date: April 2024
#>

# This command adds the necessary registry key to enable the old context menu
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

# Restart the Explorer process to apply the changes
Stop-Process -Name explorer -Force
Start-Process explorer
