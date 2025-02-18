//Initialize Projectile Variables (Can be altered in Step event of oWand)

image_alpha = 0;


distance_traveled = 0;
max_distance = 200;
fade_distance = max_distance;
scaleX = 1;
scaleY = 1;

projectile_damage = 2;


alpha_destroy = false; //toggle after creating to destroy it later
alarm[0] = room_speed*1;

angle = 0;
projectile_alpha = 0;
projectile_fadein = 0.25;
projectile_fadeout = 0.45;
projectile_sprite = spr_Projectile;
projectile_current_frame = 0;
projectile_frame_speed = 0.75;
projectile_sprite_duration = sprite_get_number(projectile_sprite); //Returns frame amount
projectile_speed = 1;
targetX = 0;
targetY = 0;

enum projectile_state{
flight,
death
}
current_state = projectile_state.flight;



