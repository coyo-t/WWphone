///@argument obj
///@argument mouseButton

//return (mouse_x > argument0.x and mouse_x < argument0.x + argument0.sprite_width) and (mouse_y > argument0.y and mouse_y < argument0.y + argument0.sprite_height) and mouse_check_button_pressed(argument1) ? true : false
return (mouse_x > argument0.x and mouse_x < argument0.x + argument0.sprite_width) and (mouse_y > argument0.y and mouse_y < argument0.y + argument0.sprite_height) and mouse_check_button_pressed(argument1)

/*
var _obj = argument0 
var _objPos = 
[
	_obj.x,
	_obj.y

]

var _objSpr = object_get_sprite(_obj)
var _sprSize = 
[
	_obj.sprite_width,
	_obj.sprite_height,

]
*/
/*
var _isOver = (mouse_x > _objPos[0] and mouse_x < _objPos[0] + _sprSize[0]) and (mouse_y > _objPos[1] and mouse_y < _objPos[1] + _sprSize[1]) ? true : false
var _click = mouse_check_button_pressed(argument1)
*/
//return _isOver and _click ? true : false
//return (mouse_x > _obj.x and mouse_x < _obj.x + _obj.sprite_width) and (mouse_y > _obj.y and mouse_y < _obj.y + _obj.sprite_height) and mouse_check_button_pressed(argument1) ? true : false
