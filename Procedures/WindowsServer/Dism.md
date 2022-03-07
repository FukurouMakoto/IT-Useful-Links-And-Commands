##### How to use DISM


The following is the official Windows documentation on the dism command. 
You can use this command for many different uses, but one of its easiest uses is for getting information on a image, such as a Windows ISO. You can use the following command to get information on what operating system is contained within an iso. 

```
dism /Get-WimInfo /WimFile:\Path\to\wimfile.wim
```


docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/take-inventory-of-an-image-or-component-using-dism?view=windows-11
