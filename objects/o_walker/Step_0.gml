if (!is_undefined(target_path_x) && !is_undefined(target_path_y)) {
	var dist = point_distance(x, y, target_path_x, target_path_y);
	var dt = delta_time / 1000000;
	var dt_move_speed = move_speed * dt;
	//show_debug_message($"{dist}");
	if (dist > dt_move_speed) {
		move_towards_point(target_path_x, target_path_y, dt_move_speed);
	} else {
		x = target_path_x;
		y = target_path_y;

		if(x == final_target_path_x && y == final_target_path_y) {
			decrease_player_life();
		}
		
		if (target_path_index < (array_length(o_grid_manager.path_grid_indexes) - 1)) {
			var temp_path_index = target_path_index + 1;
			set_target_path_index(temp_path_index);
		} else {
			target_path_x = final_target_path_x;
			target_path_y = final_target_path_y;
		}
	} 
}