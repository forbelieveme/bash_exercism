#!/usr/bin/env bash

main() {
    final=$(stringToArray "$@")

    echo "${final}"
}

reverseArray() {
    str=""

    arraylength=${#arr1[@]}
 
    for (( i=${arraylength}; i>=0; i-- ));
    do
        str+="${arr1[i]}"
    done

    echo "${str}"
}

stringToArray() {
    args=("$@")
    palabra=${args[0]}

    declare -a arr1

    for i in $(seq 1 ${#palabra}); do
        arr1+=("${palabra:i-1:1}")
        # echo "Letter $i: ${palabra:i-1:1}"
    done

    invertido=$(reverseArray "${arr1[@]}")

    echo "${invertido}"
}
main "$@"
