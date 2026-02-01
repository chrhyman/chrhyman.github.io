# @s is the diamond falling in the pit, ~ ~ ~ is its location

# shortcut to prevent playing the sound more than once at a time
execute if entity @e[tag=crackling_earth_playing] run return fail

# summon a marker to exist while sound plays
summon marker 471 111 -2111 {Tags:["crackling_earth_playing"]}

# play crackling earth noise and kill the entity when finished
function mw2:sacrifice_game/sound/processing_diamonds
