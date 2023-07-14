#!/bin/bash
source "$HOME/.kish/lib/util.sh"
source "$HOME/.kish/lib/klog.sh"
 st="omap"
 cmd="open google maps directions from/to"
 qkey=""
 paths=$(join '+' $@)
# todo: one location - standard map, two + directions.(up to 10)
url="https://google.com/maps/dir/$paths"
echo "open $url"

open --url "$url"
klog "$cmd $*"
