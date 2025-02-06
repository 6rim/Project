//Draw debug

if cursordebug = true
{
	scr_DrawSetAll(1,c_white,fa_bottom,fa_left,fnt_ComicSans14);
	draw_text(x+32,y,string(cursorstate));
	
	draw_self();
}