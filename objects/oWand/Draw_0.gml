//draw_self();

draw_sprite_ext(current_wand_sprite,0,x,y,wand_scale,1,global.wand_direction,c_white,1);

if debug = true
{
draw_line(x,y,projectile_offsetX,projectile_offsetY); //draw line to end of wand

}