#!/bin/bash


PLAYLIST=$1
FICHEIRO=~/listatemporaria.txt

# Can't download all videos from playlist, because it asks for authentication, it will download ids of downloadable videos to file.
youtube-dl --get-id $PLAYLIST -i >$FICHEIRO

# Download videos on previously created file, for Vídeos folder under a folder with playlist name (or NA) and naming the file with video title
youtube-dl -o 'Vídeos/%(playlist)s/%(title)s' -a $FICHEIRO

# Removes video list after download.
rm $FICHEIRO
