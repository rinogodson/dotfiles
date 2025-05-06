#!/bin/bash

sketchybar --add item battery e \
           --set battery update_freq=120 \
                         script="$PLUGIN_DIR/battery.sh" \
           --subscribe battery system_woke power_source_change
