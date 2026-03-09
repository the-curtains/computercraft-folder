local turtleFuncs = require("turtleFuncs")


local function mainTeaLoop()
	turtle.select(1)
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
	if turtle.getFuelLevel() < 100 then
		for i = 13, 16 do
			turtle.select(i)
			if turtle.refuel(0) then
				turtle.refuel()
			end
		end
	end
end

local function restockTea()
	if turtle.getItemCount(1) == 0 then
		turtle.select(1)
		turtle.suckDown()
	end
end

local function restockFuel()
	if turtle.getItemCount(13) == 0 then
		turtle.select(13)
		turtle.suck()
	end
end

end
while true do
	os.pullEvent("redstone")
	mainTeaLoop()
	fuel()
	restockTea()
	restockFuel()
end