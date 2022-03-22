# Get battery information in Linux


The following command allows you to pull lots of useful information about your laptop battery.

```
upower -i /org/freedesktop/UPower/devices/battery_BAT0
```

The following also lets you do it just thru pulling device info from the sys folder:
```
cat /sys/class/power_supply/BAT0/capacity | sed s/$/%/
```
