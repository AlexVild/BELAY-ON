/// @func draw_self_facing
/// @desc draws an image, with a flipped xscale if face_dir is -1
function draw_self_facing(){
	draw_sprite_ext(sprite_index, image_index, x, y, face_dir, 1.0, 0, c_white, 1.0);
}