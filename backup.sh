#!/bin/bash

# folder                        : file1 file2 file3 [...]
lines=`cat << EOF
.                               : .Xresources .aliases .zprofile .xinitrc .zshrc .XCompose
bin                             : *
Pictures                        : wallpaper.png
.config/i3                      : config
.config/dunst                   : dunstrc
.config/Code - OSS/User         : settings.json keybindings.json
.config/i3blocks                : *
.config/compton                 : config
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
