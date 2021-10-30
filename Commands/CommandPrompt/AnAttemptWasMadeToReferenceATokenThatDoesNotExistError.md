The following code is used to fix the "An attempt was made to reference a token that does not exist" error. 
This error can sometimes be caused by corrupted system files from a inconsistent Windows update, a malware infection, or manual interference.

The following command will only work if the error is actually triggered by file corruption, which makes it also useful
for diagnosis. 


The following code must be made from a elevated cmd prompt.

```
for /f %s in ('dir /b *.dll') do regsvr32 /s %s
```

Reboot your computer afterwards.
