# decorative
function mw2:sacrifice_game/particles

# if hidden chest has a diamond
execute positioned 474 108 -2111 if block ~ ~ ~ minecraft:chest{Items:[{id:"minecraft:diamond"}]} run function mw2:sacrifice_game/sacrifice_diamond

# if a player falls into the pit (470 80 -2112 x 472 100 -2110)
execute as @a[x=470,y=80,z=-2112,dx=2,dy=20,dz=2] at @s run function mw2:sacrifice_game/sacrifice_player
