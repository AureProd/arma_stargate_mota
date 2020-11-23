

// fonction name : mission_fnc_setBDD
// parmettres : [choix, valeur]

private _valeurs = [
    "classe", "race", "xp", "licences", "level", "vie", "faim", "soif", "inventaire virtuel",
    "liste vies", "quetes faites", "quetes dispo", "planete visite", "quetes actives", "garage", "wl soldat", "documents"
];

private _choix = param [0, "rien"];
private _num = param [1, nil];

if (!(_choix in _valeurs)) exitWith {
    hint localize "STR_erreur";
};

if (_num == nil) exitWith {
    hint localize "STR_erreur";
};

private _indexChoix = _valeurs find _choix;

switch (_indexChoix) do {
    case 0: { // classe
        if ((_num == 1) or (_num == 2) or (_num == 3)) then {
            [[0, _num]] call mission_fnc_modif_var_bdd;
        } else {
            hint localize "STR_erreur";
        };
    };
    case 1: { // race
        if ((_num == 1) or (_num == 2)) then {
            [[1, _num]] call mission_fnc_modif_var_bdd;
        };
    };
    case 2: { // xp
        // variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives, quetes actives, garage]
        private _bddPlayer = missionNamespace getVariable nomVarPlayerUID;
        private _xpPlayer = _bddPlayer select 2;
        private _levelPlayer = _bddPlayer select 4;

        private _levelMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "level_max");
        private _xpMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "xp_max");
        private _tableauLevels = getArray(missionConfigFile >> "stargate_xp" >> "xp" >> "tableau_levels");

        if (((_num) <= _xpMax) or ((_num) <= 0)) then 
        {
            _xpPlayer = _num;	
        }
        else
        {
            if (_xpPlayer < _xpMax) then 
            {
                _xpPlayer = 300000;
            } else {
                _xpPlayer = 0;
            }
        };

        private _aGagneLevel = false;

        if (_levelPlayer < _levelMax) then 
        {
            {
                if ((_x select 0) == (_levelPlayer + 1)) then 
                {
                    if ((_x select 1) <= _xpPlayer) then 
                    {
                        _levelPlayer = _levelPlayer + 1;
                        _aGagneLevel = true;
                    };
                };
            } forEach _tableauLevels;
        };

        [[2, _xpPlayer], [4, _levelPlayer]] call mission_fnc_modif_var_bdd;

        if ((_xpPlayer == 300000) and (_levelPlayer == 60)) then 
        {
            ["Notif_max", ["LEVEL MAX / XP MAX", format ["Vous avez atteints le level et l'xp maximum : GG", _levelPlayer, _xpPlayer]]] call BIS_fnc_showNotification; // xp + level

            playSound "level_up";
        }
        else
        {
            if (_aGagneLevel) then 
            {
                ["Notif_level", ["LEVEL UP", format ["Vous passez niveau %1 avec %2 d'xp", _levelPlayer, _xpPlayer]]] call BIS_fnc_showNotification; // xp + level

                playSound "level_up";
            };
        };
    };
    case 4: { // level
        // variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives, quetes actives, garage]
        private _bddPlayer = missionNamespace getVariable nomVarPlayerUID;
        private _levelPlayer = _bddPlayer select 4;

        private _levelMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "level_max");
        private _xpMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "xp_max");
        private _tableauLevels = getArray(missionConfigFile >> "stargate_xp" >> "xp" >> "tableau_levels");

        if (_num < _levelMax) then 
        {
            _levelPlayer = _num;
        }
        else 
        {
            _levelPlayer = 60;
        };

        [[4, _levelPlayer]] call mission_fnc_modif_var_bdd;

        ["Notif_level", ["LEVEL UP", format ["Vous passez niveau %1", _levelPlayer]]] call BIS_fnc_showNotification; // xp + level

        playSound "level_up";
    };
    default { 
        [[_indexChoix, _num]] call mission_fnc_modif_var_bdd;
    };
};
