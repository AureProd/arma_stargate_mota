
// fonction name : mission_fnc_has_licence
// parmettres : [numero licence]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _licences = _variable select 3;

private _num_licence = param [0];

private _return = false;

if (_num_licence in _licences) then {
	_return = true;
};

_return;