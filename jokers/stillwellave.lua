
SMODS.Joker{ --Stillwell Ave
    key = "stillwellave",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Stillwell Ave',
        ['text'] = {
            [1] = '{C:attention}Doubles{} the effects of D, F, N, and Q Routes'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
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