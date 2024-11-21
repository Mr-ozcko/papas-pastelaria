/// draw_self()

if (room == rm_fritadeira){
	if(global.batata4){
		draw_pie_healthbar(x, y, timer_, global.timer_duration, #22ff22, 24, 500 );
		if (timer_ > global.timer_duration){
			draw_pie_healthbar(x, y, timer_-global.timer_duration, global.timer_duration-20, #ffb222, 24, 500 )
		} if (timer_-global.timer_duration > global.timer_duration-20){
			draw_pie_healthbar( x, y, 1.5, 1, #c40808, 24, 500)
		}
	}
}
draw_text(x, 2*y, global.valscore4);
