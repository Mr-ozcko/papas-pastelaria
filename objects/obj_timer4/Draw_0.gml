/// draw_self()

if (room == rm_fritadeira){
	if(global.batata4){
		draw_pie_healthbar(x, y, timer_, timer_duration, #22ff22, 24, 500 );
	}
}
draw_text(x, 2*y, global.valscore);
