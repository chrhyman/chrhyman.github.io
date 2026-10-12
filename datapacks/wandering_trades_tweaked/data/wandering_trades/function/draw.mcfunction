execute store result score #last wt_random run data get storage wandering_trades:runtime work.pool
execute if score #last wt_random matches 0 run return 0
scoreboard players remove #last wt_random 1
execute store result storage wandering_trades:runtime work.last int 1 run scoreboard players get #last wt_random
function wandering_trades:roll with storage wandering_trades:runtime work
function wandering_trades:take with storage wandering_trades:runtime work
scoreboard players remove #remaining wt_random 1
execute if score #remaining wt_random matches 1.. run function wandering_trades:draw
