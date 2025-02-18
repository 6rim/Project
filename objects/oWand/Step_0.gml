scr_PlayerInput();

//Update Wand size

//wand_width = sprite_get_width(wand[wand_current,2]); 

//tip_offset = 12;

global.wand_direction = point_direction(oWand.x,oWand.y,mouse_x,mouse_y);
wand_width = point_distance(0,0,wand_tipX*wand_scale,wand_tipY*wand_scale);
projectile_offsetX = x + lengthdir_x(wand_width,global.wand_direction);
projectile_offsetY = y + lengthdir_y(wand_width,global.wand_direction);

if global.wand_direction >= 25 && global.wand_direction <= 155 { depth_get(-50);} // Set depth for the wand
else { depth_get(-150); }

//if global.wand_direction >= 180 {depth = -1;}

//current_wand_sprite = array_get(wand[wand_current],1); //Call to update wand sprite
image_index = current_wand_sprite;


if pressed_SCRLDOWN && wand_scale > 1 { wand_scale -= 0.25; } //change wand scale 
if pressed_SCRLUP && wand_scale < wand_scale_max { wand_scale += 0.25; }



//change wand
if pressed_ONE { wand_current = 0; update_wand(); }
if pressed_TWO { wand_current = 1; update_wand(); }

if instance_exists(oPlayer)
{
x = oPlayer.x; //Follow player's position
y = oPlayer.y+ wand_offsetY - 10//(sprite_get_height(oPlayer.sprite_current)/2); looks weird
}
	

	
if pressed_LMB //Shoot Projectile
{
with instance_create_depth(projectile_offsetX,projectile_offsetY,depth-1,oProjectile) 
{	
if instance_exists(oWand)
{
angle = global.wand_direction;
max_distance = oWand.current_projectile_max_distance;
projectile_damage = oWand.current_projectile_damage;
projectile_sprite = oWand.current_projectile_sprite;
projectile_speed = oWand.current_projectile_speed;
targetX = mouse_x;
targetY = mouse_y;
}
}
}
