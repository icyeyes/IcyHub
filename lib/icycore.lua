local IcyCore = {}

function IcyCore:compareTables(table1, table2)
    for k, v in pairs(table1) do
        if table2[k] ~= v then
            return false
        end
    end
    return true
end

return IcyCore