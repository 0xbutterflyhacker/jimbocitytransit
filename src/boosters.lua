SMODS.Atlas({
    key = "CustomBoosters",
    path = "CustomBoosters.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Booster { -- Normal Route Booster (3 choose 1)
    key = 'route_booster_n',
    weight = 1,
    atlas = 'CustomBoosters',
    pos = { x = 0, y = 0 },
    cost = 3,
    kind = 'route_booster',
    config = { extra = 3, choose = 1 },
    create_card = function(self, card, i)
        local _card = {
            set = 'Joker',
        }
        return _card
    end
}
SMODS.Booster { -- Jumbo Route Booster (4 choose 1)
    key = 'route_booster_j',
    weight = 1,
    atlas = 'CustomBoosters',
    pos = { x = 0, y = 0 },
    cost = 3,
    kind = 'route_booster',
    config = { extra = 4, choose = 1 }
}
SMODS.Booster { -- Mega Route Booster (5 choose 2)
    key = 'route_booster_m',
    weight = 0.5,
    atlas = 'CustomBoosters',
    pos = { x = 0, y = 0 },
    cost = 3,
    kind = 'route_booster',
    config = { extra = 5, choose = 2 }
}
