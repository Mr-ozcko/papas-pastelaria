if(started){
	timer_ += delta_time / 1000000;

	global.valscore4 = 50
	if(timer_>global.timer_duration){
	global.valscore4 = 100
	}
	if(timer_-global.timer_duration > global.timer_secundario){
	global.valscore4 = 0
	}
} else {
	timer_=0
}