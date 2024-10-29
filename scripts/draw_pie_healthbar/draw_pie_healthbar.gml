 function draw_pie_healthbar(x, y, _value, _max, _color, _radius, _alpha) {
	
	if (_value > 0) {
		var i, len, tx, ty, val;
		var numOfSections = 60;
		var sizeOfSection = 360/numOfSections;
		
		val = (_value/_max) * numOfSections;
		
		if (val > 1) {
			draw_set_color(_color); 
			draw_set_alpha(_alpha);
			draw_primitive_begin(pr_trianglefan); 
			draw_vertex(x, y);
			for (i=0; i < val; i++) { 
				len = (i*sizeOfSection) + 90; 
				tx = lengthdir_x(_radius, len); 
				ty = lengthdir_y(_radius, len); 
				draw_vertex(x + tx, y + ty);
			}
			draw_primitive_end();
		}
		draw_set_alpha(1);
	}
}