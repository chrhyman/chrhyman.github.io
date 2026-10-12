$data modify storage wandering_trades:runtime work.offers append from storage wandering_trades:runtime work.pool[$(index)]
$data remove storage wandering_trades:runtime work.pool[$(index)]
