# Make sure to read README to understand how to use this script

# Variables to change
[String] $projectsPath = "Path/To/Projects"
# End of variables to change


function projects {
    # Changed directory to the projects folder
    Set-Location $projectsPath
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
