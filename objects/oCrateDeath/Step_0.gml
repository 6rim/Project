if (playAnimationInstantly == true && activeAnimation != -1 && targetAnimationSpeed != -1)
{
	sprite_index = activeAnimation; //Change sprite for animation
	image_speed = targetAnimationSpeed;	//Change speed for animation
	currentFrame = floor(image_index); //var for below
}

activeAnimationLength = sprite_get_number(activeAnimation)-1; //Get duration of current animation

if playAnimationLoop =	true { playAnimationOnce = false; } //Auto detect loop or play once
else if playAnimationLoop = false { playAnimationOnce = true;}

if playAnimationLoop = true //ANIMATION LOOP
{
	if (currentFrame = activeAnimationLength)
	{
		playAnimationLoopCount += 1; //Add to loop counter
		image_index	 = 0; //Loop from start
	} 
	if (playAnimationLoopCount = (playAnimationLoopAmount-1))
	{
		playAnimationLoop = false; //stop the loop	
	}
} else 
if playAnimationLoop = false //destroy object once final loop is played
{ if (currentFrame = activeAnimationLength)	{ instance_destroy(); } }