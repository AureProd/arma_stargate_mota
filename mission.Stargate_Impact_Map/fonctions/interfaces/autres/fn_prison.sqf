
private _param = param [0, false];

private _timer = {
	private _time = param [0];
	private _bool = true;

	private _prisonMarker = "";

	if ([] call mission_fnc_is_tauri) then {
		_prisonMarker = getText(missionConfigFile >> "stargate" >> "prisons" >> "prison_tauri_id");
	} else {
		_prisonMarker = getText(missionConfigFile >> "stargate" >> "prisons" >> "prison_goauld_id");
	};

	for "_i" from 0 to _time do {
		hint format [localize "STR_admin_timer_prison", (_time - _i)];

		sleep 1;

		if (!([3] call mission_fnc_has_licence) or !(player inArea _prisonMarker)) exitWith {
			_bool = false;
		}
	};

	_bool;
};

sleep 1;

if (_param) then {
	if ([3] call mission_fnc_has_licence) then {
		private _time = getNumber(missionConfigFile >> "stargate" >> "prisons" >> "temp_prison");

		if ([] call mission_fnc_is_tauri) then {
			player setPos(getArray(missionConfigFile >> "stargate" >> "prisons" >> "prison_tauri"));

			if ([_time] call _timer) then {
				[3] call mission_fnc_remove_licence;
			};

			hint format [localize "STR_admin_fin_prison", (name player)];
			player setPos(getArray(missionConfigFile >> "stargate" >> "coordonnees_spawn" >> "spawn_tauri"));
		} else {
			player setPos(getArray(missionConfigFile >> "stargate" >> "prisons" >> "prison_goauld"));

			if ([_time] call _timer) then {
				[3] call mission_fnc_remove_licence;
			};

			hint format [localize "STR_admin_fin_prison", (name player)];
			player setPos(getArray(missionConfigFile >> "stargate" >> "coordonnees_spawn" >> "spawn_goauld"));
		};
	};
} else {
	private _prisonMarker = "";

	if ([] call mission_fnc_is_tauri) then {
		_prisonMarker = getText(missionConfigFile >> "stargate" >> "prisons" >> "prison_tauri_id");
	} else {
		_prisonMarker = getText(missionConfigFile >> "stargate" >> "prisons" >> "prison_goauld_id");
	};

	if (([3] call mission_fnc_has_licence) and (player inArea _prisonMarker)) then {
		private _time = getNumber(missionConfigFile >> "stargate" >> "prisons" >> "temp_prison");

		if ([] call mission_fnc_is_tauri) then {
			player setPos(getArray(missionConfigFile >> "stargate" >> "prisons" >> "prison_tauri"));

			if ([_time] call _timer) then {
				[3] call mission_fnc_remove_licence;
			};

			hint format [localize "STR_admin_fin_prison", (name player)];
			player setPos(getArray(missionConfigFile >> "stargate" >> "coordonnees_spawn" >> "spawn_tauri"));
		} else {
			player setPos(getArray(missionConfigFile >> "stargate" >> "prisons" >> "prison_goauld"));

			if ([_time] call _timer) then {
				[3] call mission_fnc_remove_licence;
			};

			hint format [localize "STR_admin_fin_prison", (name player)];
			player setPos(getArray(missionConfigFile >> "stargate" >> "coordonnees_spawn" >> "spawn_goauld"));
		};
	};
};

