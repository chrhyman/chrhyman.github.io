# Choose the count once, then draw without replacement from the original catalogue.
data modify storage wandering_trades:runtime work.pool set from storage wandering_trades:catalog blocks
# customization: from 15..21 to 4..8 (Wandering Traders were overwhelming and not special)
execute store result score #remaining wt_random run random value 4..8
function wandering_trades:draw
