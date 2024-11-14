if (array_length(global.pedidos) > 0) {
	var _pedido = global.pedidos[array_length(global.pedidos) - 1];
	var _ingrediente = _pedido.ingredientes[self.ing_index];
	self.sprite_index = _ingrediente.sprite_index;
}