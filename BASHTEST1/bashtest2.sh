#!/bin/sh

echo enter youtube URL
read URL
echo enter format
read FORMAT

(youtube-dl -f $FORMAT --no-warnings -o /root/my-applications/playYT/playYT.$FORMAT $URL)
mplayer /root/my-applications/playYT/playYT.$FORMAT
rm /root/my-applications/playYT/playYT.$FORMAT