if (variable_global_exists("terminou")) {
	var _m = instance_create_layer(0, 0, "Instances", mensagem_final);
	_m.depth = -9999;
	instance_destroy(botao_iniciar);
	instance_destroy(order_menu);
}