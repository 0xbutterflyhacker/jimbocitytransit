
SMODS.Joker{ --OMNY
    key = "omny",
    config = {
        extra = {
            chips0 = 30,
            mult0 = 5
        }
    },
    loc_txt = {
        ['name'] = 'OMNY',
        ['text'] = {
            [1] = 'If hand has at most 35 cards, {C:blue}+30{} Chips and {C:red}+5{} Mult',
            [2] = 'for each Station Card in Joker slots'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jctransit_jctransit_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.other_joker  then
            if (function()
                return context.other_joker.config.center.rarity == "jctransit_station"
            end)() then
                return {
                    message = "Fare Paid!",
                    extra = {
                        chips = 30,
                        colour = G.C.CHIPS,
                        extra = {
                            mult = 5
                        }
                    }
                }
            end
        end
    end
}