/// @desc
shutDownTimer = shutDownTimer > 0 ? shutDownTimer - 1 : 0
heatTimer = heatTimer > 0 ? heatTimer - 1 : 0

if shutDownTimer == 0 then
	whatShutDown = -1

if heatTimer == 0 then
	whatHeat = -1

//wifi level thingie
wifiTimer--

if wifiLevel == 0 and not audio_is_playing(snd_alert)
	audio_play_sound(snd_alert, 0, true)

//wifi event list

if wifiTimer <= wifiEventsList[0] and wifiTimer > wifiEventsList[1] then
	wifiLevel = 3

if wifiTimer <= wifiEventsList[1] and wifiTimer > wifiEventsList[2] then
	wifiLevel = 2

if wifiTimer <= wifiEventsList[2] and wifiTimer > wifiEventsList[3] then
	wifiLevel = 1

if wifiTimer < wifiEventsList[3] then
	wifiLevel = 0
	
if wifiTimer == 0 then
{
	if floor(irandom_range(0, 512)) == 0 then
	{
		room_goto(room01)
		audio_stop_all()
	}
	else game_end()
	
}
