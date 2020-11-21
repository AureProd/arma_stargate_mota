
// nom fichier : mission_fnc_quete_type_1

private _id_quete = param [0];
private _version_code = param [1];

private _config_quete = [] call mission_fnc_get_config_quetes;

private _index_quete = _config_quete findIf {
	(_x select 0) == _id_quete
};

private _quete = _config_quete select _index_quete;

switch (_version_code) do {
	case 1: { 
		[_id_quete] call mission_fnc_remove_quetes_dispo;
		[_id_quete] call mission_fnc_add_quetes_actives;
	};
	case 2: { 
		hint format ["%1", (_quete select 9)];
		[(_quete select 6)] call mission_fnc_add_xp;

		[_id_quete] call mission_fnc_remove_quetes_actives;
		[_id_quete] call mission_fnc_add_quetes_faites;
		[(_quete select 11)] call mission_fnc_add_quetes_dispo;
	};
};