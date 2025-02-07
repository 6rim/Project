scr_PlayerInput();

if instance_exists(oCamera)
{
	//Make Menu follow the Camera Object
	guiX = (oCamera.x - offsetX)
	guiY = (oCamera.y + offsetY)
}

//Destroy Menu
if pressed_TAB
{
	instance_destroy(oMenu);
}

if pressed_Enter
{	
switch (menuhighlighted) {
	//Resume
	case 1: instance_destroy(oMenu); break;
	//Settings
	case 2: show_message("not implemented yet"); break;
	//Quit Game
	case 3: game_end(); break;
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
