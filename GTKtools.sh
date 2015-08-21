#!/bin/sh

export DIALOG='
<window title="GTK tools" image-name="/root/GTKtools/icon.png">
  <vbox>
    <hbox>
      <pixmap>
        <input file>/root/GTKtools/icon48.png</input>
      </pixmap>
      <text>
        <label>"GTK tools"</label>
      </text>
    </hbox>
    <text>
      <label>"A set of gtkdialog shells for various command-line tools"</label>
    </text>
    <text>
      <label>""</label>
    </text>
    <text>
      <label>"multimedia tools"</label>
    </text>
    <hbox>
      <button>
        <label>GTKmidiplay</label>
        <action>"/root/GTKtools/GTKmidiplay/GTKmidiplay.sh "</action>
        <input file>/root/GTKtools/GTKmidiplay/icon48.png</input>
      </button> 
    </hbox>
    <text>
      <label>"math tools"</label>
    </text>
    <hbox>
      <button>
        <label>GTKcalcBC</label>
        <action>"/root/GTKtools/GTKcalcBC/GTKcalcBC.sh "</action>
        <input file>/root/GTKtools/GTKcalcBC/icon48.png</input>
      </button>
    </hbox>
    <hbox>
      <button>
        <label>About</label>
        <action>"/root/GTKtools/help/about.sh"</action>
        <input file stock="gtk-info"></input>
      </button>
      <button>
        <label>Settings</label>
        <action>"/root/GTKtools/DATA/CONFIG.sh"</action>
        <input file stock="gtk-preferences"></input>
      </button>
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
  echo -n
else
  echo -n
fi