# Stop the pre-26.3 implementation if this pack was upgraded in place.
schedule clear wandering_trades:tick
scoreboard objectives remove wt_trades
scoreboard objectives remove wt_tradeIndex
scoreboard objectives add wt_random dummy
function wandering_trades:catalog
execute in minecraft:overworld run function wandering_trades:cleanup_legacy
execute in minecraft:the_nether run function wandering_trades:cleanup_legacy
execute in minecraft:the_end run function wandering_trades:cleanup_legacy
