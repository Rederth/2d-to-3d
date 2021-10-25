/// @description Insert description here
// You can write your code in this editor

//Input
var hor, ver;
hor = (keyboard_check(ord("D")) || keyboard_check(vk_right))-(keyboard_check(ord("A")) || keyboard_check(vk_left));
ver = (keyboard_check(ord("S")) || keyboard_check(vk_down))-(keyboard_check(ord("W")) || keyboard_check(vk_up));
hsp = hor*moveSpeed;
vsp = ver*moveSpeed;

//Jump
if (keyboard_check_pressed(vk_space)){
	zsp = -jumpSpeed;
}

//Gravity
if (zsp<10){
	zsp = zsp + gravSpeed;
}

//Collisions
if (place_meeting_3d(x+hsp, y, z, oBox)){
	hsp = 0;
}

if (place_meeting_3d(x, y+vsp, z, oBox)){
	vsp = 0;
}

//Z Collisions
if (place_meeting_3d(x, y, z+zsp, oBox)){
	zsp = 0;
}

//Z Floor
if (z+zsp > floorZ){
	zsp = 0;
	z = floorZ
}

x = x + hsp;
y = y + vsp;
z = z + zsp;


/* var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oPlayer, -1, -1, RES.WIDTH/2, RES.HEIGHT/2);

// Set up view
view_enabled = true;
view_visible[0] = true;

view_set_camera(0, _camera);









