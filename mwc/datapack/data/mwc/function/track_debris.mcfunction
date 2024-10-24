# track_debris.mcfunction
# written by Chris Hyman (MC: wugsy)
# for use on MuWuCraft SMP Server

# increment when picking up ancient debris
execute as @a[scores={debris_picked_up=1..}] run scoreboard players operation @s mwc_debris_gathered += @s debris_picked_up

# decrement when dropping or using ancient debris
execute as @a[scores={debris_dropped=1..}] run scoreboard players operation @s mwc_debris_gathered -= @s debris_dropped
execute as @a[scores={debris_used=1..}] run scoreboard players operation @s mwc_debris_gathered -= @s debris_used

# reset tracking objectives to prevent double-scoring
execute as @a[scores={debris_picked_up=1..}] run scoreboard players reset @s debris_picked_up
execute as @a[scores={debris_dropped=1..}] run scoreboard players reset @s debris_dropped
execute as @a[scores={debris_used=1..}] run scoreboard players reset @s debris_used
