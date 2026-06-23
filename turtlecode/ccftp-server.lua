--server

local hostname = ""

if io.open("config.dat") == nil then
	print("looks like this is your config phase. exciting!")
	print("what do you wanna name this server!?")
	hostname = io.read()
	print("cool!")
	local file = io.open("config.dat", "w")
	file:write(hostname)
	file:close()
else
	local file = io.open("config.dat", "r")
	hostname = file:read("*a")
end

local function awaitFile()
    local _, msg = rednet.receive()
    return textutils.unserializeJSON(msg)
end


    
rednet.open("right")
rednet.host("ccftp", hostname)



while true do
    local file = awaitFile()
    local filename = file["filename"]
    file = file["file"]
    local write = ""
    for _, line in ipairs(file) do
        write = write .. line .. "\n"
    end
    write = string.sub(write, 1, #write - 1)
    local writeFile = io.open(filename, "w")
    if writeFile then    
        writeFile:write(write)
        writeFile:close()
    end
end