var _speed = .05;

if (self.image_alpha == 0) instance_destroy(self);

if (self.image_alpha < 1 && increasing)
	self.image_alpha += _speed;
else if (self.image_alpha >= 1) {
	room_goto(target_room);
	increasing = false;
	self.image_alpha -= _speed;
} else if (!increasing)
	self.image_alpha -= _speed;