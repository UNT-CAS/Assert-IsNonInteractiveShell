Returns boolean determining if prompt was run noninteractive.

# Description

First, we check `[Environment]::UserInteractive` to determine if we're if the shell if running 
interactively. An example of not running interactively would be if the shell is running as a service.

If we are running interactively, we check the Command Line Arguments to see if the `-NonInteractive` 
switch was used; or an abbreviation of the switch.

# REQUIREMENTS.json

Use with [REQUIREMENTS.json](https://github.com/Vertigion/REQUIREMENTS.json) like this:

```json
[
    {
        "Name": "Test-IsNonInteractiveShell",
        "Command": "Test-IsNonInteractiveShell",
        "Version": "v1.0",
        "URL": "https://github.com/UNT-CAS-ITS/{0}/archive/{1}.zip",
        "URL_f": "@($requirement.Name, $requirement.Version)",
        "Path": "{0}\\REQUIREMENTS.json\\",
        "Path_f": "$env:Temp",
        "Import": ". {0}{1}-{2}\\{1}.ps1",
        "Import_f": "@($Path, $requirement.Name, $requirement.Version.Split('v')[1])"
    }
]
```

# Links

- https://github.com/UNT-CAS-ITS/Test-IsNonInteractiveShell
- https://gitlab.com/UNT-CAS-ITS/Test-IsNonInteractiveShell