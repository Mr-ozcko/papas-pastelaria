var _ingredientes = global.ingredientes;

var _pedido = {
	index : array_length(global.pedidos),
	ingredientes : [_ingredientes[irandom(array_length(_ingredientes) - 1)], _ingredientes[irandom(array_length(_ingredientes) - 1)], _ingredientes[irandom(array_length(_ingredientes) - 1)]]
};

array_push(global.pedidos, _pedido);