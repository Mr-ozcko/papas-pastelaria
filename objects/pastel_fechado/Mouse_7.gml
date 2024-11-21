if (!cortado) return;

dragging = false;
instance_destroy(overlay);
if (self.x > 730) {
	var _p = room_instance_add(rm_acompanhamentos, 100, 400, pastel_fechado);
	room_persistent = false;
	room_goto_next();
} else if (self.x < 35) {
	room_persistent = false;
	room_restart();
} else {
	x = 318;
	y = 401;
}