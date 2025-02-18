function scr_PlayerInput(){
	//INPUTS
	pressed_Enter = keyboard_check_pressed(vk_enter);
	pressed_BACKSPACE = keyboard_check_pressed(vk_backspace);
	pressed_LMB = mouse_check_button_pressed(mb_left);
	pressed_RMB = mouse_check_button_pressed(mb_right);
	pressed_ESC = keyboard_check_pressed(vk_escape);
	pressed_TAB = keyboard_check_pressed(vk_tab);
	released_TAB = keyboard_check_released(vk_tab);
	pressed_W = keyboard_check_pressed(ord("W"));
	pressed_A = keyboard_check_pressed(ord("A"));
	pressed_S = keyboard_check_pressed(ord("S"));
	pressed_D = keyboard_check_pressed(ord("D"));
	
	pressing_LMB = mouse_check_button(mb_left);
	released_LMB = mouse_check_button_released(mb_left);
	pressing_RMB = mouse_check_button(mb_right);
	
	pressed_SPACE = keyboard_check_pressed(vk_space);
	pressing_SPACE = keyboard_check(vk_space);
	
	pressed_SCRLUP = mouse_wheel_up();
	pressed_SCRLDOWN = mouse_wheel_down();
	
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
	
	pressed_ZERO = keyboard_check_pressed(ord("0"));
	pressed_ONE = keyboard_check_pressed(ord("1"));
	pressed_TWO = keyboard_check_pressed(ord("2"));
	pressed_THREE = keyboard_check_pressed(ord("3"));
	pressed_FOUR = keyboard_check_pressed(ord("4"));
	pressed_FIVE = keyboard_check_pressed(ord("5"));
	pressed_SIX = keyboard_check_pressed(ord("6"));
	pressed_SEVEN = keyboard_check_pressed(ord("7"));
	pressed_EIGHT = keyboard_check_pressed(ord("8"));
	pressed_NINE = keyboard_check_pressed(ord("9"));
	
	//USER DEFINED VARIABLES
	playername = "Player Name";
	
	//CONTROLS
	TOGGLEFULLSCREEN = !pressing_SHIFT && pressed_ESC;
	TOGGLENOCLIP = pressing_SHIFT && pressed_ESC;
	TOGGLEDEBUG = instance_exists(oMenu) && pressed_SIX;
	GAMERESTART = pressed_ZERO;
}