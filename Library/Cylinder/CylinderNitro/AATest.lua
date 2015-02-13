local viewFlip   = dofile("include/viewFlip.lua")
local viewRotate   = dofile("include/viewRotate.lua")
local viewZoom   = dofile("include/viewZoom.lua")
local viewBubble = dofile("include/viewBubble.lua")
local fade = dofile("include/fade.lua")


local animations = {}
-- generate random
math.randomseed( os.time() )
for i=1,24,1 do
	animations[i] = math.random(9)
end


return function(page, offset, screen_width, screen_height)
	local percent = offset/page.width

	for i, icon in subviews(page) do
		local a = animations[i]
		
			if		 a == 1 then viewFlip(icon, percent, 1, true) --flipH
			elseif a == 2 then viewFlip(icon, percent, 1, false) --flipV
			elseif a == 3 then viewRotate(icon, percent, 1, true) --rotateC
			elseif a == 4 then viewRotate(icon, percent, 1, false) --rotateCC
			elseif a == 5 then viewZoom(icon, percent, true, 1) --zommIn
			elseif a == 6 then viewZoom(icon, percent, false, 1) --zoomOut

			elseif a == 7 then 
				viewFlip(icon, percent, 1, false) -- flipH
				viewRotate(icon, percent, 1, true) -- rotateC
				
			elseif a == 8 then 
				viewFlip(icon, percent, 1, false) -- flipH
				viewRotate(icon, percent, 1, false) -- rotateCC
				
			elseif a == 9 then 
				viewRotate(icon, percent, 1, true) -- rotateC
				viewZoom(icon, percent, true, 1) --zommIn

			end 
	end   
   
end
