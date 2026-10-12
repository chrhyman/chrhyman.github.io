# Wandering Trades — 26.3

Vanilla generates a trader's offers on its first interaction. This pack waits for
that interaction, appends extra offers, and teleports the trader to its own
position to close the stale menu. The player sees a white actionbar message: "Interact again to see custom trades".
Subsequent interactions leave the menu open and do not add more offers.

The Blocks Only Edition adds 15–21 unique mini-block offers. This customization adds 4-8 unique mini-block offers.

Prices, stock, names and textures come from the original catalogue. Each count is
rolled once, and selection removes entries from a temporary pool so duplicates
cannot occur within a category. Existing offers and their use counts are retained.

## Implementation

- `advancement/interact.json` uses the 26.3 predicate format and invokes `interact`.
- Advancement rewards execute as the player, without a direct reference to the
  clicked trader. The handler processes unmarked traders in the player's dimension
  that already have nonempty `Offers.Recipes`; it does not guess the nearest entity.
  Fresh natural traders without offers are untouched. Previously initialized or
  command-created traders with offers can also be processed during this scan.
- `provide_trades` assembles the combined list in storage and writes it once,
  marks `wt.processed`, then closes trading while preserving position, rotation
  and motion. There is no ticking function or temporary item entity.
- `catalog` contains the editable offer definitions; `draw`, `roll`, and `take`
  implement selection without replacement. Scratch storage is used synchronously.

## Upgrading

Load cancels the old scheduled tick and removes loaded temporary trade-index items
in the three vanilla dimensions. Traders tagged `has_new_trades` by the old pack
are left alone to avoid duplicating offers. This does not reconstruct vanilla
trades on traders already broken by the old implementation; use newly spawned
traders to verify the fix. Processed tags remain after uninstall for the same reason.

## Verification

Tested with an isolated vanilla 26.3 server and a scripted protocol client:
first interaction sends vanilla offers, then the message and close-menu packet;
reopening sends the combined offers with the original offer bytes unchanged.
Repeated opening does not add offers or close the menu. A nearer untouched trader
is not initialized. Server-side checks also cover offer-use counts, position,
rotation, motion, count bounds and repeated initialization.

For a visual check, summon a fresh trader, interact once, confirm the message and
closed screen, then reopen and confirm both vanilla and extra offers. Repeat in
multiplayer and in the Nether/End if testing deployment-specific behavior.
