
// [[5, 100], [6, 100], [7, 100], [8, []]] call mission_fnc_modif_var_bdd;

private _tableauDonnees = _this; // [[id, valeur], [id, valeur]]

// variable "variable_<UID player>" --> [classe, race, exp, licences, level, vie, faim, soif, inventaire virtuel]
private _playerBdd = missionNamespace getVariable nomVarPlayerUID;

{
	_playerBdd set [(_x select 0), (_x select 1)];
} forEach _tableauDonnees;

missionNamespace setVariable [nomVarPlayerUID, _playerBdd, true];
