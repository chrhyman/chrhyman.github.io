# the real version is dangerous!
function mw2:sacrifice_game/end/explode

# splashy lightning effects
function mw2:sacrifice_game/end/lightning/lightning_strike_sequence

# remove some blocks and flowing water (before TNT explodes)
function mw2:sacrifice_game/end/cleanup

# set the world border to max/default, but make it take time so the weird vignette effect appears
worldborder set 59999968 10

# reset the tab view so it stops showing diamonds sacrificed
scoreboard objectives setdisplay list

# invalidate borderStage
scoreboard players set .global borderStage -1

# play a sound to everyone
function mw2:sacrifice_game/sound/game_complete

# display a message to everyone
title @a subtitle {text:"The world border dissipates!",color:"dark_aqua"}
title @a title {text:"The ",extra:[{text:"An",bold:true},{text:"c",color:"#119F36",bold:true},{text:"ient",bold:true},{text:"s",color:"#9A5CC6",bold:true},{text:" are satisfied"}]}

# remove the game flag to stop the game_loop from running each tick
# i.e. removes particles, kill zones, etc.
kill @e[type=marker,tag=sacrifice_game]
