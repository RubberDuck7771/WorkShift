//PLACING ITEM

var last_collided = collided;

if(place_empty(x, y)) {
    collided = false;
} else {
    collided = true;
}

if ((place_meeting(x,y,obj_easy_customer)) or (place_meeting(x,y,obj_hard_customer))){ //customer empties shelf
     stocked = false;
     sprite_index = spr_empty_shelf;
	 if(collided == true && last_collided == false) {
		audio_play_sound(sd_bites, 1, false);
	 }
}

if ((place_meeting(x,y,obj_player) and keyboard_check_pressed(vk_shift)) and (global.holding_item == true)){ //player stocks shelf
    if(stocked == false){
		stocked = true;
		sprite_index = spr_stocked_shelf;
		global.items_held = global.items_held - 1;
		audio_play_sound(sd_replace, 1, false);
	}
}

if(customer == 1){
	stocked = false;
}





