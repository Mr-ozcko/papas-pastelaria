if (place_meeting(x, y, area) && dragging) {
	image_alpha = 1;
	var scale = .95;
	var offsetX = (sprite_width - sprite_width * scale) / 2;
	var offsetY = (sprite_height - sprite_height * scale) / 2;
	x += offsetX;
	y += offsetY;
	image_xscale = .95;
	image_yscale = .95;
	instance_destroy(area);
	instance_create_layer(254, 495, "OverAll", clique);

} else if (dragging) {
	instance_destroy(area);
	instance_destroy(self);
}
dragging = false;
