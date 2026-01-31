seconds_between_spawn = 0.6;
time_until_next_spawn = 0;



function instantiate_new_walker() {
	new_walker = instance_create_layer(x, y, "Walkers", o_walker);
	new_walker.set_target_path_index(0);
	var walker_move_speed = ActionWeightedChoose([160, 200],[90,10]);
	new_walker.move_speed = walker_move_speed;
}