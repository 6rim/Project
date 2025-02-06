draw_self();

#region DEBUG
if animationDebug = true
{

var debug_offsetX = 16;
var debug_offsetY = 16;

scr_DrawSetAll(1,c_white,fa_top,fa_left,fnt_Menu);

draw_text(x+debug_offsetX,y+debug_offsetY,
string(playAnimationLoopCount)+string("/")+string(playAnimationLoopAmount)
+string("\nFrame ")+string(currentFrame)
+string("\nLength ")+string(activeAnimationLength)
)

}
#endregion