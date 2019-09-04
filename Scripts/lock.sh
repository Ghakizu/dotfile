#!/bin/bash
#dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop

wallpaper=$HOME/Pictures/Wallpaper/wallhaven-704272.jpg
nb_quotes=12
rand=$[ ( $RANDOM % $nb_quotes ) + 1 ]
case $rand in
    1) quote="Away watching hentai...";;
    2) quote="It's not an i3lock.";;
    3) quote="It's not like I locked for you or anything...";;
    4) quote="Traps are gay";;
    5) quote="HONEY ? WHERES IS MY SUPER SUIT ?";;
    6) quote="Fucking furries";;
    7) quote="Try to confloose me";;
    8) quote="Ghakizu est votre seul guide";;
    9) quote="Send nudes";;
    10)	quote="Notice me i3lock-chan";;
    11) quote="C'est une bonne situation ça i3lock ?";;
    12) quote="Fucking normies REEEEEEEEEEEE";;
esac

black=000000a0
indigo=FFFFFFFF
green=00ff99c0
red=ff5050c0
orange=C35539a0
transparent=00000000
slighttransparent=808080e0
semitrans=80808040
timecolor=D9694Ea5

timefont="Monospace"
 
i3lock \
    --insidecolor=$semitrans --ringcolor=$black --line-uses-inside \
    --keyhlcolor=$green --bshlcolor=$red --separatorcolor=$transparent \
    --insidevercolor=$semitrans --insidewrongcolor=$semitrans \
    --ringvercolor=$orange --ringwrongcolor=$red \
    --radius=200 --ring-width=10 \
    --greetertext="$quote" --veriftext="Waiting..." --wrongtext="Sike nigga u fool" --noinputtext="OwO what's this ?" \
    --greetercolor=$indigo \
    --wrongcolor=$red \
    --clock \
    --timestr="%H:%M" --timecolor=$timecolor --timesize=72 \
    --time-font=$timefont \
    --datestr="%a, %b %d" --datecolor=$timecolor --datesize=24 \
    --date-font=$timefont \
    --nofork --tiling --image $wallpaper

