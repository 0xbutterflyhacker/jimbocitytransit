
SMODS.Joker{ --9
    key = "_9",
    config = {
        extra = {
            discontinueMult = 2,
            mult0 = 14,
            xmult0 = 1.1,
            dollars0 = 9,
            odds = 5
        }
    },
    loc_txt = {
        ['name'] = '9',
        ['text'] = {
            [1] = '{C:red}+14{} Mult; each scored {C:hearts}Heart{} card earns {C:money}+$9{} and {X:red,C:white}X1.1{} Mult',
            [2] = '{C:green}#1# in 5{} chance to be {C:attention}discontinued{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 10,
    rarity = "jctransit_vintage_route",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jctransit_jctransit_jokers"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, discontinueMult, card.ability.extra.odds, 'j_jctransit__9') 
        return {vars = {card.ability.extra.discontinueMult, new_numerator, new_denominator}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                mult = 14
            }
        end
        if context.individual and context.cardarea == G.play  then
            if context.other_card:is_suit("Hearts") then
                return {
                    Xmult = 1.1,
                    extra = {
                        
                        func = function()
                            
                            local current_dollars = G.GAME.dollars
                            local target_dollars = G.GAME.dollars + 9
                            local dollar_value = target_dollars - current_dollars
                            ease_dollars(dollar_value)
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(9), colour = G.C.MONEY})
                            return true
                        end,
                        colour = G.C.MONEY
                    }
                }
            end
        end
        if context.after and context.cardarea == G.jokers  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_be73721c', 1, card.ability.extra.odds, 'j_jctransit__9', false) then
                    SMODS.calculate_effect({func = function()
                        local target_joker = card
                        
                        if target_joker then
                            target_joker.getting_sliced = true
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                                    return true
                                end
                            }))
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Destroyed!", colour = G.C.RED})
                        end
                        return true
                    end}, card)
                end
            end
        end
    end
}