local icycore = require("icycore")

local bee = {}

local function bee:isPure(table)
    return icycore:compareTables(table.individual.active.species, table.individual.active.species)
end
local function bee:isAnalyzed(table)
    return table.individual.isAnalyzed
end