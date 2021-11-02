# How to reset the root password on Linux Servers (Ubuntu Server specifically)

The following is a tutorial on how to reset your root user password in the event that you have forgotten its password.

<ol>
	<li>Boot up your machine.</li>
	<li>After the BIOS screen, hold down the left Shift key.</li>
	<li>You will be prompted by a menu that looks like this:</li>
	<li>Choose recovery mode.</li>
	<li>You should see a menu that looks like the following:</li>
	<li>Scroll down to root.</li>
	<li>
		You should now be at the root prompt.
		```
		root@ubuntu:~#
		```
	</li>
	<li>
		From here, reset the root password with passwd
		```
		passwd root
		Enter new UNIX password:
		Retype new UNIX password:
		Passwd: password updated successfully
		```
		
	</li>
	<li>Now reboot the system and log in as root.</li>
</ol>
