##### Enable Remote Desktop thru Powershell

The following commands can be run to enable Remote Desktop thru Powershell. 

First have the server stop denying remote connection attempts

```
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -name "fDenyTSConnections" -value 0
```

Next, create a opening in Windows Firewall
```
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
```
