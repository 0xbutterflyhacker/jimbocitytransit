function isRoute(card)
    return card.ability.extra.jbc_type == 'route'
end

function isStation(card)
    return card.ability.extra.jbc_type == 'station'
end
