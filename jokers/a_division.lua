SMODS.Atlas({
    key = "CustomJokersA",
    path = "CustomJokers.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Joker { --1 (Broadway-7th Ave Lcl)
    key = 'one',
    loc_txt = {
        name = '1',
        text = { '{C:mult}+#3# {}Mult for every {C:Hearts}Heart {}card played',
            '{C:green}#1# {}in {C:green}#2# {}chance to start skip-stop service' }
    },
    atlas = 'CustomJokersA',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 3,
    config = { extra = { mult = 7, suit = 'Hearts', numerator = 1, denominator = 9, jbc_type = 'route' } },
    loc_vars = function(self, info_queue, card)
        local num, denom = SMODS.get_probability_vars(card, card.ability.extra.numerator, card.ability.extra.denominator)
        return { vars = { num, denom, card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular') } }
    end,

    calculate = function(self, card, context)
        print(context)
        if context.individual
            and context.cardarea == G.play
            and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.mult
            }
        end
        if context.end_of_round and context.main_eval then
            if SMODS.pseudorandom_probability(card, 'example_string', card.ability.extra.numeratorB, card.ability.extra.denominatorB) then
                G.jokers:emplace('nine')
            end
        end
    end
}
SMODS.Joker { --2 (Broadway-7th Ave Exp)
    key = 'two',
    loc_txt = {
        name = '2',
        text = { '{C:mult}+#1# {}Mult for every {C:Hearts}Heart {}card played' }
    },
    atlas = 'CustomJokersA',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 3,
    config = { extra = { mult = 7, suit = 'Hearts', jbc_type = 'route' } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular') } }
    end,

    calculate = function(self, card, context)
        print(context)
        if context.individual
            and context.cardarea == G.play
            and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}
SMODS.Joker { --3 (Broadway-7th Ave Exp)
    key = 'three',
    loc_txt = {
        name = '3',
        text = { '{C:mult}+#1# {}Mult for every {C:Hearts}Heart {}card played' }
    },
    atlas = 'CustomJokersA',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 3,
    config = { extra = { mult = 7, suit = 'Hearts', jbc_type = 'route' } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, localize(card.ability.extra.suit, 'suits_singular') } }
    end,

    calculate = function(self, card, context)
        print(context)
        if context.individual
            and context.cardarea == G.play
            and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}
SMODS.Joker { --9 (Broadway-7th Ave Lcl/Skip-Stop)
    key = 'nine',
    loc_txt = {
        name = '9',
        text = { '{C:mult}+#5# {}Mult for every {C:Hearts}Heart {}card played',
            '#1# in #2# chance for {X:mult,C:white}x#6# {}Mult for every {C:Heart}Heart {}card played',
            '#3# in #4# chance to be discontinued' }
    },
    atlas = 'CustomJokersA',
    pos = { x = 0, y = 0 },
    rarity = 3,
    cost = 9,
    config = { extra = { mult = 7, xmult = 1.6, suit = 'Hearts', numeratorA = 1, numeratorB = 1, denominatorA = 2, denominatorB = 9, jbc_type = 'vintage_route' } },
    loc_vars = function(self, info_queue, card)
        local numA, denomA = SMODS.get_probability_vars(card, card.ability.extra.numeratorA,
            card.ability.extra.denominatorA)
        local numB, denomB = SMODS.get_probability_vars(card, card.ability.extra.numeratorB,
            card.ability.extra.denominatorB)
        return { vars = { numA, denomA, numB, denomB, card.ability.extra.mult, card.ability.extra.xmult, localize(card.ability.extra.suit, 'suits_singular') } }
    end,

    calculate = function(self, card, context)
        print(context)
        local ret = {}
        if context.individual
            and context.cardarea == G.play
            and context.other_card:is_suit(card.ability.extra.suit) then
            ret['mult'] = card.ability.extra.mult
            if SMODS.pseudorandom_probability(card, 'example_string', card.ability.extra.numeratorA, card.ability.extra.denominatorA) then
                ret['xmult'] = card.ability.extra.xmult
            end
            return ret
        end

        if context.end_of_round and context.main_eval then
            if SMODS.pseudorandom_probability(card, 'example_string', card.ability.extra.numeratorB, card.ability.extra.denominatorB) then
                SMODS.destroy_cards(card, nil, nil, true)
                return {
                    message = 'Discontinued!'
                }
            end
        end
    end
}
