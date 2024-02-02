#!/usr/bin/env bash

echo "Starting xserver"
if [ "$CURSOR" = "true" ];
then
    echo  "Starting X with cursor enabled"
    #exec startx -- $FORCE_DISPLAY &
    startx cctv-viewer 
    
else
    echo  "Starting X with cursor disabled"
    #exec startx -- $FORCE_DISPLAY -nocursor
    startx &
    cctv-viewer
fi
