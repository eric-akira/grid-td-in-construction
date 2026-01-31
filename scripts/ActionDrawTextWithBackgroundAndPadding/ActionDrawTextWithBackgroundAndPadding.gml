function ActionDrawTextWithBackgroundAndPadding(_text, _x, _y, _padding){
	//measuring text
	var w = string_width(_text);
	var h = string_height(_text);

	//draw white background
	draw_set_color(c_white);
	draw_rectangle(_x - _padding, _y - _padding, _x + w + _padding, _y + h + _padding, false);

	//draw grey border
	draw_set_color(c_gray);
	draw_rectangle(_x - _padding, _y - _padding, _x + w + _padding, _y + h + _padding, true);

	//draw text
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_text(_x, _y, _text);
}