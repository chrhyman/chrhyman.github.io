# run game loop if entity exists
# killing entity stops game
execute if entity @e[type=marker,tag=sacrifice_game] run function mw2:sacrifice_game/game_loop
