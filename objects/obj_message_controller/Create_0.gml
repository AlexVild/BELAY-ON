messages = ds_list_create();

phone_instance = noone;

possible_senders = [
	"\nBROTHER",
	"DAD",
	"\nWEATHER",
	"CHEF D",
	"\nMIKE S.",
	"\nPZZA PLNT",
	"\nUNKNOWN",
	"JERK",
	"VINNY",
	"MARK",
]

possible_messages = ds_map_create();
possible_messages[? possible_senders[0]] = "DADDY'S\nCOMIN!!!";
possible_messages[? possible_senders[1]] = "HEY, HEADIN\nHOME NOW.";
possible_messages[? possible_senders[2]] = "HEY, HEAVY\nWINDS NOW";
possible_messages[? possible_senders[3]] = "DANNY'S\nCOOKIN'!!!";
possible_messages[? possible_senders[4]] = "YOU KNOW,\nTHAT REMINDS\nME OF\nSTAR TREK...";
possible_messages[? possible_senders[5]] = "THAT DOES\nIT. YOU'RE\nFIRED!";
possible_messages[? possible_senders[6]] = "XOXO\n-GRANDMA";
possible_messages[? possible_senders[7]] = "YOU KNOW\nTHE PS5 IS\nOUT,\nRIGHT?";
possible_messages[? possible_senders[8]] = "SPEEEEN!";
possible_messages[? possible_senders[9]] = "THIS IS\nREMINISCENT\nOF SUPER\nMETROID...";

message_seconds = 7;
message_interval = 60 * message_seconds;
message_variance = 60 * irandom_range(-1, message_seconds);

last_message_indices = ds_list_create();

dad_coming_up_time = 300;

total_messages = 0;

message_difficulty_num = 3;
message_difficulty = 1;

alarm[0] = message_interval + message_variance;