target_default = oPlayer;
target = target_default;
targetX = target.x;
targetY = target.y; 


push = 1; //for collision with self

path = path_add();
path_debug = true;
path_distance = distance_to_object(target);
path_viewdistance = 176; //distance the enemy can "see"
path_stopdistance = 64; //distance from target to disengage and begin attacking
path_direction = point_direction(x,y,target.x,target.y);
path_viewX = 0; 
path_viewY = 0; //initialize for drawing debug
sight = collision_line(x,y,target.x,target.y,oWall,false,false) //prevent shooting walls

guard_default = true; //set to guard a point instead of idle
guardX = xstart; //
guardY = ystart;

//Initialize States
enum enemy_state { idle,moving,attack,guard,death }
current_state = enemy_state.idle;

//Path Initialization
movement_speed = 0.6; //initial ms
movement_speed_max = 0.9; //player base ms is 1, 2 for run
movement_enabled = false; //lock for later
alarm[1] = 1; //Pathing Alarm

//Enemy Stats
max_health = 2;
current_health = max_health;

projectile_sprite = spr_Projectile_FireballBasic;
projectile_speed = 1; //1 is base
attack = 1; //attack power
attack_cooldown = 30; //max cooldown
attack_counter = 2; //counter to allow attacking


death_dummy = oAnimation;
death_animation = spr_EnemyDeath;
experience_on_defeat = 1;
experience_dropped = false; //trigger for exp drop


