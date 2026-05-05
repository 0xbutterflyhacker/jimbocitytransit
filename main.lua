SMODS.Atlas({
    key = "CustomJokers",
    path = "CustomJokers.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomBoosters",
    path = "CustomBoosters.png",
    px = 71,
    py = 95,
    atlas_table = "ASSET_ATLAS"
})

local NFS = require("nativefs")
-- this function is used to load everything within a folder
local function load_folder(path)
    local files = NFS.getDirectoryItemsInfo(mod_path .. "/" .. path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file(path .. file_name))()
        end
    end
end
-- load the jokers
if true then
    assert(SMODS.load_file("jokers/metrocard.lua"))()
    assert(SMODS.load_file("jokers/omny.lua"))()
    assert(SMODS.load_file("jokers/l.lua"))()
    assert(SMODS.load_file("jokers/_7.lua"))()
    assert(SMODS.load_file("jokers/_42stshuttle.lua"))()
    assert(SMODS.load_file("jokers/b.lua"))()
    assert(SMODS.load_file("jokers/_6.lua"))()
    assert(SMODS.load_file("jokers/mvianassau.lua"))()
    assert(SMODS.load_file("jokers/_1.lua"))()
    assert(SMODS.load_file("jokers/moneytrain.lua"))()
    assert(SMODS.load_file("jokers/a.lua"))()
    assert(SMODS.load_file("jokers/jaystmetrotech.lua"))()
    assert(SMODS.load_file("jokers/q.lua"))()
    assert(SMODS.load_file("jokers/stillwellave.lua"))()
    assert(SMODS.load_file("jokers/_9.lua"))()
    assert(SMODS.load_file("jokers/k.lua"))()
end


assert(SMODS.load_file("rarities.lua"))()


-- load boosters
assert(SMODS.load_file("boosters.lua"))()
SMODS.ObjectType({
    key = "jctransit_food",
    cards = {
        ["j_gros_michel"] = true,
        ["j_egg"] = true,
        ["j_ice_cream"] = true,
        ["j_cavendish"] = true,
        ["j_turtle_bean"] = true,
        ["j_diet_cola"] = true,
        ["j_popcorn"] = true,
        ["j_ramen"] = true,
        ["j_selzer"] = true
    },
})

SMODS.ObjectType({
    key = "jctransit_jctransit_jokers",
    cards = {
        ["j_jctransit_metrocard"] = true,
        ["j_jctransit_omny"] = true,
        ["j_jctransit_l"] = true,
        ["j_jctransit__7"] = true,
        ["j_jctransit__42stshuttle"] = true,
        ["j_jctransit_b"] = true,
        ["j_jctransit__6"] = true,
        ["j_jctransit_mvianassau"] = true,
        ["j_jctransit__1"] = true,
        ["j_jctransit_moneytrain"] = true,
        ["j_jctransit_a"] = true,
        ["j_jctransit_jaystmetrotech"] = true,
        ["j_jctransit_q"] = true,
        ["j_jctransit_stillwellave"] = true,
        ["j_jctransit__9"] = true,
        ["j_jctransit_k"] = true
    },
})


SMODS.current_mod.optional_features = function()
    return {
        cardareas = {}
    }
end
