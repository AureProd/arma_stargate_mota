
private _quete_id = param[0, nil];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, planete visite, quetes actives]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;
private _tab_quetes_active = _playerBdd select 13;

private _config_quetes = nil; 
private _tab_quetes = [];

/*	
	classes :
	1 = archeoloque
	2 = scientifique
	3 = soldat 
	races :
	1 = goauld
	2 = tauri	
*/
if ((_playerBdd select 1) == 2) then 
{
	switch (_playerBdd select 0) do 
	{
		case 1: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "archeologue_tauri");
		};
		case 2: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "scientifique_tauri");
		};
		case 3: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "soldat_tauri");
		};
	};
} 
else 
{
	switch (_playerBdd select 0) do 
	{
		case 1: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "archeologue_goauld");
		};
		case 2: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "scientifique_goauld");
		};
		case 3: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "soldat_goauld");
		};
	};
};

{
	if (isNil "_quete_id") then {
		if ((_x select 0) in _tab_quetes_active) then 
		{
			_tab_quetes pushBack _x;
		};
	} else {
		if ((_x select 0) == _quete_id) then 
		{
			_tab_quetes pushBack _x;
		};
	};
} forEach _config_quetes;

{
	switch (_x select 6) do {
		case 1: { // quête type 1
			[_x, 0] call mission_fnc_quete_type_1;	
		};
		case 2: {}; // quête type 2
		case 3: { // quête type 3
			[_x, 0] call mission_fnc_quete_type_3;	
		};
		case 4: {}; // quête type 4
	};
} forEach _tab_quetes;

