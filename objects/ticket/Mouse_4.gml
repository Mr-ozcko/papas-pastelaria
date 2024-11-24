if (room != rm_acompanhamentos || !instance_exists(pastel_fechado)) return;

var _ings_pastel = pastel_fechado.ingredientes;
var _acomps_atuais = global.acompanhamentos_atuais;

var _ings_pedido = cliente_ticket.pedido.ingredientes;
var _acomps_pedido = cliente_ticket.pedido.acompanhamentos;

var _ings_certos = 0;
var _acomps_certos = 0;

var _tempo_preparo = global.timer - cliente_ticket.chegada;

for (var _i = 0; _i < array_length(_ings_pastel); _i++) {
	for (var _j = 0; _j < array_length(_ings_pedido); _j ++) {
		if (_ings_pastel[_i] == _ings_pedido[_j]) {
			array_delete(_ings_pedido, _j, 1);
			_ings_certos++;
			break;
		}
	}
}

for (var _i = 0; _i < array_length(_acomps_atuais); _i++) {
	for (var _j = 0; _j < array_length(_acomps_pedido); _j ++) {
		if (_acomps_atuais[_i] == _acomps_pedido[_j]) {
			array_delete(_acomps_pedido, _j, 1);
			_acomps_certos++;
			break;
		}
	}
}

var _score_montagem = pastel_fechado.score_montagem / array_length(_ings_pastel);
var _score_ings = (100/3) * _ings_certos;
var _score_acomps = 50 * _acomps_certos;
var _score_fritura = pastel_fechado.cozimento == "frito" ? 100 : 30;
var _score_corte = pastel_fechado.sprite_index == cortado_1 ? 100 : (pastel_fechado.sprite_index == cortado_2 ? 75 : 40);
var _score_tempo = 0;
if (_tempo_preparo < 40)
	_score_tempo = 100;
else if (_tempo_preparo < 60)
	_score_tempo = 60;
else if (_tempo_preparo < 70)
	_score_tempo = 30;
			   
var _score_pastel = ( _score_montagem
					+ _score_ings
					+ _score_acomps
					+ _score_fritura
					+ _score_corte
					+ _score_tempo) / 6;
					
global.score_pastel_atual = _score_pastel;
global.score += _score_pastel;

with (order_menu) {
	y = 704;
	state = "down";
	self.sprite_index = order_menu_down;
	instance_destroy(ticket);
	instance_destroy(display);
}

var _cli = instance_create_layer(370, 210, "Instances", display);
_cli.sprite_index = cliente_ticket.sprite;
_cli.image_xscale = .95;
_cli.image_yscale = .95;
_cli.persistent = true;
_cli.image_alpha = 0;
instance_destroy(pastel_fechado);
room_persistent = false;
array_delete(global.clientes, array_find_index(global.clientes, function(_cli) {return _cli.sprite == cliente_ticket.sprite;}), 1);
global.pedidos_finalizados++;
room_fade_to(rm_entregar);