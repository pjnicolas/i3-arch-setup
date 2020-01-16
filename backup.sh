#!/bin/bash

# folder            file1 file2 file3 [...]
lines=`cat << EOF
.                   .Xresources .aliases .zprofile .xinitrc .zshrc
bin                 *
.config/i3          config
.config/dunst       dunstrc
EOF
`

while read line; do
    line_simplified=`echo "$line" | tr -s " " | xargs`
    folder=`echo "$line_simplified" | cut -f1 -d' '`
    files=`echo "$line_simplified" | cut -f2- -d' ' | tr " " "\n"`

    mkdir -p ./home/"$folder"
    while read file; do
        echo Sync: "$HOME/$folder/$file"
        rsync --no-links -r $HOME/$folder/$file ./home/$folder
    done <<< "$files"
done <<< "$lines"
