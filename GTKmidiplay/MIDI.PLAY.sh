#!/bin/sh
tput clear
echo -e "-setting variables \n"
echo "-setting MIDI player"
PLAYMIDI=$(cat /root/GTKtools/GTKmidiplay/MIDI.PLAYER.txt)
echo "-setting file"
FILEMIDI=$1
echo -e "-setting play options \n"
PLAYOPTIONS=$(cat /root/GTKtools/GTKmidiplay/MIDI.OPTIONS.txt)
echo -e "-$PLAYMIDI will now play the MIDI file $FILEMIDI  \n"
echo "-$PLAYMIDI"
echo "Now Playing"
echo -e "-$FILEMIDI \n"
echo "----------------------------------------------------" >> /root/GTKtools/GTKmidiplay/DEBUG0.txt
echo -e " below is the debug info for $PLAYMIDI \n for when it played $FILEMIDI \n options sent to $PLAYMIDI were as follows \n $PLAYOPTIONS \n this is the GTKmidiplay MIDI player debug file " >> /root/GTKtools/GTKmidiplay/DEBUG0.txt
echo "----------------------------------------------------" >> /root/GTKtools/GTKmidiplay/DEBUG0.txt
$PLAYMIDI $PLAYOPTIONS "$FILEMIDI" >> /root/GTKtools/GTKmidiplay/DEBUG0.txt
echo -e "---------------------------------------------------- \n \n \n" >> /root/GTKtools/GTKmidiplay/DEBUG0.txt
echo -e "-Done \n \n"
tput clear
