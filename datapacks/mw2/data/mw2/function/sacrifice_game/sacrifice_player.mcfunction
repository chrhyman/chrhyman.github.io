# a player fell in the pit

# shortcut to prevent multiple messages for the same entity
execute if entity @s[tag=was_sacrificed] run return fail
tag @s add was_sacrificed

# players on this team don't display vanilla death messages
team join hiddenDeathMessage @s

# custom death message
function mw2:sacrifice_game/random_death_message
kill @s

# leave the team so they display normal death messages again
team leave @s

schedule function mw2:sacrifice_game/clear_sacrifice_tag 3s
