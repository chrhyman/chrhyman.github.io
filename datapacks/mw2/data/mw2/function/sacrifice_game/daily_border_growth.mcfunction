worldborder add 1

# schedule this to happen again in one day if the game is still going
execute if entity @e[type=marker,tag=sacrifice_game] run schedule function mw2:sacrifice_game/daily_border_growth 1d
