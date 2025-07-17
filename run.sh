#!/usr/bin/env bash

dry_run="0"
init="0"
grep=""

while [[ $# -gt 0 ]]; do
    echo "ARG: \"$1\""
    if [[ "$1" == "--dry" ]]; then
        dry_run="1"
    elif [[ "$1" == "--init" ]]; then
        init="1"
    else
        grep="$1"
    fi
    shift
done

log() {
    if [[ "$dry_run" == "1" ]]; then
        echo "[DRY_RUN]: $1"
    else
        echo "$1"
    fi
}

if [[ "$init" == "1" ]]; then
    init_dirs=$(find init -mindepth 1 -maxdepth 1 -type f -executable | sort -V)
    for file in $init_dirs; do
        if [[ $file == *"$grep"* || -z "$grep" ]]; then
            log "SCRIPT: $file"
            if [[ "$dry_run" == "0" ]]; then
                bash $file
            fi
        fi
    done
fi
