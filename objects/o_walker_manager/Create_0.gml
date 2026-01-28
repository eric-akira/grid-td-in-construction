function instantiate_new_walker() {
	new_walker = instance_create_layer(x, y, "Walkers", o_walker);
	new_walker.set_target_path_index(0);
}

instantiate_new_walker();