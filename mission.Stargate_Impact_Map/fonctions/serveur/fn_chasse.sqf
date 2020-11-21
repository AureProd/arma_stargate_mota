
private _animalList = ["Sheep_random_F", "Goat_random_F"]; //,"Hen_random_F","Cock_random_F"];
//private _maxAnimals = 10;

// variable "animaux_morts" --> [liste_animaux_mort, race]
missionNamespace setVariable ["animaux_morts", [[], []], true];

{
    // variable "nom_zone" --> [animaux_vivants, races, pos, radius]
    missionNamespace setVariable [(_x select 0), [[], [], (getMarkerPos (_x select 0)), ((getMarkerSize (_x select 0)) select 0)], true];

    private _maxAnimals = _x select 1;
    private _zone = _x select 0;

    //diag_log "rien";

    [_maxAnimals, _zone, _animalList] spawn {
        private _maxAnimals = param [0];
        private _zone = param [1];
        private _animalList = param [2];

        //diag_log format ["%1 rien", _zone];

        while { true } do {
            waitUntil { (count ((missionNamespace getVariable _zone) select 0)) <= _maxAnimals }; 

            //diag_log "initialisation";

            while { (count ((missionNamespace getVariable _zone) select 0)) <= _maxAnimals} do {
                //diag_log format ["%1 : %2", _zone, (count ((missionNamespace getVariable _zone) select 0))];

                private _animalClass = selectRandom _animalList;
                private _animal = createAgent [_animalClass, ((missionNamespace getVariable _zone) select 2), [], ((missionNamespace getVariable _zone) select 3), "NONE"];

                private _animals = (missionNamespace getVariable _zone);
                private _listeAnimaux = (_animals select 0);
                private _listeRaces = (_animals select 1);
                _listeAnimaux pushBack _animal;
                _listeRaces pushBack _animalClass;

                _animals set [0, _listeAnimaux];
                _animals set [1, _listeRaces];
                missionNamespace setVariable [_zone, _animals, true];

                _animal setVariable ["zone", _zone, true];

                sleep 0.1;

                _animal addEventHandler ["Killed", {
                    params ["_animal", "_killer", "_instigator", "_useEffects"];

                    private _zone = (_animal getVariable "zone");
                    private _animals = (missionNamespace getVariable _zone);
                    
                    //diag_log "mort";

                    private _listeAnimaux = (_animals select 0);
                    private _listeRaces = (_animals select 1);
                    private _indexAnimal = (_listeAnimaux find _animal);
                    private _race = _listeRaces select _indexAnimal;
                    _listeAnimaux deleteAt _indexAnimal;
                    _listeRaces deleteAt _indexAnimal;

                    _animals set [0, _listeAnimaux];
                    _animals set [1, _listeRaces];
                    missionNamespace setVariable [_zone, _animals, true];

                    // AJOUT ARGENT OU XP QUAND ANNIMAL EST TUER
                    [_race] remoteExec ["mission_fnc_fonction_kill_animal", _killer];

                    private _animalsMorts = (missionNamespace getVariable "animaux_morts");
                    private _listeAnimaux = (_animalsMorts select 0);
                    private _listeRaces = (_animalsMorts select 1);
                    _listeAnimaux pushBack _animal;
                    _listeRaces pushBack _race;

                    _animalsMorts set [0, _listeAnimaux];
                    _animalsMorts set [1, _listeRaces];
                    missionNamespace setVariable ["animaux_morts", _animalsMorts, true];
                }];
            };
        };
    };

} forEach (getArray(missionConfigFile >> "stargate" >> "chasse" >> "zones"));



/* player addAction ["Dépecer l'animal ...", {
    [] call mission_fnc_chargement;

    // CODE AU DEPEUCAGE

    deleteVehicle cursorObject
    hint "Voila votre cotelette !!";
}, nil, 1.5, true, true, "", "((cursorObject distance player) < 5) && (cursorObject in animalsMorts) && ((damage cursorObject) > 0.5) && (alive player)"]; */


