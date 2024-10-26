if (instance_exists(pastel_fechado)) {
	dragging = true;
	image_xscale += .05;
	image_yscale += .05;
	pastel_fechado.sprite_index = pre_corte;
	pastel_fechado.y += 2;
}
