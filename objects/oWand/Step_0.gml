scr_PlayerInput();

//Update Wand size

//wand_width = sprite_get_width(wand[wand_current,2]); 


wand_width = point_distance(0,0,wand_tipX,wand_tipY);
projectile_offsetX = x + lengthdir_x(wand_width,global.look_direction);
projectile_offsetY = y + lengthdir_y(wand_width,global.look_direction);





if instance_exists(oPlayer)
{
	if global.look_direction >= 180 { depth = -101}		// Set depth for the wand
	else if global.look_direction < 180 { depth_get(); }
	
	x = oPlayer.x;
	y = oPlayer.y-wand_offsetY-(sprite_get_height(oPlayer.sprite_current)/2);
	
	image_angle = global.look_direction;
	
	if pressed_LMB //Shoot Projectile
	{
		with instance_create_depth(projectile_offsetX,projectile_offsetY,depth,oProjectile) 
		{	
			if instance_exists(oWand) //Have to call to get wand variables
			{
			angle = global.look_direction;
			projectile_sprite = oWand.current_projectile_sprite;
			projectile_speed = oWand.current_projectile_speed;
			targetX = mouse_x;
			targetY = mouse_y;
			}
		}
	}
	
}