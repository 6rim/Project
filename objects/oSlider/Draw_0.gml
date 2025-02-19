scr_DrawSetAll(1,c_white,fa_center,fa_middle,fnt_Menu);

draw_sprite_ext(slider_bar,0,xstart,ystart,slider_length,1,0,c_white,1)

draw_self();
//draw_sprite_ext(slider_button,0,buttonX,buttonY,1,1,0,c_white,1);
if slider_active = true && debug = true { draw_text(x,y-12,posX); }

if debug = true {
draw_text(slider_zero,y-12,slider_zero);
draw_text(slider_max,y-12,slider_max);

//draw_text(slider_max-(slider_zero/2),y-24,slider_active); //buggy with short sliders
}

draw_text(slider_zero,y+12,round_current);
draw_text(slider_max,y+12,"100");
