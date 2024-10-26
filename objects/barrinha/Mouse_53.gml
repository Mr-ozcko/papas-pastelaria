active = false;
var _green = [minigame_corte.x + 179, minigame_corte.x + 215]
var _yellow = [minigame_corte.x + 105, minigame_corte.x + 289]

if (x >= _green[0] && x <= _green[1]) {
	placeholder_score.image_blend = c_lime;
} else if (x >= _yellow[0] && x <= _yellow[1]) {
	placeholder_score.image_blend = c_yellow;
} else {
	placeholder_score.image_blend = c_red;
}