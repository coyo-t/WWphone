/// @desc
if global.debugMode begin
	if not isVent and not controller.ventMode then
	{
		var _lastCol = draw_get_colour()
		draw_set_colour(c_white)
		draw_rectangle(x, y, x + sprite_width, y + sprite_height, true)	
		draw_line(x, y, x + sprite_width, y + sprite_height)
		draw_text(x + 4, y + 4, whatCam)
	
		draw_set_colour(_lastCol)
	}

	if isVent and controller.ventMode then
	{
		var _lastCol = draw_get_colour()
		draw_set_colour(c_orange)
		draw_rectangle(x, y, x + sprite_width, y + sprite_height, true)	
		draw_line(x, y, x + sprite_width, y + sprite_height)
		draw_text(x + 4, y + 4, whatCam)
	
		draw_set_colour(_lastCol)
	}

end
