
SMODS.Joker{ --MetroCard
    key = "metrocard",
    config = {
        extra = {
            metrocardMult = 3
        }
    },
    loc_txt = {
        ['name'] = 'MetroCard',
        ['text'] = {
            [1] = 'Gains {C:red}+3{} Mult for each Station Card in Joker slots',
            [2] = '{C:inactive}(Currently: {}{C:red}+#1#{} {C:inactive}Mult){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
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
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.metrocardMult}}
    end,
    
    calculate = function(self, card, context)
        if context.other_joker  then
            if (function()
                return context.other_joker.config.center.rarity == "jctransit_station"
            end)() then
                return {
                    func = function()
                        card.ability.extra.metrocardMult = (card.ability.extra.metrocardMult) + 3
                        return true
                    end,
                    message = "Fare Paid!"
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                mult = card.ability.extra.metrocardMult
            }
        end
    end
}