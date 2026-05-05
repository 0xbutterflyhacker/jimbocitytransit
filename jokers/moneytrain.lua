
SMODS.Joker{ --Money Train
    key = "moneytrain",
    config = {
        extra = {
            earnings = 6
        }
    },
    loc_txt = {
        ['name'] = 'Money Train',
        ['text'] = {
            [1] = 'Earns {C:money}$6{} per round',
            [2] = 'If Joker Slots contain {C:purple}Jay St-MetroTech{}, earnings are {C:attention}doubled{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
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
        
        return {vars = {card.ability.extra.earnings}}
    end,
    
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval  then
            if (function()
                for i, v in pairs(G.jokers.cards) do
                    if v.config.center.key == "j_jaystmetrotech" then 
                        return true
                    end
                end
            end)() then
                return {
                    
                    func = function()
                        
                        local current_dollars = G.GAME.dollars
                        local target_dollars = G.GAME.dollars + card.ability.extra.earnings
                        local dollar_value = target_dollars - current_dollars
                        ease_dollars(dollar_value)
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Beep Beep!", colour = G.C.MONEY})
                        return true
                    end
                }
            else
                return {
                    
                    func = function()
                        
                        local current_dollars = G.GAME.dollars
                        local target_dollars = G.GAME.dollars + card.ability.extra.earnings
                        local dollar_value = target_dollars - current_dollars
                        ease_dollars(dollar_value)
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(card.ability.extra.earnings), colour = G.C.MONEY})
                        return true
                    end
                }
            end
        end
    end
}