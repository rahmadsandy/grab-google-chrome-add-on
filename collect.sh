#!/bin/bash 

EMAIL=$1 
for i in $(find ~/.config/google-chrome/*/Extensions -name 'manifest.json'); do n=$(grep -hIr name $i| cut -f4 -d '"'| sort);u="https://chrome.google.com/extensions/detail/";ue=$(basename $(dirname $(dirname $i))); echo -e "$n:\n$u$ue\n" ; done > ~/Desktop/$EMAIL-list.txt