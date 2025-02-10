//Draw Button
draw_set_color(c_white);

//Draw Background
draw_sprite_ext(buttonsprite,0,x,y,sizeX,sizeY,0,c_white,1);

//Draw Button Text
scr_DrawSetAll(1,c_black,fa_middle,fa_center,fnt_Button);
draw_text(textX-offsetX,textY-offsetY,button_text);

//Debug Box
if debug = true
{
draw_set_color(c_fuchsia);
draw_rectangle(x,y,colX2-1,colY2-1,true);	
}