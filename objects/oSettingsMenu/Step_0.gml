Macro();
scr_PlayerInput();

if !instance_exists(oMenu) { instance_destroy(); }

if instance_exists(oCamera)
{
	guiX = camcenterx-offsetX
	guiY = (camcentery-(menuheight*menutile)/2)-offsetY
	guiX = clamp(guiX-((menuwidth*menutile)/2),0,room_width-(menuwidth*menutile));
	guiY = clamp(guiY,0, room_height-(menuheight*menutile))
}

if released_TAB { instance_destroy(); }


if pressed_Enter && instance_exists(oSlider) //replace the setting and destroy the slider
{	
setting_replace = oSlider.round_current; 
oMenuHandler.setting[oSettingsMenu.current_setting,1] = setting_replace;	
instance_destroy(oSlider);
} 


if pressed_Enter && !instance_exists(oSlider) //create the slider at location of menu option
{	
var gapX = 80;
switch (menuhighlighted) {
	case 1: 
	//show_message("0"); 
	with instance_create_depth(guiX+menumarginX+gapX,guiY+(sprite_get_height(spr_SliderButton)/2)+menumarginY+(optionsgap*menuhighlighted),depth-100,oSlider) 
	{x = oSlider.xstart+(oMenuHandler.music_volume/(oSlider.slider_max-oSlider.xstart)); }
	break;
	case 2: 
	//show_message("1"); 
	with instance_create_depth(guiX+menumarginX+gapX,guiY+(sprite_get_height(spr_SliderButton)/2)+menumarginY+(optionsgap*menuhighlighted),depth-100,oSlider) {};
	break
	case 3: 
	//show_message("2"); 
	with instance_create_depth(guiX+menumarginX+gapX,guiY+(sprite_get_height(spr_SliderButton)/2)+menumarginY+(optionsgap*menuhighlighted),depth-100,oSlider) {};
	break
	case 4: 
	//show_message("3"); 
	with instance_create_depth(guiX+menumarginX+gapX,guiY+(sprite_get_height(spr_SliderButton)/2)+menumarginY+(optionsgap*menuhighlighted),depth-100,oSlider) {};
	break
	case 5: 
	//show_message("4"); 
	with instance_create_depth(guiX+menumarginX+gapX,guiY+(sprite_get_height(spr_SliderButton)/2)+menumarginY+(optionsgap*menuhighlighted),depth-100,oSlider) {};
	break
	default:
	break;
}


	
	
}

if !instance_exists(oSlider)
{
//Loop from top
if (pressed_UP && menuhighlighted != 1)
{
	menuhighlighted --;
}else
if (pressed_UP && menuhighlighted = 1)
{
	menuhighlighted = optionsamount-1;
}

//Loop from bottom
if (pressed_DOWN && menuhighlighted != (optionsamount-1))
{
	menuhighlighted ++;
}else
if (pressed_DOWN && menuhighlighted = (optionsamount-1))
{
	menuhighlighted = 1;
}
}