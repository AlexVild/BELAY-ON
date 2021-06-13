audio_stop_all();

if (!audio_is_playing(bgm_wind)) {
	audio_play_sound(bgm_wind, 0, true);
}