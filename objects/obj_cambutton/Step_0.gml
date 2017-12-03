/// @desc
//this switch is here instead of in the controller to prevent
//a one frame delay between clicking the button and the
//reset room button appearing
if not controller.ventMode and not isVent
{	
	switch (controller.currentCam + 1)
	{
		case 1:	
		case 2:
		case 3:
		case 5:
		case 6:
		case 8:
			controller.canShutDown = controller.whatShutDown == -1 ? true : false
			break
		default:
			controller.canShutDown = false
	
	}


	if mouse_clickOn(id, mb_left) then
	{
		if controller.currentCam != whatCam - 1
			audio_play_sound(snd_button, 1, false)
			
		controller.currentCam = whatCam - 1

	}
}

if controller.ventMode and isVent
{
	if mouse_clickOn(id, mb_left) then
	{
		if controller.currentVent != whatCam - 1
			audio_play_sound(snd_button, 1, false)
		
		controller.currentVent = whatCam - 1

	
	}
	
	
}
