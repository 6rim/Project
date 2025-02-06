image_index = 0;

targetX = 0; //Would define in instance create on death of create
targetY = 0;
targetAnimationSpeed = -1; //image_speed for the animation
activeAnimation = -1; //spr_Name for animation
activeAnimationLength = -1; //Length of animation

animationDebug = false;

playAnimationInstantly = true; //true by default
playAnimationLoop = false; //When creating effect, set this
playAnimationOnce = true; //This gets autochanged later, only bother to set "Loop"
playAnimationLoopAmount = 0; //Amount of times animation is loops
playAnimationLoopCount = 0; //Counter for Loop

currentFrame = 0;




