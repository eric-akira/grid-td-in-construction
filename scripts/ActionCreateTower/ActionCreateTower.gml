function ActionCreateTower(_tower_x, _tower_y) {
	instance_create_layer(_tower_x, _tower_y, "Walkers", o_shooter);
}