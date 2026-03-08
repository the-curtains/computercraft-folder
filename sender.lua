rednet.open("back") --pocket computers with wireless modems have the modem on the back
 
while true do
	io.write("hi there mr man do you wanna send a msg: ")
	local name = tostring(io.read())
	local id = rednet.lookup("receiver", name)
	if not id then
		print("please put in a hostname that exists fucker")
	else
		rednet.send(id, "do thing", "receiver")
	end
end
