
SMODS.Joker{ --L
    key = "l",
    config = {
        extra = {
            scoreProb = 3,
            odds = 4,
            chips0 = 14,
            mult0 = 10.5
        }
    },
    loc_txt = {
        ['name'] = 'L',
        ['text'] = {
            [1] = 'Each played {C:attention}Ace{} or {C:attention}6{} gives {C:blue}+14{} Chips and {C:red}+10.5{} Mult;',
            [2] = 'has a {C:green}#1# in 4{} chance to not score'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
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
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, scoreProb, card.ability.extra.odds, 'j_jctransit_l') 
        return {vars = {card.ability.extra.scoreProb, new_numerator, new_denominator}}
    end,
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if (context.other_card:get_id() == 14 or context.other_card:get_id() == 6) then
                if SMODS.pseudorandom_probability(card, 'group_0_e3b5c689', 1, card.ability.extra.odds, 'j_jctransit_l', false) then
                    SMODS.calculate_effect({chips = 14}, card)
                    SMODS.calculate_effect({mult = 10.5}, card)
                end
            end
        end
    end
}