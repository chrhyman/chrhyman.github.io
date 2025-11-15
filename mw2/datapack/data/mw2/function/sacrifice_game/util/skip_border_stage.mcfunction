# increment global total by 100 to guarantee next border stage is hit
# this exists if we overestimated how many diamonds would get sacrificed
# no player gets credit for these cheaty diamonds
scoreboard players add .global diamondsSacrificed 100

# check for the new stage and apply the border update
function mw2:sacrifice_game/border/update_border_stage
