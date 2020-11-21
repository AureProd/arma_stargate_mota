
// fonction name : mission_fnc_has_quetes_actives
// parmettres : [numero quetes]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _quetes_actives = _variable select 13;

private _num_quetes_actives = param [0];

private _return = false;

if (_num_quetes_actives in _quetes_actives) then {
	_return = true;
};

_return;