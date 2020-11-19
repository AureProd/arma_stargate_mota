
// fonction name : player_fnc_getSoif
// parmettres : [player]

private _nomVarPlayer = format ["variable_%1", getPlayerUID (param [0, player])]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _soif = _variable select 7;

_soif;