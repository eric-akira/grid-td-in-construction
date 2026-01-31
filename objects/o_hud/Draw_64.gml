var gold_text = $"Gold: {global.gold}";
var lifes_text = $"Lifes: {global.lifes}";

ActionDrawTextWithBackgroundAndPadding(gold_text, gold_text_x, gold_text_y, text_padding);
ActionDrawTextWithBackgroundAndPadding(lifes_text, lifes_text_x, lifes_text_y, text_padding);

ResetDrawSettings();