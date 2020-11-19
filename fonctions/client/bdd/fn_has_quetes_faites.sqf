
// fonction name : mission_fnc_has_quetes_faites
// parmettres : [numero quetes]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _quetes_faites = _variable select 10;

private _num_quetes_faites = param [0];

private _return = false;

if (_num_quetes_faites in _quetes_faites) then {
	_return = true;
};

_return;