# i3-arch-setup
My personal i3wm setup guide for arch linux

# [Work in progress guide]

## Clone the repo

```
git clone https://github.com/dizzyrobin/i3-arch-setup
cd i3-arch-setup
```

## Install dependecies

```
sudo pacman -S \
    qt5-base            `#Depencency`\
    dunst               `#Notification manager`\
    playerctl           `#Audio controller for hotkeys`\
    feh                 `#Wallpaper tool`\
    scrot               `#Screenshoot tool`\
    rxvt-unicode        `#Terminal emulator`\
    urxvt-perls         `#URxvt auxiliary scripts`\
    redshift            `#Night mode`\
    perl-anyevent-i3    `#Dependency of i3-save-tree`\
    gimp                `#Image editor`\
    inkscape            `#Vector editor`\
    chromium            `#Web browser`\
    telegram-desktop    `#Telegram Chat Client`\
    nodejs              `#Node js`\
    code                `#Visual Studio Code Editor`\
    XXX                 `#XXX`\
```

## Install yay AUR helper

```
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## Install AUR dependencies

```
yay -S \
    XXX                 `#XXX`\
```

## Install npm global programs

```
npm install --global \
    npm                 `#Node package manager`\
    n                   `#Node version manager`\
    nodemon             `#Monitor changes in nodejs projects`\
    firebase-tools      `#Firebase tools`\
```

## Copy the scripts and config files

```
chmod +x ./home/bin/*
cp -r ./home/* ~
```
