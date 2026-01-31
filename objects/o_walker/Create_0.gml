target_path_x = undefined;
target_path_y = undefined;
move_speed = 128;
target_path_index = undefined;

final_target_path_x = 160;
final_target_path_y = 672;

function set_target_path_index(_target_path_index) {
	target_path_index = _target_path_index;
	var target_path = ds_grid_get(o_grid_manager.grid, o_grid_manager.path_grid_indexes[target_path_index][0], o_grid_manager.path_grid_indexes[target_path_index][1]);
	target_path_x = target_path.x;
	target_path_y = target_path.y;
}

function take_a_bullet() {
	gold_giving_component.give_gold();
	kill_myself();
}

function decrease_player_life() {
	global.lifes -= 1;
	kill_myself();
}

function kill_myself() {
	instance_destroy(self);
}

gold_giving_component = new GoldGivingComponent(1);