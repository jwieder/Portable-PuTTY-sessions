@ECHO OFF
regedit /s PUTTY.REG
regedit /s PUTTYRND.REG
start /w putty.exe
regedit /ea NEW.REG HKEY_CURRENT_USER\Software\SimonTatham\PuTTY
copy NEW.REG PUTTY.REG
del NEW.REG
regedit /s PUTTYDEL.REG
