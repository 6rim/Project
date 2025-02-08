if instance_exists(target)
{
targetX = target.x;
targetY = target.y;

x = targetX;
y = targetY;

depth = target.depth-1;
} else {instance_destroy();}