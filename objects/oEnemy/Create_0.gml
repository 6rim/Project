scr_BattleScript();

debug = false;

target_default = oPlayer;
target = target_default;
targetX = target.x;
targetY = target.y; 

instance_create_depth(x,y,depth-1,oEnemyFollower); //create the follower
follower = instance_nearest(x,y,oEnemyFollower);

push = 8; //dist for radius
push_radius = push; //init for step

path = path_add();
path_debug = true;
path_distance = distance_to_object(target);
path_viewdistance = 144; //distance the enemy can "see"
path_stopdistance = 32; //distance from target to disengage and begin attacking
path_direction = point_direction(x,y,target.x,target.y);
path_viewX = 0; 
path_viewY = 0; //initialize for drawing debug

player_in_range  = ( path_distance < path_viewdistance );
target_not_met = ( path_distance >= path_stopdistance );
at_stop_distance = ( path_distance <= path_stopdistance );

wall_in_LOS = collision_line(x,y,target.x,target.y,oWall,false,false) //prevent shooting walls
self_in_LOS = collision_line(x,y,target.x,target.y,oEnemy,false,true) //prevent clumping

guard_default = true; //set to guard a point instead of idle
guardX = xstart; //
guardY = ystart;

//Initialize States
enum enemy_state { idle,moving,attack,guard,death }
state_name[0] = "idle";
state_name[1] = "moving";
state_name[2] = "attack";
state_name[3] = "guard";
state_name[4] = "death";
current_state = enemy_state.idle;
current_state_name = state_name[current_state];

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


