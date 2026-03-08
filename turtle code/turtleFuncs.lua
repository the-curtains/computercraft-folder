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

function M.getTurtleItems()
	local list = {}
	for i = 1, 16 do
		turtle.select(i)
		list[i] = turtle.getItemDetail()
	end
	for _, v in pairs(list) do
		if items[v.name] == nil then
			items[v.name] = v.count
		else
			items[v.name] = items[v.name] + v.count
		end
	end
	return items
end
return M
