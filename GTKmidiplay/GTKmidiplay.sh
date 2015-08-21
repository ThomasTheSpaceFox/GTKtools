#!/bin/sh


export DIALOG='
<window title="GTKmidiplay" image-name="/root/GTKtools/GTKmidiplay/icon.png">
  <vbox>
    <hbox>
      <pixmap>
        <input file>/root/GTKtools/GTKmidiplay/icon48.png</input>
      </pixmap>
      <text>
        <label>"GTKmidiplay"</label>
      </text>
    </hbox>
    <text>
      <label>"play all midi files in a directory"</label>
    </text>
    <text>
      <label>"directory with midi files"</label>
    </text>
    <entry>
      <variable>FILEPATH</variable>
      <input file>/root/GTKtools/GTKmidiplay/FILEPATH.SAVE.txt</input>
    </entry>
    <text>
      <label>"terminal emulator to use"</label>
    </text>
    <entry>
      <variable>TERM</variable>
      <input file>/root/GTKtools/DATA/SET.TERM.txt</input>
    </entry>
    <text>
      <label>"MIDI player to use"</label>
    </text>
    <entry>
      <variable>MIDIPLAYER</variable>
      <input file>/root/GTKtools/GTKmidiplay/MIDI.PLAYER.txt</input>
    </entry>
    <text>
      <label>"MIDI player options"</label>
    </text>
    <entry>
      <variable>MIDIOPT</variable>
      <input file>/root/GTKtools/GTKmidiplay/MIDI.OPTIONS.txt</input>
    </entry>
    <hbox>
      <button ok></button>
      <button cancel></button>
    </hbox>
  </vbox>
</window>'
I=$IFS; IFS=""
for STATEMENTS in  $(gtkdialog --program DIALOG); do
  eval $STATEMENTS
done
IFS=$I

if [ "$EXIT" = "OK" ]; then
echo $FILEPATH > /root/GTKtools/GTKmidiplay/FILEPATH.SAVE.txt
echo $MIDIPLAYER > /root/GTKtools/GTKmidiplay/MIDI.PLAYER.txt
echo $MIDIOPT > /root/GTKtools/GTKmidiplay/MIDI.OPTIONS.txt
$TERM --title "GTKmidiplay -$FILEPATH" -e /root/GTKtools/GTKmidiplay/backend.sh $FILEPATH \ $MIDIPLAYER \mid
else
  echo -n
fi