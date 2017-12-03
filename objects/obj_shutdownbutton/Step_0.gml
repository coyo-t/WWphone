/// @desc

if not controller.ventMode
{
	var _conditions = controller.canShutDown and controller.whatShutDown == -1 and controller.shutDownTimer == 0 ? true : false

	if mouse_clickOn(id, mb_left) and _conditions then
	{
		controller.canShutDown = false
		controller.shutDownTimer = 8 * 30
		controller.whatShutDown = controller.currentCam
		audio_play_sound(snd_shutdown2, 0, false)
	
	}
}

if controller.ventMode
{
	var _conditions = controller.whatHeat == -1 and controller.heatTimer == 0 ? true : false

	if mouse_clickOn(id, mb_left) and _conditions then
	{
		controller.heatTimer = 8 * 30
		controller.whatHeat = controller.currentVent
		audio_play_sound(snd_shutdown, 0, false)
	
	}
}
