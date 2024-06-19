#!/bin/bash

function1(){
  echo "insert your code here 1"
}

function2(){
  echo "insert your code here 2"
}

function3(){
  echo "insert your code here 3"
}


usage(){
echo "FLAGS
-h  help
-s function 1
-c function 2
-k function 3
"
echo ""
}


OPTSTRING=":hsck"

while getopts ${OPTSTRING} opt; do
  case ${opt} in
    h)
      usage
      ;;
    s)
      echo ""
      function1
      ;;
    c)
      echo ""
      function2
      ;;
    k)
      echo ""
      function3
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      echo "Try using -h"
      exit 1
      ;;
  esac
done

if [ $# -eq 0 ]; then
echo "Missing flags, use -h"
exit 1
fi
