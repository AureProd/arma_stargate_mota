
// [numero document] call mission_fnc_has_docs

private _variable = missionNamespace getVariable nomVarPlayerUID;

private _docs = _variable select 15;

private _num_docs = param [0];

private _return = false;

if (_num_docs in _docs) then {
	_return = true;
};

_return;