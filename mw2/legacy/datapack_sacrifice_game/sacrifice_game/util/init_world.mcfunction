# global sum of diamonds sacrificed is stored in the `.global` fake player
# each real player also has a score, which is their personal contribution
scoreboard objectives add diamondsSacrificed dummy "Diamonds Sacrificed"

# initilize to starting stage for world border progress
scoreboard objectives add borderStage dummy "World Border Stage"
scoreboard players set .global borderStage 0

# entity flag for if "diamond sacrifice" game is active (kill when game is over)
summon marker 471 111 -2111 {Tags:["sacrifice_game"]}

# set the world border once (centered on 3x3 pit)
worldborder center 471 -2111
# this will get incremented by 1 each day after the first diamond is sacrificed
# the border gets incremented by 250 when each border stage is achieved
worldborder set 500

# set the diamonds sacrificed score in the tab view (sidebar would show the global total)
scoreboard objectives setdisplay list diamondsSacrificed

# mark this setup as done so it isn't repeated on each reload of this datapack
scoreboard players set .global gameSetupDone 1
