# decorative
function mw2:sacrifice_game/particles

# diamonds were thrown in
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},x=470,y=80,z=-2112,dx=2,dy=20,dz=2] at @s run function mw2:sacrifice_game/pit/diamonds_in_pit

# if hidden chest has a diamond
execute positioned 478 84 -2111 if block ~ ~ ~ minecraft:chest{Items:[{id:"minecraft:diamond"}]} run function mw2:sacrifice_game/pit/sacrifice_diamond

# if a player falls into the pit (470 86 -2112 x 472 100 -2110)
execute as @a[x=470,y=86,z=-2112,dx=2,dy=14,dz=2] at @s run function mw2:sacrifice_game/pit/sacrifice_player

# if a non-player mob falls into the pit (also exclude items and markers)
execute as @e[type=!player,type=!item,type=!marker,x=470,y=80,z=-2112,dx=2,dy=20,dz=2] at @s run function mw2:sacrifice_game/pit/kill_trash_mobs

# if a player is inside the warning zone, send a warning
execute as @a[x=455,y=75,z=-2127,dx=35,dy=22,dz=32,tag=!was_sacrificed] at @s run function mw2:sacrifice_game/pit/warn_turn_back

# if a player is inside the true kill zone, instantly kill them with magic
execute as @a[x=460,y=80,z=-2122,dx=25,dy=12,dz=22,tag=!was_sacrificed] at @s run function mw2:sacrifice_game/pit/kill_trespasser
