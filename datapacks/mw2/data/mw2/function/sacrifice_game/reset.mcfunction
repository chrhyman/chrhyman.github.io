# remove counters and flags
scoreboard objectives remove diamondsSacrificed
scoreboard objectives remove gameSetupDone

# remove the marker if it still exists
kill @e[type=marker,tag=sacrifice_game]

# rerun setup
function mw2:sacrifice_game/setup
