camerawidth = 320;
cameraheight = 180;
cameraY_offset = 64;

camera_centerX = 0; //these are updated in step
camera_centerY = 0;




/* Default
camerawidth = 320;
cameraheight = 180;
*/

debug = false;

targetY = 0;
targetX = 0;

camerato_x = 0;
camerato_y = 0;

cameraX = 0;
cameraY = 0;

camerascale = 3; //default: 3
cameraspeed = 0.2; //Current Camera Speed
camera_highspeed = 0.3; //Faster speed
camera_lowspeed = 0.1; //Lower Speed

camerahighlighted = false;

global.Camera = camera_create_view(0,0, camerawidth, cameraheight);

view_enabled = true;
view_visible[0] = true;
view_set_camera(0, global.Camera);

//Viewport
window_set_size(camerawidth * camerascale, cameraheight * camerascale);
surface_resize(application_surface, camerawidth * camerascale, cameraheight * camerascale);

windowwidth = camerawidth * camerascale;
windowheight = camerawidth * camerascale;

window_set_position(display_get_width() / 2 - windowwidth / 2, display_get_height() / 2 - windowheight / 2);

if !instance_exists(oCameraTarget) {instance_create_depth(0,0,1,oCameraTarget)}

follow = oPlayer;
follow_default = oPlayer;

