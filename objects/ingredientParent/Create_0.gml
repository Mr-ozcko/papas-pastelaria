overlap = 0;
function get_overlap(_target) {
	if (!object_exists(_target)) return 0;
		
	var _a_left = x;
    var _a_right = x + sprite_width;
    var _a_top = y;
    var _a_bottom = y + sprite_height;

    // Pega as coordenadas do _target
    var _b_left = _target.x;
    var _b_right = _target.x + _target.sprite_width;
    var _b_top = _target.y;
    var _b_bottom = _target.y + _target.sprite_height;

    // Calcula a área de sobreposição
    var _overlap_left = max(_a_left, _b_left);
    var _overlap_right = min(_a_right, _b_right);
    var _overlap_top = max(_a_top, _b_top);
    var _overlap_bottom = min(_a_bottom, _b_bottom);

    // Verifica se há sobreposição
    if (_overlap_left < _overlap_right && _overlap_top < _overlap_bottom) {
        var _overlap_width = _overlap_right - _overlap_left;
        var _overlap_height = _overlap_bottom - _overlap_top;
        var _overlap_area = _overlap_width * _overlap_height;

        // Calcula a área total do Object1
        var _area_A = sprite_width * sprite_height;

        // Calcula a porcentagem da área de Object1 que está no _target
        return((_overlap_area / _area_A) * 100);
	} else return 0;
}