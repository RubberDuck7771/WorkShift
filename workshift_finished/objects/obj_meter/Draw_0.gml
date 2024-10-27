/// @description Insert description here
// You can write your code in this editor
//draw score meter
	draw_set_color(c_gray);
	draw_rectangle(100, 80, 300, 20, false);
	draw_set_color(c_red);
	draw_rectangle(100, 35, 100 + 200 * (global.score / 400), 65, false);