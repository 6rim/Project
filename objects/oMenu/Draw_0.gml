//Draw the Menu Background
scr_DrawSetAll(1,c_white,fa_left,fa_top,fnt_Menu);
draw_sprite_stretched(spr_MenuBackgroundDefault,0,guiX,guiY,menuwidth*menutile,menuheight*menutile);

//Draw the Menu Text
if menutitle != -1
{
	draw_set_color(c_black);
	draw_set_font(fnt_ComicSans14);
	//Draw Title
	//draw_text(guiX+menumarginX,guiY+menumarginY/2,menutitle);
	draw_text_ext_transformed(guiX+menumarginX+32,guiY+menumarginY/2,menutitle,10,300,0.5,0.5,270);
	//Draw Options
	draw_set_font(fnt_Menu);
	for (var i = 1; i < optionsamount; ++i) {
	draw_text(guiX+menumarginX,guiY+menumarginY+(optionsgap*i),menuoption[i]);
	}
	draw_set_color(c_fuchsia);
	draw_text(guiX+menumarginX,guiY+menumarginY+(optionsgap*menuhighlighted),menuoption[menuhighlighted]);
}




//Keep
draw_set_color(c_white);