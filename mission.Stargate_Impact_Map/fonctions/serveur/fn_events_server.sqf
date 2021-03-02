
addMissionEventHandler ["HandleDisconnect", {
	params [ "_unit",  "_id",  "_uid",  "_name" ];

	[_uid] call mission_fnc_quitter_team;	
}];