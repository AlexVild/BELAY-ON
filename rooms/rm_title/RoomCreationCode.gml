audio_stop_all();

if (!audio_is_playing(bgm_title)) {
	audio_play_sound(bgm_title, 0, false);
}