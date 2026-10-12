# Build the complete list in storage, preserving every existing offer and its uses.
# This function is also safe to invoke directly on an unprocessed trader.
execute if entity @s[tag=wt.processed] run return 0
execute if entity @s[tag=has_new_trades] run return 0
execute unless data entity @s Offers.Recipes[0] run return 0
data modify storage wandering_trades:runtime work set value {}
data modify storage wandering_trades:runtime work.offers set from entity @s Offers.Recipes
function wandering_trades:provide_block_trades

execute store success score #written wt_random run data modify entity @s Offers.Recipes set from storage wandering_trades:runtime work.offers
execute unless score #written wt_random matches 1 run return 0
tag @s add wt.processed
scoreboard players add #added wt_random 1
# Teleporting an AbstractVillager stops trading, invalidating the old menu.
# Keep the trader at the same position/rotation and restore its original velocity.
data modify storage wandering_trades:runtime work.motion set from entity @s Motion
execute at @s run tp @s ~ ~ ~ ~ ~
data modify entity @s Motion set from storage wandering_trades:runtime work.motion
