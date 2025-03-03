noclip = false;
debug = false;
playername = "Player Name";

begin_battle = false;
battleStartX = 80; //position for battle
battleStartY = 280;
savedX = battleStartX;
savedY = battleStartY;
savedRoom = 0;

global.gravity_toggle = true;
gravity_amt = 0.05;
jump_amt = 1;
can_jump = false;

moving_check = false;
global.look_direction = 0;
move_direction = 0;

max_hp = 50;
current_hp = max_hp;
player_died = false;

max_experience = 4;
current_experience = 0;
current_level = 1;

camera_distance_max = 0; //CAMERA
camera_distance = 0;
camera_distance_offsetX = 0;
camera_distance_offsetY = 0;
camera_tipX = 0;
camera_tipY = 0;

guiX_offset = 32; //GUI (hp and stuff, bottom right alignment)
guiY_offset = 16;

run_speed = 2;
move_speed = 1; //Movespeed
spdX = 0;
spdY = 0;

sprite_idle = spr_PlayerWizardIdle; //Declare Sprites
sprite_up = spr_PlayerWizardUp;
sprite_down = spr_PlayerWizardDown;
sprite_left = spr_PlayerWizardLeft;
sprite_right = spr_PlayerWizardRight;
sprite_current = 3;

sprite[0] = sprite_right;
sprite[1] = sprite_up;
sprite[2] = sprite_left;
sprite[3] = sprite_down;

sprite_index = sprite[sprite_current];

//DECLARE PLAYER STATES
enum states { free, run, stunned, death }
playerstate = states.free;

end_message[0] = "you died";
end_message[1] = "=3";
end_message[2] = "better luck next time :("


//Used in Initialization
movementenabled = false;