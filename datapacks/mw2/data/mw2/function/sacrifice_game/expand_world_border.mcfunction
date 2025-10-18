# play a noise
function mw2:sacrifice_game/sound/alert_all_players

# increment the stage
scoreboard players add .global borderStage 1

# add 250 blocks to the world border
worldborder add 250 2

# display a message to everyone
title @a subtitle {text:"The border has expanded!",color:"dark_aqua"}
title @a title {text:"The ",extra:[{text:"An",bold:true},{text:"c",color:"#119F36",bold:true},{text:"ient",bold:true},{text:"s",color:"#9A5CC6",bold:true},{text:" are pleased"}]}
