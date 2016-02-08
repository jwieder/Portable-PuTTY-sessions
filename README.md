# Portable-PuTTY-sessions
By default, the Windows SSH client PuTTY stores information about saved sessions on the registry of the local computer on which it is installed. This script will instead store that information within a directory of the user's choice - allowing session information to be stored on a portable encrypted drive. This is assembled from PuTTY documentation, and I'm mostly putting this here as a place-holder for myself. If you find its really useful let me know and I will make it less awful.

Josh Wieder
contact@joshwieder.net

### Instructions

Place all files included with `Portable PuTTY Sessions` into the directory that you have installed PuTTY in - by default it will be C:\Program Files (x86)\PuTTY on a 64 bit system or C:\Program Files\PuTTY on a 32 bit system.

Instead of running `putty.exe` to launch PuTTY, use the new `PUTTY.BAT`. Saved sessions data will be stored to the file `putty.reg` in the same directory as PuTTY. You can change the location that `putty.reg` is loaded from and saved to by altering `PUTTY.BAT` in a text editor of your choice. Lines 2 and 6 of `PUTTY.BAT` include references to `putty.reg` - simply prepend your preferred path to that filename - so if you want to store the file on a thumb drive D: in a folder named putty, your modified lines would loook like this:

    Line 2: regedit /s D:\putty\PUTTY.REG
    Line 6: copy NEW.REG D:\putty\PUTTY.REG

In addition to session data, this script also exports random seed data (which is itself stored by default in the registry). The random seed data is stored at `C:\Program Files (x86)\PuTTY\putty.rnd` in the current version. The filename and path can be changed by altering line 2 of `PUTTYRND.REG`.

### To-Do

As time permits (ha!) this would be a lot more useful with the following:

- Auto-detection of PuTTY location
- Parsing configuration options from a single file and defaulting to something less stupid
