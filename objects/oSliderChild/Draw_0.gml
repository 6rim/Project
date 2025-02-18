draw_sprite_ext(slider_bar,0,xstart,ystart,slider_length,1,0,c_white,1)


draw_self();
if slider_active = true && debug = true { draw_text(x,y-12,posX); }

if debug = true {
draw_text(slider_zero,y-8,slider_zero);
draw_text(slider_max,y-8,slider_max);
}

draw_text(slider_zero,y+8,round(slider_current));
draw_text(slider_max,y+8,"100");
