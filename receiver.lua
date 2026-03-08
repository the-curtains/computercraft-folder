if io.open("config.dat") == nil then
	print("looks like this is your config phase. exciting!")
	print("what do you wanna name this appliance!?")
	local hostname = io.read()
	print("cool!")
	local file = io.open("config.dat", "w")
	file:write(hostname)
	file:close()
else
	local file = io.open("config.dat", "r")
	local hostname = file:read("*a")
end

rednet.open("right")
rednet.host("receiver", hostname)


while true do
	rednet.receive("receiver") --we got a fucking message!!!!
	redstone.setOutput("top", not redstone.getOutput("top"))
end
	
