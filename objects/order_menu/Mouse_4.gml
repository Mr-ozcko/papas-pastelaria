if (state == "down") {
	y = 512;
	state = "up";
	self.sprite_index = order_menu_up;
	
	
	
	array_foreach(global.clientes, function(_cliente) {
		var _ticket = instance_create_layer(201 * instance_number(ticket) + 21, 588, "OverAll", ticket);
		_ticket.depth -= 10000;
		_ticket.cliente_ticket = _cliente;
		
		for (var _i = 0; _i < array_length(_cliente.pedido.ingredientes); _i++) {
			var _ing = instance_create_layer((_ticket.sprite_width*(_i+1)/3 + _ticket.x - 53), 610, "OverAll", display);
			_ing.sprite_index = object_get_sprite(_cliente.pedido.ingredientes[_i]);
			_ing.depth -= 10001;
			_ing.image_xscale = .25;
			_ing.image_yscale = .25;
		}
		
		for (var _i = 0; _i < array_length(_cliente.pedido.acompanhamentos); _i++) {
			var _ing = instance_create_layer((_ticket.sprite_width*(_i+1)/2 + _ticket.x - 82), 685, "OverAll", display);
			_ing.sprite_index = object_get_sprite(_cliente.pedido.acompanhamentos[_i]);
			_ing.depth -= 10001;
			_ing.image_xscale = .4;
			_ing.image_yscale = .4;
		}
		
	});
} else {
	y = 704;
	state = "down";
	self.sprite_index = order_menu_down;
	instance_destroy(ticket);
	instance_destroy(display);
}