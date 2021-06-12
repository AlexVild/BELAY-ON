function draw_self_invincible() {
	var _alpha = 1.0;
	if (invincible){
		_alpha = 0.5;
	}

	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, -1, _alpha);


}
