/// @description scr_DrawTriangleStrip()
/// @function scr_DrawTriangleStrip()
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param x3
/// @param y3
/// @param x4
/// @param y4

function scr_DrawTriangleStrip(){

var x1 = argument0;
var y1 = argument1;

var x2 = argument2;
var y2 = argument3;

var x3 = argument4;
var y3 = argument5;

var x4 = argument6;
var y4 = argument7;

draw_primitive_begin(pr_trianglestrip);
draw_vertex(x1,y1);
draw_vertex(x2,y2);
draw_vertex(x3,y3);
draw_vertex(x4,y4);
draw_primitive_end();

}