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
            if #SMODS.find_card('jctransit_stillwell_ave') == 1 then
                return {
                    mult = card.ability.extra.mult * 2,
                    dollars = card.ability.extra.dollars * 2
                }
            else
                return {
                    mult = card.ability.extra.mult,
                    dollars = card.ability.extra.dollars
                }
            end
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
            if #SMODS.find_card('jctransit_stillwell_ave') == 1 then
                return {
                    mult = card.ability.extra.mult * 2,
                    dollars = card.ability.extra.dollars * 2
                }
            else
                return {
                    mult = card.ability.extra.mult,
                    dollars = card.ability.extra.dollars
                }
            end
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
    config = { extra = { mult = 7, dollars = 1.6, suit = 'Diamonds', jbc_type = 'route' } },
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

SMODS.Joker { -- J (Nassau Lcl)
    key = 'j',
    loc_txt = {
        name = 'J',
        text = { 'Each played face card gains {C:mult}+#1# {}Mult' }
    },
    atlas = 'CustomJokersB1',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 3,
    config = { extra = { mult = 2 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,

    calculate = function(self, card, context)
        if context.individual
            and context.cardarea == G.play
            and context.other_card:is_face(false) then
            if #SMODS.find_card('jctransit_z') == 1 then
                context.other_card.ability.perma_mult = (context.other_card.ability.perma_mult or 0) +
                    (card.ability.extra.mult * 1.5)
            else
                context.other_card.ability.perma_mult = (context.other_card.ability.perma_mult or 0) +
                    card.ability.extra.mult
            end

            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.MULT
            }
        end
    end
}
SMODS.Joker { -- Z (Nassau Skip-Stop)
    key = 'z',
    loc_txt = {
        name = "Z",
        text = { 'Each played Jack gains {C:chips}+#1# {} chips',
            '{X:mult,C:white}x1.5{} effect to J',
            '{C:inactive}(Debuffed if J is not present){}' }
    },
    atlas = 'CustomJokersB1',
    pos = { x = 0, y = 0 },
    rarity = 1,
    cost = 3,
    config = { extra = { chips = 19.88 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,

    calculate = function(self, card, context)
        if context.before or context.selling_card then
            if #SMODS.find_card('jctransit_j') == 0 then
                self.debuff = true
            else
                self.debuff = true
            end
        end
        if context.individual
            and context.cardarea == G.play
            and context.other_card:get_id() == 11 then
            context.other_card.ability.perma_bonus = (context.other_card.ability.perma_bonus or 0) +
                card.ability.extra.chips
            return {
                message = 'Stop Skipped!',
                colour = G.C.CHIPS
            }
        end
    end
}
