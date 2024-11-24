draw_self();

if (esperando) {
	self.image_xscale = .4;
	self.image_yscale = .4;
	self.y = 330;
	self.x = 100 * (array_find_index(global.clientes, function(_cli) {
		return _cli.sprite == self.sprite_index;
	}) + 1);
	self.image_alpha = .5;
	if (array_find_index(global.clientes, function(_cli) {return _cli.sprite == self.sprite_index;}) < 0)
		instance_destroy(self);
}