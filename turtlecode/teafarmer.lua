turtleFuncs = require("turtleFuncs")
--[[
ideally the turtle should have dedicated slots for tea blossoms, tea leaves, and charcoal...
the harvest loop should work for any farm size but who cares am i right.
blossoms in slot 1
leaves in slot 2-15.
charcoal in slot 16


]]
local function mainFarmingLoop()
-- do this later


end

local function harvest()
	_, block = turtle.inspectDown()
	if block.state.age == 3 then
		turtle.digDown()
		turtle.select(1)
		turtle.placeDown()
	end
end

local function organizeInv()  --runs when the turtle is done farming and has stationed back at the start.
	for i = 1, 16 do
		turtle.select(i)
		
	end