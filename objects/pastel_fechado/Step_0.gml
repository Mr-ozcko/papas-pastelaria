 if (dragging) {
	x = mouse_x - (sprite_width / 2);
	y = mouse_y - (sprite_height / 2);
	global.pastelArrastado = true;
 } else {
	global.pastelArrastado = false;
 }
 
if (self.cozimento == "frito")
	self.image_blend = #ffbf66;
else if (self.cozimento == "queimado")
	self.image_blend = #333333;
	
if (room == rm_acompanhamentos) {
	self.persistent = false;
	self.x = 250;
	self.y = 406;
	dragging = false;
}