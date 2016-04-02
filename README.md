# mac_keyboard_remaps_karabiner
my keyboard mappings for Ducky Mini with HJKL Arrow keys like vim

private.xml lives here

/Users/john/Library/Application Support/Karabiner/private.xml



I was able to get linux keyboard mappings to work with GalliumOS on a Acer chromebook.

So this should also work for xubuntu, and probably ubuntu also.

diff the your /usr/share/X11/xkb/symbols/us and the copy of that file here.

port those changed into your 'us' file.

Then delete any files in /var/lib/xkb/server-\*

reboot

after reboot, you can run:
xmodmap ./dot_Xmodemap

and you should be all set
