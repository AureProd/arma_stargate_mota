
peche_ON = false;

returnIfInPecheZone = {
	private _pos = param [0];
	private _return = false;

	{
		if (_pos inArea _x) then {
			_return = true;
		};
	} forEach (getArray(missionConfigFile >> "stargate" >> "peche" >> "zones"));

	_return;
};

player addAction ["<t color='#ff0000'>Lancer le filet ...</t>", {
	peche_ON = true;

	private _poissons = [];
	
	hint "Vous avez lancé votre filet";

	[false] call mission_fnc_chargement;

	// { id / level / nom / lien image / type objets / poid / is militaire (1 = militaire / 0 = pas militaire) / prix / is tauri }
	private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

	private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

	{
		if ((_x select 4) == 10) then {
			if (!(((_x select 0) == 32) && ((_playerBdd select 1) == 2))) then { // is tauri
				_poissons pushBack _x;
			};
		};
	} forEach _liste_objets_config;
    
	private _poisson = (selectRandom _poissons);

	private _invVirtuelPlayer = ["inventaire virtuel"] call mission_fnc_getBDD;

	private _return = [player, (_poisson select 5)] call mission_fnc_calcul_poid;

	if (_return) then 
	{
		[(_poisson select 0)] call mission_fnc_add_item;
	} else {
		hint "Votre inventaire est plein, vous ne pouvez pas prendre ce poisson";
	};

	hint format ["Vous avez pecher : %1 !!!", (_poisson select 2)];

	sleep 3;

	peche_ON = false;
}, nil, 6, true, true, "", "
	(surfaceIsWater (position _this)) && 
	([position _this] call returnIfInPecheZone) && 
	((typeOf (vehicle _this)) == 'C_Rubberboat') && 
	(alive _this) &&
	(!peche_ON)
"];