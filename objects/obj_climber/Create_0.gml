event_inherited();

enum CLIMBER_STATES {
	GROUND_IDLE,
	WALL_IDLE,
	WALL_CLIMBING,
	WALL_DONE,
	WALL_FALLING,
	FALLEN,
}

truestate_create_state(CLIMBER_STATES.GROUND_IDLE, state_climber_ground_idle, "Idle");
truestate_create_state(CLIMBER_STATES.WALL_IDLE, state_climber_wall_idle, "Climbing");
truestate_create_state(CLIMBER_STATES.WALL_DONE, state_climber_wall_done, "Done");
truestate_create_state(CLIMBER_STATES.WALL_FALLING, state_climber_wall_falling, "Falling");
truestate_create_state(CLIMBER_STATES.FALLEN, state_climber_fallen, "Fallen");

truestate_set_default(CLIMBER_STATES.GROUND_IDLE);

normal_fall_distance = 25;
vspd = 0;
ground_idle_spr = spr_climber_ground_idle;
wall_idle_spr = spr_climber_climbing;
wall_idle_spr_nervous = spr_climber_climbing;
wall_idle_spr_short = spr_climber_short_rope;
wall_climbing_spr = spr_climber_climbing;
wall_done_spr = spr_climber_victory;
wall_falling_spr = spr_climber_falling;
fallen_spr = spr_climber_hanging;
is_climbing = false;
is_finished = false;
falling_point_x = x;
falling_point_y = y;

start_y = y;
target_point_y = y;
climbing_spd = 1;
swing_spd = 0.15;
swing_distance = 5;

has_fallen = false;
stamina = 100;
belongs_to = noone;
base_stamina_degrade_rate = 0.015;
grip_percent = 0.0;
belayer = noone;
slack_status = SLACK_STATUS.GOOD;