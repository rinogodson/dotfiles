#!/bin/bash

sketchybar --add item front_app left \
           --set front_app \
                                 icon.color=$WHITE \
                                 icon.font="sketchybar-app-font:Regular:16.0" \
                                 background.drawing=on \
                                 label.color=$WHITE \
                                 script="$PLUGIN_DIR/front_app.sh"            \
                                 border_width=10\
                                 border_color=$WHITE \
           --subscribe front_app front_app_switched
