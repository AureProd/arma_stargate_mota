

// fonction name : mission_fnc_setBDD_distant
// parmettres : [choix, valeur, player]

private _valeurs = [
    "classe", "race", "xp", "licences", "level", "vie", "faim", "soif", "inventaire virtuel",
    "liste vies", "quetes faites", "quetes dispo", "planete visite", "quetes actives", "garage", "wl soldat", "documents"
];

private _choix = param [0, "rien"];
private _num = param [1, nil];
private _joueur = param [2, player];

_VarPlayerUID = format ["variable_%1", getPlayerUID _joueur]; // BDD player

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
            [[0, _num], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;
        } else {
            hint localize "STR_erreur";
        };
    };
    case 1: { // race
        if ((_num == 1) or (_num == 2)) then {
            [[1, _num], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;
        };
    };
    case 2: { // xp
        // variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives, quetes actives, garage]
        private _bddPlayer = missionNamespace getVariable _VarPlayerUID;
        private _xpPlayer = _bddPlayer select 2;
        private _levelPlayer = _bddPlayer select 4;

        private _levelMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "level_max");
        private _xpMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "xp_max");
        private _tableauLevels = getArray(missionConfigFile >> "stargate_xp" >> "xp" >> "tableau_levels");

        if ((_num <= _xpMax) and (_num >= 0)) then 
        {
            _xpPlayer = _num;	
        }
        else
        {
            if (_num > _xpMax) then 
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

        [[2, _xpPlayer], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;
        [[4, _levelPlayer], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;

        if ((_xpPlayer == 300000) and (_levelPlayer == 60)) then 
        {
            //["Notif_max", ["LEVEL MAX / XP MAX", format ["Vous avez atteints le level et l'xp maximum : GG", _levelPlayer, _xpPlayer]]] call BIS_fnc_showNotification; // xp + level

            ["Notif_max", ["LEVEL MAX / XP MAX", format ["Vous avez atteints le level et l'xp maximum : GG", _levelPlayer, _xpPlayer]]] remoteExec ["BIS_fnc_showNotification", _joueur];

            playSound "level_up";
        }
        else
        {
            if (_aGagneLevel) then 
            {
                //["Notif_level", ["LEVEL UP", format ["Vous passez niveau %1 avec %2 d'xp", _levelPlayer, _xpPlayer]]] call BIS_fnc_showNotification; // xp + level

                ["Notif_level", ["LEVEL UP", format ["Vous passez niveau %1 avec %2 d'xp", _levelPlayer, _xpPlayer]]] remoteExec ["BIS_fnc_showNotification", _joueur];

                playSound "level_up";
            };
        };
    };
    case 4: { // level
        // variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel, liste vies, quetes faites, quetes dispo, planete visite, quetes actives, quetes actives, garage]
        private _bddPlayer = missionNamespace getVariable _VarPlayerUID;
        private _levelPlayer = _bddPlayer select 4;

        private _levelMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "level_max");
        private _xpMax = getNumber(missionConfigFile >> "stargate_xp" >> "xp" >> "xp_max");
        private _tableauLevels = getArray(missionConfigFile >> "stargate_xp" >> "xp" >> "tableau_levels");

        if ((_num < _levelMax) and (_num > 0)) then 
        {
            _levelPlayer = _num;
        }
        else 
        {
            if (_num > _levelMax) then {
                _levelPlayer = 60;
            } else {
                _levelPlayer = 0;
            };
        };

        [[4, _levelPlayer], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;

        //["Notif_level", ["LEVEL UP", format ["Vous passez niveau %1", _levelPlayer]]] call BIS_fnc_showNotification; // xp + level
        ["Notif_level", ["LEVEL UP", format ["Vous passez niveau %1", _levelPlayer]]] remoteExec ["BIS_fnc_showNotification", _joueur];

        playSound "level_up";
    };
    case 5: { // vie
        private _nouv_num = nil;

        if ((_num < 100) and (_num > 0)) then {
            _nouv_num = _num;
        } else {
            if (_num > 100) then {
                _nouv_num = 100;
            } else {
                _nouv_num = 0;
            };
        };

        [[5, _nouv_num], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;
    };
    case 6: { // faim
        private _nouv_num = nil;

        if ((_num < 100) and (_num > 0)) then {
            _nouv_num = _num;
        } else {
            if (_num > 100) then {
                _nouv_num = 100;
            } else {
                _nouv_num = 0;
            };
        };

        [[6, _nouv_num], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;
    };
    case 7: { // soif
        private _nouv_num = nil;

        if ((_num < 100) and (_num > 0)) then {
            _nouv_num = _num;
        } else {
            if (_num > 100) then {
                _nouv_num = 100;
            } else {
                _nouv_num = 0;
            };
        };

        [[7, _nouv_num], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;
    };
    default { 
        [[_indexChoix, _num], _joueur] call mission_fnc_modif_var_bdd_joueurs_distant;
    };
};
