if (room == rm_fritadeira && self.cozimento == "cru") {
	var _panela = instance_place(self.x, self.y, panelaParent);
	if (_panela != noone) {
		dragging = false;
		self.image_xscale = .65;
		self.image_yscale = .65;
		self.x = _panela.x - (self.sprite_width/2);
		self.y = _panela.y - (self.sprite_height/2);
		_panela.timer_obj.started = true;
	}
	return;
}

if (!cortado) return;

dragging = false;
instance_destroy(overlay);

if (self.x > 730) {
	//var _p = room_instance_add(rm_fritadeira, 100, 400, pastel_fechado);
	room_persistent = false;
	self.persistent = true;
	dragging = true
	room_goto_next();
	
} else if (self.x < 35) {
	room_persistent = false;
	room_restart();
} else {
	x = 318;
	y = 401;
}