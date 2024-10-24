# reset.mcfunction
# written by Chris Hyman (MC: wugsy)
# for use on MuWuCraft SMP Server

## reset scores to 0 for all players
execute as @a run scoreboard players reset @s mwc_debris_gathered 
execute as @a run scoreboard players reset @s debris_picked_up
execute as @a run scoreboard players reset @s debris_dropped
execute as @a run scoreboard players reset @s debris_used
