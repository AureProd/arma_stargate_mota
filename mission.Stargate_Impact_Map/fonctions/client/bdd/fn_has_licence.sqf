
// fonction name : mission_fnc_has_licence
// parmettres : [numero licence]

private _variable = missionNamespace getVariable nomVarPlayerUID;

private _licences = _variable select 3;

private _num_licence = param [0];

private _return = false;

if (_num_licence in _licences) then {
	_return = true;
};

_return;