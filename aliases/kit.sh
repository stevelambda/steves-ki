#!/usr/bin/env bash
st="kit"
cmd="ki minimalist test runner "

if [ "$1" == "-h" ]; then
    cat "$HOME/.kish/lib/kit.help.txt"
    exit
fi 
# if %1 exists (folder/glob)  ;then
#  else
# cd $KISHDIR/aliases
#  fi

$KISHCOREDIR/src/lib/kit.sh $1
