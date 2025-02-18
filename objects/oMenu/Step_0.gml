Macro();
scr_PlayerInput();

if instance_exists(oCamera)
{
	//Make Menu follow the Camera Object
	guiX = camcenterx-offsetX;
	//(oCamera.x - offsetX)
	guiY = (camcentery-(menuheight*menutile)/2)-offsetY;
	//(oCamera.y + offsetY)
	guiX = clamp(guiX-((menuwidth*menutile)/2),0,room_width-(menuwidth*menutile));
	guiY = clamp(guiY,0, room_height-(menuheight*menutile))
}

//Destroy Menu
if pressed_TAB && !instance_exists(oSettingsMenu)
{
	instance_destroy(oMenu);
}

if pressed_Enter && !instance_exists(oSettingsMenu)
{	
switch (menuhighlighted) {
	//Resume
	case 1: instance_destroy(oMenu); break; //destroy main pause menu
	
	//Settings
	case 2: with instance_create_depth(guiX+8,guiY,depth-1,oSettingsMenu)
	{			}
	break;
	
	//Quit Game
	case 3: game_end(); 
	
	break; //add "are you sure?"
	
	default:
	break;
}
	
	
}

if !instance_exists(oSettingsMenu)
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
