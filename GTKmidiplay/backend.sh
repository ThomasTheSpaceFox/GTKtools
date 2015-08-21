#!/bin/sh


echo -e "GTKmidiplay \n" > /root/GTKtools/GTKmidiplay/DEBUG0.txt
shopt -s nullglob
for f in $1*.$3
do
/root/GTKtools/GTKmidiplay/MIDI.PLAY.sh "$f"
done