# @s is the player who should get credit (was nearest to the special block when the function ran)

# increment global total
scoreboard players add .global diamondsSacrificed 1

# increment player's total
scoreboard players add @s diamondsSacrificed 1

# notify them
title @s actionbar {text: "",extra:[{text: "You've sacrificed ", color:aqua},{score:{name:"@s",objective:"diamondsSacrificed"}},{text:" diamonds! (",color:aqua},{score:{name:".global",objective:"diamondsSacrificed"},color:"blue"},{text:" total)",color:aqua}]}
