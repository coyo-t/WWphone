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
var _wifiEvent1 = ((2 * 60) * 30)
var _wifiEvent2 = ((1 * 60) * 30)
var _wifiEvent3 = (45 * 30)
var _wifiEvent4 = (30 * 30)
var _wifiEvent5 = (10 * 30)


if wifiTimer <= _wifiEvent2 and wifiTimer > _wifiEvent3 then
	wifiLevel = 3

if wifiTimer <= _wifiEvent3 and wifiTimer > _wifiEvent4 then
	wifiLevel = 2

if wifiTimer <= _wifiEvent4 and wifiTimer > _wifiEvent5 then
	wifiLevel = 1

if wifiTimer < _wifiEvent5 then
	wifiLevel = 0
	
if wifiTimer == 0 then
{
	room_goto(room01)
	audio_stop_all()
}
