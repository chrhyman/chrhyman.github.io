# run game loop if entity exists
# killing entity stops game
# edit mw2:tick to stop checking for the entity for performance
execute if entity @e[type=marker,tag=sacrifice_game] run function mw2:sacrifice_game/game_loop
