depth = 1000; //Draw UNDER all instances

backgroundsprite = spr_StartGameFloor;

spritewidth = sprite_get_width(backgroundsprite);
spriteheight = sprite_get_height(backgroundsprite);

scaleX = room_width/spritewidth;
scaleY = room_height/spriteheight;