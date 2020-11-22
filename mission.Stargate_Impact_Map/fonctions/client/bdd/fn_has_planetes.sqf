
// fonction name : mission_fnc_has_planetes
// parmettres : [numero planete]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _planetes = _variable select 12;

private _num_planetes = param [0];

private _return = false;

if (_num_planetes in _planetes) then {
	_return = true;
};

_return;