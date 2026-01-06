rednet.open("left")
local host_id = rednet.lookup("servertest")

while true do
    io.write("\nsend: ")
    local msg = io.read()
    rednet.send(host_id, msg)
end