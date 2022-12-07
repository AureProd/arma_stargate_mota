
depeucage_ON = false;

player addAction [(localize "STR_depeucer_add_action"), {
	depeucage_ON = true;

	private _animal = cursorObject;

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

    [] call mission_fnc_chargement;

	private _liste_objets_config = getArray(missionConfigFile >> "stargate_items" >> "items" >> "tableau_items");

	private _invVirtuelPlayer = ["inventaire virtuel"] call mission_fnc_getBDD;

	private _indexViande = -1;
    
	switch (_race) do {
		case "Sheep_random_F": {
			hint localize "STR_depeucer_mouton"; // id 22

			_indexViande = _liste_objets_config findIf {
				(_x select 0) == 22
			};
		};
		case "Goat_random_F": {
			hint localize "STR_depeucer_chevre"; // id 24

			_indexViande = _liste_objets_config findIf {
				(_x select 0) == 24
			};
		};
		case "Hen_random_F": {
			hint localize "STR_depeucer_poule"; // id 26

			_indexViande = _liste_objets_config findIf {
				(_x select 0) == 26
			};
		};
		case "Cock_random_F": {
			hint localize "STR_depeucer_poule"; // id 26

			_indexViande = _liste_objets_config findIf {
				(_x select 0) == 26
			};
		};
		case "Rabbit_F": {
			hint localize "STR_depeucer_lapin"; // id 28

			_indexViande = _liste_objets_config findIf {
				(_x select 0) == 28
			};
		};
	};

	private _viande = _liste_objets_config select _indexViande;

	private _return = [player, (_viande select 5)] call mission_fnc_calcul_poid;

	if (_return) then {
		[_viande select 0] call mission_fnc_add_item;
	} else {
		hint localize "STR_depeucer_erreur_poid";
	};

	sleep 1;

	deleteVehicle _animal;

	depeucage_ON = false;
}, nil, 1.5, true, true, "", "
	((typeOf player) == (typeOf (vehicle player))) and 
 	((cursorObject distance _this) < 5) and 
	(cursorObject in ((missionNamespace getVariable 'animaux_morts') select 0)) and 
	(([30, 1] in ((missionNamespace getVariable nomVarPlayerUID) select 8)) or ([31, 1] in ((missionNamespace getVariable nomVarPlayerUID) select 8))) and 
	((damage cursorObject) > 0.7) and 
	(alive _this) and 
	(!depeucage_ON)
"];