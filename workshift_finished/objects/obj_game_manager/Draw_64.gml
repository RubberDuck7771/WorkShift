


//end screen
if(room == rm_end){
	if(global.score == 400){
		draw_set_color(c_white);
		draw_text(300,700, "YOU FAILED TO KEEP THE STORE STOCKED! PRESS SHIFT OR R TO TRY AGAIN.");
	} else if (global.score < 400){
		draw_set_color(c_white);
	draw_text(250,700, "YOU'VE SUCCUESSFULLY COMPLETED YOUR WORKSHIFT! WORK ANOTHER? PRESS SHIFT OR R TO GO BACK TO TITLE SCREEN.");
	}
}

