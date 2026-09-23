SMODS.Atlas({
    key = "CustomJokersB1",
    path = "CustomJokers.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Joker { --N (Broadway Exp)
    key = 'n',
    loc_txt = {
        name = 'N',
        text = { '{C:mult}+#1# {}Mult and {C:money}+$#2# {}for each {C:Diamonds}Diamond {}card played' }
    },
    atlas = 'CustomJokersB1',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 4,
    config = { extra = { mult = 7, dollars = 4, suit = 'Diamonds', jbc_type = 'route' } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.dollars, localize(card.ability.extra.suit, 'suits_singular') } }
    end,

    calculate = function(self, card, context)
        if context.individual
            and context.cardarea == G.play
            and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.mult,
                dollars = card.ability.extra.dollars
            }
        end
    end
}
SMODS.Joker { --Q (Broadway Exp)
    key = 'q',
    loc_txt = {
        name = 'Q',
        text = { '{C:mult}+#1# {}Mult and {C:money}+$#2# {}for each {C:Diamonds}Diamond {}card played' }
    },
    atlas = 'CustomJokersB1',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 4,
    config = { extra = { mult = 7, dollars = 9.6, suit = 'Diamonds', jbc_type = 'route' } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.dollars, localize(card.ability.extra.suit, 'suits_singular') } }
    end,

    calculate = function(self, card, context)
        if context.individual
            and context.cardarea == G.play
            and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.mult,
                dollars = card.ability.extra.dollars
            }
        end
    end
}
SMODS.Joker { --R (Broadway Lcl)
    key = 'r',
    loc_txt = {
        name = 'R',
        text = { '{C:mult}+#1# {}Mult and {C:money}+$#2# {}for each {C:Diamonds}Diamond {}card played' }
    },
    atlas = 'CustomJokersB1',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 4,
    config = { extra = { mult = 7, dollars = 9.5, suit = 'Diamonds', jbc_type = 'route' } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.dollars, localize(card.ability.extra.suit, 'suits_singular') } }
    end,

    calculate = function(self, card, context)
        if context.individual
            and context.cardarea == G.play
            and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.mult,
                dollars = card.ability.extra.dollars
            }
        end
    end
}
SMODS.Joker { --W (Broadway Lcl)
    key = 'w',
    loc_txt = {
        name = 'W',
        text = { '{C:mult}+#1# {}Mult and {C:money}+$#2# {}for each {C:Diamonds}Diamond {}card played' }
    },
    atlas = 'CustomJokersB1',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 4,
    config = { extra = { mult = 7, dollars = 2.3, suit = 'Diamonds', jbc_type = 'route' } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.dollars, localize(card.ability.extra.suit, 'suits_singular') } }
    end,

    calculate = function(self, card, context)
        if context.individual
            and context.cardarea == G.play
            and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.mult,
                dollars = card.ability.extra.dollars
            }
        end
    end
}
