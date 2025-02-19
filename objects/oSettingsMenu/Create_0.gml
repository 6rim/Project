debug = false;

depth = -500;

guiX = -1; //Position to display GUI
guiY = -1;
offsetX = 24;
offsetY = 0;


menuhighlighted = 1;

menuoption[0] = "Settings";
menuoption[1] = "Music Volume";
menuoption[2] = "Game Volume";
menuoption[3] = "2";
menuoption[4] = "3";
menuoption[5] = "4";

setting[0,0] = "Music Volume";
setting[1,0] = "Game Volume";
setting[2,0] = "2";
setting[3,0] = "3";
setting[4,0] = "4";

setting[0,1] = 75; //Music Volume
setting[1,1] = 100; //Game Volume
setting[2,1] = 0; //
setting[3,1] = 0; //
setting[4,1] = 0; //

current_setting = menuhighlighted-1; 
setting_replace = 0;

menutitle = menuoption[0];

optionsamount = array_length(menuoption);

menuheight = (optionsamount+1)/2;
