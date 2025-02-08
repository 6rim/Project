depth_get();

if current_health <= 0
{
	current_state = crate_state.death; //Kill the crate	
}

if current_state = crate_state.death && instance_exists(oPlayer) && experience_dropped = false
{
	oPlayer.current_experience += experience_on_defeat;
	scr_AnimationPlay(oAnimation,x,y,spr_CrateDeath,0.5,true,false,0); //Play crate destroy animation
	experience_dropped = true;
	alarm[0] = room_speed*0.1; //break crate
}

