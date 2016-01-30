<#
.SYNOPSIS
Returns boolean determining if prompt was run noninteractive.
.DESCRIPTION
First, we check `[Environment]::UserInteractive` to determine if we're if the shell if running 
interactively. An example of not running interactively would be if the shell is running as a service.

If we are running interactively, we check the Command Line Arguments to see if the `-NonInteractive` 
switch was used; or an abbreviation of the switch.
.LINK
https://github.com/Vertigion/Test-IsNonInteractiveShell
#>
function Test-IsNonInteractiveShell {
    if ([Environment]::UserInteractive) {
        foreach ($arg in [Environment]::GetCommandLineArgs()) {
            # Test each Arg for match of abbreviated '-NonInteractive' command.
            if ($arg -match '-NonI.*') {
                return $true
            }
        }
    }

    return $false
}