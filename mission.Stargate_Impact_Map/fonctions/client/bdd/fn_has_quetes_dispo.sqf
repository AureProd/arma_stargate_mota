
// fonction name : mission_fnc_has_quetes_dispo
// parmettres : [numero quetes]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _quetes_dispo = _variable select 11;

private _num_quetes_dispo = param [0];

private _return = false;

if (_num_quetes_dispo in _quetes_dispo) then {
	_return = true;
};

_return;