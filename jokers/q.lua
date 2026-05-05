
SMODS.Joker{ --Q
    key = "q",
    config = {
        extra = {
            independentMult = 7,
            diamondChips = 29
        }
    },
    loc_txt = {
        ['name'] = 'Q',
        ['text'] = {
            [1] = '{C:red}+7{} Mult; each played {C:diamonds}Diamond{} card earns {C:blue}+29{} Chips'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 1
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
    pools = { ["jctransit_jctransit_jokers"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.independentMult, card.ability.extra.diamondChips}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if (function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_stillwellave" then 
                        return true
                    end
                end
            end)() then
                card.ability.extra.independentMult = (card.ability.extra.independentMult) * 2
                card.ability.extra.diamondChips = (card.ability.extra.diamondChips) * 2
            else
                return {
                    mult = card.ability.extra.independentMult
                }
            end
        end
        if context.individual and context.cardarea == G.play  then
            if context.other_card:is_suit("Diamonds") then
                return {
                    chips = card.ability.extra.diamondChips
                }
            end
        end
        if context.after and context.cardarea == G.jokers  then
            if (function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_stillwellave" then 
                        return true
                    end
                end
            end)() then
                return {
                    func = function()
                        card.ability.extra.independentMult = 7
                        return true
                    end,
                    extra = {
                        func = function()
                            card.ability.extra.diamondChips = 29
                            return true
                        end,
                        colour = G.C.BLUE
                    }
                }
            end
        end
    end
}