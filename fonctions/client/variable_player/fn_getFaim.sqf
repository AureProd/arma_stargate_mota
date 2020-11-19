
// fonction name : player_fnc_getFaim
// parmettres : [player]

private _nomVarPlayer = format ["variable_%1", getPlayerUID (param [0, player])]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _faim = _variable select 6;

_faim;