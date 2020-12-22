
// fonction name : mission_fnc_has_planetes
// parmettres : [numero planete, type planete]
// |--> type planete (0 si planete stargate et 1 si map)

private _nomVarPlayer = format ["variable_%1", getPlayerUID player]; // BDD player

private _variable = missionNamespace getVariable _nomVarPlayer;

private _planetes = _variable select 12;

private _num_planetes = param [0];

private _return = false;

if (_num_planetes in (_planetes select (param [1]))) then {
	_return = true;
};

_return;