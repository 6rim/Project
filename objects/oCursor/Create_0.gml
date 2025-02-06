depth = -999;

image_speed = 0;
image_index = 0;
//window_set_cursor(cr_none);

cursorcolliding = true;

enum cursorstates {
	free,
	highlight,
	disabled,
	loading
}

cursorstate = cursorstates.free;

cursordebug = false;