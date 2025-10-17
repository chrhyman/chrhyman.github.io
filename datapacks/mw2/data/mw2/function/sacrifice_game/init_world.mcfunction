# global sum of diamonds sacrificed is stored in the `.global` fake player
scoreboard objectives add diamondsSacrificed dummy "Diamonds Sacrificed"

# entity flag for if "diamond sacrifice" game is active (kill when game is over)
summon marker 471 111 -2111 {Tags:["sacrifice_game"]}

# set the world border once (centered on 3x3 pit)
worldborder center 471 -2111
# this will immediately get incremented by 1 by the daily growth's first cycle
worldborder set 499

# mark this setup as done so it isn't repeated on each reload of this datapack
scoreboard players set .global gameSetupDone 1
