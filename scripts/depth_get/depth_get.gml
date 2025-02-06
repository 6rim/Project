function depth_get(){
	if argument[0] = undefined { depth_offset = -100; }
	else if argument[0] != undefined { depth_offset = argument[0]; }
	depth = room_height - bbox_bottom + depth_offset;
}