//Draw debug
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
+string("\nLook Direction: ")+string(global.look_direction)
)

if instance_exists(oCamera)
{
	//Draw Player Info @ Bottom Right of GUI
	
	var camera_bottom_rightX = (oCamera.camerawidth*oCamera.camerascale)-guiX_offset
	var camera_bottom_rightY = (oCamera.cameraheight*oCamera.camerascale)-guiY_offset
	
	scr_DrawSetAll(1,c_white,fa_bottom,fa_right,fnt_Menu);
	draw_text(camera_bottom_rightX,camera_bottom_rightY,string(current_experience)+string(" / ")+string(max_experience)
	
	)
}
//+string("\n: ")+string()