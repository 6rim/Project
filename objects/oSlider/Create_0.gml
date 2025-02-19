//event_inherited();
debug = false;
depth = -600;

posX = xstart;
posY = ystart;

buttonX = posX;
buttonY = posY;

slider_active = false; //slider is being altered
slider_bar = spr_SliderBar;
slider_button = spr_SliderButton;
slider_size = sprite_get_width(slider_bar); //slider width
button_size = sprite_get_width(slider_button); //button width
slider_length = 6;//length for slider, default (large) is 9

//slider_zero = xstart-slider_size-(button_size/2);
//slider_max = xstart+(slider_length*slider_size/2)+offset;

slider_zero = xstart;
slider_max = xstart+(slider_length*slider_size);

slider_current = (posX-xstart)/(slider_max-xstart)*100;
round_current = round(slider_current);