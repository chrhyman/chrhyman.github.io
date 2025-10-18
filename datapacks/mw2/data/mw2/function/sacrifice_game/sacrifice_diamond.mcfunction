# remove diamond from the chest that triggered this function
data modify block ~ ~ ~ Items set value []

# players stand on a special block above the hidden chest
# only credit that player, and only increase the global total if someone got credit
execute positioned 475 112 -2111 as @p[distance=..25,sort=nearest,limit=1] run function mw2:sacrifice_game/credit_player


# goal is 500 diamonds
# expand each 100 diamonds?

# use stages to manage triggering each only once