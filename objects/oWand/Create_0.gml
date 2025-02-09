debug = false;

wand_offsetY = 3; //For Drawing Wand
projectile_offsetX = 0; //Initialize for Step event
projectile_offsetY = 0; //Initialize for Step event
wand_width = sprite_get_width(spr_WandDefault);
wand_tipX = 24; //where projectile comes from on sprite
wand_tipY = 0;

wand_scale = 1;
wand_scale_tip = wand_tipX*wand_scale; //init for step, where projectile shoots from
wand_scale_max = 5;

global.wand_direction = 0; //init wand direction

// WANDS ARRAY

wand[0,0] = "Default"; //Wand Name
wand[0,1] = spr_WandDefault; //Wand Sprite
wand[0,2] = spr_Projectile; //Projectile Sprite
wand[0,3] = 1.25; //Projectile Speed


wand[1,0] = "Fireball";
wand[1,1] = spr_WandFireball; //Wand Sprite
wand[1,2] = spr_Projectile_FireballBasic; //Projectile Sprite
wand[1,3] = 4; //Projectile Speed


//Index reader Init
wand_current = 0;
current_wand_name = wand[wand_current][0]; //Wand Name 
current_wand_sprite = wand[wand_current][1]; //Wand Sprite
current_projectile_sprite = wand[wand_current][2]; //Projectile Sprite
current_projectile_speed = wand[wand_current][3]; //Projectile Speed


function update_wand()
{
	current_wand_name = array_get(wand[wand_current],0);
	current_wand_sprite = array_get(wand[wand_current],1);
	current_projectile_sprite = array_get(wand[wand_current],2);
	current_projectile_speed = array_get(wand[wand_current],3);
}

//name
//description
//speed
//spread (random range)
//maxdist