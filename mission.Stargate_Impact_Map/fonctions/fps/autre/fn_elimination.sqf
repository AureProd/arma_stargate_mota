
private _mort = param [0];
private _killer = param [1];

//systemChat format ["%1 killed by %2",name _mort,name _killer];

if(player == _killer) then
{
	titleText
	[
		format
		[
			"Vous avez tué %1\n50 XP gagnés",
			name _mort
		],
		"PLAIN DOWN",
		0.25
	];

	[50] call mission_fnc_add_xp;
};