pages = ["Inventory", "Catalog" ,"GP"];
page = 0;
current_page = pages[1];

target_list = data.inventory;
cursor_timer = 30;
draw_cursor = false;
keyboard_string = "";

api_req = http_get("https://api.open5e.com/magicitems/?format=json");

catalog_index = 0;
selected_item = -1;