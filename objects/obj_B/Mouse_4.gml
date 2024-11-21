 /// @description Insert description here
// You can write your code in this editor

dragging = true
if(!dragging && place_meeting(self.x, self.y, obj_Panela) || place_meeting(self.x, self.y, obj_Panela2) || place_meeting(self.x, self.y, obj_Panela3) || place_meeting(self.x, self.y, obj_Panela4)){
	dragging = true;
	draw_text(100, 100, "aaaaaaa");
}