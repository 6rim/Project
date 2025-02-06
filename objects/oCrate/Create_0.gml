max_health = 5;
current_health = max_health;
death_dummy = oCrateDeath


experience_on_defeat = 2;
experience_dropped = false;

//Initialize States
enum crate_state { idle,death }
current_state = crate_state.idle;
