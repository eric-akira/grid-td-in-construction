var gold_text = $"Gold: {global.gold}";

//measuring text
var w = string_width(gold_text);
var h = string_height(gold_text);

//draw white background
draw_set_color(c_white);
draw_rectangle(gold_text_x - gold_text_padding, gold_text_y- gold_text_padding, gold_text_x + w + gold_text_padding, gold_text_y + h + gold_text_padding, false);

//draw grey border
draw_set_color(c_gray);
draw_rectangle(gold_text_x - gold_text_padding, gold_text_y- gold_text_padding, gold_text_x + w + gold_text_padding, gold_text_y + h + gold_text_padding, true);

//draw text
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_text(gold_text_x, gold_text_y, gold_text);

ResetDrawSettings();