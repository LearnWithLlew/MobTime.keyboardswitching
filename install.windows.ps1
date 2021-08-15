# To run this script directly, run this in an elevated admin PowerShell prompt:
#     Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/LearnWithLlew/MobTime.keyboardswitching/main/install.windows.ps1 | Invoke-Expression

# This script is intended to setup a dev machine from scratch. Very useful for setting up a EC2 instance for mobbing.
#

iwr -useb cin.st | iex
choco feature enable --name=allowGlobalConfirmation

choco install anyhotkey

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/LearnWithLlew/MobTime.keyboardswitching.git C:\Code\MobTime.keyboardswitching
[System.Environment]::SetEnvironmentVariable('MOBTIME_SCRIPT', 'c:\code\MobTime.keyboardswitching\rotate_{name}.bat', [System.EnvironmentVariableTarget]::User)

# Done
cls
echo "Done!"
