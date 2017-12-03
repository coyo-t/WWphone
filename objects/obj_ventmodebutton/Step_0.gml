/// @desc
if not controller.ventMode then
{	
	switch (controller.currentCam + 1)
	{
		case 1:	
		case 2:
		case 3:
		case 5:
		case 6:
			canSwitch = true
			break
		default:
			canSwitch = false
	
	}

}

if mouse_clickOn(id, mb_left) then
{
	controller.ventMode = not controller.ventMode
	audio_play_sound(snd_button_fail, 2, false)
	
}

