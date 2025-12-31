local functions = {}
math.randomseed(os.epoch("utc"))
functions.keygen = function()

local lettersTable = {}
local finalTable = {}

for i = 1, 76 do
    lettersTable[i] = ("1234567890!@#$%^&*()_+-=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"):sub(i, i)
end
 
for i = 1, 500 do
    finalTable[i] = lettersTable[math.random(76)]
end
return table.concat(finalTable)
end
return functions