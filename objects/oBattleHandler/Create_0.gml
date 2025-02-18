scr_BattleScript();

debug = false;
battle_started = false;


savedX = x; 
savedY = y; 
savedRoom = room;

stage_x = 0; //position to draw stage
stage_y = 0;
stage_scaleX = 1;
stage_scaleY = 1;

stage[0,0] = 0 //stage id
stage[0,1] = "test_room_orange" //stage name
stage[0,2] = spr_Stage_test_room_orange; //stage sprite
stage[0,3] = 0; //stage subimage
stage[0,4] = rBattleRoom //stage room

current_stage = 0; //set the stage

stage_id = stage[current_stage][0]; //pointless but funny
stage_name = stage[current_stage][1];
stage_sprite = stage[current_stage][2];
stage_subimage = stage[current_stage][3];
stage_room = stage[current_stage][4];


current_turn = 0; //amount of turns played this battle
current_phase = 0; //0 start, 1 player turn, 2 enemy turn, 3 end battle

dummy[0] = -1;
dummy[1] = -1;
dummy[2] = -1;