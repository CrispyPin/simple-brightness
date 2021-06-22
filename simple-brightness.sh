#!/bin/bash

path="/sys/class/backlight/*/brightness"
echo $path

get_brightness () {
    old=$(cat $path)
}

set_brightness () {
    echo $1 > $path
    echo brightness set to $1
}

inc_brightness () {
    get_brightness
    set_brightness $(( $old + $1 ))
}

dec_brightness () {
    get_brightness
    set_brightness $(( $old - $1 ))
}

write_access() {
    sleep 1
    chmod 666 $path
}


amt="${2:-15}"

case $1 in
    -init)
        write_access
        ;;
    -set)
        set_brightness $amt
        ;;
    -inc)
        inc_brightness $amt
        ;;
    -dec)
        dec_brightness $amt
        ;;
esac

