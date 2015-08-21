#!/bin/sh

export DIALOG='
<window title="GTK tools -about" image-name="/root/GTKtools/icon.png">
  <vbox>
    <hbox>
      <pixmap>
        <input file>/root/GTKtools/icon48.png</input>
      </pixmap>
      <text>
        <label>"GTK tools -about"</label>
      </text>
    </hbox>
    <text>
      <label>"A set of gtkdialog shells for various command-line tools"</label>
    </text>
    <pixmap>
      <input file>/root/GTKtools/help/about.png</input>
    </pixmap>
    <hbox>
      <button ok></button>
    </hbox>
  </vbox>
</window>'

I=$IFS; IFS=""
for STATEMENTS in  $(gtkdialog --program DIALOG); do
  eval $STATEMENTS
done
IFS=$I

if [ "$EXIT" = "OK" ]; then
  echo -n
else
  echo -n
fi
