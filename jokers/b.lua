SMODS.Joker { --B
    key = "b",
    config = {
        extra = {
            cloneProbability = 1,
            odds = 2
        }
    },
    loc_txt = {
        ['name'] = 'B',
        ['text'] = {
            [1] = '{C:green}#1# in 2{} chance to copy last card of played hand',
            [2] = 'and draw said card to the hand'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
        y = 0
    },
    display_size = {
        w = 71 * 1,
        h = 95 * 1
    },
    cost = 6,
    rarity = "jctransit_route",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jctransit_jctransit_jokers"] = true },

    loc_vars = function(self, info_queue, card)
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, card.ability.extra.cloneProbability,
            card.ability.extra.odds, 'j_jctransit_b')
        return { vars = { card.ability.extra.cloneProbability, new_numerator, new_denominator } }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_fdbaab3d', 1, card.ability.extra.odds, 'j_jctransit_b', false) then
                    local cards_to_copy = {}
                    local target_index = 5
                    if context.full_hand[target_index] then
                        table.insert(cards_to_copy, context.full_hand[target_index])
                    end
                    for i, source_card in ipairs(cards_to_copy) do
                        G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                        local copied_card = copy_card(source_card, nil, nil, G.playing_card)
                        copied_card:add_to_deck()
                        G.deck.config.card_limit = G.deck.config.card_limit + 1
                        table.insert(G.playing_cards, copied_card)
                        G.hand:emplace(copied_card)
                        copied_card.states.visible = nil
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                copied_card:start_materialize()
                                return true
                            end
                        }))
                    end
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
                        { message = "Copied Card to Hand!", colour = G.C.GREEN })
                end
            end
        end
    end
}
