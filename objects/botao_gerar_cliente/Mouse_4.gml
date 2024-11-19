var _cliente_obj = instance_create_layer(389, 256, "Clientes", cliente);
var _num = irandom(array_length(global.pessoas) - 1);
_cliente_obj.sprite_index = global.pessoas[_num];
_cliente_obj.image_xscale = .8;
_cliente_obj.image_yscale = .8;
array_delete(global.pessoas, _num, 1);
