/// @desc
if not audio_is_playing(snd_CClaugh) and timer == 0 then
	audio_play_sound(snd_CClaugh, 0, false)

timer++

if not audio_is_playing(snd_CClaugh) then
	game_end()
