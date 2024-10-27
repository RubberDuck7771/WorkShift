/// @description Insert description here
// You can write your code in this editor
//advance the clock
minutes += clock_speed;

//when minutes get high enough, roll over the hour
if (minutes > 59){
	minutes = 0;
	hours += 1;
	
	//when clock strikes 12,
	if (hours == 12){
		
		//update "am" vs "pm"
		if (ampm == "am"){
			ampm = "pm";	
		} else {
			ampm = "am";	
		}	
	//but don't go to "13 o'clock"
	} else if (hours > 12){
		hours = 1;
	}
}

//game ends when the timer gets to 6pm or anger meter fills
if(((hours == 6) and (ampm == "pm")) or (global.score == 400)){
	room_goto(rm_end);
}





