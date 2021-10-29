This command is used to create multiple directories with one command in Powershell.


### The command

```
"DirectoryName1", "Directory2", "Directory3" | %(New-Item -Name "$_" -ItemType "Directory")
```

- First, input the folder names in quotations, seperating them with a comma.
- Next, pipe these into the New-Item command, specifying two flags: -Name, and -ItemType.
- -Name will iterate over each of the folder names that you pipe into the command.
- -ItemType specifies that the files you are creating will be directories.
