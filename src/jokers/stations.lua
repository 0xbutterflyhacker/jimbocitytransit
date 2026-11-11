SMODS.Atlas({
    key = "CustomJokersC",
    path = "CustomJokers.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Joker { -- Coney Island - Stillwell Ave
    key = 'Coney Island',
    loc_txt = {
        name = 'Coney Island-Stillwell Ave',
        text = { 'Doubles the effects of D, F, N, and Q trains' }
    },
    atlas = 'CustomJokersC',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 3,
    config = { extra = { jbc_type = 'station' } }
}
