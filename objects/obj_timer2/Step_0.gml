if(started){
	timer_ += delta_time / 1000000;
	
	global.valscore2 = 50
	if(timer_>global.timer_duration){
	global.valscore2 = 100
	}
	if(timer_-global.timer_duration> global.timer_secundario){
	global.valscor2 = 0
	}
} else {
	timer_=0
}