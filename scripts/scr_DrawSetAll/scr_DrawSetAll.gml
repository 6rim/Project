/// @description scr_DrawSetAll(alpha,color,valign,halign,font);
/// @function scr_DrawSetAll
/// @param alpha
/// @param color
/// @param valign
/// @param halign
/// @param font

function scr_DrawSetAll(){
	var input0 = argument[0];	var input1 = argument[1];
	var input2 = argument[2];	var input3 = argument[3];
	var input4 = argument[4];
	
	draw_set_alpha(input0);		draw_set_color(input1);
	draw_set_valign(input2);	draw_set_halign(input3);
	draw_set_font(input4);
}