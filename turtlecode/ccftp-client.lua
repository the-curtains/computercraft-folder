--client

local hostname = ""

while hostname == "" do
    io.write("enter the hostname to connect to: ")
    hostname = io.read()
end

local id = rednet.lookup("ccftp", hostname)

if not id then error("no host with name " .. hostname .. " found.") end

rednet.open("right")

--[[
ccftp file object:
{
filename = "filename.ext",
file = "serialized file"
}
]]
local filename = ""
while filename == "" do
    io.write("enter your filename")
    filename = io.read()
end

local file = io.open(filename, "r")
local fileTable = {}

if not file then error("this file doesn't actually exist.") end

for line in file:lines() do
    table.insert(fileTable, line)
end

local msg = {["filename"] = filename, ["file"] = fileTable}

msg = textutils.serialiseJSON(msg)

rednet.send(id, msg)