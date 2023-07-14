#!/bin/bash
source "$HOME/.kish/lib/ki-spread.sh"
source "$HOME/.kish/lib/klog.sh"
source "$HOME/.kish/lib/colors.sh"

st='hrl'
cmd='gh repo list -L 100'
applicable=''

if [ "$1" = -h ]; then
    "$command_name ( $command_execute)"
    exit
fi
singleki-spread "$@"
klog "$cmd $*"
