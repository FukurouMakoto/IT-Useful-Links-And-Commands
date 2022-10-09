# Change IP address thru CLI on Linux

Change your IP address and subnet mask:
	```
	sudo ifconfig interface ip_address netmask subnet_mask
	```
Example:
	```
	sudo ifconfig eth0 192.168.1.1 netmask 255.255.255.0
	```

Change default gateway:
	```
	sudo route add default gw default_gateway_address interface
	```
Example:
	```
	sudo route add default gw 192.168.1.1 eth0
	```
