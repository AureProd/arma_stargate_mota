
// fonction name : player_fnc_getVie
// parmettres : [player]

private _nomVarPlayer = format ["variable_%1", getPlayerUID (param [0, player])]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _vie = _variable select 5;

_vie;