
addMissionEventHandler ["Draw3D", 
{
	private _fn_add_icon =
	{
		private _id = param [0];
		private _image_bis = param [1];

		private _pos = getPos _id;
		private _posSaoul = getPosASL _id;
		private _posBis = [_pos select 0, _pos select 1, (_pos select 2) + 2.2];
		private _posTers = [_posSaoul select 0, _posSaoul select 1, (_posSaoul select 2) + 2.2];

		private _distance = ((eyePos player) distance2D _pos);

		private _image = (getMissionPath _image_bis);

		private _visibilite = [player, "VIEW", (vehicle player)] checkVisibility [(eyePos player), _posTers];

		//drawIcon3D [_image, [1,1,1,1], _posBis, (25 / _distance), (25 / _distance), 1, "", 1, 1, "PuristaMedium", "right", false];		

		if ((_visibilite > 0.7) and (_distance < 1500)) then 
		{
			drawIcon3D [_image, [1,1,1,1], _posBis, (25 / _distance), (25 / _distance), 1, "", 1, 1, "PuristaMedium", "right", false];	
		};
	};

	// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives]
	private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

	private _config_quetes = nil; 
	private _config_quetes_bis = nil;

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
				_config_quetes_bis = getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_tauri_archeologue");
			};
			case 2: 
			{ 
				_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_tauri_scientifique");
				_config_quetes_bis = getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_tauri_scientifique");
			};
			case 3: 
			{ 
				_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_tauri_soldat");
				_config_quetes_bis = getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_tauri_soldat");
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
				_config_quetes_bis = getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_goauld_archeologue");
			};
			case 2: 
			{ 
				_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_goauld_scientifique");
				_config_quetes_bis = getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_goauld_scientifique");
			};
			case 3: 
			{ 
				_config_quetes = getArray(missionConfigFile >> "stargate_quetes" >> "quetes" >> "tableau_quetes_goauld_soldat");
				_config_quetes_bis = getArray(missionConfigFile >> "stargate_quetes" >> "id_pnj" >> "tableau_id_pnj_goauld_soldat");
			};
		};
	};

	// { id / nom / description / objectif / points XP gagnés / PNG / is secondaire (0 si principale / 1 si secondaire) / fonction }
	{	
		private _pnj_quete = _x;

		private _nb_quetes_primaires = 0;
		private _nb_quetes_secondaires = 0;
		private _nb_quetes_non_dispo = 0;

		{
			if ((_x select 0) in (_pnj_quete select 1)) then 
			{
				if ((_x select 0) in (_playerBdd select 11)) then 
				{
					if ((_x select 5) == 0) then 
					{
						_nb_quetes_primaires = _nb_quetes_primaires + 1;
					} 
					else 
					{
						_nb_quetes_secondaires = _nb_quetes_secondaires + 1;
					};
				}
				else
				{
					if ((!((_x select 0) in (_playerBdd select 10))) and (!((_x select 0) in (_playerBdd select 13)))) then
					{
						_nb_quetes_non_dispo = _nb_quetes_non_dispo + 1;
					};
				};
			};
		} forEach _config_quetes;

		if (_nb_quetes_primaires >= 1) then 
		{
			[(call compile (_pnj_quete select 0)), "pictures\icon_quete\icon_quete_exclamation_jaune.paa"] call _fn_add_icon;
		} 
		else 
		{
			if (_nb_quetes_secondaires >= 1) then 
			{
				[(call compile (_pnj_quete select 0)), "pictures\icon_quete\icon_quete_exclamation_violet.paa"] call _fn_add_icon;
			} 
			else 
			{
				if (_nb_quetes_non_dispo >= 1) then 
				{
					[(call compile (_pnj_quete select 0)), "pictures\icon_quete\icon_quete_exclamation_bleu.paa"] call _fn_add_icon;
				};
			};
		};


	} forEach _config_quetes_bis;
}];
