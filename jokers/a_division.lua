SMODS.Atlas({
    key = "CustomJokers",
    path = "CustomJokers.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Joker { --1 (Broadway-7th Ave Lcl)
    key = 'one',
    loc_txt = {
        name = '1',
        txt = {}
    },
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 3,
    config = { extra = { mult = 7 } },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}
SMODS.Joker { --2 (Broadway-7th Ave Exp)
    key = 'two',
    loc_txt = {
        name = '2',
        txt = {}
    },
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 3,
    config = { extra = { mult = 7 } },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}
SMODS.Joker { --2 (Broadway-7th Ave Exp)
    key = 'two',
    loc_txt = {
        name = '2',
        txt = {}
    },
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 3,
    config = { extra = { mult = 7 } },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
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
        txt = {}
    },
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 3,
    config = { extra = { mult = 7 } },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}
