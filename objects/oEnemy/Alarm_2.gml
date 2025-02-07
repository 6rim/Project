///@description Attack
scr_ProjectileCreate(x,y,target.x,target.y,depth,path_direction,spr_Projectile,projectile_speed,oEnemyProjectile); //shoot projectile
if ( path_distance < path_viewdistance ) && ( path_distance >= path_stopdistance ) { current_state = enemy_state.moving; } // keep moving after attack
attack_counter = 1; // allow an attack