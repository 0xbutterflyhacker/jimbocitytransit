SMODS.Joker { --K
    key = "k",
    config = {
        extra = {
            discontinueProb = 2,
            mult0 = 16,
            chips0 = 85,
            xchips0 = 1.1,
            odds = 5
        }
    },
    loc_txt = {
        ['name'] = 'K',
        ['text'] = {
            [1] = '{C:red}+16{} Mult; each scored {C:clubs}Club{} earns {C:blue}+85{} Chips and {X:blue,C:white}x1.1{} Chips',
            [2] = '{C:green}#1# in 5{} chance to be {C:attention}discontinued{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
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
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, card.ability.extra.discontinueProb,
            card.ability.extra.odds, 'j_jctransit_k')
        return { vars = { card.ability.extra.discontinueProb, new_numerator, new_denominator } }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                mult = 16
            }
        end
        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit("Clubs") then
                return {
                    chips = 85,
                    extra = {
                        x_chips = 1.1,
                        colour = G.C.DARK_EDITION
                    }
                }
            end
        end
        if context.after and context.cardarea == G.jokers then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_260a9b34', 1, card.ability.extra.odds, 'j_jctransit_k', false) then
                    SMODS.calculate_effect({
                        func = function()
                            local target_joker = card

                            if target_joker then
                                target_joker.getting_sliced = true
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        target_joker:start_dissolve({ G.C.RED }, nil, 1.6)
                                        return true
                                    end
                                }))
                                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
                                    { message = "Destroyed!", colour = G.C.RED })
                            end
                            return true
                        end
                    }, card)
                end
            end
        end
    end
}
