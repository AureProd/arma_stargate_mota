
private _fn_addActions = 
{
	private _id = param [0];
	private _image = param [1];
	private _code = param [2, {hint "test";}];
	private _condition = param [3, "true"];
	private _param = param [4, []];

	private _id_shop = _id addAction ["", _code, _param, 1.5, true, true, "", _condition, 5];
	_id setUserActionText [_id_shop, "", "", format ["<img size='10' image='%1'/>", _image]];
};

// quete id = 1

private _isDebut = param [0];
private _isDecoReco = param [1, false];

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

private _config_quetes = nil; 
private _tab_quete = nil;

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
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_tauri_archeologue");
		};
		case 2: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_tauri_scientifique");
		};
		case 3: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_tauri_soldat");
		};
	};
} 
else 
{
	switch (_playerBdd select 0) do 
	{
		case 1: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_goauld_archeologue");
		};
		case 2: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_goauld_scientifique");
		};
		case 3: 
		{ 
			_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_goauld_soldat");
		};
	};
};

{
	if ((_x select 0) == 1) then 
	{
		_tab_quete = _x;
	};
} forEach _config_quetes;

private _tab_quetes_deja_faite = _playerBdd select 10;
private _tab_quetes_dispo = _playerBdd select 11;
private _tab_quetes_active = _playerBdd select 13;

if (_isDecoReco) then 
{
	private _id_pnj_office_tourisme = getText (missionConfigFile >> "stargate_quetes" >> "quetes_en_plus" >> "quete_bienvenue" >> "pnj_office_tourisme");

	queteBienvenue = true;

	[
		(call compile _id_pnj_office_tourisme), 
		"pictures\addActions\interaction_parler.paa", 
		{
			hint (getText (missionConfigFile >> "stargate_quetes" >> "quetes_en_plus" >> "quete_bienvenue" >> "message_pnj_office_tourisme")); 
			queteBienvenue = false;
			player linkItem "ItemMap";
			[false] call mission_fnc_quete_bienvenue;
		}, 
		"(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (1 in ((missionNamespace getVariable nomVarPlayerUID) select 13)) and (alive player) and (!(isNil 'queteBienvenue')) and queteBienvenue"
	] call _fn_addActions;
} 
else 
{
	if (_isDebut) then 
	{
		_tab_quetes_dispo deleteAt ((_playerBdd select 11) find (_tab_quete select 0));
		_tab_quetes_active pushBack (_tab_quete select 0);

		private _id_pnj_office_tourisme = getText (missionConfigFile >> "stargate_quetes" >> "quetes_en_plus" >> "quete_bienvenue" >> "pnj_office_tourisme");

		queteBienvenue = true;

		_tab_quetes_dispo pushBack 2;

		[
			(call compile _id_pnj_office_tourisme), 
			"pictures\addActions\interaction_parler.paa", 
			{
				hint (getText (missionConfigFile >> "stargate_quetes" >> "quetes_en_plus" >> "quete_bienvenue" >> "message_pnj_office_tourisme")); 
				queteBienvenue = false;
				player linkItem "ItemMap";
				[false] call mission_fnc_quete_bienvenue;
			}, 
			"(((missionNamespace getVariable nomVarPlayerUID) select 1) == 2) and (1 in ((missionNamespace getVariable nomVarPlayerUID) select 13)) and (alive player) and (!(isNil 'queteBienvenue')) and queteBienvenue"
		] call _fn_addActions;
	}
	else 
	{
		[(_tab_quete select 4)] call mission_fnc_add_xp;

		_tab_quetes_active deleteAt ((_playerBdd select 13) find (_tab_quete select 0));
		_tab_quetes_deja_faite pushBack (_tab_quete select 0);
	};
};

[[10, _tab_quetes_deja_faite], [11, _tab_quetes_dispo], [13, _tab_quetes_active]] call mission_fnc_modif_var_bdd;
