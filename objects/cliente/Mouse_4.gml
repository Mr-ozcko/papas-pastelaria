if (!atendido) {
	var _ingredientes = global.ingredientes;
	var _acompanhamentos = global.acompanhamentos;
	var _pedido = {
		ingredientes : [
			_ingredientes[irandom(array_length(_ingredientes) - 1)],
			_ingredientes[irandom(array_length(_ingredientes) - 1)],
			_ingredientes[irandom(array_length(_ingredientes) - 1)]
		],
		acompanhamentos : [
			_acompanhamentos[irandom(array_length(_acompanhamentos) - 1)],
			_acompanhamentos[irandom(array_length(_acompanhamentos) - 1)],
		],
		nota : 0
	};

	var _fala = instance_create_layer(546, 106, "OverAll", balao_fala);
	_fala.image_xscale = .4;
	_fala.image_yscale = .4;

	var _ticket = instance_create_layer(575, 125, "OverAll", ticket);
	_ticket.depth -= 1;

	for (var _i = 0; _i < array_length(_pedido.ingredientes); _i++) {
		var _ing = instance_create_layer((_ticket.sprite_width*(_i+1)/3 + _ticket.x - 52), 145, "OverAll", display);
		_ing.sprite_index = object_get_sprite(_pedido.ingredientes[_i]);
		_ing.depth -= 2;
		_ing.image_xscale = .25;
		_ing.image_yscale = .25;
	}
	
	for (var _i = 0; _i < array_length(_pedido.acompanhamentos); _i++) {
		var _ing = instance_create_layer((_ticket.sprite_width*(_i+1)/2 + _ticket.x - 82), 220, "OverAll", display);
		_ing.sprite_index = object_get_sprite(_pedido.acompanhamentos[_i]);
		_ing.depth -= 2;
		_ing.image_xscale = .4;
		_ing.image_yscale = .4;
	}

	var _cliente = {
		index : array_length(global.clientes) - 1,
		sprite : sprite_index,
		pedido : _pedido,
		chegada : 0
	};

	array_push(global.clientes, _cliente);
	atendido = true;
} else if (!esperando) {
	instance_destroy(balao_fala);
	instance_destroy(ticket);
	instance_destroy(display);
	self.image_xscale = .4;
	self.image_yscale = .4;
	self.y = 330;
	self.x = 100 * array_length(global.clientes)
	self.image_alpha = .5;
	self.depth += 1;
	esperando = true;
};