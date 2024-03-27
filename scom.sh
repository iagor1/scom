#!/bin/bash


welcome(){
echo "Welcome to scom"
echo "
 _______  _______  _______  _______ 
(  ____ \(  ____ \(  ___  )(       )
| (    \/| (    \/| (   ) || () () |
| (_____ | |      | |   | || || || |
(_____  )| |      | |   | || |(_)| |
      ) || |      | |   | || |   | |
/\____) || (____/\| (___) || )   ( |
\_______)(_______/(_______)|/     \|            
"
}

help_message(){
echo "Usage
  scom [options] [args]"
echo ""
echo "Options:
  -h        info about scom
  -s        search for file"
echo ""
echo "SCOM stands for similar commands, the ideia is to centralize these commands in this CLI"
}

cat_file(){
file=$( ls | grep *$OPTARG*.txt )
if [ -n "$file" ];then
echo fetching "$file" file.
cat $file
else echo "Command or file not found"
fi
}


OPTSTRING=":hs:"

while getopts ${OPTSTRING} opt; do
  case ${opt} in
    h)
      help_message
      ;;
    s)
      echo "Searching file/command"
      cat_file
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      echo "Try using -h"
      exit 1
      ;;
  esac
done

if [ $# -eq 0 ]; then
welcome
echo "try for more details : scom.sh -h"
fi
