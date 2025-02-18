//Call scripts here
scr_PlayerInput()


//Enter Pressed
if pressed_Enter && showtext = true && !instance_exists(oMenu)
{
	showtext = false;
	if instance_exists(oPlayer) { oPlayer.movementenabled = true; } //Enable Movement
}