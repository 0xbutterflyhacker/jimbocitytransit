
SMODS.Booster {
    key = 'map_pack',
    loc_txt = {
        name = "Map Pack",
        text = {
            [1] = 'Select 1 of 2 {C:purple}Station{} cards'
        },
        group_name = "jctransit_boosters"
    },
    config = { extra = 2, choose = 1 },
    atlas = "CustomBoosters",
    pos = { x = 0, y = 0 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra }
        }
    end,
    create_card = function(self, card, i)
        return {
            set = "Joker",
            rarity = "jctransit_station",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append = "jctransit_map_pack"
        }
    end,
    particles = function(self)
        -- No particles for joker packs
        end,
    }
    
    
    SMODS.Booster {
        key = 'oldies_pack',
        loc_txt = {
            name = "Oldies Pack",
            text = {
                [1] = 'Select 1 of 3 {C:inactive}Vintage Route{} cards'
            },
            group_name = "jctransit_boosters"
        },
        config = { extra = 3, choose = 1 },
        atlas = "CustomBoosters",
        pos = { x = 1, y = 0 },
        discovered = true,
        loc_vars = function(self, info_queue, card)
            local cfg = (card and card.ability) or self.config
            return {
                vars = { cfg.choose, cfg.extra }
            }
        end,
        create_card = function(self, card, i)
            return {
                set = "Joker",
                rarity = "jctransit_vintage_route",
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
                key_append = "jctransit_oldies_pack"
            }
        end,
        particles = function(self)
            -- No particles for joker packs
            end,
        }
        