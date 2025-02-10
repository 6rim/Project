function scr_BattleScript(){
	
	function save_location() 
	{
	
	savedX = x; 
	savedY = y; 
	savedRoom = room;
	
	var targetX = argument0; //spawn in battle
	var targetY = argument1;
	var destination = argument2; //destination room
	
	room_goto(destination); //go to battle room
	x = targetX;
	y = targetY; //go to battle room start position
	global.gravity_toggle = true; //enable gravity
	if instance_exists(oCamera) { instance_destroy(oCamera); } //refresh camera
	
	}
	
	
	
	function load_location()
	{
	var savedX = argument0;//80;
	var savedY = argument1;//264;
	var savedRoom = argument2; //destination room
	
	room_goto(savedRoom); //go to battle room
	x = savedX;
	y = savedY; //go to battle room start position
	if savedRoom = rStartGame global.gravity_toggle = false; //enable gravity
	if instance_exists(oCamera) { instance_destroy(oCamera); } //refresh camera
	
	}
		
		// add transition, refresh camera
}