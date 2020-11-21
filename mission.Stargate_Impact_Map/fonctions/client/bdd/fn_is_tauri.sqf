
// fonction name : mission_fnc_isTauri
// parmettres : [player]

private _nomVarPlayer = format ["variable_%1", getPlayerUID (param [0, player])]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _race = _variable select 1;

private _return = true;

if (_race == 1) then {
	_return = false;
};

_return;