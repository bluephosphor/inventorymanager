draw_set_font(font_main);

switch (current_page) {
    case "Inventory":
        var _str = "input: " + keyboard_string + _cursor + "\n";
			_str += "-------------------------- \n";

		var i = 0; repeat(array_length(target_list)){
			_str += target_list[i] + "\n";
			i++;
		}

		draw_text(8,8,_str);
        break;
    case "Catalog":
        if (!is_struct(selected_item)) break;
		
		var _str  = "Name: " + selected_item.name + "\n";
			_str += "Type: " + selected_item.type + "\n";
			_str += "Rarity: " + selected_item.rarity + "\n";
			_str += selected_item.requires_attunement + "\n\n";
			_str += selected_item.desc + "\n";
			draw_text_ext(8,8,_str,16,room_width - 16);
        break;
}

