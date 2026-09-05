local JBC = {}
JBC.config = SMODS.current_mod.config

assert(SMODS.load_file('jokers/fares.lua'), 'Unable to load Fare Jokers!')()
assert(SMODS.load_file('jokers/a_division.lua'), 'Unable to load A Division Routes!')()
