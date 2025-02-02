#!/bin/bash

## Files
CONFIG="$HOME/.config/hypr/wofi/WofiBig/config"
STYLE="$HOME/.config/hypr/wofi/style.css"
COLORS="$HOME/.config/hypr/wofi/colors"
iDIR="$HOME/.config/hypr/dunst/icons"


# wofi window config (in %)
WIDTH=40
HEIGHT=60

## Wofi Command
wofi_command="wofi --show dmenu \
			--prompt choose...
			--conf $CONFIG --style $STYLE --color $COLORS \
			--width=$WIDTH% --height=$HEIGHT% \
			--cache-file=/dev/null \
			--hide-scroll --no-actions \
			--matching=fuzzy"


notification(){
  notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/music.png" "Now Playing: Online Music" 
}

menu(){
printf "1. Lofi Girl\n"
printf "2. Lofi Coffee\n"
printf "3. Box Lofi\n"
printf "4. Top Music 2023\n"
printf "5. Tokyo Lofi\n"
printf "6. House Music\n"
printf "7. Relaxing Music\n"
printf "8. Youtube Remix\n"
printf "9. K-Drama-OST2"
}
main() {
choice=$(menu | ${wofi_command} | cut -d. -f1)
case $choice in
1)
    notification
    mpv "https://play.streamafrica.net/lofiradio"
    return
    ;;
2)
   notification
   mpv --shuffle --vid=no "https://www.youtube.com/watch?v=OO2kPK5-qno"
   return
;; 
3)
  notification
   mpv "http://stream.zeno.fm/f3wvbbqmdg8uv"
   return
   ;;
4)
   notification ;
   mpv --shuffle --vid=no "https://youtube.com/playlist?list=PL6k9a6aYB2zk0qSbXR-ZEiwqgdHymsRtQ"
   return
   ;;
5)
  notification ;
  mpv --shuffle --vid=no "https://www.youtube.com/watch?v=up-G3kArIkc"
  return
  ;;
6)
  notification ;
  mpv "https://media-ssl.musicradio.com/CapitalChill"
  return
  ;;
7)
  notification ;
  mpv --shuffle --vid=no "https://youtube.com/playlist?list=PLMIbmfP_9vb8BCxRoraJpoo4q1yMFg4CE"
  return
;;
8)
  notification ;
  mpv --shuffle  --vid=no "https://youtube.com/playlist?list=PLeqTkIUlrZXlSNn3tcXAa-zbo95j0iN-0"
  return
  ;;
9)
  notification ;
  mpv --shuffle  --vid=no "https://youtube.com/playlist?list=PLUge_o9AIFp4HuA-A3e3ZqENh63LuRRlQ"
  return
;;
esac
}

pkill -f http && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/music.png" "Online Music stopped" || main
