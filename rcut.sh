#!/bin/bash
FILE=/dev/0
BEGIN=0
END=0

while getopts f:b:e: opts; do
   case ${opts} in
      f) FILE=${OPTARG} ;;
      b) BEGIN=${OPTARG} ;;
      e) END=${OPTARG} ;;
   esac
done

res=`cat -n $FILE | sed -n "/$BEGIN/,/$END/p"`
echo $res
