	draw_set_alpha(0.8);
	draw_ellipse_color(x-x/6.3, y-y/5.5, x+x/6.3, y+y/5.5, #d4a72c, #d4a72c,false)
	draw_set_alpha(1);
	if(global.batata4){
		draw_set_alpha(0.1);
		draw_ellipse_color(x-x/6.3, y-y/5.5, x+x/6.3, y+y/5.5, #785612, #785612,false)
		draw_set_alpha(1);
		depth = -1000
	}else{
		depth = 0
	}
	
	