 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

	
	draw_set_alpha(0.8);
	draw_ellipse_color(x-x/2.3, y-y/2, x+x/2.3, y+y/2, #d4a72c, #d4a72c,false)
	draw_set_alpha(1);
	if(global.batata){
		draw_set_alpha(0.1);
		draw_ellipse_color(x-x/2.3, y-y/2, x+x/2.3, y+y/2, #785612, #785612,false)
		draw_set_alpha(1);
		depth = -1000
	}else{
		depth = 0
	}