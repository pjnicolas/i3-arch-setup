# i3-arch-setup
My personal i3wm setup guide for arch linux

# [Work in progress guide]

## Clone the repo

```
git clone https://github.com/dizzyrobin/i3-arch-setup
cd i3-arch-setup
```

## Create user

```
useradd dizzyrobin -G sudo,wheel -m -U -s /bin/zsh
passwd dizzyrobin
```

## Install dependecies

```
sudo pacman -S \
    base-devel              `#Basic developer tools`\
    vi                      `#Editor`\
    vim                     `#Editor`\
    nano                    `#Editor`\
    git                     `#Version control`\
    qt5-base                `#Depencency`\
    dunst                   `#Notification manager`\
    playerctl               `#Audio controller for hotkeys`\
    feh                     `#Wallpaper tool`\
    scrot                   `#Screenshoot tool`\
    rxvt-unicode            `#Terminal emulator`\
    urxvt-perls             `#URxvt auxiliary scripts`\
    redshift                `#Night mode`\
    perl-anyevent-i3        `#Dependency of i3-save-tree`\
    gimp                    `#Image editor`\
    inkscape                `#Vector editor`\
    chromium                `#Web browser`\
    telegram-desktop        `#Telegram Chat Client`\
    nodejs                  `#Node js`\
    npm                     `#Node Package Manager`\
    code                    `#Visual Studio Code Editor`\
    discord                 `#Discord chat for gamers`\
    nautilus                `#File manager`\
    file-roller             `#Archive manager`\
    pulseaudio              `#Pulseaudio`\
    paprefs                 `#PulseAudio Preferences`\
    pavucontrol             `#PulseAudio Volume Control`\
    pulseaudio-alsa         `#PulseAudio Alsa`\
    wget                    `#Network utility`\
    autorandr               `#Auto xrandr`\
    dbus                    `#dbus lib`\
    python-dbus             `#python dbug lib`\
    networkmanager          `#python dbug lib`\
    network-manager-applet  `#Network manager applet`\
    thunderbird             `#Email reader`\
    picom                   `#X Compositor`\
    blueman                 `#Bluetooth manager`\
    watchman                `#A file watching utility`\
    i3lock                  `#i3wm lock screen`\
    trash-cli               `#Trash cli tool`\
    alsa-utils              `#Alsa utils tools`\
    pulseaudio-bluetooth    `#Pulseaudio bluetooth module`\
    yad                     `#Calendar`\
    noto-fonts-emoji        `#Font for icons and emojis`\
    ttf-font-awesome        `#Font for icons and emojis`\
    iw                      `#XXX`\
    rsync                   `#XXX`\
    acpi                    `#XXX`\
    XXX                     `#XXX`\
```

## Install oh-my-zsh

```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
    megasync            `#MegaSync Client`\
    ttf-ms-fonts        `#Fonts from Microsoft`\
    google-chrome       `#Google Chrome web browser`\
    spotify             `#Spotify`\
    tor-browser         `#Tor Browser`\
    XXX                 `#XXX`\
```

## Install npm global programs

```
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
```

```
npm install --global \
    npm                 `#Node package manager`\
    n                   `#Node version manager`\
    nodemon             `#Monitor changes in nodejs projects`\
    react-native-cli    `#React native tools`\
    firebase-tools      `#Firebase tools`
```

## Copy the scripts and config files

```
chmod +x ./home/bin/*
cp -r ./home/* ~
```
