depth_get();

if current_health <= 0
{
	current_state = enemy_state.death; //Kill the crate	
}

if current_state = enemy_state.death && instance_exists(oPlayer) && experience_dropped = false
{
	oPlayer.current_experience += experience_on_defeat;
	scr_AnimationPlay(oAnimation,x,y,death_animation,0.5,true,false,0); //Play death Animation
	experience_dropped = true;
	movement_enabled = false;
	alarm[0] = room_speed*0.1;
}

