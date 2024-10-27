/// @description Insert description here
// You can write your code in this editor

if(not stocked){
	global.score += 1;
	alarm[0] = room_speed *2;
} else if (stocked){
	global.score -= 1;
	alarm[0] = room_speed *3;
}

global.score = clamp(global.score, 0, 400);