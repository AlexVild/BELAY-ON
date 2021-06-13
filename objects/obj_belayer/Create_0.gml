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
slack = 0;
slack_status = get_slack_status(slack);
slack_increment_good = 15;
slack_increment_bad = 10;

belongs_to = noone;
climber = noone;
rope_meter = instance_create_layer(rope_meter_x, rope_meter_y, "Game", obj_rope_meter);
with (rope_meter) {
	belayer = other;
}