global.timer += delta_time / 1000000;

if (global.timer > time_to_spawn_cumulative
	&& room == rm_pedidos
	&& !global.cliente_esperando
	&& array_length(global.pessoas) > 0) {
		
	global.cliente_esperando = true;
	var _cliente_obj = instance_create_layer(370, 210, "Clientes", cliente);
	var _num = irandom(array_length(global.pessoas) - 1);
	_cliente_obj.sprite_index = global.pessoas[_num];
	_cliente_obj.image_xscale = .95;
	_cliente_obj.image_yscale = .95;
	array_delete(global.pessoas, _num, 1);
	time_to_spawn_cumulative += time_to_spawn;
}