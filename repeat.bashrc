#!/bin/bash
function repeat() {
    while true;
    do
        if [ "$1" = "-a" ];
        then
            set -e
            shift
        elif [ "$1" = "-s" ];
        then
            silent=1
            shift
        else
            break
        fi
    done

    times="$1"; shift

    for i in $(seq "$times");
    do
        if [ -z "$silent" ];
        then
            echo "repeat ($i of $times):"
        fi
        eval $@
        i=$(expr "$i" + 1)
    done
}
