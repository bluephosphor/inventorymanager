globalvar data, catalog;

data = {
	inventory: [],
	money: {
		bronze: 0,
		silver: 0,
		gold: 0
	}
}

catalog = {
	magic_items: [],
	spells: [],
	weapons: []
}

//show_debug_message(filename_path("magicitems.json"));

function save_string_to_file(_filename, _string) {

	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, _filename);
	buffer_delete(_buffer);
}


function load_string_from_file(_filename) {

	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);

	return _string;
}