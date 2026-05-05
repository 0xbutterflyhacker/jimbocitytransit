SMODS.Rarity {
    key = "route",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.6,
    badge_colour = HEX('11309f'),
    loc_txt = {
        name = "Route"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "station",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.2,
    badge_colour = HEX('8947c9'),
    loc_txt = {
        name = "Station"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "vintage_route",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0,
    badge_colour = HEX('321807'),
    loc_txt = {
        name = "Vintage Route"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}