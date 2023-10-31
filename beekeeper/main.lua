local fs = require("filesystem")
local chest = require("component").chest

for file in fs.list("/module") do
  if fs.isDirectory(file) do
    dofile(fs.concat("/module", file))
  end
end

print(bee:isPure(chest.getStackInSlot(1)))



