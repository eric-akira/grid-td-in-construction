grid = ds_grid_create(10,10);

path_grid_indexes = [
	[2,0],
	[2,1],
	[2,2],
	[1,2],
	[0,2],
	[0,3],
	[0,4],
	[1,4],
	[2,4],
	[3,4],
	[4,4],
	[4,3],
	[4,2],
	[4,1],
	[5,1],
	[6,1],
	[7,1],
	[7,2],
	[7,3],
	[7,4],
	[7,5],
	[7,6],
	[6,6],
	[5,6],
	[4,6],
	[4,7],
	[3,7],
	[3,8],
	[2,8],
	[2,9]
];

for (var row = 0; row < 10; row++) {
	for (var col = 0; col < 10; col++) {
		var new_floor = instance_create_layer(0, 0, "Instances", o_floor);
		new_floor.initiate(row, col);
		ds_grid_set(grid, row, col, new_floor);
	}
}

function set_path(_element, _index) {
	//show_debug_message($"{_element[0]},{_element[1]} --- {_index}");
	var target_floor = ds_grid_get(grid, _element[0], _element[1]);
	target_floor.set_floor_type(FloorType.PATH);
}

array_foreach(path_grid_indexes, set_path);