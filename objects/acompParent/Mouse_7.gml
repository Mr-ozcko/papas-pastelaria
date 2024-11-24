if (place_meeting(x, y, area_acomp) && dragging) {
	
	image_alpha = 1;
	image_xscale = .95;
	image_yscale = .95;
	x = area_acomp.x + 50;
	y = area_acomp.y;
	
	array_push(global.acompanhamentos_atuais, self.object_index);

} else if (instance_exists(concha) && place_meeting(x, y, sagu) && dragging) {
	var _sagu = instance_create_layer(sagu.x, sagu.y, "Acompanhamentos", sagu_cheio);
	_sagu.image_xscale = .95;
	_sagu.image_yscale = .95;
	instance_destroy(sagu);
	array_delete(global.acompanhamentos_atuais, array_get_index(global.acompanhamentos_atuais, sagu), 1);
	array_push(global.acompanhamentos_atuais, sagu_cheio);
	instance_destroy(self);
	
	
} else if (dragging) {
	instance_destroy(self);
}
	

if (instance_exists(sagu))
		sagu.image_blend = c_white;

instance_destroy(area_acomp);
dragging = false;