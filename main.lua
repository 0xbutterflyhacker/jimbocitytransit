local JBC = {}
JBC.config = SMODS.current_mod.config
JBC.optional_features = function()
    return {
        retrigger_joker = true,
    }
end

assert(SMODS.load_file('src/jokers/fares.lua'), 'Unable to load Fare Jokers!')()
assert(SMODS.load_file('src/jokers/stations.lua'), 'Unable to load Station Jokers!')()
assert(SMODS.load_file('src/jokers/a_division.lua'), 'Unable to load A Division Routes!')()
assert(SMODS.load_file('src/jokers/b_division_bmt.lua'), 'Unable to load B Division - Former BMT Routes!')()
assert(SMODS.load_file('src/boosters.lua'), 'Unable to load Booster Packs!')()
