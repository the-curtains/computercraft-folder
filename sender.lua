rednet.open("right")

while true do
	io.write("hi there mr man do you wanna send a msg:")
	local name = io.read()
	local id = rednet.lookup("receiver", name)
	if not id then
		print("please put in a hostname that exists fucker")
	else
		rednet.send(id, "do thing", "receiver")
	end
end
