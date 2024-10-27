/// @description Insert description here
// You can write your code in this editor

var disp_hr = string_format(hours, 2, 0);
var disp_min = string_format(minutes, 2, 0);
var disp = disp_hr + ":" + disp_min;


//replace empty characters with 0s
//so we dont get " 2: 2pm"
disp = string_replace_all(disp, " ", "0");

//add "am" or "pm"
disp += " " + ampm;

//display clock
draw_set_color(c_white);
draw_text(120, 150, disp);

//display anger meter numbers
draw_set_color(c_white);
draw_text(120, 80, string(global.score) + " / 400");

//draw how many items you're holding
draw_set_color(c_white);
draw_text(120, 180, "Sushi Held: " + string(global.items_held));



