#! /bin/bash

# declare $config to be an associative array
declare -A config

# read from stdin
while IFS='=' read -r key val ; do 
    config["$key"]="$val"
    echo $key=$val
done <  <(sed -E -e '/^\[/d
                     s/#.*//
                     s/[[:blank:]]+$|^[[:blank:]]+//g' - )
