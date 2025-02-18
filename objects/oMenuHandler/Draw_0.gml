if draw_primitive = true
{

var offset = 4;


x1 = px1*vertex_multiplier;
y1 = py1*vertex_multiplier;

x2 = px2*vertex_multiplier;
y2 = py2*vertex_multiplier;

x3 = px3*vertex_multiplier;
y3 = py3*vertex_multiplier;

x4 = px4*vertex_multiplier;
y4 = py4*vertex_multiplier;

//normal strip 
/*
draw_set_alpha(1);
draw_set_color(c_white);
draw_primitive_begin(pr_trianglestrip);
draw_vertex(x1,y1);
draw_vertex(x2,y2);
draw_vertex(x3,y3);
draw_vertex(x4,y4);
draw_primitive_end(); 
*/


var sprite = sprite_get_texture(spr_Primitive,1);

draw_set_alpha(1);
draw_set_color(c_white);
draw_primitive_begin_texture(pr_trianglestrip,sprite);
draw_vertex_texture(vertex_offsetX+x1,vertex_offsetY+y1,0,0);
draw_vertex_texture(vertex_offsetX+x2,vertex_offsetY+y2,1,0);
draw_vertex_texture(vertex_offsetX+x3,vertex_offsetY+y3,0,1);
draw_vertex_texture(vertex_offsetX+x4,vertex_offsetY+y4,1,1);
draw_primitive_end();

/*
//draw vertex names
scr_DrawSetAll(1,c_fuchsia,fa_bottom,fa_left,fnt_Menu);
draw_text(x1,y1+offset,"1");
draw_text(x2,y2+offset,"2");
draw_text(x3,y3+offset,"3");
draw_text(x4,y4+offset,"4");
*/

}