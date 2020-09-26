#!/bin/bash

#Note check port with(as sometimes it changes):
#aplaymidi -l

#enter: crontab -e 
#and put in following:
#SHELL=/bin/bash
#00 8 * * * /bin/bash /home/ebonyivorystudio/Music/PlayerPianoScript/pmidihi.sh $

#go to dir with songs
cd /home/ebonyivory/Nextcloud/Music/Midi/AmSongs

#take 10 random files and assign to songarray
songsArray=($(ls | shuf -n 10))
port=$(aplaymidi -l | grep UM-ONE)

#play songs
for i in "${songsArray[@]}"
do
	pmidi -p ${port:0:5} $i
	wait
done
