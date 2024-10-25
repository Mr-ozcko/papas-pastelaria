var newIng = instance_create_layer(mouse_x, mouse_y, "Ingredients", obj);
newIng.dragging = true;
//newIng.depth = -1;

var newArea = instance_create_layer(newIng.areaPosX, newIng.areaPosY, "OverAll", placementArea);
placementArea.sprite_index = newIng.sprite_index;
//placementArea.depth = -1;
placementArea.image_blend = c_green;
placementArea.image_alpha = .35;	
placementArea.image_xscale = 1;
placementArea.image_yscale = 1;
