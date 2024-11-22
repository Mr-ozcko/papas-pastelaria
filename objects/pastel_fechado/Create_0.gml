cortado = false;
ingredientes = [];
dragging = false;

if (room == rm_acompanhamentos) {
	dragging = true;
	self.sprite_index = global.pastel_atual_montagem.sprite;
	self.ingredientes = global.pastel_atual_montagem.ingredientes;
	self.cortado = true;
}
