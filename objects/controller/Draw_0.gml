/// @desc
draw_sprite(spr_phone_main, ventMode, 0 , 0)
draw_sprite(timeSprites[ventMode], currentDate, 0, 0)
draw_sprite(nightSprites[ventMode], currentDate, 0, 0)

if wifiLevel > 0 then
{
	draw_sprite(wifiSprite[ventMode], wifiLevel - 1, 0, 0)
	
}
else if wifiLevel == 0 then
{
	var _aaaa = wifiTimer % 8 > 8 / 2 - 1 ? true : false
	draw_sprite(wifiDangerSprite[ventMode], _aaaa, 0, 0)
		
	
}	

draw_sprite(spr_ventMode, ventMode, 0, 0)
		
if not ventMode
{
	draw_sprite(spr_cam_clicked, currentCam, 0, 0)
	
	if canShutDown then
		draw_sprite(spr_room_reset, 0, 0, 0)
		
	if whatShutDown != -1 then
	{
		var _shutDownSprites = [spr_cam_shutdown_sel, spr_cam_shutdown_unsel]
		draw_sprite(_shutDownSprites[currentCam == whatShutDown ? 0 : 1], shutDownSprites[whatShutDown], 0, 0)
		
	}
	
	if whatHeat != -1 then
		draw_sprite(spr_heat_active, 0, 0, 0)
	
}

if ventMode
{
	draw_sprite(spr_vent_clicked, currentVent, 0, 0)
	
	if whatShutDown != -1 then
		draw_sprite(spr_vent_shutdown, 0, 0, 0)

	if whatHeat != -1 then
		draw_sprite(spr_heat_active_vent, 0, 0, 0)

	if currentVent == whatHeat and whatHeat != -1 then
		draw_sprite(spr_vent_heat_sel, whatHeat, 0, 0)
	if currentVent != whatHeat and whatHeat != -1 then
		draw_sprite(spr_vent_heat_unsel, whatHeat, 0, 0)	
	
}
