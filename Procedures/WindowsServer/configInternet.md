# How to configure internet on Windows Server


This is about configuring your NIC's and vNic in Windows Server.

The vNic is what controls internet for the server. 
You should set the actual ethernet ports within Windows Server to use DHCP and Automatic DNS, and do your actual Ethernet configurations on the vNIC instead.

Failure to do so can sometimes lead to your Windows Server not being able to get internet.

Also note that you figured this out by setting all your NIC's to DHCP and Auto-DNS, and then slowly changing each NIC one by one until you reached one that allowed you to get internet.
