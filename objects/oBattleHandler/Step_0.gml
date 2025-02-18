scr_PlayerInput();
depth = 300;


//if room = !rBattleRoom && pressing_SHIFT && pressed_Enter { save_location(savedX,savedY,rBattleRoom); } //save location and GO
//if room = rBattleRoom && pressing_SHIFT && pressed_Enter { save_location(savedX,savedY,savedRoom); } //reload

if pressed_SPACE {current_phase++}

if room = rBattleRoom
{
global.gravity_toggle = true; //enable gravity
}


//if instance_exists(oCrate) && room = rBattleRoom { battle_started = true; }
//if pressed_LMB { instance_create_depth(mouse_x,mouse_y,depth,oCrate); } //debug
//global.Camera = camera_create_view(0,0, camerawidth, cameraheight);
