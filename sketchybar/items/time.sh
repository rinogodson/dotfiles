#!/bin/bash

sketchybar --add item time e \
           --set time \
                          update_freq=1 \
                          script="$PLUGIN_DIR/time.sh"
