SMODS.Joker { --1
    key = "_1",
    config = {
        extra = {
            skipStopProb = 1,
            mult0 = 7,
            mult_min = 4,
            mult_max = 8
        }
    },
    loc_txt = {
        ['name'] = '1',
        ['text'] = {
            [1] = '{C:red}+7{} Mult; each played {C:hearts}Heart{} card gives {C:red}+4-8{} Mult',
            [2] = '{C:green}#1# in 9{} chance to {C:attention}start skip stop service{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 0
    },
    display_size = {
        w = 71 * 1,
        h = 95 * 1
    },
    cost = 4,
    rarity = "jctransit_route",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jctransit_jctransit_jokers"] = true },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.skipStopProb } }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                mult = 7
            }
        end
        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit("Hearts") then
                return {
                    mult = pseudorandom('RANGE:4|8', card.ability.extra.mult_min, card.ability.extra.mult_max)
                }
            end
        end
    end
}
