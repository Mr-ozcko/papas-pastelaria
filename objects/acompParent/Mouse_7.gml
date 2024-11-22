if (place_meeting(x, y, area_acomp) && dragging) {
	
	image_alpha = 1;
	image_xscale = .95;
	image_yscale = .95;
	x = area_acomp.x + 50;
	y = area_acomp.y;

} else if (dragging) {
	instance_destroy(self);
}
instance_destroy(area_acomp);
dragging = false;