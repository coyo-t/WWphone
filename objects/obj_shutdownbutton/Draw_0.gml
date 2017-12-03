/// @desc

if global.debugMode begin
	if controller.canShutDown
	{
		var _lastCol = draw_get_colour()
		draw_set_colour(c_red)
		draw_rectangle(x, y, x + sprite_width, y + sprite_height, true)	
		draw_line(x, y, x + sprite_width, y + sprite_height)
		
		draw_set_colour(_lastCol)
	}
end
