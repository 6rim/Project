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

if pressed_Enter 
{	if instance_exists(oSliderChild) {instance_destroy(oSliderChild); } 
switch (menuhighlighted) {
	case 1: 
	show_message("0"); 
	with instance_create_depth(guiX+menumarginX+24*2,guiY+(sprite_get_height(spr_SliderButton)/2)+menumarginY+(optionsgap*menuhighlighted),depth-100,oSliderChild) {};
	break;
	case 2: 
	show_message("1"); 
	with instance_create_depth(guiX+menumarginX+24*2,guiY+(sprite_get_height(spr_SliderButton)/2)+menumarginY+(optionsgap*menuhighlighted),depth-100,oSliderChild) {};
	break
	case 3: 
	show_message("2"); 
	with instance_create_depth(guiX+menumarginX+24*2,guiY+(sprite_get_height(spr_SliderButton)/2)+menumarginY+(optionsgap*menuhighlighted),depth-100,oSliderChild) {};
	break
	case 4: 
	show_message("3"); 
	with instance_create_depth(guiX+menumarginX+24*2,guiY+(sprite_get_height(spr_SliderButton)/2)+menumarginY+(optionsgap*menuhighlighted),depth-100,oSliderChild) {};
	break
	case 5: 
	show_message("4"); 
	with instance_create_depth(guiX+menumarginX+24*2,guiY+(sprite_get_height(spr_SliderButton)/2)+menumarginY+(optionsgap*menuhighlighted),depth-100,oSliderChild) {};
	break
	default:
	break;
}
	
	
}

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
