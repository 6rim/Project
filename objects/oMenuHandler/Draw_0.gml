if instance_exists(oCamera)
{
scr_DrawSetAll(0.8,c_white,fa_middle,fa_center,fnt_Menu);
draw_text_transformed(oCamera.x,oCamera.y-64,global.debug_control,1,1,0);
}