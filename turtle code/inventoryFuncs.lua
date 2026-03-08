local M = {}

function M.getTotalItems(list) --this command accepts the output of a .list() call
	local items = {}
	for _, v in pairs(list) do
		if items[v.name] == nil then
			items[v.name] = v.count
		else
			items[v.name] = items[v.name] + v.count
		end
	end
	return items
end

function M.getEmptySlots(list) --ditto, like frmo pokemon
	local nils = {}
	for i = 1, #list do
		if list[i] == nil then
			nils[#nils + 1] = i
		end
	end
	return nils
end
	



return M