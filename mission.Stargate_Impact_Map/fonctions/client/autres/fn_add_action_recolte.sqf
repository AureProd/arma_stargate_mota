
recolte_ON = false;

// params -> [id, text, code, condition, param]
private _addActions = 
{
	private _id = param [0];
	private _text = param [1, ""];
	private _code = param [2, {hint localize "STR_erreur";}];
	private _condition = param [3, "true"];
	private _param = param [4, []];

	private _id_shop = _id addAction [_text, _code, _param, 1.5, true, true, "", _condition, 10];
};

{
	switch (_x select 3) do {
		case 0: { 
			[player, (_x select 4), {
				[((_this select 3) select 0)] call mission_fnc_recolte;
			}, format ['(!recolte_ON) and (alive player) and (!([] call mission_fnc_is_tauri)) and ((["level"] call mission_fnc_getBDD) >= %1) and ((position player) inArea "%2")', (_x select 1), (_x select 0)], [_x]] call _addActions;
		};
		case 1: { 
			[player, (_x select 4), {
				[((_this select 3) select 0)] call mission_fnc_recolte;
			}, format ['(!recolte_ON) and (alive player) and ([] call mission_fnc_is_tauri) and ((["level"] call mission_fnc_getBDD) >= %1) and ((position player) inArea "%2")', (_x select 1), (_x select 0)], [_x]] call _addActions;
		};
		case 2: { 
			[player, (_x select 4), {
				[((_this select 3) select 0)] call mission_fnc_recolte;
			}, format ['(!recolte_ON) and (alive player) and ((["level"] call mission_fnc_getBDD) >= %1) and ((position player) inArea "%2")', (_x select 1), (_x select 0)], [_x]] call _addActions;
		};
	};
} forEach (getArray(missionConfigFile >> "stargate" >> "recolte" >> "zones_recolte"));
