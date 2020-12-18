#!/usr/bin/env bash

main() {

    if [[ ! $1 =~ ^[+-]?[0-9]*$ ]] || [ -z "$1" ] || [[ ! -z "$2" ]]; then
        echo "Usage: leap.sh <year>"
        return 1
    fi
    if [ $(($1 % 4)) == 0 ]; then
        if [ $(($1 % 100)) == 0 ]; then
            if [ $(($1 % 400)) == 0 ]; then
                echo "true"
            else
                echo "false"
            fi
        else
            echo "true"
        fi
    else
        echo "false"
    fi
}

main "$@"
