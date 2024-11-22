if(started){
	timer_ += delta_time / 1000000;

	global.valscore3 = 50
	if(timer_>global.timer_duration){
	global.valscore3 = 100
	}
	if(timer_-global.timer_duration> global.timer_secundario){
	global.valscore3 = 0
	}
} else {
	timer_=0
}