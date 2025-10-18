# @s is the diamond falling in the pit, ~ ~ ~ is its location

# shortcut to prevent playing the sound multiple times for the same diamond
# ANY entity with tag
execute if entity @e[tag=chime_playing] run return fail
tag @s add chime_playing

# only play chime to nearby players
execute as @p[distance=..30] run function mw2:sacrifice_game/sound/chime
