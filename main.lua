SMODS.Atlas({
    key = "CustomJokers",
    path = "CustomJokers.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomBoosters",
    path = "CustomBoosters.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})

local JBC = {}
JBC.config = SMODS.current_mod.config

assert(SMODS.load_file('jokers/fares.lua'), 'Unable to load Fare Jokers!')
