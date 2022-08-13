##### Sysprep

A powershell command used for preparing a Windows computer for sale or imaging. 
The idea is that you install the necessary drivers, programs and configurations, and then run Sysprep. 
Sysprep generalizes the installation, removing the computer-specific information such as the SID, GUID etc. 

Sysprep also resets the Windows activation, giving the computer an out of the box experience, except for any installed software, personalization, network settings and pinned apps on the start screen.

Once you have prepared the Windows image, you can then send it out with a Windows service such as MDT, WDS, SCCM or even manually.

#### To use

1) Open Command Prompt with admin privileges
2) navigate to C;\Windows\system32\sysprep\
3) run sysprep.exe
4) In the GUI, Choose "Out-of-box Experience"
5) Check "Generalize"
6) Choose your choice of "Shutdown" or "Reboot"
7) Wait for the process to complete
