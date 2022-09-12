# Get battery information in Linux


The following command allows you to pull lots of useful information about your laptop battery.

```
upower -i /org/freedesktop/UPower/devices/battery_BAT0
```

The following also lets you do it just thru pulling device info from the sys folder:
```
cat /sys/class/power_supply/BAT0/capacity | sed s/$/%/
```

### Checking battery life

If you want to use this command to check how old your battery is, or if your battery is in need of replacing, there are two important fields to check:
- energy-full
- energy-full-design

If you see a large discrepancy between these two values, this is usually a sign that it is time to replace your battery.

