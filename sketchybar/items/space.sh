
#!/bin/bash

sketchybar --add event aerospace_workspace_change

sketchybar --add item space right \
           --set space \
                          update_freq=1 \
                          script="$PLUGIN_DIR/space.sh"\
           --subscribe space aerospace_workspace_change
