
// [[num, valeur], player] call mission_fnc_modif_var_bdd_joueurs_distant;

private _tableauDonnees = param [0]; // [id, valeur]
private _joueur = param [1, player]; // [id, valeur]

_VarPlayerUID = format ["variable_%1", getPlayerUID _joueur]; // BDD player

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable _VarPlayerUID;

_playerBdd set [(_tableauDonnees select 0), (_tableauDonnees select 1)];

missionNamespace setVariable [_VarPlayerUID, _playerBdd, true];
