# use current daytime as random input
execute store result score #random math run time query gametime

# five death messages
scoreboard players operation #random math %= #five math

# branch to selected message
execute if score #random math matches 0 run tellraw @a [{selector:"@s"},{text:" was deemed to be an insufficient sacrifice"}]
execute if score #random math matches 1 run tellraw @a [{selector:"@s"},{text:"'s sacrifice was in vain"}]
execute if score #random math matches 2 run tellraw @a [{selector:"@s"},{text:" threw themself into the pit"}]
execute if score #random math matches 3 run tellraw @a [{selector:"@s"},{text:" did not please the "},{text:"An",bold:true},{text:"c",color:"#119F36",bold:true},{text:"ient",bold:true},{text:"s",color:"#9A5CC6",bold:true}]
execute if score #random math matches 4 run tellraw @a [{selector:"@s"},{text:" isn't made of "},{text:"DIAMONDS",color:"#2CBAA8"}]
