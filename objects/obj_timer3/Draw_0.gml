/// draw_self()

if (room == rm_fritadeira){
	if(global.batata3){
		draw_pie_healthbar(x, y, timer_, global.timer_duration, #22ff22, 24, 500 );
		if (timer_ < 20){
		draw_pie_healthbar(x, y, timer_, 20, #ffb222, 24, 500 )
		}
	}
}
draw_text(x, 2*y, global.valscore3);
