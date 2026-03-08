local M = {}

function M.upX(count)
	for i = 1, count do
		turtle.up()
	end
end

function M.downX(count)
	for i = 1, count do
		turtle.down()
	end
end

function M.turnLeftX(count)
	for i = 1, count do
		turtle.turnLeft()
	end
end

function M.turnRightX(count)
	for i = 1, count do
		turtle.turnRight()
	end
end

function M.forwardX(count)
	for i = 1, count do
		turtle.forward()
	end
end

return M
