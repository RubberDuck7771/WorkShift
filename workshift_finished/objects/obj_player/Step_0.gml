
//MOVEMENT VARIABLES
var hmove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vmove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//MOVEMENT
xspd += hmove * accel;
yspd += vmove * accel;

xspd = clamp(xspd, -mspd, mspd);
yspd = clamp(yspd, -mspd, mspd);

//decelerate
if (hmove == 0){
	xspd = approach(xspd, 0, decel);
}

if (vmove == 0){
	yspd = approach(yspd, 0, decel);
}

x += xspd;
y += yspd;


//holding items
if(global.items_held > 0) {
	global.holding_item = true;
} else if (global.items_held == 0){
	global.holding_item = false;
}

if ((place_meeting(x,y,obj_storage)) and (keyboard_check_pressed(vk_shift))){
	global.holding_item = true;
    sprite_index = spr_holding_item;
	global.items_held = 15;
	audio_play_sound(sd_storage, 1, false);
}

if(global.holding_item == false){
	sprite_index = spr_not_holding;
}



