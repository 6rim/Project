//Draw Self is at bottom

//offsets
var health_offsetX = 0;
var health_offsetY = sprite_get_height(sprite_index)+10;
var state_offsetY = sprite_get_height(sprite_index)+24;
var shadow_offset = 1;

if debug = true
{
	draw_set_font(fnt_Menu);//debug font
	draw_set_alpha(0.8);
	draw_set_color(c_green); 
	draw_path(path,x,y,1); //Display path enemy will take
	//Draw line with color if you're in range
	if path_distance < path_viewdistance {draw_set_alpha(0.2); draw_set_color(c_red);}else{draw_set_alpha(0.08); draw_set_color(c_white);}
	draw_line(x,y,target.x,target.y);
	draw_set_alpha(0.8);
	draw_text_ext_transformed(x,y-state_offsetY,string(current_state_name),1,64,0.5,0.5,0); //Draw the state
}


if current_health >= 0
{

scr_DrawSetAll(0.5,c_black,fa_top,fa_center,fnt_Button)
draw_text_ext_transformed(x,y-health_offsetY,string(current_health)+string("/")+string(max_health),1,64,0.5,0.5,0);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text_ext_transformed(x-shadow_offset,y-health_offsetY-shadow_offset,string(current_health)+string("/")+string(max_health),1,64,0.5,0.5,0);
}
draw_self();