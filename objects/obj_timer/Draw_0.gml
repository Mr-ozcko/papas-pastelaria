/// draw_self()

if (room == rm_fritadeira){
	if(global.batata){
		// Aqui é verde
		draw_pie_healthbar(x, y, timer_, global.timer_duration, #22ff22, 24, 500 );
		
		if (timer_ > global.timer_duration){
			// aqui é laranja
			draw_pie_healthbar(x, y, timer_-global.timer_duration, global.timer_secundario, #ffb222, 24, 500 )
			
		} if (timer_-global.timer_duration > global.timer_secundario){
			// Aqui fudeu
			draw_pie_healthbar( x, y, 1.5, 1, #c40808, 24, 500)
		}
	}
}
draw_text(x, 2*y, global.valscore);
