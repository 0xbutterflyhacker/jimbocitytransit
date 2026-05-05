
SMODS.Joker{ --M via Nassau
    key = "mvianassau",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'M via Nassau',
        ['text'] = {
            [1] = '{C:green}1 in 12{} chance to {C:attention}change trunk lines{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = "jctransit_route",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jctransit_jctransit_jokers"] = true }
}