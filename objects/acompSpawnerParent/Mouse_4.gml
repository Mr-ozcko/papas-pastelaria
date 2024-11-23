if (instance_number(acompParent) > 1 && self.obj != concha) return;
if (!instance_exists(pastel_fechado)) return;

var _newAcomp = instance_create_layer(mouse_x, mouse_y, "Acompanhamentos", obj);
_newAcomp.dragging = true;


if (self.obj == concha) {
	if (instance_exists(sagu))
		sagu.image_blend = c_lime;
	return;
}

var _newArea = instance_create_layer(529, instance_number(acompParent) > 1 ? 534 : 373, "OverAll", area_acomp);
_newArea.image_alpha = .35;
	

//var newArea = instance_create_layer(newIng.areaPosX, newIng.areaPosY, "OverAll", placementArea);
//placementArea.sprite_index = newIng.sprite_index;
//placementArea.image_blend = c_green;
//placementArea.image_alpha = .35;	
//placementArea.image_xscale = 1;
//placementArea.image_yscale = 1;
	
// y2 = 534
