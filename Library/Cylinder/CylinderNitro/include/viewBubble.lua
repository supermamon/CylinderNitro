--[[
viewZoom
Description: Zoom a view
Parameters: 
	view			- icon or page
	progress	- percentage, 1-100
	zoomIn		- true:zoomIn ; false: zoomOut
	zoomFactor- how big/small does it go
]]
return function (view, progress, zoomIn, zoomFactor)
  
		progress = progress*zoomFactor

		if progress > 1 then progress = 1 end
				
		if progress > 0.5 then 
			progress = 1-progress
		end

		local zoom = -1
		if zoomIn == false then zoom = 1 end

		view:scale(1+(zoom*progress))
  
end
