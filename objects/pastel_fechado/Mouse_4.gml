if (!cortado || room == rm_acompanhamentos) return;

dragging = true;
self.depth -= 5;
var _ov = instance_create_layer(0, 0, "OverAll", overlay);
_ov.image_alpha = .5;
_ov.depth -= 3;
