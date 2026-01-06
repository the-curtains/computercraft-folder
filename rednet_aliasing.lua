local aliases = io.open("aliases.dat", "r") or nil

local function mysplit(inputstr, sep)
    if sep == nil then
        sep = "%s" -- default to splitting on whitespace
    end
    local t = {}
    -- The pattern matches one or more characters that are *not* the separator
    local pattern = "([^" .. sep .. "]+)"
    for str in string.gmatch(inputstr, pattern) do
        table.insert(t, str)
    end
    return t
end

if aliases == nil then
    print("it looks like you haven't defined any aliases yet. watch out.")
else
    aliases = aliases:read("*all")
    aliases = mysplit(aliases, "\n")
    for _, alias in pairs(aliases) do
        local id = mysplit(alias, "#")
        print(id[1] .. " has an ID of #")
    end
end
