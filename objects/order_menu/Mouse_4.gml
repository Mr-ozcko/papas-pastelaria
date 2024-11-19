

if (state == "down") {
	y = 512;
	state = "up";
	self.sprite_index = order_menu_up;
	
	
	
	array_foreach(global.clientes, function(_cliente) {
		var _ticket = instance_create_layer(201 * instance_number(ticket) + 21, 588, "OverAll", ticket);
		_ticket.depth -= 1;
		
		var _ings = [
			instance_create_layer((_ticket.sprite_width/3 - 30), 610, "OverAll", display),
			instance_create_layer((_ticket.sprite_width*2/3 - 30), 610, "OverAll", display),
			instance_create_layer((_ticket.sprite_width*3/3 - 30), 610, "OverAll", display)
		];
		
		for (var _i = 0; _i < array_length(_ings); _i++) {
			_ings[_i].sprite_index = object_get_sprite(_cliente.pedido.ingredientes[_i]);
			_ings[_i].depth -= 2;
			_ings[_i].image_xscale = .25;
			_ings[_i].image_yscale = .25;
		}
		
	});

} else {
	y = 704;
	state = "down";
	self.sprite_index = order_menu_down;
}