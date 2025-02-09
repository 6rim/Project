/// @desc	DEBUG

if debug = true
{

//draw_sprite_stretched(spr_MenuBackgroundDefault,0,16,16,24*6,24*3)

// draw menu location

scr_DrawSetAll(1,c_black,fa_top,fa_left, fnt_Menu);
draw_text(64, 64, "Option: "+string(menuhighlighted)+"\n X: "+string(guiX)+string("\n Y:")+string(guiY));



}