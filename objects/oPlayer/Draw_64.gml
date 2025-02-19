///@description Draw MAIN Debug

if debug = true
{
scr_DrawSetAll(1,c_white,fa_top,fa_left,fnt_Menu);
draw_text(16, 16, 
string("Move Direction: ")+string(move_direction)
+string("\nSprite Index: ")+string(sprite_index)
+string("\nSprite Current: ")+string(sprite_current)
+string("\nDepth: ")+string(depth)
+string("\nMoving Check: ")+string(moving_check)
+string("\nspdX: ")+string(spdX)
+string("\nspdY: ")+string(spdY)
+string("\nShift: ")+string(pressing_SHIFT)
+string("\nMvmnt Enabled: ")+string(movementenabled)
+string("\nPlayer State: ")+string(playerstate)
+string("\nLook Dir: ")+string(global.look_direction)
+string("\nWand Dir: ")+string(global.wand_direction)
+string("\nCamMid X: ")+string(camcenterx)
+string("\nCamMid Y: ")+string(camcentery)
+string("\nCam W: ")+string(camw)
+string("\nCam H: ")+string(camh)
+string("\nMouse X: ")+string(mouse_x)
+string("\nMouse Y: ")+string(mouse_y)
+string("\nSave Rm: ")+string(savedRoom)
+string("\nMusic Volume: ")+string(oMenuHandler.setting[0,1])


//+string("\n: ")+string()
)
}

if instance_exists(oCamera)
{
	//Draw Player Info @ Bottom Right of GUI
	
	var camera_bottom_rightX = (oCamera.camerawidth*oCamera.camerascale)-guiX_offset
	var camera_bottom_rightY = (oCamera.cameraheight*oCamera.camerascale)-guiY_offset
	
	var debug_offsetY = -16;
	var experience_offsetY = 0;
	var level_offsetY = 16;
	var hp_offsetY = 32;
	
	var mouse_near_offsetY = 64;
	var mouse_dist_offsetY = 64+16;
	
	scr_DrawSetAll(1,c_white,fa_bottom,fa_right,fnt_Menu);
	
	var target = oSlider;
	if debug = true && instance_exists(target)
	{
	draw_text(camera_bottom_rightX,camera_bottom_rightY-debug_offsetY,string("Debug: ")+string(debug)+string(" / ")+string("Noclip ")+string(noclip));
	draw_text(camera_bottom_rightX,camera_bottom_rightY-mouse_near_offsetY,string("Mouse near: ")+string(instance_nearest(mouse_x,mouse_y,target)));
	draw_text(camera_bottom_rightX,camera_bottom_rightY-mouse_dist_offsetY,string("Mouse dist ")+string(point_distance(mouse_x,mouse_y,target.x,target.y)));
	}

	draw_text(camera_bottom_rightX,camera_bottom_rightY-hp_offsetY,string(current_hp)+string(" / ")+string(max_hp)+string(" HP"));
	draw_text(camera_bottom_rightX,camera_bottom_rightY-level_offsetY,string("Level ")+string(current_level))
	draw_text(camera_bottom_rightX,camera_bottom_rightY-experience_offsetY,string(current_experience)+string(" / ")+string(max_experience)+string(" EXP"))

}
//+string("\n: ")+string()