 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

	
	draw_set_alpha(0.8);
	draw_ellipse_color(x/0.5, y/0.5, x, y, #d4a72c, #d4a72c,false)
	draw_circle_color(x, y, 110,#d4a72c, #d4a72c,false);
	draw_set_alpha(1);
	if(global.batata){
		draw_set_alpha(0.1);
		draw_circle_color(x, y, 110,#785612, #785612,false);
		draw_set_alpha(1);
		depth = -1000
	}