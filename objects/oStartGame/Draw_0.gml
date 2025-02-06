if showtext = true && instance_exists(oCamera)
{
	var cameraX = oCamera.camera_centerX;
	var cameraY = oCamera.camera_centerY;
scr_DrawSetAll(1,c_black,fa_middle,fa_center,fnt_ComicSans14);
draw_text(cameraX+1,cameraY+1,text);
draw_set_color(c_white);
draw_text(cameraX,cameraY,text);
}