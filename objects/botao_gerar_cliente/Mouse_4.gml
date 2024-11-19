var _cliente_obj = instance_create_layer(389, 256, "Clientes", cliente);
var _num = irandom(array_length(global.pessoas) - 1);
_cliente_obj.sprite_index = global.pessoas[_num];
array_delete(global.pessoas, _num, 1);

var _ingredientes = global.ingredientes;
var _pedido = {
	ingredientes : [
		_ingredientes[irandom(array_length(_ingredientes) - 1)],
		_ingredientes[irandom(array_length(_ingredientes) - 1)],
		_ingredientes[irandom(array_length(_ingredientes) - 1)]
	],
	nota : 0
};

var _cliente = {
	index : array_length(global.clientes) - 1,
	sprite : _cliente_obj.sprite_index,
	pedido : _pedido,
	chegada : 0
};

array_push(global.clientes, _cliente);