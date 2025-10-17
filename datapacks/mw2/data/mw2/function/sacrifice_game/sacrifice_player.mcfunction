# a player fell in the pit
# tellraw @a [{text:"[debug] sacrifice_player called"}]

execute if entity @s[tag=was_sacrificed] run return fail
tag @s add was_sacrificed

# players on this team don't display vanilla death messages
team join hiddenDeathMessage @s

# custom death message -- TODO: randomize this
tellraw @a [{selector:"@s"},{text:" was deemed to be an insufficient sacrifice"}]
kill @s

# leave the team so they display normal death messages again
team leave @s

schedule function mw2:sacrifice_game/clear_sacrifice_tag 3s
