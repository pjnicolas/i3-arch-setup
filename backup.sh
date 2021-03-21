#!/bin/bash

# folder                        : file1 file2 file3 [...]
lines=`cat << EOF
.                               : .aliases .zprofile .xinitrc .zshrc .XCompose
bin                             : *
Pictures                        : wallpaper.png
.oh-my-zsh/themes               : pygmalion.zsh-theme
.local/share/rofi/themes        : *
.config/i3                      : *
.config/i3blocks                : *
.config/dunst                   : dunstrc
.config/gtk-3.0                 : gtk.css
.config/termite                 : config
.config/Code/User               : settings.json keybindings.json
.config/compton                 : config
.config/rofi                    : config.rasi
EOF
`

while read line; do
    folder=`echo "$line" | cut -f1 -d':' | xargs`
    files=`echo "$line" | cut -f2 -d':' | tr -s " " | xargs | tr " " "\n"`

    mkdir -p ./home/"$folder"
    while read file; do
        echo Sync: "$HOME/$folder/$file"
        rsync --no-links -r $HOME/"$folder"/$file ./home/"$folder"
    done <<< "$files"
done <<< "$lines"
