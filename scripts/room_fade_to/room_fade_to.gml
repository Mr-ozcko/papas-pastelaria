function room_fade_to(_room){
	var _scr = instance_create_depth(0, 0, -9999, black_screen);
	_scr.target_room = _room;
}