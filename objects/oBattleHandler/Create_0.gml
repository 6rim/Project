current_initiative = 0;

stage_x = 0; //position to draw stage
stage_y = 0;
stage_scaleX = 1;
stage_scaleY = 1;

stage[0,0] = 0 //stage id
stage[0,1] = "test_room_orange" //stage name
stage[0,2] = spr_Stage_test_room_orange; //stage sprite
stage[0,3] = 0; //stage subimage


current_stage = 0; //set the stage

stage_id = stage[current_stage][0]; //pointless but funny
stage_name = stage[current_stage][1];
stage_sprite = stage[current_stage][2];
stage_subimage = stage[current_stage][3];