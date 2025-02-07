target_default = oPlayer;
target = target_default;

targetX = target.x;
targetY = target.y;

path = path_add();
path_debug = true;
path_distance = distance_to_object(target);
path_viewdistance = 64;


//Initialize States
enum enemy_state { idle,moving,death }
current_state = crate_state.idle;

//Path Initialization
if path_distance < path_viewdistance
{
	current_state = enemy_state.moving;
	movement_enabled = true; //
	alarm[1] = 1; //Pathing Alarm
}

max_health = 25;
current_health = max_health;
death_dummy = oAnimation;
death_animation = spr_EnemyDeath;


movement_speed = 0.9; //player base ms is 1, 2 for run


experience_on_defeat = 5;
experience_dropped = false;


