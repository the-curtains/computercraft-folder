local turtleFuncs = require("turtleFuncs")
local inventoryFuncs = require("inventoryFuncs")


local function mainTeaLoop()
	turtleFuncs.upX(4)
	turtleFuncs.forwardX(3)
	turtleFuncs.turnLeftX(1)
	turtle.forward()
	turtle.dropDown(1)
	turtle.forward()
	turtle.dropDown(1)
	turtle.turnRight()
	turtle.forward()
	turtle.dropDown(1)
	turtle.turnRight()
	turtle.forward()
	turtle.dropDown(1)
	turtleFuncs.forwardX(1)
	turtle.turnRight()
	turtleFuncs.forwardX(4)
	turtleFuncs.turnRightX(2)
	turtleFuncs.downX(4)
end

local function fuel()
	if turtle.getFuelLevel() < 100 do
		for i = 13, 16 do
			turtle.select(i)
			if turtle.refuel(0) then
				turtle.refuel()
			end
		end
	end
end

local function restockTea()
	local items = inventoryFuncs.getTotalItems(turtle.list())
	local teaCount = items[""]

end
while true do
	os.pullEvent("redstone")
	mainTeaLoop()
	fuel()
	
	