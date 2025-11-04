# a player got too close to a protected area

# shortcut to prevent multiple messages for the same player
execute if entity @s[tag=was_trespassing] run return fail
tag @s add was_trespassing

# players on this team don't display vanilla death messages
team join hiddenDeathMessage @s

# custom death message
tellraw @a [{selector:"@s"},{text:" was killed for being a dirty "},{text:"trespasser",color:"red"},{text:"!"}]
kill @s

# leave the team so they display normal death messages again
team leave @s

schedule function mw2:sacrifice_game/util/clear_trespassing_tag 3s
