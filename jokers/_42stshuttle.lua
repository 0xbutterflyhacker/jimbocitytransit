
SMODS.Joker{ --42 St Shuttle
    key = "_42stshuttle",
    config = {
        extra = {
            lexingtonCount = 0,
            seventhAveCount = 0,
            chips0 = 42
        }
    },
    loc_txt = {
        ['name'] = '42 St Shuttle',
        ['text'] = {
            [1] = '{C:blue}+42{} Chips',
            [2] = 'If both a {C:uncommon}Lexington Ave Line{} Route and a',
            [3] = '{C:rare}Broadway-7 Ave Line{} Route are in Joker Slots, {C:blue}+44{} Chips',
            [4] = 'per applicable Route'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
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
        
        return {vars = {card.ability.extra.lexingtonCount, card.ability.extra.seventhAveCount}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                chips = 42
            }
        end
    end
}