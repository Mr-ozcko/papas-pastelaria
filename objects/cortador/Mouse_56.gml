if (place_meeting(x, y, pastel_fechado) && dragging) {
	dragging = false;
	frozen = true;
	var _mg = instance_create_layer(x - 145, y - 80, "OverAll", minigame_corte);
	_mg.depth -= 1;
	var _bar = instance_create_layer(x, y, "OverAll", barrinha);
	_bar.depth -= 1;
	
} else if (dragging) {
	dragging = false;
	x = 909;
	y = 384;
	image_xscale = xscale;
	image_yscale = yscale;
	pastel_fechado.sprite_index = fechado;
	pastel_fechado.y -= 2;
}