//Draw Self

if current_health >= 0
{
var health_offsetX = 0;
var health_offsetY = sprite_get_height(sprite_index)+6;
var shadow_offset = 1;

scr_DrawSetAll(0.5,c_black,fa_top,fa_center,fnt_Button)
draw_text_ext_transformed(x,y-health_offsetY,string(current_health)+string("/")+string(max_health),1,64,0.5,0.5,0);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text_ext_transformed(x-shadow_offset,y-health_offsetY-shadow_offset,string(current_health)+string("/")+string(max_health),1,64,0.5,0.5,0);
}
draw_self();