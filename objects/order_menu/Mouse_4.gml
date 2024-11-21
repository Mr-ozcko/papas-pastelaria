if (state == "down") {
	y = 512;
	state = "up";
	self.sprite_index = order_menu_up;
	
	
	
	array_foreach(global.clientes, function(_cliente) {
		var _ticket = instance_create_layer(201 * instance_number(ticket) + 21, 588, "OverAll", ticket);
		_ticket.depth -= 3;
		
		for (var _i = 0; _i < array_length(_cliente.pedido.ingredientes); _i++) {
			var _ing = instance_create_layer((_ticket.sprite_width*(_i+1)/3 + _ticket.x - 53), 610, "OverAll", display);
			_ing.sprite_index = object_get_sprite(_cliente.pedido.ingredientes[_i]);
			_ing.depth -= 4;
			_ing.image_xscale = .25;
			_ing.image_yscale = .25;
		}
		
	});
} else {
	y = 704;
	state = "down";
	self.sprite_index = order_menu_down;
	instance_destroy(ticket);
	instance_destroy(display);
}