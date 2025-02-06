//Draw the Menu Background
scr_DrawSetAll(1,c_white,fa_left,fa_top,fnt_Menu);
draw_sprite_stretched(spr_MenuBackgroundDefault,0,guiX,guiY,menuwidth*menutile,menuheight*menutile);

//Draw the Menu Text
if menutitle != -1
{
	draw_set_color(c_black);
	//Draw Title
		draw_text(guiX+menumarginX,guiY+menumarginY/2,menutitle);
	
	//Draw Options
	for (var i = 1; i < optionsamount; ++i) {
	    draw_text(guiX+menumarginX,guiY+menumarginY+(optionsgap*i),menuoption[i]);
	}
	draw_set_color(c_fuchsia);
	draw_text(guiX+menumarginX,guiY+menumarginY+(optionsgap*menuhighlighted),menuoption[menuhighlighted]);
}




//Keep
draw_set_color(c_white);