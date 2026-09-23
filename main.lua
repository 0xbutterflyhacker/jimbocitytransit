local JBC = {}
JBC.config = SMODS.current_mod.config
JBC.optional_features = function()
    return {
        retrigger_joker = true,
    }
end

assert(SMODS.load_file('jokers/fares.lua'), 'Unable to load Fare Jokers!')()
assert(SMODS.load_file('jokers/a_division.lua'), 'Unable to load A Division Routes!')()
assert(SMODS.load_file('jokers/b_division_bmt.lua'), 'Unable to load B Division - Former BMT Routes!')()
