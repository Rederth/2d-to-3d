/// @description Insert description here
// You can write your code in this editor

z = 10;

enum RES {
	WIDTH = 640,
	HEIGHT = 360,
	SCALE = 2
}
//Create camera
//(startingx, startingy, width, height, rotation, object being followed, 
var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oPlayer, -1, -1, RES.WIDTH/2, RES.HEIGHT/2);

view_enabled = true;
view_visible[0] = true;

view_set_camera(0, _camera);