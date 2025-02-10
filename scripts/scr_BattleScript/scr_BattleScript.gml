function scr_BattleScript(){
	
	function save_location() 
	{
	var savedX = x; //will need these variables in each saved object
	var savedY = y;
	var savedRoom = room;
	
	var destRoomX = 80;
	var destRoomY = 264;
	var destRoom = rBattleRoom; //destination room
	
	x = destRoomX; y = destRoomY; //go to battle room start position
	room_goto(destRoom); //go to battle room
	global.gravity_toggle = true; //enable gravity
	if instance_exists(oCamera) { instance_destroy(oCamera); } //refresh camera
	}
	
	
	
	function load_location()
	{
		
	}
		
		// add transition, refresh camera
}