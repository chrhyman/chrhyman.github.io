# safely ends the game without finishing it (i.e., no explosion)
# unsure if we'll ever use this

# set the world border to max/default
worldborder set 59999968

# reset the tab view so it stops showing diamonds sacrificed
scoreboard objectives setdisplay list

# invalidate borderStage
scoreboard players set .global borderStage -1

# remove the game flag to stop the game_loop from running each tick
# i.e. removes particles, kill zones, etc.
kill @e[type=marker,tag=sacrifice_game]
