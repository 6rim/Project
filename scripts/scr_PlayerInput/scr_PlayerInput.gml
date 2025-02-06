function scr_PlayerInput(){
	//INPUTS
	pressed_Enter = keyboard_check_pressed(vk_enter);
	pressed_BACKSPACE = keyboard_check_pressed(vk_backspace);
	pressed_LMB = mouse_check_button_pressed(mb_left);
	pressed_RMB = mouse_check_button_pressed(mb_right);
	pressed_ESC = keyboard_check_pressed(vk_escape);
	pressed_TAB = keyboard_check_pressed(vk_tab);
	pressed_W = keyboard_check_pressed(ord("W"));
	pressed_A = keyboard_check_pressed(ord("A"));
	pressed_S = keyboard_check_pressed(ord("S"));
	pressed_D = keyboard_check_pressed(ord("D"));
	
	pressing_LMB = mouse_check_button(mb_left);
	pressing_RMB = mouse_check_button(mb_right);
	pressing_SHIFT = keyboard_check(vk_shift);
	pressing_CTRL = keyboard_check(vk_control);
	
	pressing_W = keyboard_check(ord("W"));
	pressing_A = keyboard_check(ord("A"));
	pressing_S = keyboard_check(ord("S"));
	pressing_D = keyboard_check(ord("D"));
	
	notwalking = !(pressing_W || pressing_A || pressing_S || pressing_D);
	
	pressed_UP = keyboard_check_pressed(vk_up);
	pressed_DOWN = keyboard_check_pressed(vk_down);
	pressed_LEFT = keyboard_check_pressed(vk_left);
	pressed_RIGHT = keyboard_check_pressed(vk_right);
	
	
	//USER DEFINED VARIABLES
	playername = "Player Name";
	
	//CONTROLS
	TOGGLEFULLSCREEN = pressed_ESC;
}