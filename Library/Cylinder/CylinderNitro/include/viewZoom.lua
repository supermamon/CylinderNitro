--[[
viewZoom
Description: Zoom a view
Parameters: 
	view			- icon or page
	progress	- percentage, 1-100
	tumbles		- number of rotations
	clockwise	- true or false for direction
]]
return function (view, progress, zoomIn, zoomFactor)
  
		progress = progress*zoomFactor
		if progress > 1 then progress = 1 end

		local zoom = -1
		if zoomIn == false then zoom = 1 end

		view:scale(1+(zoom*progress))
  
end
