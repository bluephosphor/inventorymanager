in_enter = (keyboard_check_pressed(vk_enter));
in_left  = (keyboard_check_pressed(vk_left));
in_right = (keyboard_check_pressed(vk_right));

switch(current_page){
	case "Inventory":	
		if (in_enter) {
			target_list[array_length(target_list)] = keyboard_string;
			keyboard_string = "";
		}

		cursor_timer--;
		if (cursor_timer <= 0){
			draw_cursor = !draw_cursor;
			cursor_timer = 30;
		}
		break;
	
	case "Catalog":
		var _hinput = in_right - in_left;
		if (_hinput != 0){
			catalog_index = clamp(catalog_index + _hinput,0,array_length(catalog.magic_items)-1);
			selected_item = catalog.magic_items[catalog_index];
		}
		break;
}