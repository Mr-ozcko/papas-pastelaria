if (cortado && room == rm_montagem) {
	dragging = true;
	self.depth -= 5;
	var _ov = instance_create_layer(0, 0, "OverAll", overlay);
	_ov.image_alpha = .5;
	_ov.depth -= 3;
	
} else if (room == rm_fritadeira && self.cozimento != "cru") {
	dragging = true;
	self.image_xscale = 1;
	self.image_yscale = 1;
	var _panela = instance_place(self.x, self.y, panelaParent);
	if (_panela != noone)
		_panela.timer_obj.started = false;
}
