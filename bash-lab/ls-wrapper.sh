#!/bin/bash
options=()
paths=()
while [ "$#" -gt 0 ]; do
    case "$1" in
        -)
            paths+=("$1")
            ;;
        --)
            shift
            paths+=("$@")
            break
            ;;
        -*)
            opt="${1#-}"
            for ((i = 0; i < ${#opt}; i++)); do
                char="${opt:i:1}"
                case "$char" in
                    l|a|d|i|R)
                        options+=("-$char")
                        ;;
                    *)
                        echo "Unknown option: -$char" >&2
                        exit 2
                        ;;
                esac
            done
            ;;
        *)
            paths+=("$1")
            ;;
    esac
    shift
done
if [ "${#paths[@]}" -eq 0 ]; then
    paths=(".")
fi
exec ls "${options[@]}" -- "${paths[@]}"
