# this should be callable by the last diamond sacrifice OR me during testing
# so if the explosion should happen, check if a marker entity exists and ONLY blow up if it does

# set the world border to max/default, but make it take time so the weird vignette effect appears
worldborder set 59999968 10

# reset the tab view so it stops showing diamonds sacrificed
scoreboard objectives setdisplay list

# display a message to everyone
title @a subtitle {text:"The world border dissipates!",color:"dark_aqua"}
title @a title {text:"The ",extra:[{text:"An",bold:true},{text:"c",color:"#119F36",bold:true},{text:"ient",bold:true},{text:"s",color:"#9A5CC6",bold:true},{text:" are satisfied"}]}

# remove the game flag to stop particle effects and kill zones
kill @e[type=marker,tag=sacrifice_game]