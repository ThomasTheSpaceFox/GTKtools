#!/bin/sh

export DIALOG='
<window title="GTKcalcBC -output backend" image-name="/root/GTKtools/GTKcalcBC/icon.png">
  <vbox>
    <text>
      <label>GTKcalcBC v1.1</label>
    </text>
    <text>
      <label>simple, gtkdialog & BC powered calculator for simple, </label>
    </text>
    <text>
      <label>large number functions</label>
    </text>
    <text>
      <label>""</label>
    </text>
    <text>
      <label>the problem was:</label>
    </text>
    <entry>
      <variable>NUM0</variable>
      <input file>/root/GTKtools/GTKcalcBC/INPUT.MATH.txt</input>
    </entry>
    <text>
      <label>the awnser is:</label>
    </text>
    <entry>
      <variable>NUM1</variable>
      <input file>/root/GTKtools/GTKcalcBC/OUTPUT.MATH.txt</input>
    </entry>
    <button>
      <label>view awnser</label>
      <action>"$VIEWER /root/GTKtools/GTKcalcBC/OUTPUT.MATH.txt"</action>
    </button>
    <button>
      <label>view problem</label>
      <action>"$VIEWER /root/GTKtools/GTKcalcBC/INPUT.MATH.txt"</action>
    </button> 
    <text>
      <label>click the buttons "view awnser" and "view problem to see the </label>
    </text>
    <text>
      <label>awnser/problem in the program entered below, respectively</label>
    </text>
    <text>
      <label>"(may be needed for functions with awnsers of more than 1 line. check if unsure)"</label>
    </text>
    <entry>
      <variable>VIEWER</variable>
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
  echo -n
else
  echo -n
fi