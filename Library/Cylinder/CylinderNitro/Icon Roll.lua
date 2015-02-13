--[[ ******************************************************************
Icon Roll v1.1
by @supermamon (github.com/supermamon/CylinderNitro/)

Same as Spin. In reversed direction. 
Requested by /u/Sapharodon on reddit

v1.2 2015-02-14: Use viewRotate library.
v1.1 2014-03-26: Use iconSpin library.
v1.0 2014-03-26: First release.
******************************************************************* ]]
local viewRotate   = dofile("include/viewRotate.lua")
return function(page, offset, screen_width, screen_height)
	local percent = offset/page.width
	for i, icon in subviews(page) do
		viewRotate(icon, percent, 1, false)
	end   
   
end
