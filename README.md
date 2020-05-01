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
pacman -S \
    base-devel              `#Basic developer tools`\
    vi                      `#Editor`\
    vim                     `#Editor`\
    nano                    `#Editor`\
    git                     `#Version control`\
    qt5-base                `#Depencency`\
    feh                     `#Wallpaper tool`\
    scrot                   `#Screenshoot tool`\
    termite                 `#Terminal emulator`\
    chromium                `#Web browser`\
    nodejs                  `#Node js`\
    npm                     `#Node Package Manager`\
    code                    `#Visual Studio Code Editor`\
    nautilus                `#File manager`\
    file-roller             `#Archive manager`\
    pulseaudio              `#Pulseaudio`\
    paprefs                 `#PulseAudio Preferences`\
    pavucontrol             `#PulseAudio Volume Control`\
    pulseaudio-alsa         `#PulseAudio Alsa`\
    alsa-utils              `#Alsa utils tools`\
    wget                    `#Network utility`\
    arandr                  `#Graphical xrandr`\
    autorandr               `#Auto xrandr`\
    dbus                    `#dbus lib`\
    python-dbus             `#python dbus lib`\
    picom                   `#X Compositor`\
    trash-cli               `#Trash cli tool`\
    watchman                `#A file watching utility`\
    dmenu                   `#i3wm app launcher`\
    rofi                    `#i3wm app launcher`\
    i3blocks                `#i3wm bar`\
    i3status                `#i3wm bar`\
    i3lock                  `#i3wm lock screen`\
    yad                     `#Calendar`\
    noto-fonts              `#Fonts`
    noto-fonts-emoji        `#Font for icons and emojis`\
    ttf-font-awesome        `#Font for icons and emojis`\
    iw                      `#Manipulate wireless devices`\
    rsync                   `#File-copying tool`\
    acpi                    `#Shows battery status`\
    neofetch                `#Display system info`\
    xorg                    `#X server`\
    xorg-xinit              `#X Window System initializer (startx)`\
    jdk8-openjdk            `#Java 8 JDK`\
    dunst                   `#Notification manager`\
    thunderbird             `#Email reader`\
    gimp                    `#Image editor`\
    inkscape                `#Vector editor`\
    telegram-desktop        `#Telegram Chat Client`\
    discord                 `#Discord chat for gamers`\
    playerctl               `#Audio controller for hotkeys`\
    redshift                `#Night mode`\
    networkmanager          `#Network manager`\
    network-manager-applet  `#Network manager applet`\
    bluez                   `#Bluetooth`\
    bluez-util              `#Bluetooth utils`\
    blueman                 `#Bluetooth manager`\
    pulseaudio-bluetooth    `#Pulseaudio bluetooth module`\
    docker                  `#Docker`\
    docker-compose          `#Docker compose tool`
```

## Create user

```
groupadd sudo
groupadd docker
useradd dizzyrobin -G sudo,wheel,docker -m -U -s /bin/zsh
passwd dizzyrobin
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
cd ..
rm -rf yay
```

## Install AUR dependencies

```
yay -S \
    ttf-ms-fonts        `#Fonts from Microsoft`\
    google-chrome       `#Google Chrome web browser`\
    spotify             `#Spotify`\
    megasync            `#MegaSync Client`
```

## Install npm global programs

```
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
```

```
npm install --global \
    npm                             `#Node package manager`\
    n                               `#Node version manager`\
    nodemon                         `#Monitor changes in nodejs projects`\
    @react-native-community/cli     `#React native tools`\
    firebase-tools                  `#Firebase tools`
```

## Enable services

```
sudo systemctl enable NetworkManager.service
sudo systemctl enable docker.service
sudo systemctl enable bluetooth.service
```

## Copy the scripts and config files

```
chmod +x ./home/bin/*
cp -r ./home/* ~
```
