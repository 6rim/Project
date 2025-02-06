/// @description scr_AnimationPlay(dummy,targetX,targetY,activeAnimation,targetAnimationSpeed,playAnimationInstantly,playAnimationLoop,playAnimationLoopAmount)
/// @function scr_AnimationPlay
/// @param dummy
/// @param targetX
/// @param targetY
/// @param activeAnimation
/// @param targetAnimationSpeed
/// @param playAnimationInstantly
/// @param playAnimationLoop
/// @param playAnimationLoopAmount

function scr_AnimationPlay()
{
	var dummy = argument0; //This would be the object that plays animation (oAnimation)
	with instance_create_depth(argument1,argument2,depth,dummy)
	{
		//Create dummy for death animation
		targetX = argument1;
		targetY = argument2;
		activeAnimation = argument3;
		targetAnimationSpeed = argument4;
		playAnimationInstantly = argument5;
		playAnimationLoop = argument6;
		playAnimationLoopAmount = argument7;
	}
}