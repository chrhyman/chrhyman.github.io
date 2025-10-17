# increase the world border if at least one diamond has been sacrificed
execute if score .global diamondsSacrificed matches 1.. run worldborder add 1

# schedule this to happen again in one day if the game is still going
execute if entity @e[type=marker,tag=sacrifice_game] run schedule function mw2:sacrifice_game/daily_border_growth 1d
