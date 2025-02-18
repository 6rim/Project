
if room = stage_room { 
//draw_sprite_ext(stage_sprite,stage_subimage,stage_x,stage_y,stage_scaleX,stage_scaleY,0,c_white,1); 
var sprite = sprite_get_texture(stage_sprite,current_phase);
var x1 = 0;
var y1 = 0;
var x2 = room_width;
var y2 = 0;
var x3 = 0;
var y3 = room_height;
var x4 = room_width;
var y4 = room_height;
//Draw Stage Background
draw_set_alpha(1);
draw_set_color(c_white);
draw_primitive_begin_texture(pr_trianglestrip,sprite);
draw_vertex_texture(x1,y1,0,0);
draw_vertex_texture(x2,y2,1,0);
draw_vertex_texture(x3,y3,0,1);
draw_vertex_texture(x4,y4,1,1);
draw_primitive_end();
}

if debug = true
{
scr_DrawSetAll(1,c_white,fa_middle,fa_center,fnt_Menu);
draw_text(oPlayer.x,oPlayer.y-30,battle_started);
}



