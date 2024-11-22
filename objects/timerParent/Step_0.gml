var _pastel = noone;
with (self.panela_obj)
	_pastel = instance_place(x, y, pastel_fechado);
		
if (self.started) {
	
	if (room = rm_fritadeira && _pastel == noone) return;
	
	self.timer_ += delta_time / 1000000;
	
	if (_pastel == noone) return;
	
	if (timer_ > global.timer_duration) {
		_pastel.cozimento = "frito";
	}
	
	if(timer_-global.timer_duration> global.timer_secundario){
		_pastel.cozimento = "queimado";
	}
	
} else {
	self.timer_ = 0;
}