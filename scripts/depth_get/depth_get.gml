function depth_get(){
	
	//-10000 appears above
	
	// 500 - gui stuff here (?)
	var layerZero = -100; //default updating depth - player here
	// 300 - battle handler 
	// 400 - background
	
	//+10000 appears below
	
	if argument[0] = undefined { depth_offset = layerZero; }
	else if argument[0] != undefined { depth_offset = argument[0]; }
	depth = room_height - bbox_bottom + depth_offset;
}