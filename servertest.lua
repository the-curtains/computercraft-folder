rednet.open("back")
rednet.host("servertest", "host")

while true do
    local client_id, msg = rednet.receive()
    print(msg)
    rednet.send(client_id, "i CAN;t believe you would send: " .. msg)
end