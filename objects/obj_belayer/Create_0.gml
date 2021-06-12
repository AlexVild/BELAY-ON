event_inherited();

enum BELAYER_STATES {
	IDLE,
	BELAYING,
	VICTORY,
}

truestate_create_state(BELAYER_STATES.IDLE, state_belayer_idle, "Idle");
truestate_create_state(BELAYER_STATES.BELAYING, state_belayer_belaying, "Belaying");
truestate_create_state(BELAYER_STATES.VICTORY, state_belayer_victory, "Victory");

truestate_set_default(BELAYER_STATES.IDLE);

vspd = 0;
idle_spr = spr_climber;
belaying_spr = spr_climber;
victory_spr = spr_climber;
belay_on = false;
rope_length = 0.0;
belongs_to = noone;