# setup flag for single-run init
scoreboard objectives add gameSetupDone dummy

execute unless score .global gameSetupDone matches 1 run function mw2:sacrifice_game/init_world

# if the game is still running (including after reloading the pack),
# then expand the border and schedule it to happen again in one day
execute if entity @e[type=marker,tag=sacrifice_game] run function mw2:sacrifice_game/daily_border_growth

# customize death messages without duplicate "@p was killed" by adding them to this team
team add hiddenDeathMessage
team modify hiddenDeathMessage deathMessageVisibility never

# use this objective for math via fake players
scoreboard objectives add math dummy
# constants
scoreboard players set #five math 5