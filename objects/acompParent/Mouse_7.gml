if (place_meeting(x, y, area) && dragging) {
	var _score = get_overlap(area) > 97 ? 100 : get_overlap(area);
	global.pastel_atual_montagem.score_montagem += _score;
	array_push(global.pastel_atual_montagem.ingredientes, self.object_index);
	
	image_alpha = 1;
	var _scale = .95;
	var _offsetX = (sprite_width - sprite_width * _scale) / 2;
	var _offsetY = (sprite_height - sprite_height * _scale) / 2;
	x += _offsetX;
	y += _offsetY;
	image_xscale = .95;
	image_yscale = .95;
	
	
	instance_destroy(area);
	instance_create_layer(254, 495, "overAll", clique);

} else if (dragging) {
	instance_destroy(area);
	instance_destroy(self);
}
dragging = false;