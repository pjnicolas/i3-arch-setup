# i3-arch-setup
My personal i3wm setup guide for arch linux

# [Work in progess guide]

## Clone the repo

```
git clone https://github.com/dizzyrobin/i3-arch-setup
cd i3-arch-setup
```

## Install dependecies

```
sudo pacman -S \
    dunst               `#Notification manager`\
    playerctl           `#Audio controller for hotkeys`\
    feh                 `#Wallpaper tool`\
    scrot               `#Screenshoot tool`\
    rxvt-unicode        `#Terminal emulator`\
    urxvt-perls         \
    redshift            `#Nightmode`\
    perl-anyevent-i3    `#Dependency of i3-save-tree`\
    XXX   `#XXX`\
```

## Install AUR dependencies

```
yay -S \
    XXX   `#XXX`\
```

## Copy the scripts and config files

```
chmod +x ./home/bin/*
cp -r ./home/* ~
```
