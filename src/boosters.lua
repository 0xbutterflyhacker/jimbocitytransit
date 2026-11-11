SMODS.Atlas({
    key = "CustomBoosters",
    path = "CustomBoosters.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})
route_pool = { 'one', 'two', 'three', 'n', 'q', 'r', 'w' }
SMODS.Booster { -- Normal Route Booster (3 choose 1)
    key = 'route_booster_n',
    loc_txt = {
        name = 'Route Booster Pack',
        text = { 'Choose 1 of up to', '3 Routes to add to Jokers' }
    },
    weight = 1,
    atlas = 'CustomBoosters',
    pos = { x = 0, y = 0 },
    cost = 3,
    kind = 'route_booster',
    config = { extra = 3, choose = 1 },
    create_card = function(self, card, i)
        local route = pseudorandom_element(route_pool)
        local _key = 'j_jctransit_' .. route
        return SMODS.create_card({ area = G.pack_cards, key = _key })
    end
}
-- SMODS.Booster { -- Jumbo Route Booster (4 choose 1)
--     key = 'route_booster_j',
--     weight = 1,
--     atlas = 'CustomBoosters',
--     pos = { x = 0, y = 0 },
--     cost = 3,
--     kind = 'route_booster',
--     config = { extra = 4, choose = 1 },
--     create_card = function(self, card, i)
--         local _card = SMODS.create_card({ set = 'Joker', key_append = 'jctransit' })
--         while ! isRoute(_card) do
--             _card = SMODS.create_card({ set = 'Joker', key_append = 'jctransit' })
--         end
--         return _card
--     end
-- }
-- SMODS.Booster { -- Mega Route Booster (5 choose 2)
--     key = 'route_booster_m',
--     weight = 0.5,
--     atlas = 'CustomBoosters',
--     pos = { x = 0, y = 0 },
--     cost = 3,
--     kind = 'route_booster',
--     config = { extra = 5, choose = 2 },
--     create_card = function(self, card, i)
--         local _card = SMODS.create_card({ set = 'Joker', key_append = 'jctransit' })
--         while ! isRoute(_card) do
--             _card = SMODS.create_card({ set = 'Joker', key_append = 'jctransit' })
--         end
--         return _card
--     end
-- }
