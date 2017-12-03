/// @desc
//room_width = sprite_width
//room_height = sprite_height
window_set_size(sprite_width, sprite_height)
randomise()

//set values
currentCam = 0
currentTime = floor(random_range(0, sprite_get_number(spr_time_main)))
currentDate = floor(random_range(0, sprite_get_number(spr_night_main)))

timeSprites =
[
	spr_time_main,
	spr_time_vent

]

nightSprites =
[
	spr_night_main,
	spr_night_vent

]

//shut down variables
whatShutDown = -1
canShutDown = true
shutDownTimer = 0
shutDownSprites = 
[
	0, //1
	1, //2
	2, //3
	undefined, //4
	3, //5
	4, //6
	undefined, //7
	5, //8
	undefined, //9
	undefined //10
]

//wifi variables
wifiLevel = 4
wifiTimer = (2 * 60) * 30
wifiSprite = 
[
	spr_wifi_main,
	spr_wifi_vent

]

wifiDangerSprite = 
[
	spr_wifi_danger_main,
	spr_wifi_danger_vent

]

//vent variables
ventMode = false
currentVent = 0
whatHeat = -1
heatTimer = 0
