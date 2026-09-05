SMODS.Joker { --MetroCard
    key = 'metrocard',
    loc_txt = {
        name = 'MetroCard'
    },
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 2
}

SMODS.Joker {
    key = 'omny',
    loc_txt = {
        name = 'OMNY Card',
        text = { 'If deck has at most 35 cards, {C:chips}+30 {}Chips and {C:mult}+5 {}Mult',
            'per Route Card held' }
    },
    pos = { x = 0, y = 0 },
    rarity = 2,
    cost = 4,
    config = { extra = { chips = 30, mult = 5 } },

    calculate = function(self, card, context)
        if context.other_joker then

        end
    end
}
