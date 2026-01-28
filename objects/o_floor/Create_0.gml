enum FloorType {
	BLANK,
	PATH,
}

image_speed = 0;

floor_type = FloorType.BLANK;
has_tower = false;

grid_index_x = 0;
grid_index_y = 0;

function initiate(_grid_index_x, _grid_index_y) {
	grid_index_x = _grid_index_x;
	grid_index_y = _grid_index_y;
	x = (grid_index_x * 64) + 32;
	y = (grid_index_y * 64) + 32;
}

function set_floor_type(_floor_type) {
	floor_type = _floor_type;
	
	switch(floor_type) {
		case FloorType.BLANK:
			image_index = 0;
			break;
		case FloorType.PATH:
			image_index = 1;
			break;
		default:
			//this should not occur but...
			image_index = 2;
			break;
	}
}