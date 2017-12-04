/// @desc
//this switch is here instead of in the controller to prevent
//a one frame delay between clicking the button and the
//reset room button appearing

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

if mouse_clickOn(id, mb_left)
{
	#region not ventmode
	if not controller.ventMode 
	{
		if controller.currentCam != whatCam - 1 then
		{
			if controller.currentCam != whatCam - 1
			{
				audio_play_sound(snd_button, 1, false)
			}
			
			controller.currentCam = whatCam - 1
		
		}
		
		//if its toggleable to a vent
		else if canToggle and controller.currentCam == whatCam - 1 and not controller.ventMode then
		{
			audio_play_sound(snd_button_fail, 1, false)
		
			controller.ventMode = true
			controller.currentVent = whatVent - 1
		
		}
			
	}
	#endregion
		
	#region ventmode is on
	else if controller.ventMode 
	{
		if controller.currentVent != whatVent - 1 and isVent then
		{
			if controller.currentVent != whatVent - 1
			{
				audio_play_sound(snd_button, 1, false)
			}
			controller.currentVent = whatVent - 1
				
		}
			
		//if its toggleable to a main cam
		else if canToggle and controller.currentVent == whatVent - 1 and controller.ventMode and isVent then
		{
			audio_play_sound(snd_button_fail, 1, false)
		
			controller.ventMode = false
			controller.currentCam = whatCam - 1

	
		}
			
	}
	#endregion
}

//if isVent then instance_destroy()
