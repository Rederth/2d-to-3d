/// @description Insert description here
// You can write your code in this editor

//Shadows
draw_set_alpha(0.3);
draw_set_color(c_black);

with (all){
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 0);
}

draw_set_alpha(1);
draw_set_color(c_white);