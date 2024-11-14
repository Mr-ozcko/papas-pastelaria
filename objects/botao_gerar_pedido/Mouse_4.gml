var _ingredientes = tag_get_assets("ingredient");
var _pedido = {
	index : array_length(global.pedidos),
	ingredientes : [_ingredientes[0], _ingredientes[1], _ingredientes[3]]
};

array_push(global.pedidos, _pedido);