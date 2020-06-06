# Make sure to read README to understand how to use this script

# Variables to change
[String] $projectsPath = "Path/To/projects"
# End of variables to change


function Open-Projects {
    param (
        [String] $directory
    )
    # Changed directory to the projects folder
    Set-Location $projectsPath

    if ($directory.ToLower().Equals("t") -or $directory.ToLower().Equals("tracked")) {              # If command is "projects tracked" or "projects t"
        # Changes directory to the tracked project folder
        Set-Location Tracked
    } elseif ($directory.ToLower().Equals("u") -or $directory.ToLower().Equals("untracked")) {      # If command is "projects untracked" or "projects u"
        # Changes directory to the untracked project folder
        Set-Location Untracked
    }
}


function New-File {
	param (
		[String] $name
    )
    # Makes a file at the current directory with the name inputed
	New-Item -path $name -ItemType File | Out-Null
}

function Open-Idea {
    idea64
}


# Aliases
Set-Alias -Name projects -Value Open-Projects
Set-Alias -Name p -Value Open-Projects

Set-Alias -Name touch -Value New-File

Set-Alias -Name id -Value Open-Idea
