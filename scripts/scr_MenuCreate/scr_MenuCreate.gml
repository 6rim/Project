/// @description scr_MenuCreate()
/// @function scr_MenuCreate()

/// @param _x
/// @param _y
/// @param _menuname
/// @param _width


function scr_MenuCreate(){
		
		
		
var _x = argument0;
var _y = argument1;
var _menuname = argument2;
var _width = argument3;

menufont = fnt_Menu;
menucount = array_length(_menuname);
menutitle = _menuname = -1;

//3 grids make up 1 tile (24)
menugrid = 8;

menumargin = 4;
		
menuwidth = (menugrid * 3) * _width;
menuheight = (menugrid *3) * menucount;
		
//Create Menu
instance_create_depth(_x,_y,-500,oMenu)

}