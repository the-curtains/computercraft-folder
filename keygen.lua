local file = io.open("passwd.dat", "w")
local lettersTable = {}
local finalText = ""

for i = 1, 76 do
    lettersTable[i] = ("1234567890!@#$%^&*()_+-=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"):sub(i, i)
end

for i = 1, 500 do
    finalText = finalText .. lettersTable[math.random(76)]
end

file:write(finalText)
file:close()