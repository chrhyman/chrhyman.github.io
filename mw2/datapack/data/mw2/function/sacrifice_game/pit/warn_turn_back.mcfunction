# a player triggers this function by getting too close to the "magic" functionality like the diamond chest in the pit
# you can't burrow through the walls to get at the mechanics!

# each tick this runs for a player, display crit hits around them (scary!)
particle minecraft:crit ~ ~1 ~ 1 1 1 0 10

# shortcut out if we've warned this player already
execute if entity @s[tag=was_warned] run return fail
tag @s add was_warned

tellraw @s "Retreat until the particles disappear, or I'll kill you."

schedule function mw2:sacrifice_game/util/clear_tag/was_warned 30s
