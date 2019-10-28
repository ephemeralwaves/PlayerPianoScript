#!/bin/bash

#Note check port with(as sometimes it changes):
#aplaymidi -l

#go to dir with songs
cd /home/ebonyivorystudio/Music/Music/Midi/AmSongs

#take 10 random files and assign to songarray
songsArray=($(ls | shuf -n 10))

#play songs
for i in "${songsArray[@]}"
do
	pmidi -p "20:0" $i
	wait
done
