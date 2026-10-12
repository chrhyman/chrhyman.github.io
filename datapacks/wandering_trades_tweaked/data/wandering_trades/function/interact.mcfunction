# Runs as the player AFTER vanilla has generated and sent the first offers.
advancement revoke @s only wandering_trades:interact
scoreboard players set #added wt_random 0
# The reward does not expose the clicked entity as an executor. Process ready
# traders in this dimension, not the nearest trader (which may be the wrong one).
# Untouched natural traders have no Offers and must remain untouched.
execute at @s as @e[type=minecraft:wandering_trader,tag=!wt.processed,tag=!has_new_trades] if data entity @s Offers.Recipes[0] at @s run function wandering_trades:provide_trades
execute if score #added wt_random matches 1.. run title @s actionbar {text:"Interact again to see custom trades",color:"white"}
data remove storage wandering_trades:runtime work
