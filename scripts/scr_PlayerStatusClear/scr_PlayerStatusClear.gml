function scr_PlayerStatusClear(){
	
	if instance_exists(oPlayer)
	{
		with oPlayer
		{
			playerstatus[0] = "E";
			playerstatus[1] = "E";
			playerstatus[2] = "E";
		}
	}
}