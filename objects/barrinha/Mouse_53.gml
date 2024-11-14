active = false;
var _green = [minigame_corte.x + 179, minigame_corte.x + 215]
var _yellow = [minigame_corte.x + 105, minigame_corte.x + 289]

var _sprite;
function finish_minigame(_sprite) {
	instance_destroy(minigame_corte);
	with (cortador) {
		dragging = false;
		x = 909;
		y = 384;
		image_xscale = xscale;
		image_yscale = yscale;
		frozen = false;
	}
	pastel_fechado.sprite_index = _sprite;
	instance_destroy(self);
}

if (x >= _green[0] && x <= _green[1]) {
	placeholder_score.image_blend = c_lime;
	finish_minigame(cortado_1);
} else if (x >= _yellow[0] && x <= _yellow[1]) {
	placeholder_score.image_blend = c_yellow;
	finish_minigame(cortado_2);
} else {
	placeholder_score.image_blend = c_red;
	finish_minigame(cortado_3);
}

