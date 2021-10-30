for /f %s in ('dir /b *.dll') do regsvr32 /s %s
