wand_offsetY = -2; //For Drawing Wand
projectile_offsetX = 0; //Initialize for Step event
projectile_offsetY = 0; //Initialize for Step event
wand_width = sprite_get_width(spr_WandDefault);
wand_tipX = 26;
wand_tipY = 4;

// WANDS ARRAY

wand[0,0] = "Default"; //Wand Name
wand[0,1] = spr_WandDefault; //Wand Sprite
wand[0,2] = spr_Projectile; //Projectile Sprite
wand[0,3] = 1; //Projectile Speed


wand[1,0] = "Fireball";
wand[1,1] = spr_WandDefault; //Wand Sprite
wand[1,2] = spr_Projectile_FireballBasic; //Projectile Sprite
wand[1,3] = 2; //Projectile Speed


wand_current = 1;
current_wand_name = wand[wand_current][0]; //Wand Name
current_wand_sprite = wand[wand_current][1]; //Wand Sprite
current_projectile_sprite = wand[wand_current][2]; //Projectile Sprite
current_projectile_speed = wand[wand_current][3]; //Projectile Speed

//name
//description
//speed
//spread (random range)
//maxdist