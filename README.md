# Setup
* Fill in "powershell-functions.ps1" with any data required at the top of the file (eg. path to projects folder)
* Add the "powershell-functions.ps1" script to your PowerShell profile (run "code $profile" to access PowerShell profile)
* Instal Jetbrains Intellij IDEA (64-bit)


# Usage
### Open projects folder:
1. Run "Open-Projects" from PowerShell
2. You will navigate into your projects folder in PowerShell
###### Open tracked project folder
1. Run "Open-Projects tracked from PowerShell
2. You will navigate into the tracked projects folder in PowerShell
###### Open tracked project folder
1. Run "Open-Projects untracked" (alias: "projects u") from PowerShell
2. You will navigate into the untracked projects folder in PowerShell

### Create a file:
1. Run "New-File" then the file name from PowerShell (eg. "New-File file.txt")
2. The file will be created in the current directory

### Open Jetbrains Intellij IDEA:
1. Run "Open-Idea" from Powershell


# Aliases
### Open-Projects:
* projects
* p
### New-File:
* touch
### Open-Idea:
* id