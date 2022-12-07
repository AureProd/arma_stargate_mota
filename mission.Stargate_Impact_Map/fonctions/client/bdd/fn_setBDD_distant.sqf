

// [choix, valeur, player] call mission_fnc_setBDD_distant

private _choix = param [0, "rien"];
private _num = param [1, nil];
private _joueur = param [2, player];

[_choix, _num] remoteExec ["mission_fnc_setBDD", _joueur]
