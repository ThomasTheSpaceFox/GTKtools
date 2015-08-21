#!/bin/sh

export DIALOG='
<window title="GTK tools -settings" image-name="/root/GTKtools/icon.png">
  <vbox>
    <hbox>
      <pixmap>
        <input file>/root/GTKtools/icon48.png</input>
      </pixmap>
      <text>
        <label>"GTK tools -settings"</label>
      </text>
    </hbox>
    <text>
      <label>"A set of gtkdialog shells for various command-line tools"</label>
    </text>
    <text>
      <label>"set terminal emulator"</label>
    </text>
    <entry>
      <variable>TERMINAL</variable>
      <input file>/root/GTKtools/DATA/SET.TERM.txt</input>
    </entry>
    <text>
      <label>"set text editor"</label>
    </text>
    <entry>
      <variable>TEXTEDIT</variable>
      <input file>/root/GTKtools/DATA/SET.TEXTEDIT.txt</input>
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
  echo $TERMINAL > /root/GTKtools/DATA/SET.TERM.txt
  echo $TEXTEDIT > /root/GTKtools/DATA/SET.TEXTEDIT.txt
  echo -n
else
  echo -n
fi
