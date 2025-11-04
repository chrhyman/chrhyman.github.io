# remove diamond from the chest that triggered this function
data modify block ~ ~ ~ Items set value []

# players stand on a special block above the hidden chest
# only credit that player, and only increase the global total if someone got credit
execute positioned 475 112 -2111 as @p[distance=..25,sort=nearest,limit=1] run function mw2:sacrifice_game/util/credit_player

# expand_world_border increments borderStage
execute if score .global borderStage matches 0 run execute if score .global diamondsSacrificed matches 100.. run function mw2:sacrifice_game/border/expand_world_border
execute if score .global borderStage matches 1 run execute if score .global diamondsSacrificed matches 200.. run function mw2:sacrifice_game/border/expand_world_border
execute if score .global borderStage matches 2 run execute if score .global diamondsSacrificed matches 300.. run function mw2:sacrifice_game/border/expand_world_border
execute if score .global borderStage matches 3 run execute if score .global diamondsSacrificed matches 400.. run function mw2:sacrifice_game/border/expand_world_border
execute if score .global borderStage matches 4 run execute if score .global diamondsSacrificed matches 500.. run function mw2:sacrifice_game/border/expand_world_border
execute if score .global borderStage matches 5 run execute if score .global diamondsSacrificed matches 600.. run function mw2:sacrifice_game/border/expand_world_border
execute if score .global borderStage matches 6 run execute if score .global diamondsSacrificed matches 700.. run function mw2:sacrifice_game/border/expand_world_border
execute if score .global borderStage matches 7 run execute if score .global diamondsSacrificed matches 800.. run function mw2:sacrifice_game/border/expand_world_border
execute if score .global borderStage matches 8 run execute if score .global diamondsSacrificed matches 900.. run function mw2:sacrifice_game/border/expand_world_border

# final stage
execute if score .global borderStage matches 9 run execute if score .global diamondsSacrificed matches 1000.. run function mw2:sacrifice_game/end/finish_game
