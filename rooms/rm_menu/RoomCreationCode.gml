if (variable_global_exists("terminou")) {
	instance_create_layer(0, 0, "Instances", mensagem_final);
	instance_destroy(botao_iniciar);
	instance_destroy(order_menu);
}