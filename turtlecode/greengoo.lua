local function init()
	turtle.select(1)
	if turtle.getFuelLevel() == 0 then
		turtle.refuel(1)
	end

end

local function blockPlaceLoop()
	turtle.placeDown()
	turtle.back()
end

local function harvest()
	while turtle.detect() == false do
	end	
	turtle.dig()
end

local function fueling()
	if turtle.getItemCount(1) > 1 then
		turtle.refuel(1)
	end
end

local function gloop()
	harvest()
	harvest()
	blockPlaceLoop()
	fueling()
end


