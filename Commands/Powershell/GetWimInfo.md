##### Collect information on a Windows ISO file


The following is a useful command to pull information on a Windows ISO file, namely what operating system is on the ISO. This is useful since often times the default file names for Windows ISO files are not very descriptive at all. 


```
dism /Get-WimInfo /wimfile:\Path\To\install.wim
```

If you want to get specific information about the installation, such as the version, language, or date created, simply append an index to the command.
```
dism /Get-WimInfo /wimfile:\Path\To\install.wim /index:1
```
An index is used to seperate the various versions of Windows that might be on the ISO file, such as Windows 10 Pro or Windows 10 Home.
You can run the above command first in order to find what versions you have, and then specify an index from there.
In most cases, you can just use index 1.

From here, check the Version entry field to find what version is on the ISO, and compare that with Wikipedia's [Windows 10 version history article.](https://en.wikipedia.org/wiki/Windows_10_version_history)


####Windows 10 has incorrect version and build number
You may find that at times the version and build number are reported incorrectly when using the above. 
This is because new features included in the newer versions such as 21H2 are included in the ISO but in an inactive or dormant state.They will remain dormant until they are turned on through the enablement package.
Because of this, metadata will report incorrect versions at times. 

To workaround this, run dism /get-packages, pointing the image to wherever you have the ISO file mounted.


```
dism /Get-Packages /Image:\Path\To\IsoMountLocation
```

Check the results for the following packages. If they are there, that is the version of Windows on the ISO.

Package_for_KB4517245 = 1909
Package_for_KB4562830 = 20H2
Package_for_KB5000736 = 21H1
Package_for_KB5003791 = 21H2
