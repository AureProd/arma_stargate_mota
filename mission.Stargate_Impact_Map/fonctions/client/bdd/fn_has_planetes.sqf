
// [numero planete] call mission_fnc_has_planetes

private _variable = missionNamespace getVariable nomVarPlayerUID;

private _planetes = _variable select 12;

private _num_planetes = param [0];

private _return = false;

if (_num_planetes in _planetes) then {
	_return = true;
};

_return;