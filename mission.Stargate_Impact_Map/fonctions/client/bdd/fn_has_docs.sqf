
// fonction name : mission_fnc_has_docs
// parmettres : [numero document]

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _docs = _variable select 16;

private _num_docs = param [0];

private _return = false;

if (_num_docs in _docs) then {
	_return = true;
};

_return;