if(global.batata){
	timer_ += delta_time / 1000000;
	
	global.valscore = 50
	if(timer_>global.timer_duration){
	global.valscore = 100
	}
	if(timer_-global.timer_duration> global.timer_secundario){
	global.valscore = 0
	}
	
}if (!global.batata){
	timer_=0
}