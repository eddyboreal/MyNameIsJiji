if (obj_view1.startGame) {
	DrawText(text_current);
}
if (timer_text > 10000000) {
	text_current = text[1];
	DrawText(text_current);
}
