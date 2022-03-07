##### Collect information on a Windows ISO file


The following is a useful command to pull information on a Windows ISO file, namely what operating system is on the ISO. This is useful since often times the default file names for Windows ISO files are not very descriptive at all. 


```
dism /Get-WimInfo /wimfile:\Path\To\install.wim
```
