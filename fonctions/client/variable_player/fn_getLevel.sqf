
// fonction name : player_fnc_getLevel
// parmettres : [player]

private _nomVarPlayer = format ["variable_%1", getPlayerUID (param [0, player])]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _level = _variable select 4;

_level;