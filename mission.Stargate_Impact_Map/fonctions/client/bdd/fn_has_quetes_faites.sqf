
// [numero quete, numero quete, numero quete] call mission_fnc_has_quetes_faites

private _variable = missionNamespace getVariable nomVarPlayerUID;

private _quetes_faites = _variable select 10;

private _nums_quetes_faites = _this;
private _return = true;

{
	private _num_quetes_faites = _x;

	if (!(_num_quetes_faites in _quetes_faites)) then {
		_return = false;
	};
} forEach _nums_quetes_faites;

_return