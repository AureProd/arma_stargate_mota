
private _mort = param [0];
private _killer = param [1];

//systemChat format ["%1 killed by %2",name _mort,name _killer];

if(player == _killer) then
{
	titleText
	[
		format
		[
			"%2 %1\n%3",
			name _mort,
			localize "STR_killer_message_1",
			localize "STR_killer_message_2"
		],
		"PLAIN DOWN",
		0.25
	];

	private _gainXP = getNumber(missionConfigFile >> "stargate_xp" >> "ajout_xp" >> "elimination_mode_fps");

	[_gainXP] call mission_fnc_add_xp;
};