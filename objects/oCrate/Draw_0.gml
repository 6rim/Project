//Draw Self

if current_health >= 0
{
var health_offsetX = 0;
var health_offsetY = sprite_get_height(sprite_index)+10;
var shadow_offset = 1;

scr_DrawSetAll(0.5,c_black,fa_top,fa_center,fnt_Button)
draw_text(x,y-health_offsetY,string(current_health)+string(" / ")+string(max_health));
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(x-shadow_offset,y-health_offsetY-shadow_offset,string(current_health)+string(" / ")+string(max_health));
}
draw_self();