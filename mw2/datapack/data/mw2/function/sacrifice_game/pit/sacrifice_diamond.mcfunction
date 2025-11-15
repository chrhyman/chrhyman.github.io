# remove everything from the chest that triggered this function
data modify block ~ ~ ~ Items set value []

# players stand on a special block above the hidden chest, and we care about the nearest player
# only credit that player, and only increase the global total if someone got credit
execute positioned 475 112 -2111 as @p[distance=..25,sort=nearest,limit=1] run function mw2:sacrifice_game/util/credit_player

function mw2:sacrifice_game/border/update_border_stage
