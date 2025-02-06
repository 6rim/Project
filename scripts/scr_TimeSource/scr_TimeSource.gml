function scr_TimeSource(){

	var _my_method = function()
{
    show_debug_message(string(argument0)+string("1 second"));
}

global.time_per_second = time_source_create(time_source_game, 1, time_source_units_seconds, _my_method, [], -1, time_source_expire_after);

time_source_start(global.time_per_second);
}