function scr_MenuCreate(_x,_y,_menuname,_width){
		
		
		
		_x = argument[0];
		_y = argument[1];
		_menuname = argument[2];
		_width = argument[3];

		menufont = fnt_Menu;
		menucount = array_length(_menuname);
		menutitle = _menuname = -1;

		//3 grids make up 1 tile (24)
		menugrid = 8;
		
		menumargin = 4;
		
		menuwidth = (menugrid * 3) * _width;
		menuheight = (menugrid *3) * menucount;
		
		//Create Menu
		instance_create_depth(mouse_x,mouse_y,-500,oMenu)
}