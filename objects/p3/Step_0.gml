if (p2.image_alpha >= 1 && self.image_alpha < 1)
	image_alpha += 0.01;
	
if (self.image_alpha >= .99) {
	var _nota = instance_create_layer(544, 125, "OverAll", display);
	_nota.depth = -999;
	var _score = global.score_pastel_atual;
	
	if (_score == 100)
		_nota.sprite_index = sprite_perfeito;
	else if (_score > 90)
		_nota.sprite_index = sprite_incrivel;
	else if (_score > 80)
		_nota.sprite_index = sprite_otimo;
	else if (_score > 60)
		_nota.sprite_index = sprite_bom;
	else if (_score > 40)
		_nota.sprite_index = sprite_eh;
	else
		_nota.sprite_index = sprite_pessimo;
	
	instance_destroy(p1);
	instance_destroy(p2);
	instance_destroy(self);
}

