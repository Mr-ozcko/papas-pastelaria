if (instance_exists(pastel_fechado) && dragging) {
	dragging = false;
	x = 909;
	y = 384;
	image_xscale = xscale;
	image_yscale = yscale;
	pastel_fechado.sprite_index = fechado;
	pastel_fechado.y -= 2;
}