# Make sure to read README to understand how to use this script

# Variables to change
[String] $projectsPath = "Path/To/projects"
# End of variables to change


function projects {
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


function touch {
	param (
		[String] $name
    )
    # Makes a file at the current directory with the name inputed
	New-Item -path $name -ItemType File | Out-Null
}


# Aliases
Set-Alias -Name p -Value projects
