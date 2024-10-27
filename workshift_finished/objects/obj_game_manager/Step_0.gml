
//navigating through the rooms
if room == rm_game {
	pulse = lerp(pulse, 1, .2);
	global.game_time += delta_time/1000000;
} else if ((room == rm_start) and (keyboard_check_pressed(vk_shift))){
	room_goto(rm_controls);
} else if ((room == rm_controls) and (keyboard_check_pressed(vk_shift))){
	room_goto(rm_game);
} else if ((room == rm_end) and (keyboard_check_pressed(vk_shift))){
	global.score = 100;
	global.game_time = 0;
	room_goto(rm_start);
}

//emergency restart
if (keyboard_check_pressed(ord("R"))){
	game_restart();
} 


