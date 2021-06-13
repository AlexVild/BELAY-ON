event_inherited();

enum CLIMBER_STATES {
	GROUND_IDLE,
	WALL_IDLE,
	WALL_CLIMBING,
	WALL_DONE,
	WALL_FALLING,
}

truestate_create_state(CLIMBER_STATES.GROUND_IDLE, state_climber_ground_idle, "Idle");
truestate_create_state(CLIMBER_STATES.WALL_IDLE, state_climber_wall_idle, "Wall Idle");
truestate_create_state(CLIMBER_STATES.WALL_CLIMBING, state_climber_wall_climbing, "Climbing");
truestate_create_state(CLIMBER_STATES.WALL_DONE, state_climber_wall_done, "Done");
truestate_create_state(CLIMBER_STATES.WALL_FALLING, state_climber_wall_falling, "Falling");

truestate_set_default(CLIMBER_STATES.GROUND_IDLE);

vspd = 0;
ground_idle_spr = spr_climber_ground_idle;
wall_idle_spr = spr_climber_climbing;
wall_idle_spr_nervous = spr_climber_climbing;
wall_idle_spr_short = spr_climber_short_rope;
wall_climbing_spr = spr_climber_climbing;
wall_done_spr = spr_climber_victory;
wall_falling_spr = spr_climber_falling;
is_climbing = false;
is_finished = false;
has_fallen = false;
stamina = 100;
belongs_to = noone;
base_stamina_degrade_rate = 0.01;
grip_percent = 0.0;
belayer = noone;
slack_status = SLACK_STATUS.GOOD;