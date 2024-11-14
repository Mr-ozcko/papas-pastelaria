 /// @description Insert description here
// You can write your code in this editor
if (place_meeting(self.x, self.y, obj_Panela) || place_meeting(self.x, self.y, obj_Panela2) || place_meeting(self.x, self.y, obj_Panela3) || place_meeting(self.x, self.y, obj_Panela4)){
	dragging = false;
};

if (!dragging && place_meeting(mouse_x, mouse_y, self)){
	dragging = true;
}