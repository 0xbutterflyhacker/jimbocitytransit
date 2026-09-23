SMODS.Atlas({
    key = "CustomJokersB1",
    path = "CustomJokers.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Joker {
    key = 'q',
    loc_txt = {
        name = 'Q',
        text = { '{C:mult}+#1# {}Mult and {C:money}+$#2# {}for each {C:Diamonds} Diamond {}card played' }
    },
    atlas = 'CustomJokersB1',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 4,
    config = { extra = { mult = 7, dollars = 2, suit = 'Diamond' } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.dollars, localize(card.ability.extra.suit, 'suits_singular') } }
    end,

    calculate = function(self, card, context)
        if context.independent and context.cardarea == G.play then
            if context.other_card:is_suit(card.ability.extra.suit) then
                return {
                    mult = card.ability.extra.mult,
                    dollars = card.ability.extra.dollars
                }
            end
        end
    end
}
