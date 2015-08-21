#! /bin/bash

export DIALOG='
<window title="GTKcalcBC" image-name="/root/GTKtools/GTKcalcBC/icon.png">
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
      <label>enter first number</label>
    </text>
    <entry>
      <variable>NUM1</variable>
    </entry>
    <text>
      <label>enter function symbol</label>
    </text>
    <entry>
      <variable>SYMBOL</variable>
    </entry>
    <text>
      <label>enter second number</label>
    </text>
    <entry>
      <variable>NUM2</variable>
    </entry>
    <text>
      <label>""</label>
    </text>
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
  echo "$NUM1$SYMBOL$NUM2" | bc > /root/GTKtools/GTKcalcBC/OUTPUT.MATH.txt
  echo "$NUM1$SYMBOL$NUM2" > /root/GTKtools/GTKcalcBC/INPUT.MATH.txt
  /root/GTKtools/GTKcalcBC/backend.sh
else
  echo -n
fi


