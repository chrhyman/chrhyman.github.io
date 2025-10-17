# remove diamond from the chest that triggered this function
data modify block ~ ~ ~ Items set value []

# players stand on a special block above the hidden chest
# only credit that player, and only increase the global total if someone got credit
execute positioned 475 112 -2111 as @p[distance=..25,sort=nearest,limit=1] run function mw2:sacrifice_game/credit_player

execute as @a run playsound ambient.cave ui @s
title @a subtitle {text:"The border has expanded"}
title @a title {text:"The ancients are pleased"}
title @a clear

execute as @a run playsound ambient.cave ui @s
title @a subtitle {text:"The world border dissipates"}
title @a title {text:"The ancients are satisfied"}
title @a clear


# increment by 250 at a time
# goal is 500 diamonds
# expand each 100 diamonds?

# border expansion logic & notifications
# execute if score .global totalDiamondsSacrificed matches 10 run worldborder set 750 10
# execute if score .global totalDiamondsSacrificed matches 10 run title @a title {"text": "The ancients have expanded the border!"}

# execute if score .global totalDiamondsSacrificed matches 20 run worldborder set 1000 10
# execute if score .global totalDiamondsSacrificed matches 20 run title @a title {"text": "The world border expands!"}


# execute if score .global totalDiamondsSacrificed matches 30 run worldborder set 1250 10
# execute if score .global totalDiamondsSacrificed matches 30 run title @a title {"text": "The world border expands!"}


# execute if score .global totalDiamondsSacrificed matches 40 run worldborder set 1500 10
# execute if score .global totalDiamondsSacrificed matches 40 run title @a title {"text": "The world border expands!"}

# execute if score .global totalDiamondsSacrificed matches 50 run worldborder set 59999968 10
# execute if score .global totalDiamondsSacrificed matches 50 run title @a title {"text": "The world border disappears!"}


# add a scoreboard for tracking the world border we go to
# every day / half day the world border grows a small amount
# or maybe constantly grows over 20 mins


# the first diamond initializes the day/night cycle expansion
