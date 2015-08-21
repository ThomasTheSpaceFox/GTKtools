#!/bin/sh



HELPTEXT=$(cat /root/GTKtools/BASHTEST1/HELP.txt)
if [ "$1" = "-h" ]; then
  echo "$HELPTEXT"
else 
  if [ "$1" = "" ]; then 
    echo -e "ERROR!: no input! \n -h: usage help \a"
  else
    DCOUNT=$1
    echo "5+$DCOUNT" | bc > /root/GTKtools/BASHTEST1/1.1.txt
    TXTONE=$(cat /root/GTKtools/BASHTEST1/1.1.txt)
    if [ "$TXTONE" = "10" ]; then
      echo "true"
    else
      echo "false"
    fi
  fi
fi