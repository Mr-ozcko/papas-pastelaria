if(global.batata){
	timer_ -= delta_time / 1000000;
	global.valscore = timer_/global.timer_duration
}if (!global.batata){
	timer_ = global.timer_duration;	
}