var _cliente_obj = instance_create_layer(370, 210, "Clientes", cliente);
var _num = irandom(array_length(global.pessoas) - 1);
_cliente_obj.sprite_index = global.pessoas[_num];
_cliente_obj.image_xscale = .95;
_cliente_obj.image_yscale = .95;
array_delete(global.pessoas, _num, 1);
