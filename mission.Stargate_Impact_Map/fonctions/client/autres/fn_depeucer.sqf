
depeucage_ON = false;

player addAction ["Dépecer l'animal ...", {
	depeucage_ON = true;

	private _animal = cursorObject;

    [] call mission_fnc_chargement;

    // CODE AU DEPEUCAGE

	private _animalsMorts = (missionNamespace getVariable 'animaux_morts');
	private _listeAnimaux = (_animalsMorts select 0);
	private _listeRaces = (_animalsMorts select 1);
	private _indexAnimal = (_listeAnimaux find _animal);
	private _race = _listeRaces select _indexAnimal;
	_listeAnimaux deleteAt _indexAnimal;
	_listeRaces deleteAt _indexAnimal;

	_animalsMorts set [0, _listeAnimaux];
	_animalsMorts set [1, _listeRaces];
	missionNamespace setVariable ["animaux_morts", _animalsMorts, true];

    deleteVehicle _animal;

	private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

	private _invVirtuelPlayer = ["inventaire virtuel"] call mission_fnc_getBDD;
    
	if (_race == "Sheep_random_F") then {
		hint "Voilà votre viande de mouton !!!"; // id 22

		private _indexViande = _liste_objets_config findIf {
			(_x select 0) == 22
		};

		private _viande = _liste_objets_config select _indexViande;

		private _return = [player, (_viande select 5)] call mission_fnc_calcul_poid;

		if (_return) then {
			[_viande select 0] call mission_fnc_add_item;
		} else {
			hint "Votre inventaire est plein, vous ne pouvez pas prendre cette viande";
		};
	} else {
		hint "Voilà votre viande de chevre !!!"; // id 24

		private _indexViande = _liste_objets_config findIf {
			(_x select 0) == 24
		};

		private _viande = _liste_objets_config select _indexViande;

		private _return = [player, (_viande select 5)] call mission_fnc_calcul_poid;

		if (_return) then 
		{
			[_viande select 0] call mission_fnc_add_item;
		} else {
			hint "Votre inventaire est plein, vous ne pouvez pas prendre cette viande";
		};
	};

	sleep 1;

	depeucage_ON = false;
}, nil, 1.5, true, true, "", "
 	((cursorObject distance _this) < 5) && 
	(cursorObject in ((missionNamespace getVariable 'animaux_morts') select 0)) && 
	(([30, 1] in ((missionNamespace getVariable nomVarPlayerUID) select 8)) or ([31, 1] in ((missionNamespace getVariable nomVarPlayerUID) select 8))) && 
	((damage cursorObject) > 0.7) && 
	(alive _this) && 
	(!depeucage_ON)
"];