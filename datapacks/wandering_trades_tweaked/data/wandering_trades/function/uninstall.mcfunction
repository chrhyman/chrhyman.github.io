schedule clear wandering_trades:tick
scoreboard objectives remove wt_random
scoreboard objectives remove wt_trades
scoreboard objectives remove wt_tradeIndex
data remove storage wandering_trades:catalog blocks
data remove storage wandering_trades:catalog hermits
data remove storage wandering_trades:runtime work
# Retain processed tags: reinstalling must not duplicate existing custom offers.
