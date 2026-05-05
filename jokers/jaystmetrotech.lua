
SMODS.Joker{ --Jay St-MetroTech
    key = "jaystmetrotech",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Jay St-MetroTech',
        ['text'] = {
            [1] = '{C:attention}Doubles{} the effects of the A, C, F, and R Routes'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 6,
    rarity = "jctransit_station",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jctransit_jctransit_jokers"] = true }
}