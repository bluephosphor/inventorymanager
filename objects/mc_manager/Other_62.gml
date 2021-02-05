if (async_load[? "status"] == 0){
	var _item_data = json_parse(async_load[? "result"]);
	
	var i = 0; repeat(array_length(_item_data.results)){
		array_push(catalog.magic_items,_item_data.results[i]);
		i++;
	}
	
	if (variable_struct_exists(_item_data,"next")) {
		api_req = http_get(_item_data.next);
	} else {
		selected_item = catalog.magic_items[0];
		save_string_to_file("magicitems.json",json_stringify(catalog));
	}
	
	delete _item_data;
}