# @s is the player who should get credit (was nearest to the special block when the function ran)

# increment global total
scoreboard players add .global diamondsSacrificed 1

# increment player's total
scoreboard players add @s diamondsSacrificed 1

# notify them
title @s actionbar {text: "",extra:[{text: "You've sacrificed "},{score:{name:"@s",objective:"diamondsSacrificed"},color:"#2CBAA8"},{text:" diamonds! ("},{score:{name:".global",objective:"diamondsSacrificed"},color:"#BA572D"},{text:" total)"}]}
