///@description Attack
if !wall_in_LOS { scr_ProjectileCreate(x,y,target.x,target.y,depth-1,path_direction,projectile_sprite,projectile_speed,oEnemyProjectile); } //shoot projectile if not blocked by wall
attack_counter = 1; // allow an attack