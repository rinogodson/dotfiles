#!/bin/bash

sketchybar --add item calendar q \
           --set calendar \
                          update_freq=1 \
                          script="$PLUGIN_DIR/calendar.sh"
