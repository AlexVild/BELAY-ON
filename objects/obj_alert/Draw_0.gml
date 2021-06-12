draw_set_font(fnt_game);
draw_set_halign(fa_center);
draw_set_alpha(alpha);

if (current_color mod 2 == 0) {
	draw_set_color(c1);
} else {
	draw_set_color(c2);
}

draw_text(x, y, text);

draw_set_alpha(1.0);
draw_set_halign(-1);
draw_set_font(-1);
draw_set_color(-1);

alpha -= alpha_loss;