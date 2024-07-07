#!/bin/bash
echo ":: Jasons Themes"
hyprctl reload

if [[ "$1" == "theme1" ]]; then
# Theme 1
hyprctl --batch "\
    keyword general:border_size 2;\
    keyword general:gaps_out 40;\
    keyword general:gaps_in 20"
fi

if [[ "$1" == "theme2" ]]; then
#Theme 2
hyprctl --batch "\
    keyword general:border_size 0;\
    keyword general:gaps_out 20;\
    keyword general:gaps_in 10;\
    keyword general:col.inactive_border 0.6;\
    keyword general:col.active_border 0.9"

fi

if [[ "$1" == "theme3" ]]; then
#Theme 3
hyprctl --batch "\
    keyword general:border_size 2;\
    keyword general:gaps_out 5;\
    keyword general:gaps_in 5;\
    keyword general:col.active_border = rgba(33ccffee) rgba(00ff99ee);\
    keyword general:col.inactive_border = rgba(595959aa)"

fi

if [[ "$1" == "gamemode" ]]; then
hyprctl --batch "\
    keyword general:border_size 1;\
    keyword animations:enabled 0;\
    keyword decoration:drop_shadow 0;\
    keyword decoration:blur:enabled 0;\
    keyword general:gaps_out 0;\
    keyword general:gaps_in 0;\
    keyword decoration:rounding 0"
fi



