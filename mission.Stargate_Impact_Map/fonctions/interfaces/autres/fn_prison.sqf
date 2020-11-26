
private _timer = {
	private _time = param [0];

	for "_i" from 0 to _time do {
		hint format [localize "STR_admin_timer_prison", (_time - _i)];

		sleep 1;

		if (!([3] call mission_fnc_has_licence)) exitWith {}
	};
};

if ([3] call mission_fnc_has_licence) then {
	private _time = getNumber(missionConfigFile >> "stargate" >> "prisons" >> "temp_prison");

	if ([] call mission_fnc_is_tauri) then {
		player setPos(getArray(missionConfigFile >> "stargate" >> "prisons" >> "prison_tauri"));

		[_time] call _timer;

		[3] call mission_fnc_remove_licence;

		hint format [localize "STR_admin_fin_prison", (name player)];
		player setPos(getArray(missionConfigFile >> "stargate" >> "coordonnees_spawn" >> "spawn_tauri"));
	} else {
		player setPos(getArray(missionConfigFile >> "stargate" >> "prisons" >> "prison_goauld"));

		[_time] call _timer;

		[3] call mission_fnc_remove_licence;

		hint format [localize "STR_admin_fin_prison", (name player)];
		player setPos(getArray(missionConfigFile >> "stargate" >> "coordonnees_spawn" >> "spawn_goauld"));
	};
};