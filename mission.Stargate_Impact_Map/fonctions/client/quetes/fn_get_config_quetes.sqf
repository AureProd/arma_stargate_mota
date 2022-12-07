
// nom fichier : mission_fnc_get_config_quetes

private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _config_quetes = nil;

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

_config_quetes;