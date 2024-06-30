{ config, lib, pkgs, ... }:

{
  programs = {
    ranger = {
      rifle = [
        {condition="ext csv, has libreoffice,          X, flag f"; command = "libreoffice \"$@\"";}
        {condition="ext x?html?, has surf,             X, flag f"; command = "surf -- file://\"$1\"";}
        {condition="ext x?html?, has vimprobable,      X, flag f"; command = "vimprobable -- \"$@\"";}
        {condition="ext x?html?, has vimprobable2,     X, flag f"; command = "vimprobable2 -- \"$@\"";}
        {condition="ext x?html?, has qutebrowser,      X, flag f"; command = "qutebrowser -- \"$@\"";}
        {condition="ext x?html?, has dwb,              X, flag f"; command = "dwb -- \"$@\"";}
        {condition="ext x?html?, has jumanji,          X, flag f"; command = "jumanji -- \"$@\"";}
        {condition="ext x?html?, has luakit,           X, flag f"; command = "luakit -- \"$@\"";}
        {condition="ext x?html?, has uzbl,             X, flag f"; command = "uzbl -- \"$@\"";}
        {condition="ext x?html?, has uzbl-tabbed,      X, flag f"; command = "uzbl-tabbed -- \"$@\"";}
        {condition="ext x?html?, has uzbl-browser,     X, flag f"; command = "uzbl-browser -- \"$@\"";}
        {condition="ext x?html?, has uzbl-core,        X, flag f"; command = "uzbl-core -- \"$@\"";}
        {condition="ext x?html?, has midori,           X, flag f"; command = "midori -- \"$@\"";}
        {condition="ext x?html?, has opera,            X, flag f"; command = "opera -- \"$@\"";}
        {condition="ext x?html?, has firefox,          X, flag f"; command = "firefox -- \"$@\"";}
        {condition="ext x?html?, has google-chrome,    X, flag f"; command = "google-chrome --new-window -- \"$@\"";}
        {condition="ext x?html?, has seamonkey,        X, flag f"; command = "seamonkey -- \"$@\"";}
        {condition="ext x?html?, has iceweasel,        X, flag f"; command = "iceweasel -- \"$@\"";}
        {condition="ext x?html?, has chromium-browser, X, flag f"; command = "chromium-browser -- \"$@\"";}
        {condition="ext x?html?, has chromium,         X, flag f"; command = "chromium -- \"$@\"";}
        {condition="ext x?html?, has epiphany,         X, flag f"; command = "epiphany -- \"$@\"";}
        {condition="ext x?html?, has konqueror,        X, flag f"; command = "konqueror -- \"$@\"";}
        {condition="ext x?html?, has elinks,            terminal"; command = "elinks \"$@\"";}
        {condition="ext x?html?, has links2,            terminal"; command = "links2 \"$@\"";}
        {condition="ext x?html?, has links,             terminal"; command = "links \"$@\"";}
        {condition="ext x?html?, has lynx,              terminal"; command = "lynx -- \"$@\"";}
        {condition="ext x?html?, has w3m,               terminal"; command = "w3m \"$@\"";}
        {condition="mime ^text,  label editor"; command = "nvim -- \"$@\"";}
        {condition="mime ^text,  label pager "; command = "\"$PAGER\" -- \"$@\"";}
        {condition="!mime ^text, label editor, ext xml|json|csv|tex|py|pl|rb|js|sh|php"; command = "nvim -- \"$@\"";}
        {condition="!mime ^text, label pager,  ext xml|json|csv|tex|py|pl|rb|js|sh|php"; command = "\"$PAGER\" -- \"$@\"";}
        {condition="ext 1                        "; command = "man \"$1\"";}
        {condition="ext s[wmf]c, has zsnes, X    "; command = "zsnes \"$1\"";}
        {condition="ext s[wmf]c, has snes9x-gtk,X"; command = "snes9x-gtk \"$1\"";}
        {condition="ext nes, has fceux, X        "; command = "fceux \"$1\"";}
        {condition="ext exe                      "; command = "wine \"$1\"";}
        {condition="name ^[mM]akefile$           "; command = "make";}
        {condition="ext py "; command = "python3 -- \"$1\"";}
        {condition="ext pl "; command = "perl -- \"$1\"";}
        {condition="ext rb "; command = "ruby -- \"$1\"";}
        {condition="ext js "; command = "node -- \"$1\"";}
        {condition="ext sh "; command = "sh -- \"$1\"";}
        {condition="ext php"; command = "php -- \"$1\"";}
        {condition="mime ^audio|ogg$, terminal, has mpv     "; command = "mpv -- \"$@\"";}
        {condition="mime ^audio|ogg$, terminal, has mplayer2"; command = "mplayer2 -- \"$@\"";}
        {condition="mime ^audio|ogg$, terminal, has mplayer "; command = "mplayer -- \"$@\"";}
        {condition="ext midi?,        terminal, has wildmidi"; command = "wildmidi -- \"$@\"";}
        {condition="mime ^video|audio, has gmplayer, X, flag f"; command = "gmplayer -- \"$@\"";}
        {condition="mime ^video|audio, has smplayer, X, flag f"; command = "smplayer \"$@\"";}
        {condition="mime ^video,       has mpv,      X, flag f"; command = "mpv -- \"$@\"";}
        {condition="mime ^video,       has mpv,      X, flag f"; command = "mpv --fs -- \"$@\"";}
        {condition="mime ^video,       has mplayer2, X, flag f"; command = "mplayer2 -- \"$@\"";}
        {condition="mime ^video,       has mplayer2, X, flag f"; command = "mplayer2 -fs -- \"$@\"";}
        {condition="mime ^video,       has mplayer,  X, flag f"; command = "mplayer -- \"$@\"";}
        {condition="mime ^video,       has mplayer,  X, flag f"; command = "mplayer -fs -- \"$@\"";}
        {condition="mime ^video|audio, has vlc,      X, flag f"; command = "vlc -- \"$@\"";}
        {condition="mime ^video|audio, has totem,    X, flag f"; command = "totem -- \"$@\"";}
        {condition="mime ^video|audio, has totem,    X, flag f"; command = "totem --fullscreen -- \"$@\"";}
        {condition="mime ^video, terminal, !X, has mpv      "; command = "mpv -- \"$@\"";}
        {condition="mime ^video, terminal, !X, has mplayer2 "; command = "mplayer2 -- \"$@\"";}
        {condition="mime ^video, terminal, !X, has mplayer  "; command = "mplayer -- \"$@\"";}
        {condition="ext pdf, has okular,   X, flag f"; command = "okular -- \"$@\"";}
        {condition="ext pdf, has evince,   X, flag f"; command = "evince -- \"$@\"";}
        {condition="ext pdf, has google-chrome,    X, flag f"; command = "google-chrome --new-window -- \"$@\"";}
        {condition="ext pdf, has google-chrome-stable,    X, flag f"; command = "google-chrome-stable --new-window -- \"$@\"";}
        {condition="ext pdf, has llpp,     X, flag f"; command = "llpp \"$@\"";}
        {condition="ext pdf, has zathura,  X, flag f"; command = "zathura -- \"$@\"";}
        {condition="ext pdf, has mupdf,    X, flag f"; command = "mupdf \"$@\"";}
        {condition="ext pdf, has mupdf-x11,X, flag f"; command = "mupdf-x11 \"$@\"";}
        {condition="ext pdf, has apvlv,    X, flag f"; command = "apvlv -- \"$@\"";}
        {condition="ext pdf, has xpdf,     X, flag f"; command = "xpdf -- \"$@\"";}
        {condition="ext pdf, has atril,    X, flag f"; command = "atril -- \"$@\"";}
        {condition="ext pdf, has epdfview, X, flag f"; command = "epdfview -- \"$@\"";}
        {condition="ext pdf, has qpdfview, X, flag f"; command = "qpdfview \"$@\"";}
        {condition="ext pdf, has open,     X, flag f"; command = "open \"$@\"";}
        {condition="ext                        sxc|xlsx?|xlt|xlw|gnm|gnumeric, has gnumeric,    X, flag f"; command = "gnumeric -- \"$@\"";}
        {condition="ext                        sxc|xlsx?|xlt|xlw|gnm|gnumeric, has kspread,     X, flag f"; command = "kspread -- \"$@\"";}
        {condition="ext pptx?|od[dfgpst]|docx?|sxc|xlsx?|xlt|xlw|gnm|gnumeric, has libreoffice, X, flag f"; command = "libreoffice \"$@\"";}
        {condition="ext pptx?|od[dfgpst]|docx?|sxc|xlsx?|xlt|xlw|gnm|gnumeric, has soffice,     X, flag f"; command = "soffice \"$@\"";}
        {condition="ext pptx?|od[dfgpst]|docx?|sxc|xlsx?|xlt|xlw|gnm|gnumeric, has ooffice,     X, flag f"; command = "ooffice \"$@\"";}
        {condition="ext djvu, has zathura,X, flag f"; command = "zathura -- \"$@\"";}
        {condition="ext djvu, has evince, X, flag f"; command = "evince -- \"$@\"";}
        {condition="ext djvu, has atril,  X, flag f"; command = "atril -- \"$@\"";}
        {condition="ext djvu, has djview, X, flag f"; command = "djview -- \"$@\"";}
        {condition="ext epub, has foliate,      X, flag f"; command = "foliate -- \"$@\"";}
        {condition="ext epub, has ebook-viewer, X, flag f"; command = "ebook-viewer -- \"$@\"";}
        {condition="ext epub, has zathura,      X, flag f"; command = "zathura -- \"$@\"";}
        {condition="ext epub, has mupdf,        X, flag f"; command = "mupdf -- \"$@\"";}
        {condition="ext mobi, has ebook-viewer, X, flag f"; command = "ebook-viewer -- \"$@\"";}
        {condition="ext cbr,  has zathura,      X, flag f"; command = "zathura -- \"$@\"";}
        {condition="ext cbz,  has zathura,      X, flag f"; command = "zathura -- \"$@\"";}
        {condition="mime ^image/svg, has inkscape, X, flag f"; command = "inkscape -- \"$@\"";}
        {condition="mime ^image/svg, has display,  X, flag f"; command = "display -- \"$@\"";}
        {condition="ext psd, has gimp,          X, flag f"; command = "gimp -- \"$@\"";}
        {condition="mime ^image, has qimgv,     X, flag f"; command = "qimgv -- \"$@\"";}
        {condition="mime ^image, has imv,       X, flag f"; command = "imv -- \"$@\"";}
        {condition="mime ^image, has pqiv,      X, flag f"; command = "pqiv -- \"$@\"";}
        {condition="mime ^image, has sxiv,      X, flag f"; command = "sxiv -- \"$@\"";}
        {condition="mime ^image, has feh,       X, flag f"; command = "feh -- \"$@\"";}
        {condition="mime ^image, has mirage,    X, flag f"; command = "mirage -- \"$@\"";}
        {condition="mime ^image, has ristretto, X, flag f"; command = "ristretto \"$@\"";}
        {condition="mime ^image, has eog,       X, flag f"; command = "eog -- \"$@\"";}
        {condition="mime ^image, has eom,       X, flag f"; command = "eom -- \"$@\"";}
        {condition="mime ^image, has nomacs,    X, flag f"; command = "nomacs -- \"$@\"";}
        {condition="mime ^image, has geeqie,    X, flag f"; command = "geeqie -- \"$@\"";}
        {condition="mime ^image, has gpicview,  X, flag f"; command = "gpicview -- \"$@\"";}
        {condition="mime ^image, has gwenview,  X, flag f"; command = "gwenview -- \"$@\"";}
        {condition="mime ^image, has gimp,      X, flag f"; command = "gimp -- \"$@\"";}
        {condition="ext xcf,                    X, flag f"; command = "gimp -- \"$@\"";}
        {condition="ext 7z, has 7z"; command = "7z -p l \"$@\" | \"$PAGER\"";}
        {condition="ext ace|ar|arc|bz2?|cab|cpio|cpt|deb|dgc|dmg|gz,     has atool"; command = "atool --list --each -- \"$@\" | \"$PAGER\"";}
        {condition="ext iso|jar|msi|pkg|rar|shar|tar|tgz|xar|xpi|xz|zip, has atool"; command = "atool --list --each -- \"$@\" | \"$PAGER\"";}
        {condition="ext 7z|ace|ar|arc|bz2?|cab|cpio|cpt|deb|dgc|dmg|dz,  has atool"; command = "atool --extract --each -- \"$@\"";}
        {condition="ext iso|jar|msi|pkg|rar|shar|tar|tgz|xar|xpi|xz|zip, has atool"; command = "atool --extract --each -- \"$@\"";}
        {condition="ext tar|gz|bz2|xz, has tar"; command = "tar vvtf \"$1\" | \"$PAGER\"";}
        {condition="ext tar|gz|bz2|xz, has tar"; command = "for file in \"$@\"; do tar vvxf \"$file\"; done";}
        {condition="ext bz2, has bzip2"; command = "for file in \"$@\"; do bzip2 -dk \"$file\"; done";}
        {condition="ext zip, has unzip"; command = "unzip -l \"$1\" | \"$PAGER\"";}
        {condition="ext zip, has unzip"; command = "for file in \"$@\"; do unzip -d \"\${file%.*}\" \"$file\"; done";}
        {condition="ext ace, has unace"; command = "unace l \"$1\" | \"$PAGER\"";}
        {condition="ext ace, has unace"; command = "for file in \"$@\"; do unace e \"$file\"; done";}
        {condition="ext rar, has unrar"; command = "unrar l \"$1\" | \"$PAGER\"";}
        {condition="ext rar, has unrar"; command = "for file in \"$@\"; do unrar x \"$file\"; done";}
        {condition="mime ^font, has fontforge, X, flag f"; command = "fontforge \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has terminology"; command = "terminology -e \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has kitty"; command = "kitty -- \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has alacritty"; command = "alacritty -e \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has sakura"; command = "sakura -e \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has lilyterm"; command = "lilyterm -e \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has termite"; command = "termite -x '\"$@\"'";}
        {condition="mime ^ranger/x-terminal-emulator, has guake"; command = "guake -ne \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has tilda"; command = "tilda -c \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has st"; command = "st -e \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has terminator"; command = "terminator -x \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has urxvt"; command = "urxvt -e \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has pantheon-terminal"; command = "pantheon-terminal -e \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has lxterminal"; command = "lxterminal -e \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has mate-terminal"; command = "mate-terminal -x \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has xfce4-terminal"; command = "xfce4-terminal -x \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has konsole"; command = "konsole -e \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has gnome-terminal"; command = "gnome-terminal -- \"$@\"";}
        {condition="mime ^ranger/x-terminal-emulator, has xterm"; command = "xterm -e \"$@\"";}
        {condition="label wallpaper, number 11, mime ^image, has feh, X"; command = "feh --bg-scale \"$1\"";}
        {condition="label wallpaper, number 12, mime ^image, has feh, X"; command = "feh --bg-tile \"$1\"";}
        {condition="label wallpaper, number 13, mime ^image, has feh, X"; command = "feh --bg-center \"$1\"";}
        {condition="label wallpaper, number 14, mime ^image, has feh, X"; command = "feh --bg-fill \"$1\"";}
        {condition="label open, has xdg-open"; command = "xdg-open -- \"$@\"";}
        {condition="label open, has open    "; command = "open -- \"$@\"";}
        {condition="              !mime ^text, !ext xml|json|csv|tex|py|pl|rb|js|sh|php "; command = "ask";}
        {condition="label editor, !mime ^text, !ext xml|json|csv|tex|py|pl|rb|js|sh|php "; command = "nvim -- \"$@\"";}
        {condition="label pager,  !mime ^text, !ext xml|json|csv|tex|py|pl|rb|js|sh|php "; command = "\"$PAGER\" -- \"$@\"";}
        {condition="mime application/x-executable"; command = "\"$1\"";}
        {condition="label trash, has trash-put"; command = "trash-put -- \"$@\"";}
        {condition="label trash"; command = "mkdir -p -- \${XDG_DATA_DIR:-$HOME/.ranger}/ranger-trash; mv -- \"$@\" \${XDG_DATA_DIR:-$HOME/.ranger}/ranger-trash";}
      ];
    };
  };
}
