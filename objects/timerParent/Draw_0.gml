if (room == rm_fritadeira){
	if(self.started){
		
		draw_pie_healthbar(x, y, self.timer_, global.timer_duration, #ffb222, 24, 500 );
		
		if (self.timer_ > global.timer_duration){
			
			draw_pie_healthbar(x, y, self.timer_-global.timer_duration, global.timer_secundario, #22ff22, 24, 500 )
			
		} if (self.timer_-global.timer_duration > global.timer_secundario){
			draw_pie_healthbar( x, y, 1.5, 1, #c40808, 24, 500)
		}
	}
}