Returns boolean determining if prompt was run noninteractive.

# Description

First, we check `[Environment]::UserInteractive` to determine if we're if the shell if running 
interactively. An example of not running interactively would be if the shell is running as a service.

If we are running interactively, we check the Command Line Arguments to see if the `-NonInteractive` 
switch was used; or an abbreviation of the switch.

Works well with [REQUIREMENTS.json](https://github.com/UNT-CAS-ITS/Test-IsNonInteractiveShell/wiki/REQUIREMENTS.json).

# Links

- https://github.com/UNT-CAS-ITS/Test-IsNonInteractiveShell
- https://gitlab.com/UNT-CAS-ITS/Test-IsNonInteractiveShell
