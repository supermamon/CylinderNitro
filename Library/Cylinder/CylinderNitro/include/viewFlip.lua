--[[
viewRotate
Description: flips a view
Parameters: 
	view			- icon or page
	progress	- percentage, 1-100
	tumbles		- number of flips
	horizontal- true=horizontal ; false=vertical
]]
return function (view, progress, tumbles, horizontal)
	local pitch = 0
	local yaw		= 0

	if horizontal then
		yaw = 1
	else
		pitch = 1
	end
	
  local angle = progress*math.pi*2*tumbles
  view:rotate(angle,pitch,yaw)
end
