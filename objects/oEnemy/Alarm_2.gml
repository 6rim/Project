///@description Attack
if !sight { scr_ProjectileCreate(x,y,target.x,target.y,depth-1,path_direction,projectile_sprite,projectile_speed,oEnemyProjectile); } //shoot projectile if not blocked by wall
if ( path_distance < path_viewdistance ) && ( path_distance >= path_stopdistance ) { current_state = enemy_state.moving; } // keep moving after attack
attack_counter = 1; // allow an attack