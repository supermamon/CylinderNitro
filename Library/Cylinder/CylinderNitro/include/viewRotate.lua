--[[
viewRotate
Description: Rotates a view
Parameters: 
	view			- icon or page
	progress	- percentage, 1-100
	tumbles		- number of rotations
	clockwise	- true or false for direction
]]
return function (view, progress, tumbles, clockwise)
  local angle = progress*math.pi*2*tumbles
	local direction = clockwise and 1 or -1
  view:rotate(direction*angle)
end
